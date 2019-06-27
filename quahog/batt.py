

from machine import UART
import time
from machine import Pin
from machine import SPI
from upy_rfm9x import RFM9x
import gc
import random
import ssd1306
from machine import I2C

DISPLAY = True
OLED_LINESKIP=18
OLED_CURRENTLINE=0

TIMEOUT = 1.

PUBLIC_KEY="6cfffad03d942a303b39856a04148a01"
PRIVATE_KEY="37d6266de73f098dc95fa9d3bfaf033b"

# sensor data + url
url_base='http://mosspig.club/?public_key='+PUBLIC_KEY+'&private_key='+PRIVATE_KEY


FONA_RX=19
FONA_TX=21
BAUDRATE=9600
CELL_PRE_SLEEP=5

uart = UART(1, baudrate=BAUDRATE,rx=FONA_RX,tx=FONA_TX,timeout=10)



def get_cell_battery_voltage():
	uart.readline()
	uart.readline()
	uart.readline()
	uart.readline()
	#print("\n-----")
	uart.write("AT+CBC\r")
	time.sleep(1)
	a=uart.readline()
	#print("a=",a)
	b=uart.readline()
	#print("b=",b)
	c=uart.readline()
	#print("c=",c)
	d=uart.readline()
	#print("d=",d)
	batt=float(b.decode("utf-8").strip().split(",")[2])/1000.
	#print("batt=",batt)
	return batt

while True:
	batt=get_cell_battery_voltage()
	print("got batt: ",batt)
	time.sleep(3)
