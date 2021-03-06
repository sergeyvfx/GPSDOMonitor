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

#include "gpsdo/internal/gpsdo_timecode_proto.h"

#include <stdbool.h>
#include <xc.h>

#include "gpsdo/gpsdo.h"
#include "gpsdo/internal/gpsdo_parse.h"
#include "system/configuration.h"
#include "system/interrupt.h"
#include "system/task.h"

// Timer0 is used to verify the UART transmission line is at idle: several
// consecutive measurements are performed, and the port change is watched.
// Such sampling is done on way lower frequency than the data transfer since
// there is no enough Fosc/4 frequency.
// After the line is on idle, this module will read the data from main task,
// without having timer involved.
#define TMR0_VALUE 16

// Number of TMR0 ticks which are considered to be enough to declare the UART to
// not be transmitting any data.
#define NUM_IDLE_TIMER_TICKS 8

#define DATA_PORT (PORTBbits.RB4)
#define DATA_TRIS (TRISB)

// Only assign single bit as an input, so possibly floating inputs will not
// cause a change interrupt.
#define DATA_TRIS_BIT (0b00010000)

typedef enum MachineState {
  // Initial state.
  MAECHINE_STATE_INITIALIZE,

  // Initial state of package reading: will perform all needed steps to ignore
  // possibly ongoing transmission and things like that.
  MACHINE_STATE_START_READ_PIPELINE,

  // Wait for the timecode UART bus to have silence.
  MACHINE_STATE_WAIT_FOR_IDLE,

  // Machine is in idle state of the data bus ans is waiting for the start bit
  // of the transmission.
  MACHINE_STATE_WAIT_FOR_START_BIT,

  // Data has been received from the highspeed serial bus. Need to decode it.
  MACHINE_STATE_DECODE_TIMECODE,
} MachineState;

typedef struct Context {
  MachineState machine_state;

  int idle_ticks_countdown;

  struct GPSDOStatus* status;
} Context;

// TODO(sergey): Think of moving this to GPSDO state and not have it a global.
//
// The tricky part is that there is no heap allocation on 8 bit microcontrollers
// and in order to make it possible to stack-allocate this context a lot of a
// purely internal state is to exposed in the public header.
static Context g_context;

////////////////////////////////////////////////////////////////////////////////
// Interrupt handlers.

static inline void InterruptHandler_PortB(void) {
  if (!INTCONbits.RBIF && INTCONbits.RBIE) {
    // The Port B did not change.
    return;
  }

  switch (g_context.machine_state) {
    case MAECHINE_STATE_INITIALIZE:
    case MACHINE_STATE_START_READ_PIPELINE:
      // pass.
      break;

    case MACHINE_STATE_WAIT_FOR_IDLE:
      // Data has been received, reset the counter to wait longer.
      g_context.idle_ticks_countdown = NUM_IDLE_TIMER_TICKS;
      break;

    case MACHINE_STATE_WAIT_FOR_START_BIT:
      g_context.machine_state = MACHINE_STATE_DECODE_TIMECODE;
      break;

    case MACHINE_STATE_DECODE_TIMECODE:
      // pass.
      break;
  }

  // Note from the datasheet section 9.2 INTCON Registers,
  // REGISTER 9-1: INTCON: INTERRUPT CONTROL REGISTER
  //
  // A mismatch condition will continue to set this bit. Reading PORTB will end
  // the mismatch condition and allow the bit to be cleared.
  if (PORTB) {
    asm("nop");
  }

  // Clear the interrupt flag.
  INTCONbits.RBIF = 0;
}

static void InterruptHandler_Timer0(void) {
  if (INTCONbits.TMR0IF && INTCONbits.TMR0IE) {
    switch (g_context.machine_state) {
      case MAECHINE_STATE_INITIALIZE:
      case MACHINE_STATE_START_READ_PIPELINE:
        // pass.
        break;

      case MACHINE_STATE_WAIT_FOR_IDLE:
        if (/*DATA_PORT == 0*/ true) {
          --g_context.idle_ticks_countdown;
          if (g_context.idle_ticks_countdown == 0) {
            T0CONbits.TMR0ON = 0;
            g_context.machine_state = MACHINE_STATE_WAIT_FOR_START_BIT;
            return;
          }
        } else {
          // Reset counter, keep waiting for until port goes to an idle state.
          g_context.idle_ticks_countdown = NUM_IDLE_TIMER_TICKS;
        }
        break;

      case MACHINE_STATE_WAIT_FOR_START_BIT:
      case MACHINE_STATE_DECODE_TIMECODE:
        // pass.
        break;
    }

    TMR0 = TMR0_VALUE;

    // Clear the interrupt flag.
    INTCONbits.TMR0IF = 0;
  }
}

