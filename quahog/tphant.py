

from machine import UART
import time
from machine import Pin
from machine import SPI
from upy_rfm9x import RFM9x
import gc
import random
import ssd1306
from machine import I2C


import ujson as json
import urequests as requests

import network
sta_if = network.WLAN(network.STA_IF)

WIFI_NET = 'InmanSquareOasis'
WIFI_PASSWORD = 'portauprince'


PUBLIC_KEY='1OOko0XNqwtAyZqK1Djoi46mPap'
PRIVATE_KEY='arrAez5MZjuwNY3gnEALSAKD6xl'

TIMEOUT=5



def do_connect():
	if not sta_if.isconnected():
		print('connecting to network...')
		sta_if.active(False)
		sta_if.active(True)
		sta_if.connect(WIFI_NET, WIFI_PASSWORD)
		while not sta_if.isconnected():
			pass
	print('network config:', sta_if.ifconfig())



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



while True:



	packet = rfm9x.receive(timeout=TIMEOUT)
	if packet is not None:
		#try:
		packet_text = str(packet, 'ascii')
		print(packet_text)
		cell_batt=4.
		
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
			#url_full=url_base+'&temp='+str(temp)+'&ec='+str(ec)+'&cell_bat='+str(cell_batt)+'&dielectric='+str(dielectric)
			

			url_full='http://192.168.1.216:8080/input/'+PUBLIC_KEY+'?private_key='+PRIVATE_KEY+'&temp='+str(temp)+'&ec='+str(ec)+'&cell_bat='+str(cell_batt)+'&dielectric='+str(dielectric)
			print(url_full)
			do_connect()
			response = requests.get(url_full)
			#print(response.status)
			
			print(response)
			time.sleep(60*5)
				
		#except Exception as e:
		#	print("error: "+str(e))
