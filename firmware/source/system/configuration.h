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

#ifndef SYSTEM_CONFIGURATION_H_
#define SYSTEM_CONFIGURATION_H_

////////////////////////////////////////////////////////////////////////////////
// Core.

// Software side configuration of the board.
//
// Includes settings like at which frequency core is running, which
// communication ports are enabled and so on.
//
// NOTE: Some settings are living together from chip configuration bits from
// the chip_configuration.h header. For example, if there are changes in PLL
// settings are made the core frequency is to be adjusted in this header.

// Frequency at which the Fosc is running.
//
// In derived from the oscillator configuration bits, PLL settings, frequency of
// an external crystal oscillator and so on.
#define FOSC_FREQ 48000000ul

// NOTE: The naming is a bit misleading. This define is used by macros like
// __delay_ms() to see how much to NOP. The calculation is to use the core
// frequency, not the frequency of the crystal oscillator.
#define _XTAL_FREQ FOSC_FREQ

// Heartbeat is used to indicate that the system tasks are running: on every
// call of `SYSTEM_Tasks()` the heartbeat pin is toggled high and low again.
#define HEARTBEAT_TRIS_BIT (TRISAbits.RA0)
#define HEARTBEAT_LAT_BIT (LATAbits.LATA0)

////////////////////////////////////////////////////////////////////////////////
// UART.
//
// TODO(serggey): Separate GPSDO and board debug UARTs.

// Baudrate at which UART module transmits and receives data.
#define SYSTEM_UART_BAUDRATE 57600

// Side of a buffer which is used to asynchronously transmit data.
//
// The idea the buffer is to allow system tasks to keep running while slow
// transmission is happening.
#define UART_BUFFER_SIZE 256

////////////////////////////////////////////////////////////////////////////////
// High-speed data line.
//
// This is an implementation of timecode reader from GPSDO which is implemented
// as a high-speed USART data line. It is promoted to be more of a system
// feature due to performance reasons.
//
// This data is started to read on PORTBbits.RB4 change, which can be hooked up
// to either 1pps line or to the data line. The data pin is configured
// separately.

// Port and bit in the assembly notation at which data is expected to be read.
// It could be different from the port interrupt pin.
#define HIGHSPEED_DATA_LINE "PORTB, 4"

#endif  // SYSTEM_CONFIGURATION_H_
