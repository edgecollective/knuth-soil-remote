import board
import busio
import digitalio
from digitalio import DigitalInOut,Direction,Pull

import time
import adafruit_rfm9x
import gc
from analogio import AnalogIn


from adafruit_onewire.bus import OneWireBus
from adafruit_ds18x20 import DS18X20

TIMEOUT=1

ec_5_in = AnalogIn(board.A0)
vbatt_in = AnalogIn(board.A5)

uart = busio.UART(board.TX, board.RX, baudrate=9600)

# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = digitalio.DigitalInOut(board.RFM9X_CS)
reset = digitalio.DigitalInOut(board.RFM9X_RST)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)

# led
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

# done
done = digitalio.DigitalInOut(board.D10)
done.direction = digitalio.Direction.OUTPUT

# done
ps = digitalio.DigitalInOut(board.D11)
ps.direction = digitalio.Direction.INPUT
#ps.pull=Pull.UP

# key
key = digitalio.DigitalInOut(board.D12)
key.direction = digitalio.Direction.OUTPUT
key.value=True


print("ps.value=",ps.value)
#print("key.value=",key.value)


for i in range(0,4):
    print("waiting ...")
    time.sleep(1)
    

if(ps.value==False):
    print("switching...")
    key.value=False
    time.sleep(2)
    key.value=True

print("Should be on.")

# main code goes here
for i in range(0,10):
    print('waiting ...')
    time.sleep(1)


print("now shut off ...")
key.value=False
time.sleep(2)
key.value=True

print("should be off")
# main code goes here
for i in range(0,30):
    print('waiting ...')
    time.sleep(1)