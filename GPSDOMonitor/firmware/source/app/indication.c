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

static uint8_t global_led_counters[2] = {0, 0};
static const int global_num_leds = 2;

// Number of points to decrement from the value.
// The value is increased in the interrupt, and is subtracted from LED counters
// from the main routine.
static uint8_t num_decrement = 0;

////////////////////////////////////////////////////////////////////////////////
// Interrupt handlers.

static void InterruptHandler(void) {
  // Timer1 interrupt.

  if (PIR1bits.TMR1IF && PIE1bits.TMR1IE) {
    if (num_decrement < 255) {
      ++num_decrement;
    }

    TMR1 = TIMER1_VALUE;

    PIR1bits.TMR1IF = 0;
  }
}

////////////////////////////////////////////////////////////////////////////////
// Periodic tasks.

static void Tasks(void) {
  if (num_decrement != 0) {
    for (int i = 0; i < global_num_leds; ++i) {
      if (global_led_counters[i] < num_decrement) {
        global_led_counters[i] = 0;
      } else {
        global_led_counters[i] -= num_decrement;
      }
    }

    num_decrement = 0;
  }

  LATAbits.LATA1 = (global_led_counters[0] != 0) ? 1 : 0;
  LATAbits.LATA2 = (global_led_counters[1] != 0) ? 1 : 0;
}

////////////////////////////////////////////////////////////////////////////////
// Initialization.

static void InitializePorts(void) {
  TRISAbits.RA1 = 0;
  TRISAbits.RA2 = 0;

  LATAbits.LATA1 = 0;
  LATAbits.LATA2 = 0;
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
  num_decrement = 0;

  INTERRUPT_Register(&InterruptHandler, INTERRUPT_PRIORITY_LOW);
  TASK_Register(&Tasks);

  InitializePorts();
  InitializeTimer();
}

////////////////////////////////////////////////////////////////////////////////
// Control API.

void INDICATOR_FlashLED(int led_index) {
  if (led_index < 0 || led_index > global_num_leds) {
    return;
  }

  global_led_counters[led_index] = 10;
}
