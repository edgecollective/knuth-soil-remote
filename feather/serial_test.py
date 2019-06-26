# CircuitPython Demo - USB/Serial echo

import board
import busio
import digitalio
import time

led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

uart = busio.UART(board.TX, board.RX, baudrate=9600)

while True:
    led.value=False
    output='32'
    uart.write(b'32\n')
    print(output)
    led.value = True
    time.sleep(1)
