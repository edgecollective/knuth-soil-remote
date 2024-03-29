import board
import busio
import digitalio
import time
import adafruit_rfm9x
import gc

from adafruit_onewire.bus import OneWireBus
from adafruit_ds18x20 import DS18X20

SLEEP_TIME=120

# Initialize one-wire bus on board pin D5.
ow_bus = OneWireBus(board.D5)

# Scan for sensors and grab the first one found.
ds18_bus=ow_bus.scan()
print(ds18_bus)

ds18=[]
for probe in ds18_bus:
    print(probe)
    ds18.append(DS18X20(ow_bus, probe))


# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = digitalio.DigitalInOut(board.RFM9X_CS)
reset = digitalio.DigitalInOut(board.RFM9X_RST)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)

# led
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

# default values if probe doesn't work

temp=30
moisture=20

while True:
    
    if (len(ds18)==1):
        sensor=ds18[0]
        temp=float(sensor.temperature)
        #print("read temp:"+temp)
        #print('{0:0.3f}C'.format(sensor.temperature))
        
    sendstr=str(temp)+","+str(moisture)
    rfm9x.send(sendstr)
    led.value=True
    time.sleep(.1)
    led.value = False
    time.sleep(.1)
    print(sendstr)
    time.sleep(1)
    gc.collect()

    time.sleep(SLEEP_TIME)

