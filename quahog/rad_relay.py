

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


i2c = I2C(-1, Pin(14), Pin(2))
oled = ssd1306.SSD1306_I2C(128, 64, i2c)


# radio setup
sck=Pin(25)
mosi=Pin(33)
miso=Pin(32)
cs = Pin(26, Pin.OUT)
#reset=Pin(13)
led = Pin(13,Pin.OUT)

resetNum=27

spi=SPI(1,baudrate=5000000,sck=sck,mosi=mosi,miso=miso)

rfm9x = RFM9x(spi, cs, resetNum, 915.0)



baudrate=9600
#baudrate=57600

def relay_post(url):
	time.sleep(CELL_PRE_SLEEP)
	uart.write("AT+SAPBR=0,1\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+SAPBR=3,1,\"APN\",\"fast.t-mobile.com\"\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+CREG?\r")
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+SAPBR=2,1\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+SAPBR=1,1\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("WAIT=6\r")
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+CMGF=0\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+HTTPINIT\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())

	uart.write("AT+HTTPPARA=\"URL\",\""+url+"\"\r")

	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+HTTPPARA=\"CID\",1\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())

	uart.write("AT+HTTPACTION=0\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+HTTPREAD\r")
	time.sleep(1)
	a=uart.readline()
	b=uart.readline()
	print(a)
	print(b)

	oled.fill(0)
	oled.text(a,0,0)
	oled.show()

	uart.write("WAIT=6\r")
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+HTTPTERM\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())

while True:

	print("radio waiting ...")
	OLED_CURRENTLINE=0
	oled.fill(0)
	OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
	oled.text("Radio waiting ...",0,OLED_CURRENTLINE)
	oled.show()
	

	rfm9x.receive(timeout=TIMEOUT)
	if rfm9x.packet is not None:
		try:
			packet_text = str(rfm9x.packet, 'ascii')
			rssi=str(rfm9x.rssi)
			OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
			oled.text("<--",0,OLED_CURRENTLINE)
			oled.show() 
			OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
			oled.text(packet_text,0,OLED_CURRENTLINE)
			oled.show() 
			OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
			oled.text("rssi: "+rssi,0,OLED_CURRENTLINE)
			oled.show() 
			print('Received: {}'.format(packet_text))
			print("RSSI: {}".format(rssi))
			OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
			oled.text("Posting ...",0,OLED_CURRENTLINE)
			oled.show() 
			params=packet_text.split(",")
			if len(params)==2:
				print(params)
				temp=params[0]
				moisture=params[1]
				url_full=url_base+'&temp='+str(temp)+'&moisture='+str(moisture)
				print(url_full)
				relay_post(url_full)
			else:
				print("weird ...")
		except Exception as e:
			print("error: "+str(e))
			#print("some error?")
			#display_text = "[{}]: (garbled msg)".format(i)
			#oled.text(display_text,0,0)
	gc.collect()
