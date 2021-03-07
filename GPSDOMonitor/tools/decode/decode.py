# Helper script which connects to GPSDO UART3 over given serial port,
# receives data, decodes it and prints to console.

import datetime
import os
import serial
import time

PORT = 'COM4'

def ignore_ongoing_transmission(port):
    start_time = time.time()
    while True:
        current_time = time.time()
        received_byte = port.read()
        if len(received_byte):
            start_time = current_time
            continue
        if current_time - start_time > 0.1:
            break

def receive_data(port):
    data = b''
    start_time = time.time()
    while True:
        current_time = time.time()
        received_byte = port.read()
        if len(received_byte):
            data += received_byte
            start_time = current_time
            continue
        if len(data) and current_time - start_time > 0.1:
            break
    return data

port = serial.Serial(port=PORT,
                     baudrate=57600,
                     bytesize=serial.EIGHTBITS,
                     parity=serial.PARITY_NONE,
                     stopbits=serial.STOPBITS_ONE,
                     timeout=0)

print('Ignoring initial data')
ignore_ongoing_transmission(port)

# From https://tipok.org.ua/node/53

# FL[0]:
#   [-] bit6 - always 1
#   [X] bit5 - GPS oscillator locked (sats are seen at least once)
#   [X] bit1 - leap second announcement flag (will be added in next end of current half year: at 30 June or 31 December) proof1, proof2
#   [-] bit0 - setted to 1 when no initial lock to satellites (not warmed)
#              Seems to always be 0 on Samsung 2945

# FL[1]:
#   [-] bit3 - setted to 1 on trimble when initialized and no sats seen.
#              Seems to always be 0 on Samsung 2945
#   [X] bit2 - have GPS time
#   [X] bit1 - have too small input voltage

# FL[2]:
#   [-] bit7 - 1 on symmetricom
#   [-] bit6 - 1 on trimble
#   [ ] bit3 - no sync to GPS satellites (setted to 1 if survey not yet finished)
#   [-] bit2 - always 1
#   [ ] bit1 - no sync to GPS satellites (setted to 1 if survey not yet finished)
#   [-] bit0 - always 1

# FL[3]:
#   [-] bit7 - 1 on trimble
#   [-] bit6 - 1 on symmetricom
#   [X] bit5 - no antenna connected
#       On Samsung 2945 it is FL[1] bit3
#   [-] bit4 - no GPS signal
#              Seems to always be 0 on Samsung 2945

# Survey status is not reported in the time code packets.

#  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 35 36
# HH*HH -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- TT*TT*TT*TT -- SS FL*FL*FL*FL -- -- -- -- -- -- HH
# C5 00 80 00 00 00 00 28 1C 52 00 00 20 60 C1 91 00 00 00 00 00 00 00 00 00 00 00 00 00 02 B8 00 00 41 00 8F 50 00 00 00 00 56 8B CA

#                    flags[0] flags[1] flags[2] flags[3]
#                    76543210 76543210 76543210 76543210
# ------------------+--------+--------+--------+--------+
# startup            01000000 00000000 00001111 10100111
# PLL slow flashing  01000000 00000000 00000101 10000111
#             solid  01000000 00000000 00001111 10100111
# PLL slow flashing  01000000 00000000 00000101 10000111
# PLL fast flashing  01100000 00000100 00000101 10000111
# PLL fast flashing  01100000 00000100 00001111 10100111  (1)
#       survey done  01100000 00000100 00000101 10000111
#   survey + locked  01100000 00000100 00000101 10000111
#
# (1) Apears after a while. re-sync? ppl is locked without sync to satelites?
#
#/ Possible other bits meaning:
# - flags[0] bit 5: UCCM Status MASTER

while True:
    data = receive_data(port)
    if len(data) != 44:
        print(f'Unexpected data length {len(data)}')
        continue

    timestamp = str(datetime.datetime.now()).replace(' ', 'T').replace(':', '.')

    flags = (data[33], data[34], data[35], data[36])
    flags_bin = f'{flags[0]:08b} {flags[1]:08b} {flags[2]:08b} {flags[3]:08b}'
    flags_hex = ' '.join([f'{value:#0{4}x}' for value in flags])

    # GPS time reported by the GPSDO
    # Initially is counting up from 0. Once initial synchronization has finished
    # reports proper current GPS time.
    gps_time = (data[27] << 24) | (data[28] << 16) | (data[29] << 8) | data[30]

    voltage_ok = (flags[1] & (1 << 1)) == 0
    antenna_ok = (flags[1] & (1 << 3)) == 0

    # TODO(sergey): Need to doublecheck this. Based on information from Sergiy
    # on https://tipok.org.ua/node/53
    leap_second_announced = (flags[0] & (1 << 1)) != 0

    # Is set to true when GPS time reported by the timecode is valid.
    have_gps_time = (flags[1] & (1 << 2)) != 0

    # PLL lock makes PP2S output is valid.
    #
    # Need to verify at which stage 1PPS output is valid.
    # Once the PLL has been locked, it stays locked, even when no satellites are
    # visible.
    pll_locked = (flags[0] & (1 << 5)) != 0

    bit1 = 1 if (flags[2] & 0b00000010) else 0
    bit2 = 1 if (flags[2] & 0b00001000) else 0
    #         solid: (1, 1)
    # slow flashing: (0, 0)
    # fast flashing: (1, 1)
    # Is this a 1pps and 10MHz status?

    if pll_locked:
        pll_status_str = 'LOCKED'
    elif bit1 == 0:
        pll_status_str = 'SYNCING'
    else:
        pll_status_str = 'UNLOCKED'

    os.system('cls')
    print('Voltage       : ' + ('OK' if voltage_ok else 'FAIL'))
    print('Antenna       : ' + ('OK' if antenna_ok else 'FAIL'))
    print('Have GPS time : ' + ('OK' if have_gps_time else 'FAIL'))
    print(f'GPS time      : {gps_time}')
    print('Leap sec ann  : ' + ('TRUE' if leap_second_announced else 'FALSE'))
    print(f'PLL           : {pll_status_str}')
    print(f'Flags         : {flags_bin}')
    print(f'Flags HEX     : {flags_hex}')
