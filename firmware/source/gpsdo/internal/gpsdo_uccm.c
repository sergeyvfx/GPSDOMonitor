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

#include "gpsdo/internal/gpsdo_uccm.h"

#include "gpsdo/gpsdo.h"

// The protocol decoder is based on the article from Sergiy
//
//   https://tipok.org.ua/node/53
//
// Some modifications were needed to make it work with Samsung STP 2945 LF.
//
//
// clang-format off
//  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 35 36                       // NOLINT
// HH*HH -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- TT*TT*TT*TT -- SS FL*FL*FL*FL -- -- -- -- -- -- HH  // NOLINT
// C5 00 80 00 00 00 00 28 1C 52 00 00 20 60 C1 91 00 00 00 00 00 00 00 00 00 00 00 00 00 02 B8 00 00 41 00 8F 50 00 00 00 00 56 8B CA  // NOLINT
// clang-format on
//
//                    flags[0] flags[1] flags[2] flags[3]
//                    76543210 76543210 76543210 76543210
// ------------------+--------+--------+--------+--------+
// startup            01000000 00000000 00001111 10100111
// PLL slow flashing  01000000 00000000 00000101 10000111
//             solid  01000000 00000000 00001111 10100111
// PLL slow flashing  01000000 00000000 00000101 10000111
// PLL fast flashing  01100000 00000100 00000101 10000111
// PLL fast flashing  01100000 00000100 00001111 10100111  (1)
//       survey done  01100000 00000100 00000101 10000111
//   survey + locked  01100000 00000100 00000101 10000111
//
// (1) Apears after a while. re-sync? ppl is locked without sync to satelites?
//
// Possible other bits meaning:
// - flags[0] bit 5: UCCM Status MASTER

static void UpdateFromFlags(GPSDOStatus* status, const uint8_t flags[4]) {
  status->voltage_ok = (flags[1] & (1 << 1)) == 0;
  status->antenna_ok = (flags[1] & (1 << 3)) == 0;

  status->leap_second_announced = (flags[0] & (1 << 1)) != 0;

  // Is set to true when GPS time reported by the timecode is valid.
  //
  // This indicates both GPS status to be different from "GPS unavailable" and
  // "GPS 1PPS" to be valid.
  status->have_gps_time = (flags[1] & (1 << 2)) != 0;

  // PLL lock makes PP2S output is valid.
  //
  // Need to verify at which stage 1PPS output is valid.
  // Once the PLL has been locked, it stays locked, even when no satellites are
  // visible.
  const bool pll_locked = (flags[0] & (1 << 5)) != 0;
  const bool pll_lock_bit1 = (flags[2] & (1 << 1)) != 0;
  const bool pll_lock_bit3 = (flags[2] & (1 << 3)) != 0;
  if (pll_locked) {
    status->pll_status = GPSDO_PLL_LOCKED;
  } else if (pll_lock_bit1 == 0 && pll_lock_bit3 == 0) {
    status->pll_status = GPSDO_PLL_SYNCING;
  } else {
    status->pll_status = GPSDO_PLL_UNLOCKED;
  };
}

static void UpdateGPSTime(GPSDOStatus* status,
                          const uint32_t gps_time_bytes[4]) {
  status->gps_time = (gps_time_bytes[3] << 24) | (gps_time_bytes[2] << 16) |
                     (gps_time_bytes[1] << 8) | gps_time_bytes[0];
}

bool GPSDO_UCCM_UpdateFromDebugProto(GPSDOStatus* status,
                                     const uint8_t* data,
                                     const int num_data_bytes) {
  if (num_data_bytes != 44) {
    return false;
  }

  const uint8_t flags[4] = {data[33], data[34], data[35], data[36]};
  const uint32_t gps_time_bytes[4] = {data[30], data[29], data[28], data[27]};

  UpdateFromFlags(status, flags);
  UpdateGPSTime(status, gps_time_bytes);

  status->gps_utc_offset = data[32];

  return true;
}

bool GPSDO_UCCM_UpdateFromTimecode(GPSDOStatus* status,
                                   const uint8_t* data,
                                   const int num_data_bytes) {
  const uint8_t flags[4] = {data[4], data[5], data[6], data[7]};
  const uint32_t gps_time_bytes[4] = {data[0], data[1], data[2], data[3]};

  UpdateFromFlags(status, flags);
  UpdateGPSTime(status, gps_time_bytes);

  return true;
}
