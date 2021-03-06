// Copyright (c) 2021, Sergey Sharybin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//
// Author: Sergey Sharybin (sergey.vfx@gmail.com)

#include "gpsdo/internal/gpsdo_debug_proto.h"

#include <xc.h>

#include "gpsdo/gpsdo.h"
#include "gpsdo/internal/gpsdo_parse.h"
#include "system/interrupt.h"
#include "system/task.h"
#include "uart/uart.h"

// Buffer size in bytes to store data received from the debug bus of the GPSDO.
//
// It is an intentionally bigger than the actual expected package size, so that
// in the case extra data is received it is possible to log enough data for an
// investigation.
#define DATA_BUFFER_SIZE 64

// Machine states of the debug protocol receiver.
typedef enum MachineState {
  // Initial state.
  MAECHINE_STATE_INITIALIZE,

  // Skip current transmission from GPSDO to the uC.
  // Any received data in this state is ignored. The state is advanced when no
  // data is received for a while. This way starting uC in the middle of
  // transmission will not cause any issues
  MAECHINE_STATE_SKIP_PACKAGE,

  // There is no ongoing transmission, the machine need to initiate actual data
  // reception.
  MACHINE_STATE_BEGIN_RECEIVE_DATA,

  // Receive data from the GPSDO.
  MAECHINE_STATE_RECEIVE_DATA,

  // Package is fully received, and it needs to be copied over or parsed from
  // tasks routine.
  MAECHINE_STATE_PACKAGE_RECEIVED,

  // Error state when too much data from GPSDO is received.
  MAECHINE_STATE_ERROR_BUFFER_OVERFLOW,
  // Error state when new data was received while package was considered
  // finished and tasks were about to handle the data.
  MAECHINE_STATE_ERROR_BUFFER_COLLISSION,
} MachineState;

// Context of the debug data receiver.
//
// It follows the debug UART (for example, UART3/Debug TxD) port and stores data
// transmitted from the module in this context for the further decoding.
typedef struct Context {
  MachineState machine_state;

  struct {
    int num_data_bytes;
    uint8_t data[DATA_BUFFER_SIZE];

    // Special flag which is used to detect end of data transmission.
    //
    // - It is set to false when state machine starts to expect a package.
    // - It is set to truth from data receive interrupt.
    // - It is checked from timer interrupt and if it is false it is considered
    //   an end of transmission (aka, no new data was received for long enough).
    bool received_data_in_time;
  } uart;

  struct GPSDOStatus* status;
} Context;

// TODO(sergey): Think of moving this to GPSDO state and not have it a global.
//
// The tricky part is that there is no heap allocation on 8 bit microcontrollers
// and in order to make it possible to stack-allocate this context a lot of a
// purely internal state is to exposed in the public header.
static Context g_context;

#define TIMER_RESET()                                                          \
  do {                                                                         \
    T2CONbits.TMR2ON = 0;                                                      \
    TMR2 = 0;                                                                  \
    T2CONbits.TMR2ON = 1;                                                      \
  } while (false)

////////////////////////////////////////////////////////////////////////////////
// Interrupt handlers.

static void InterruptHandler(void) {
  // Receive interrupt.

  if (PIR1bits.RCIF && PIE1bits.RCIE) {
    // NOTE: Always read data to properly clear interrupt flags.
    const uint8_t data = RCREG;

    if (data) {
      asm("nop");
    }

    switch (g_context.machine_state) {
      case MAECHINE_STATE_INITIALIZE:
        // pass.
        break;

      case MAECHINE_STATE_SKIP_PACKAGE:
        // Skip current byte and reset timer, so that we keep ignoring the data
        // for until there is enough time elapsed without any data.
        TIMER_RESET();
        break;

      case MACHINE_STATE_BEGIN_RECEIVE_DATA:
        // pass.
        break;

      case MAECHINE_STATE_RECEIVE_DATA:
        if (g_context.uart.num_data_bytes > DATA_BUFFER_SIZE) {
          g_context.machine_state = MAECHINE_STATE_ERROR_BUFFER_OVERFLOW;
          break;
        }

        g_context.uart.data[g_context.uart.num_data_bytes++] = data;

        g_context.uart.received_data_in_time = true;
        break;

      case MAECHINE_STATE_PACKAGE_RECEIVED:
        g_context.machine_state = MAECHINE_STATE_ERROR_BUFFER_COLLISSION;
        break;

      case MAECHINE_STATE_ERROR_BUFFER_COLLISSION:
      case MAECHINE_STATE_ERROR_BUFFER_OVERFLOW:
        // pass.
        break;
    }

    PIR1bits.RCIF = 0;  // Clear the interrupt flag.
  }

  // Timer2 interrupt.

  if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {
    switch (g_context.machine_state) {
      case MAECHINE_STATE_INITIALIZE:
        // pass.
        break;

      case MAECHINE_STATE_SKIP_PACKAGE:
        g_context.machine_state = MACHINE_STATE_BEGIN_RECEIVE_DATA;
        break;

      case MACHINE_STATE_BEGIN_RECEIVE_DATA:
        // pass.
        break;

      case MAECHINE_STATE_RECEIVE_DATA:
        if (!g_context.uart.received_data_in_time &&
            g_context.uart.num_data_bytes != 0) {
          // Has been long enough without any data received. Consider this as an
          // end of data transmission.
          g_context.machine_state = MAECHINE_STATE_PACKAGE_RECEIVED;
          break;
        }
        g_context.uart.received_data_in_time = false;
        break;

      case MAECHINE_STATE_PACKAGE_RECEIVED:
        // Do nothing, let the tasks handler to do their job (which could take
        // longer than the period of the timer).
        break;

      case MAECHINE_STATE_ERROR_BUFFER_COLLISSION:
      case MAECHINE_STATE_ERROR_BUFFER_OVERFLOW:
        // pass.
        break;
    }

    PIR1bits.TMR2IF = 0;  // Clear the interrupt flag.
  }
}

