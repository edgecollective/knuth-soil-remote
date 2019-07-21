
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

FARMOS_NAME="edgecollective"

#PUBLIC_KEY="6cfffad03d942a303b39856a04148a01"
#PRIVATE_KEY="37d6266de73f098dc95fa9d3bfaf033b"
PUBLIC_KEY="c143a211004b8b6ff64936fdb78f102a"
PRIVATE_KEY="06b5e1f4636963c4529d14b9ce800033"

# sensor data + url
url_base='http://mosspig.club/?public_key='+PUBLIC_KEY+'&private_key='+PRIVATE_KEY+'&farmos_name='+FARMOS_NAME


FONA_RX=19
FONA_TX=21
BAUDRATE=9600
CELL_PRE_SLEEP=5

uart = UART(1, baudrate=BAUDRATE,rx=FONA_RX,tx=FONA_TX,timeout=10)

done = Pin(22,Pin.OUT)
done.value(0)
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

index = 1

while True:

	#print("radio really waiting "+str(index))
	index=index+1

	packet = rfm9x.receive()
	#print(rfm9x.packet)
	if packet is not None:
		packet_text = str(packet, 'ascii')
		print(packet_text)