////////////////////////////////////////////////////////////////////////////////
// Periodic tasks.

static void DecodeTimecode(void) {
  uint8_t num_bytes;
  const uint8_t* timecode = INTERRUPT_GetHighspeedData(&num_bytes);

  GPSDO_PARSE_Timecode(g_context.status, timecode, num_bytes);
}

static void Tasks(void) {
  switch (g_context.machine_state) {
    case MAECHINE_STATE_INITIALIZE:
      g_context.machine_state = MACHINE_STATE_START_READ_PIPELINE;
      break;

    case MACHINE_STATE_START_READ_PIPELINE:
      T0CONbits.TMR0ON = 1;
      g_context.machine_state = MACHINE_STATE_WAIT_FOR_IDLE;
      g_context.idle_ticks_countdown = NUM_IDLE_TIMER_TICKS;
      break;

    case MACHINE_STATE_WAIT_FOR_IDLE:
    case MACHINE_STATE_WAIT_FOR_START_BIT:
      // Pass.
      break;

    case MACHINE_STATE_DECODE_TIMECODE:
      g_context.machine_state = MACHINE_STATE_START_READ_PIPELINE;
      DecodeTimecode();
      break;
  }
}

////////////////////////////////////////////////////////////////////////////////
// Initialization.

static void InitializeTimer(void) {
  // Timer configuration.

  T0CONbits.T08BIT = 1;  // Timer0 is configured as an 8-bit timer/counter.
  T0CONbits.T0CS = 0;    // Internal instruction cycle clock (CLKO).
  T0CONbits.T0SE = 0;    // Increment on low-to-high transition on T0CKI pin.
  T0CONbits.PSA = 1;     // TImer0 prescaler is NOT assigned. Timer0 clock input
                         // bypasses prescaler.
  T0CONbits.T0PS = 0;    // No prescaler.

  TMR0 = TMR0_VALUE;

  // Interrupts.

  // TODO(sergey): In a way it is nice that initialization of a subsystem is
  // self-sufficient, but changing priority bits might cause conflicts between
  // the systems. How can this be avoided?

  RCONbits.IPEN = 1;  // Interrupt Priority Enable bit:
                      // Enable priority levels on interrupt.

  INTCON2bits.TMR0IP = 0;  // TMR0 Overflow Interrupt Priority bit:
                           // Low priority

  INTCONbits.TMR0IE = 1;  // Enable Timer0 Overflow Interrupt.
  INTCONbits.TMR0IF = 0;

  INTCONbits.GIEL = 1;  // Enables all low priority peripheral interrupts.

  T0CONbits.TMR0ON = 0;
}

static void InitializePortInterrupt(void) {
  INTCON2bits.RBIP = 1;  // RB Port Change Interrupt Priority bit:
                         // High priority.

  INTCONbits.RBIF = 0;  // Clear the interrupt flag of Port B.
  INTCONbits.RBIE = 1;  // Enable Port B change interrupt.

  INTCONbits.GIEH = 1;  // Global Interrupt Enable bit:
                        // Enable all high priority interrupts.
}

void GPSDO_TIMECODE_Initialize(struct GPSDOStatus* status) {
  DATA_TRIS = DATA_TRIS_BIT;

  g_context.machine_state = MAECHINE_STATE_INITIALIZE;
  g_context.status = status;

  INTERRUPT_Register(&InterruptHandler_PortB, INTERRUPT_PRIORITY_HIGH);
  INTERRUPT_Register(&InterruptHandler_Timer0, INTERRUPT_PRIORITY_LOW);
  TASK_Register(&Tasks);

  InitializeTimer();
  InitializePortInterrupt();
}