////////////////////////////////////////////////////////////////////////////////
// Periodic tasks.

static void Tasks(void) {
  switch (g_context.machine_state) {
    case MAECHINE_STATE_INITIALIZE:
      g_context.machine_state = MAECHINE_STATE_SKIP_PACKAGE;
      TIMER_RESET();
      break;

    case MAECHINE_STATE_SKIP_PACKAGE:
      // pass.

    case MACHINE_STATE_BEGIN_RECEIVE_DATA:
      TIMER_RESET();

      g_context.uart.num_data_bytes = 0;
      g_context.uart.received_data_in_time = false;
      g_context.machine_state = MAECHINE_STATE_RECEIVE_DATA;
      break;

    case MAECHINE_STATE_RECEIVE_DATA:
      // pass.
      break;

    case MAECHINE_STATE_PACKAGE_RECEIVED:
      GPSDO_PARSE_DebugProto(
          g_context.status, g_context.uart.data, g_context.uart.num_data_bytes);

      g_context.machine_state = MACHINE_STATE_BEGIN_RECEIVE_DATA;
      break;

    case MAECHINE_STATE_ERROR_BUFFER_OVERFLOW:
      UART_WriteString("Receive buffer overflow\r\n");

      // TODO(sergey): Dump content of the buffer.

      g_context.machine_state = MAECHINE_STATE_SKIP_PACKAGE;
      break;

    case MAECHINE_STATE_ERROR_BUFFER_COLLISSION:
      UART_WriteString("Receive buffer collission\r\n");

      g_context.machine_state = MAECHINE_STATE_SKIP_PACKAGE;
      break;
  }
}

////////////////////////////////////////////////////////////////////////////////
// Initialization.

static void InitializeTimer(void) {
  // Timer configuration.

  // Configure TMR2 to generate interrupt much less frequent than character will
  // appear on GPSDO's debug UART.
  //
  // For the current chip selection it is 183.82 Hz (0.00544sec intervals).
  //
  // NOTE: Same timer is used to detect that data transmission is over.
  TMR2 = 0;
  PR2 = 255;

  // Set TMR2 pre-scaler to 1:16.
  T2CONbits.T2CKPS = 0b10;

  // Set TMR2 post-scaler to 1:16.
  T2CONbits.TOUTPS = 0b1111;

  // Interrupts.

  // TODO(sergey): In a way it is nice that initialization of a subsystem is
  // self-sufficient, but changing priority bits might cause conflicts between
  // the systems. How can this be avoided?

  RCONbits.IPEN = 1;  // Interrupt Priority Enable bit:
                      // Enable priority levels on interrupt.

  IPR1bits.TMR2IP = 0;  // TMR2 to PR2 Match Interrupt Priority bit:
                        // Low priority.

  PIR1bits.TMR2IF = 0;
  PIE1bits.TMR2IE = 1;  // Enable Timer2 Overflow Interrupt.

  INTCONbits.GIEL = 1;  // Enables all low priority peripheral interrupts.

  T2CONbits.TMR2ON = 0;
}

static void InitializeUARTReceive(void) {
  // TODO(sergey): In a way it is nice that initialization of a subsystem is
  // self-sufficient, but changing priority bits might cause conflicts between
  // the systems. How can this be avoided?

  RCONbits.IPEN = 1;  // Interrupt Priority Enable bit:
                      // Enable priority levels on interrupt.

  IPR1bits.RCIP = 0;  // EUSART Receive Interrupt Priority bit: Low priority.

  PIR1bits.RCIF = 0;
  PIE1bits.RCIE = 1;

  INTCONbits.GIEL = 1;  // Enables all low priority peripheral interrupts.
}

void GPSDO_DEBUG_PROTO_Initialize(struct GPSDOStatus* status) {
  g_context.machine_state = MAECHINE_STATE_INITIALIZE;
  g_context.uart.num_data_bytes = 0;
  g_context.status = status;

  INTERRUPT_Register(&InterruptHandler, INTERRUPT_PRIORITY_LOW);
  TASK_Register(&Tasks);

  InitializeTimer();
  InitializeUARTReceive();
}
