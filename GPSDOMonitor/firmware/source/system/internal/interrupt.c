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

#include "system/interrupt.h"

#include <stdbool.h>
#include <xc.h>

#include "kernel/kernel.h"
#include "system/configuration.h"
#include "system/internal/interrupt_internal.h"

#define USE_HARDCODED_ISR 1

#define MAX_INTERRUPT_HANDLERS 4

typedef struct InterruptsTable {
  int num_interrupt_handlers;
#if USE_HARDCODED_ISR
  InterruptFunction isr_0;
  InterruptFunction isr_1;
  InterruptFunction isr_2;
  InterruptFunction isr_3;
#else
  InterruptFunction functions[MAX_INTERRUPT_HANDLERS];
#endif
} InterruptsTable;

static InterruptsTable g_high_interrupts;  // High-priority interrupts.
static InterruptsTable g_low_interrupts;   // Normal interrupts.

// Maximum number of bytes which can be received from the high-speed line.
//
// NOTE: Keep in sync with code in the INTERRUPT_InterruptHigh(): due to
// performance reasons the ISR does not check the array boundaries and reads
// a hardcoded amount of bytes.
#define HIGHSPEED_DATA_MAX_BYTES 9

static bool g_have_data;
static uint8_t g_received_bytes[HIGHSPEED_DATA_MAX_BYTES];

#if USE_HARDCODED_ISR
__reentrant static void InterruptHandlerStub(void) {
}
#endif

void INTERRUPT_Initialize(void) {
  g_high_interrupts.num_interrupt_handlers = 0;
  g_low_interrupts.num_interrupt_handlers = 0;

#if USE_HARDCODED_ISR
  g_high_interrupts.isr_0 = &InterruptHandlerStub;
  g_high_interrupts.isr_1 = &InterruptHandlerStub;
  g_high_interrupts.isr_2 = &InterruptHandlerStub;
  g_high_interrupts.isr_3 = &InterruptHandlerStub;

  g_low_interrupts.isr_0 = &InterruptHandlerStub;
  g_low_interrupts.isr_1 = &InterruptHandlerStub;
  g_low_interrupts.isr_2 = &InterruptHandlerStub;
  g_low_interrupts.isr_3 = &InterruptHandlerStub;
#endif

  g_have_data = false;
}

#if USE_HARDCODED_ISR
static void AssignISRFunction(InterruptsTable* interrupts_table,
                              InterruptFunction function) {
  if (interrupts_table->num_interrupt_handlers == MAX_INTERRUPT_HANDLERS) {
    KERNEL_Panic();
  }
  switch (interrupts_table->num_interrupt_handlers) {
    case 0: interrupts_table->isr_0 = function; break;
    case 1: interrupts_table->isr_1 = function; break;
    case 2: interrupts_table->isr_2 = function; break;
    case 3: interrupts_table->isr_3 = function; break;
  }
  interrupts_table->num_interrupt_handlers++;
}
#endif

void INTERRUPT_Register(InterruptFunction function,
                        InterruptPriority priority) {
#if USE_HARDCODED_ISR
  switch (priority) {
    case INTERRUPT_PRIORITY_LOW:
      AssignISRFunction(&g_low_interrupts, function);
      break;
    case INTERRUPT_PRIORITY_HIGH:
      AssignISRFunction(&g_high_interrupts, function);
      break;
  }
#else
  switch (priority) {
    case INTERRUPT_PRIORITY_LOW:
      if (g_low_interrupts.num_interrupt_handlers == MAX_INTERRUPT_HANDLERS) {
        KERNEL_Panic();
      }
      g_low_interrupts.functions[g_low_interrupts.num_interrupt_handlers++] =
          function;
      break;
    case INTERRUPT_PRIORITY_HIGH:
      if (g_high_interrupts.num_interrupt_handlers == MAX_INTERRUPT_HANDLERS) {
        KERNEL_Panic();
      }
      g_high_interrupts.functions[g_high_interrupts.num_interrupt_handlers++] =
          function;
      break;
  }
#endif
}

// 14 instructions of NOP
//
// clang-format off
#  define NOP_14()                                                             \
    {                                                                          \
      asm("nop"); asm("nop"); asm("nop"); asm("nop"); asm("nop"); asm("nop");  \
      asm("nop"); asm("nop"); asm("nop"); asm("nop"); asm("nop"); asm("nop");  \
      asm("nop"); asm("nop");                                                  \
    }
// clang-format on

