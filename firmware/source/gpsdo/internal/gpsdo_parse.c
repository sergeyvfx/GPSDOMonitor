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

#include "gpsdo/internal/gpsdo_parse.h"

#include "gpsdo/internal/gpsdo_uccm.h"

bool GPSDO_PARSE_DebugProto(struct GPSDOStatus* status,
                            const uint8_t* data,
                            const int num_data_bytes) {
  return GPSDO_UCCM_UpdateFromDebugProto(status, data, num_data_bytes);
}

bool GPSDO_PARSE_Timecode(struct GPSDOStatus* status,
                          const uint8_t* data,
                          const int num_data_bytes) {
  return GPSDO_UCCM_UpdateFromTimecode(status, data, num_data_bytes);
}
