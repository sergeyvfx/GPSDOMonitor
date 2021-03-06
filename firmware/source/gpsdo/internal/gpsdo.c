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

#include "gpsdo/gpsdo.h"

#include <stdint.h>
#include <string.h>
#include <xc.h>

#include "gpsdo/internal/gpsdo_debug_proto.h"
#include "gpsdo/internal/gpsdo_timecode_proto.h"
#include "gpsdo/internal/gpsdo_uccm.h"

typedef struct Context {
  // Denotes whether GPSDO status has been received from the module and decoded.
  GPSDOStatus status;
} Context;

// TODO(sergey): Think of moving this to an app state and not have it a global.
//
// The tricky part is that there is no heap allocation on 8 bit microcontrollers
// and in order to make it possible to stack-allocate this context a lot of a
// purely internal state is to exposed in the public header.
static Context g_context;

////////////////////////////////////////////////////////////////////////////////
// Initialization.

void GPSDO_Initialize(void) {
  GPSDO_Status_Reset(&g_context.status);

  GPSDO_TIMECODE_Initialize(&g_context.status);
  GPSDO_DEBUG_PROTO_Initialize(&g_context.status);
}

////////////////////////////////////////////////////////////////////////////////
// Status.

void GPSDO_Status_Reset(GPSDOStatus* status) {
  status->voltage_ok = false;
  status->antenna_ok = false;

  status->gps_time = 0;
  status->have_gps_time = false;

  status->pll_status = GPSDO_PLL_UNLOCKED;

  status->leap_second_announced = false;

  status->gps_utc_offset = 0;
}

bool GPSDO_Status_Equal(const GPSDOStatus* status_a,
                        const GPSDOStatus* status_b) {
  return memcmp(status_a, status_b, sizeof(GPSDOStatus)) == 0;
}

const GPSDOStatus* GPSDO_GetStatus(void) {
  return &g_context.status;
}
