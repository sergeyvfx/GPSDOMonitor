# Helper script which connects to GPSDO UART3 over given serial port,
# and stores received timestamp to files.

import datetime
import serial
import time
from pathlib import Path

PORT = 'COM4'
CWD = Path(__file__).parent
LOG_DIR = CWD / 'timecode'

def ignore_ongoing_transmission(port):
    start_time = time.time()
    while True:
        current_time = time.time()
        received_byte = port.read()
        if len(received_byte):
            start_time = current_time
            continue
        if current_time - start_time > 0.8:
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
        if len(data) and current_time - start_time > 0.4:
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

LOG_DIR.mkdir(exist_ok=True)

old_hexes = None
while True:
    data = receive_data(port)
    if len(data) != 44:
        print(f'Unexpected data length {len(data)}')
        continue

    hexes = [f'{value:#0{4}x}' for value in data]

    # gps_time = (data[27] << 24) | (data[28] << 16) | (data[29] << 8) | data[30]

    hexes[27] = hexes[28] = hexes[29] = hexes[30] ='TT'
    hexes[41] = hexes[42] = 'xx'

    if hexes != old_hexes:
        timestamp = str(datetime.datetime.now()).replace(' ', 'T').replace(':', '.')
        filepath = LOG_DIR / timestamp

        flags = (data[33], data[34], data[35], data[36])
        flags_readable = f'{flags[0]:08b} {flags[1]:08b} {flags[2]:08b} {flags[3]:08b}'

        printable = ' '.join(hexes)
        print(f'{timestamp} {printable}')
        print(f'                           {flags_readable}')
        with open(filepath, 'w') as f:
            f.write(printable + '\n' + flags_readable)
        old_hexes = hexes
