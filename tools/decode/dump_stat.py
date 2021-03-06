# Helper script which connects to GPSDO UART2 over given serial port,
# monitors SYST:STAT? and LED:GPSLock? and logs results to files.

import os
import datetime
import serial
import time
from pathlib import Path

PORT = 'COM3'
CWD = Path(__file__).parent
LOG_DIR = CWD / 'stat'

def ignore_ongoing_transmission(port):
    start_time = time.time()
    while True:
        current_time = time.time()
        received_byte = port.read()
        if len(received_byte):
            start_time = current_time
            continue
        if current_time - start_time > 2.0:
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

while True:
    timestamp = str(datetime.datetime.now()).replace(' ', 'T').replace(':', '.')
    filepath = LOG_DIR / timestamp

    port.write(b'SYST:STAT?\r\n')
    time.sleep(0.05)
    data = receive_data(port)
    stat = data.decode().replace('\r\n\r', '\n')

    port.write(b'LED:GPSLock?\r\n')
    time.sleep(0.05)
    data = receive_data(port)
    gps_lock = data.decode().replace('\r\n\r', '\n')

    os.system('cls')
    print(stat)
    print()
    print(gps_lock)
    with open(filepath, 'w') as f:
        f.write(stat + '\n\n' + gps_lock)
    time.sleep(0.7)
