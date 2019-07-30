from machine import UART
import time
from machine import Pin
from machine import SPI
from upy_rfm9x import RFM9x
import gc
import random
import ssd1306
from machine import I2C

FONA_RX=19
FONA_TX=21
BAUDRATE=9600
CELL_PRE_SLEEP=5

uart = UART(1, baudrate=BAUDRATE,rx=FONA_RX,tx=FONA_TX,timeout=10)

uart.readline()
uart.readline()
uart.readline()
uart.readline()
print("\n-----")
uart.write("AT+CBC\r")
time.sleep(1)
a=uart.readline()
print("a=",a)
b=uart.readline()
print("b=",b)
c=uart.readline()
print("c=",c)
d=uart.readline()