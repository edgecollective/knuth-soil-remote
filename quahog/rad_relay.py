

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

# sensor data + url
url_base='http://mosspig.club/?public_key=834c74e03901cd1702c0a3060803f767&private_key=bfe468dc77b5530d65319b67cc39cdbc'





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

while True:

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
			oled.text("(would post here)",0,OLED_CURRENTLINE)
			oled.show() 
			time.sleep(2)
			#url_full=url_base+'&temp='+str(temp)+'&moisture='+str(moisture)
			#print(url_full)
			#relay_post_code()
		except:
			print("some error?")
			#display_text = "[{}]: (garbled msg)".format(i)
			#oled.text(display_text,0,0)
	gc.collect()
