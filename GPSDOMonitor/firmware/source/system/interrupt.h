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

#ifndef SYSTEM_INTERRUPT_H_
#define SYSTEM_INTERRUPT_H_

#include <stdint.h>

typedef enum InterruptPriority {
  INTERRUPT_PRIORITY_LOW,
  INTERRUPT_PRIORITY_HIGH,
} InterruptPriority;

typedef void (*InterruptFunction)(void);

// Register interrupt handler.
//
// The high-priority interrupts are run before normal priority and hence will
// have lower latency between actual interrupt happenning and handler being
// called.
//
// NOTE: It is up to the caller to make sure an actual interrupt configuration
// matches with registered ISR. If there is a mismatch between configuration and
// ISR level the chip will go into an infinite loop of ISR.
void INTERRUPT_Register(InterruptFunction function, InterruptPriority priority);

////////////////////////////////////////////////////////////////////////////////
// Data received from the high speed bus.
//
// This is a special routine which is configured as high-priority ISR which
// reads USART-like data from one of chip's pins. This is done as a part of
// generic interrupts module because the chip only have single ISR in the
// interrupt vector and calling user-defined function is too slow (the data is
// gone at the moment when user-defined function is executed).
//
// The data is read as LSB..MSB.

// Get received data from the highspeed bus.
// With return num_bytes of 0 and nullptr as a return value if data was never
// received.
const uint8_t* INTERRUPT_GetHighspeedData(uint8_t* num_bytes);

#endif  // SYSTEM_INTERRUPT_H_
