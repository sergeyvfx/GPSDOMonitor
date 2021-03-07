# Helper script which connects to GPSDO UART3 over given serial port,
# receives data, extracts GPS time from it and prints to console.

import datetime
import serial
import time

PORT = 'COM3'

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

while True:
    data = receive_data(port)
    if len(data) != 44:
        print(f'Unexpected data length {len(data)}')
        continue

    gps_time = (data[27] << 24) | (data[28] << 16) | (data[29] << 8) | data[30]
    gps_time_data = (data[27], data[28], data[29], data[30])
    gps_time_hex = [f'{value:#0{4}x}' for value in gps_time_data]
    gps_time_hex_str = ' '.join(gps_time_hex)

    if gps_time_data[0] != 0x4d:
        timestamp = str(datetime.datetime.now()).replace(' ', 'T').replace(':', '.')
        print(f'{timestamp} : {gps_time_hex_str}')