// Read bit from the "serial" input,
// 19 instructions in total.
#define READ_BIT(bit_index)                                                    \
  {                                                                            \
    asm("movf INDF0, W");                                                      \
    asm("bcf WREG, " #bit_index);                                              \
    asm("btfsc " HIGHSPEED_DATA_LINE); /* if PORTBbits.RB0 != 0 */             \
    asm("bsf WREG, " #bit_index);                                              \
    asm("movwf INDF0");                                                        \
    NOP_14();                                                                  \
  }

// Read byte.
// 154 instructions.
//
// clang-format off
#  define READ_BYTE()                                                          \
    {                                                                          \
      READ_BIT(0); READ_BIT(1); READ_BIT(2); READ_BIT(3);                      \
      READ_BIT(4); READ_BIT(5); READ_BIT(6); READ_BIT(7);                      \
      asm("incf FSR0");                                                        \
      asm("nop");                                                              \
    }
// clang-format on

void __interrupt(high_priority) INTERRUPT_InterruptHigh(void) {
  // General timing information.
  //
  // Clock is 48MHz, each instruction takes about 83ns (0.083us).
  // Every bit is 19.2771 cycles.
  // Every byte is 154.21686 cycles.
  //
  // Every bit is 1.6us.
  // Every instruction is 0.083ns.
  //
  // 19 cycles is 1.577us.
  //
  // Every bit takes 19 cycles, reading byte takes 152 instructions. The
  // deviation after one byte is -0.184us (calculated as (1.6 - 1.577) * 8).
  // Negative value indicates that CPU took less time to read the byte than the
  // duration of the byte in the protocol. To compensate for this, 2
  // instructions after 8 bits are needed. This makes byte reader to be 154
  // cycles, or 12.782us which 0.018us lower than the duration of byte in the
  // protocol.

  // At this point we are at about 2.0us after the leading edge of the 1PPS
  // signal (due to overhead of ISR initialization on both silicon and compiler
  // sides).
  //
  // This makes us to be 0.4us to be in the first data bit.

  // Store context.
  asm("temp_fsr0l  equ 0x22");
  asm("temp_fsr0h  equ 0x23");
  asm("movff FSR0L,temp_fsr0l");  // Save the FSR0L register.
  asm("movff FSR0H,temp_fsr0h");  // Save the FSR0H register.

  // Store start address of the array.
  asm("movlw LOW _g_received_bytes");
  asm("movwf FSR0L");
  asm("movlw HIGH _g_received_bytes");
  asm("movwf FSR0H");

  // NOTE: Clearing of the interrupt flag will happen in the user ISR.

  // TODO(sergey): Is there a cheaper way?
  asm("movlw 0x1");  // g_have_data = true
  asm("movwf _g_have_data");

  READ_BYTE();  // Byte 0, offset from bit leading edge: +0.898us.
  READ_BYTE();  // Byte 1, offset from bit leading edge: +0.888us.
  READ_BYTE();  // Byte 2, offset from bit leading edge: +0.862us.
  READ_BYTE();  // Byte 3, offset from bit leading edge: +0.844us.

  READ_BYTE();  // Byte 4, offset from bit leading edge: +0.826us.
  READ_BYTE();  // Byte 5, offset from bit leading edge: +0.808us.
  READ_BYTE();  // Byte 6, offset from bit leading edge: +0.79us.
  READ_BYTE();  // Byte 7, offset from bit leading edge: +0.772us.

  READ_BYTE();  // Byte 8, offset from bit leading edge: +0.754us.

  asm("__run_isr:");

  // Restore context.
  asm("movff temp_fsr0l,FSR0H");  // Restore the FSR0H register.
  asm("movff temp_fsr0h,FSR0L");  // Restore the FSR0L register.

  // TODO(sergey): Consider switching this to assembly as well.

  // Sanity check: the interrupt is supposed to be called for only PortB
  // changes. All the rest of the interrupts are to be handled as low priority.
  if (!INTCONbits.RBIF) {
    KERNEL_PanicInInterrupt();
  }

#if USE_HARDCODED_ISR
  g_high_interrupts.isr_0();
#else
  // Run high-priority interrupt handlers.
  for (int i = 0; i < g_high_interrupts.num_interrupt_handlers; ++i) {
    g_high_interrupts.functions[i]();
  }
#endif

  // The ISR is supposed to clear the interrupt flag.
  if (INTCONbits.RBIF) {
    KERNEL_PanicInInterrupt();
  }
}

#undef READ_BIT
#undef NOP_14

void __interrupt(low_priority) INTERRUPT_InterruptLow(void) {
#if USE_HARDCODED_ISR
  g_low_interrupts.isr_0();
  g_low_interrupts.isr_1();
  g_low_interrupts.isr_2();
  g_low_interrupts.isr_3();
#else
  for (int i = 0; i < g_low_interrupts.num_interrupt_handlers; ++i) {
    g_low_interrupts.functions[i]();
  }
#endif
}

const uint8_t* INTERRUPT_GetHighspeedData(uint8_t* num_bytes) {
  if (!g_have_data) {
    *num_bytes = 0;
    return NULL;
  }

  *num_bytes = 9;
  return g_received_bytes;
}
