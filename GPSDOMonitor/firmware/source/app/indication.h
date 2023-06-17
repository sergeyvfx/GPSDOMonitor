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

#ifndef APP_INDICATION_H_
#define APP_INDICATION_H_

#include <stdbool.h>

typedef enum IndicatorStatus {
  INDICATOR_STATUS_UNKNOWN,

  INDICATOR_STATUS_OK,
  INDICATOR_STATUS_FAIL,
  INDICATOR_STATUS_BLINKING,
} IndicatorStatus;

// Initialise indication subsystem.
// Will configure all required ports, timers, and interrupts.
void INDICATION_Initialize(void);

// Flash the heartbeat LED.
void INDICATOR_Heartbeat(void);

void INDICATOR_PowerStatus(IndicatorStatus status);
void INDICATOR_AntennaStatus(IndicatorStatus status);
void INDICATOR_LockStatus(IndicatorStatus status);

#endif  // APP_INDICATION_H_
