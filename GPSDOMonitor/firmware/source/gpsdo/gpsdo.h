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

#ifndef GPSDO_H_
#define GPSDO_H_

#include <stdbool.h>
#include <stdint.h>

typedef enum GPSDOPLLStatus {
  // PLL of the GPSDO module is unlocked.
  GPSDO_PLL_UNLOCKED,

  // PLL is not locked, but is in progress of synchronizing to the satellites.
  GPSDO_PLL_SYNCING,

  // PLL is locked and 10MHz signal is phase-locked to the global system.
  // On some modules (such as Samsung STP 2945 LF) also denotes PP2S output is
  // valid.
  GPSDO_PLL_LOCKED,
} GPSDOPLLStatus;

typedef struct GPSDOStatus {
  bool voltage_ok;
  bool antenna_ok;

  // Current GPS time.
  // The value is defined until have_gps_time is set tu true. On some GPSDO
  // modules (such as Samsung STP 2945 LF) counts from 0 until time is
  // synchronized to the satelities.
  uint32_t gps_time;

  // True when `gps_time` is synchronized to satelities and represents valid
  // current GPS time.
  bool have_gps_time;

  GPSDOPLLStatus pll_status;

  // Leap second is announced to be introduced in the next 6 months.
  bool leap_second_announced;

  // GPS-UTC Offset.
  int gps_utc_offset;
} GPSDOStatus;

// Initialise GPSDO subsystem.
// Will configure all required ports, timers, and interrupts.
void GPSDO_Initialize(void);

// Reset the GPSDO status to its known initial state.
void GPSDO_Status_Reset(GPSDOStatus* status);

// Check equality of two GPSDO statuses.
bool GPSDO_Status_Equal(const GPSDOStatus* status_a,
                        const GPSDOStatus* status_b);

// Get latest status of the GPSDO.
const GPSDOStatus* GPSDO_GetStatus(void);

#endif  // GPSDO_H_
