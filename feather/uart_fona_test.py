
import board
import busio
import digitalio
import time
import adafruit_rfm9x

uart = busio.UART(board.TX, board.RX, baudrate=9600)


while True:

    print(uart.readline())
    print(uart.readline())
    uart.write( b"AT\r")
    print(uart.readline())
    print(uart.readline())  
    time.sleep(1)
