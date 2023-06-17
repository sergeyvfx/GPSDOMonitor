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

#include "kernel/kernel.h"

#include <stdbool.h>
#include <xc.h>

static void PanicPrintChar(const char ch) {
  while (TXIF == 0) {
    asm("nop");
  }
  TXREG = ch;
}

static void PanicPrintMessage(const char message[KERNEL_PANIC_MAX_MESSAGE]) {
  PanicPrintChar('\r');
  PanicPrintChar('\n');
  for (int i = 0; i < KERNEL_PANIC_MAX_MESSAGE; ++i) {
    if (!message[i]) {
      break;
    }
    PanicPrintChar(message[i]);
  }
  PanicPrintChar('\r');
  PanicPrintChar('\n');
}

void KERNEL_Panic(const char message[KERNEL_PANIC_MAX_MESSAGE]) {
  PanicPrintMessage(message);

  while (true) {
    // TODO(sergey): Add support of panic LED blink.
    asm("nop");
  }
}

void KERNEL_PanicInInterrupt(const char message[KERNEL_PANIC_MAX_MESSAGE]) {
  PanicPrintMessage(message);

  // TODO(sergey): Shouldn't really be stalling the interrupt. But how to
  // communicate an unrecoverable error?

  while (true) {
    asm("nop");
  }
}
