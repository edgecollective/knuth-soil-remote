

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


FONA_TX=19
FONA_RX=21
BAUDRATE=9600
CELL_PRE_SLEEP=5

uart = UART(1, baudrate=BAUDRATE,rx=FONA_TX,tx=FONA_RX,timeout=10)

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



baudrate=9600
#baudrate=57600

def relay_post(url):
	time.sleep(CELL_PRE_SLEEP)
	print(uart.readline())
	print(uart.readline())
	uart.write("AT+SAPBR=0,1\r")
	time.sleep(1)
	print(uart.readline())
	print(uart.readline())
	#uart.write("AT+SAPBR=3,1,\"APN\",\"fast.t-mobile.com\"\r")
	uart.write("AT+SAPBR=3,1,\"APN\",\"wholesale\"\r")
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

	print("radio waiting ...")
	OLED_CURRENTLINE=0
	oled.fill(0)
	OLED_CURRENTLINE=OLED_CURRENTLINE+OLED_LINESKIP
	oled.text("Radio waiting ...",0,OLED_CURRENTLINE)
	oled.show()


	packet = rfm9x.receive(timeout=TIMEOUT)
	if packet is not None:
		try:
			packet_text = str(packet, 'ascii')
			print(packet_text)
			cell_batt=get_cell_battery_voltage()
			print("cell_batt=",cell_batt)
			#cell_batt=3.5
			rssi=str(rfm9x.rssi)
			print('Received: {}'.format(packet_text))
			print("RSSI: {}".format(rssi))
			
			params=packet_text.split(",")
			print(params)
			if len(params)==3:
				
				
				die_raw=float(params[0])
				dielectric=die_raw/50.
				
				ec_raw=float(params[1])
				temp_raw=float(params[2])
				if (temp_raw>900):
					temp_raw=5*(temp_raw–900) + 900
				temp=(temp_raw-400)/10.
				
				if (ec_raw>700):
					ec_raw= 5*(ec_raw–700) + 700
				ec=ec_raw/100.
				
				#url_full=url_base+'&temp='+str(temp)+'&moisture='+str(moisture)+'&cell_bat='+str(cell_batt)
				url_full=url_base+'&temp='+str(temp)+'&ec='+str(ec)+'&cell_bat='+str(cell_batt)+'&dielectric='+str(dielectric)
				print(url_full)
				relay_post(url_full)
				done.value(1)
				time.sleep(60*5)
				
		except Exception as e:
			print("error: "+str(e))
