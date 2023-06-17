// Copyright (c) 2020, Sergey Sharybin
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

#include "app/indication.h"

#include <stdint.h>
#include <xc.h>

#include "system/interrupt.h"
#include "system/task.h"

// Timer value which makes it to run at 99.29Hz.
#define TIMER1_VALUE 35322

static uint8_t global_heartbeat_counter = 0;

static IndicatorStatus global_lock_status = INDICATOR_STATUS_UNKNOWN;
static uint8_t global_lock_counter = 0;
static bool global_lock_on = false;

// The number of timer interrupts handled since the previous tasks handler.
static uint8_t num_timer_interrupts_handled = 0;

////////////////////////////////////////////////////////////////////////////////
// Interrupt handlers.

static void InterruptHandler(void) {
  // Timer1 interrupt.

  if (PIR1bits.TMR1IF && PIE1bits.TMR1IE) {
    if (num_timer_interrupts_handled < 255) {
      ++num_timer_interrupts_handled;
    }

    TMR1 = TIMER1_VALUE;

    PIR1bits.TMR1IF = 0;
  }
}

////////////////////////////////////////////////////////////////////////////////
// Periodic tasks.

static void Tasks(void) {
  if (num_timer_interrupts_handled != 0) {
    if (global_heartbeat_counter < num_timer_interrupts_handled) {
      global_heartbeat_counter = 0;
    } else {
      global_heartbeat_counter -= num_timer_interrupts_handled;
    }

    if (global_lock_counter < num_timer_interrupts_handled) {
      global_lock_counter = 0;
    } else {
      global_lock_counter -= num_timer_interrupts_handled;
    }

    num_timer_interrupts_handled = 0;
  }

  // Heartbeat LED.
  if (global_heartbeat_counter) {
    LATCbits.LATC0 = 1;
    LATCbits.LATC1 = 0;
  } else {
    LATCbits.LATC0 = 0;
    LATCbits.LATC1 = 0;
  }

  // Lock LED.
  if (global_lock_status == INDICATOR_STATUS_BLINKING) {
    if (global_lock_counter == 0) {
      global_lock_counter = 25;
      global_lock_on = !global_lock_on;
    }

    if (global_lock_on) {
      LATAbits.LATA4 = 1;
      LATAbits.LATA5 = 0;
    } else {
      LATAbits.LATA4 = 0;
      LATAbits.LATA5 = 0;
    }
  }
}

////////////////////////////////////////////////////////////////////////////////
// Initialization.

static void InitializePorts(void) {
  // Power status LED.
  TRISAbits.RA0 = 0;
  TRISAbits.RA1 = 0;
  LATAbits.LATA0 = 0;
  LATAbits.LATA1 = 0;

  // Antenna status LED.
  TRISAbits.RA2 = 0;
  TRISAbits.RA3 = 0;
  LATAbits.LATA2 = 0;
  LATAbits.LATA3 = 0;

  // Lock status LED.
  TRISAbits.RA4 = 0;
  TRISAbits.RA5 = 0;
  LATAbits.LATA4 = 0;
  LATAbits.LATA5 = 0;

  // Heartbeat LED.
  TRISCbits.RC0 = 0;
  TRISCbits.RC1 = 0;
  LATCbits.LATC0 = 0;
  LATCbits.LATC1 = 0;
}

static void InitializeTimer(void) {
  // Timer configuration.

  // Set prescaler to 1:4.
  T1CONbits.T1CKPS0 = 0;
  T1CONbits.T1CKPS1 = 1;

  T1CONbits.T1OSCEN = 0;  // Timer1 oscillator is disabled.
  T1CONbits.T1SYNC = 1;   // Do not synchronize external clock input.

  // Timer1 Clock Source Select bit to Internal clock (Fosc/4)
  T1CONbits.TMR1CS = 0;

  TMR1 = TIMER1_VALUE;

  // Interrupts.

  // TODO(sergey): In a way it is nice that initialization of a subsystem is
  // self-sufficient, but changing priority bits might cause conflicts between
  // the systems. How can this be avoided?

  RCONbits.IPEN = 1;  // Interrupt Priority Enable bit:
                      // Enable priority levels on interrupt.

  IPR1bits.TMR1IP = 0;  // TMR1 Overflow Interrupt Priority bit: Low priority.

  PIR1bits.TMR1IF = 0;
  PIE1bits.TMR1IE = 1;  // Enable Timer1 Overflow Interrupt.

  INTCONbits.GIEL = 1;  // Enables all low priority peripheral interrupts.

  T1CONbits.TMR1ON = 1;  // Turn ON Timer1.
}

void INDICATION_Initialize(void) {
  num_timer_interrupts_handled = 0;

  INTERRUPT_Register(&InterruptHandler, INTERRUPT_PRIORITY_LOW);
  TASK_Register(&Tasks);

  InitializePorts();
  InitializeTimer();
}

////////////////////////////////////////////////////////////////////////////////
// Indicator API.

void INDICATOR_Heartbeat(void) {
  global_heartbeat_counter = 10;
}

void INDICATOR_PowerStatus(const IndicatorStatus status) {
  switch (status) {
    case INDICATOR_STATUS_UNKNOWN: break;

    case INDICATOR_STATUS_OK:
      LATAbits.LATA0 = 1;
      LATAbits.LATA1 = 0;
      break;

    case INDICATOR_STATUS_FAIL:
      LATAbits.LATA0 = 0;
      LATAbits.LATA1 = 1;
      break;

    case INDICATOR_STATUS_BLINKING: break;
  }
}

void INDICATOR_AntennaStatus(const IndicatorStatus status) {
  switch (status) {
    case INDICATOR_STATUS_UNKNOWN: break;

    case INDICATOR_STATUS_OK:
      LATAbits.LATA2 = 1;
      LATAbits.LATA3 = 0;
      break;

    case INDICATOR_STATUS_FAIL:
      LATAbits.LATA2 = 0;
      LATAbits.LATA3 = 1;
      break;

    case INDICATOR_STATUS_BLINKING: break;
  }
}

void INDICATOR_LockStatus(IndicatorStatus status) {
  if (global_lock_status == status) {
    return;
  }

  global_lock_status = status;

  switch (status) {
    case INDICATOR_STATUS_UNKNOWN: break;

    case INDICATOR_STATUS_OK:
      LATAbits.LATA4 = 1;
      LATAbits.LATA5 = 0;
      break;

    case INDICATOR_STATUS_FAIL:
      LATAbits.LATA4 = 0;
      LATAbits.LATA5 = 1;
      break;

    case INDICATOR_STATUS_BLINKING:
      global_lock_counter = 25;
      global_lock_on = false;
      break;
  }
}
