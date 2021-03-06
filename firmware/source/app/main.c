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

#include <stdbool.h>
#include <stdlib.h>
#include <xc.h>

#include "app/indication.h"
#include "gpsdo/gpsdo.h"
#include "system/system.h"
#include "system/task.h"
#include "time/time.h"
#include "uart/uart.h"

bool have_previous_gpsdo_status = false;
GPSDOStatus previous_gpsdo_status;

static bool HaveNewStatus(void) {
  const GPSDOStatus* gpsdo_status = GPSDO_GetStatus();

  bool have_new_status = true;
  if (have_previous_gpsdo_status) {
    have_new_status = !GPSDO_Status_Equal(&previous_gpsdo_status, gpsdo_status);
  }

  previous_gpsdo_status = *gpsdo_status;
  have_previous_gpsdo_status = true;

  return have_new_status;
}

static void reverse(char* str, int length) {
  int left = 0;
  int right = length - 1;
  while (left < right) {
    const char tmp = str[left];
    str[left] = str[right];
    str[right] = tmp;
    left++;
    right--;
  }
}

static char* UInt32ToString(uint32_t value, char* str) {
  int str_index = 0;

  if (value == 0) {
    // Simple case: value is 0. Do early output to simplify code dealing with
    // possible empty string output.
    str[str_index++] = '0';
    str[str_index] = '\0';
    return str;
  }

  while (value != 0) {
    const uint8_t digit = value % 10;
    str[str_index++] = digit + '0';
    value = value / 10;
  }

  str[str_index] = '\0';

  reverse(str, str_index);

  return str;
}

static char* IntToString(int value, char* str) {
  int str_index = 0;

  if (value == 0) {
    // Simple case: value is 0. Do early output to simplify code dealing with
    // possible empty string output.
    str[str_index++] = '0';
    str[str_index] = '\0';
    return str;
  }

  const bool is_negative = (value < 0);
  if (is_negative) {
    value = -value;
  }

  while (value != 0) {
    const uint8_t digit = value % 10;
    str[str_index++] = digit + '0';
    value = value / 10;
  }

  if (is_negative) {
    str[str_index++] = '-';
  }

  str[str_index] = '\0';

  reverse(str, str_index);

  return str;
}

static void UpdateStatus(void) {
  if (!HaveNewStatus()) {
    return;
  }

  INDICATOR_FlashLED(0);

  const GPSDOStatus* gpsdo_status = GPSDO_GetStatus();

  if (gpsdo_status->voltage_ok) {
    UART_WriteString("VCORE:OK  ");
  } else {
    UART_WriteString("VCORE:FAIL");
  }

  if (gpsdo_status->antenna_ok) {
    UART_WriteString(" ANT:OK  ");
  } else {
    UART_WriteString(" ANT:FAIL");
  }

  if (gpsdo_status->pll_status == GPSDO_PLL_UNLOCKED) {
    UART_WriteString(" PLL:UNLOCKED");
  } else if (gpsdo_status->pll_status == GPSDO_PLL_SYNCING) {
    UART_WriteString(" PLL:SYNCING ");
  } else if (gpsdo_status->pll_status == GPSDO_PLL_LOCKED) {
    UART_WriteString(" PLL:LOCKED  ");
  } else {
    UART_WriteString(" PLL:UNKNOWN ");
  }

  if (gpsdo_status->leap_second_announced) {
    UART_WriteString(" LEAP_SECOND:YES");
  } else {
    UART_WriteString(" LEAP_SECOND:NO ");
  }

  if (gpsdo_status->have_gps_time) {
    UART_WriteString(" GPS_TIME_FLAG:OK  ");
  } else {
    UART_WriteString(" GPS_TIME_FLAG:FAIL");
  }

  {
    char gps_utc_offset_str[16];
    IntToString(gpsdo_status->gps_utc_offset, gps_utc_offset_str);
    UART_WriteString(" GPS-UTC:");
    UART_WriteString(gps_utc_offset_str);
  }

  {
    char gps_time_str[16];
    UInt32ToString(gpsdo_status->gps_time, gps_time_str);
    UART_WriteString(" GPS_TIME:");
    UART_WriteString(gps_time_str);
  }

  UART_WriteBuffer("\r\n", 2);
}

static void Tasks(void) {
  UpdateStatus();
}

static void APP_Initialize(void) {
  SYSTEM_Initialize();
  INDICATION_Initialize();
  GPSDO_Initialize();

  TASK_Register(&Tasks);

  // TODO(sergey): Run minimum amount of tasks needed to properly restore
  // configuration of the digital pot.

  // Make sure all transient states are stabilised. For example, that UART TX is
  // properly pulled up.
  //
  // TODO(sergey): When using PL2303HX-based Serial-to-USB dongle from eBay
  // there is a specific transition pattern on the TX pin of the
  // microcontroller: voltage first is pulled down from around 3v and then is
  // quickly raised up to 5v Vcc. This is where serial terminal will think there
  // is an incoming data. This delay mitigates the issue and the only outcome of
  // it is a first rubbish character in the terminal. Either need some sort of
  // external pull-up or a logic gate to avoid such high-low-hight transition on
  // the TX pin.
  DelayMilliseconds(10);

  UART_WriteString("\r\n");
  UART_WriteString("System initialisation finished.\r\n");
  UART_WriteString("\r\n");
  UART_WriteString("====================================\r\n");
  UART_WriteString("***         GPSDO Monitor        ***\r\n");
  UART_WriteString("====================================\r\n");
  // TODO(sergey): Print software and hardware versions.
  UART_WriteString("\r\n");
}

static void APP_StartUp(void) {
}

void main(void) {
  APP_Initialize();
  APP_StartUp();

  for (;;) {
    TASK_Run();
  }
}
