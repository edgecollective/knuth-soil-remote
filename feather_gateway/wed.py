import board
import busio
import digitalio

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

# power status of fona
ps = digitalio.DigitalInOut(board.D11)
ps.direction = digitalio.Direction.INPUT

# key for fona
key = digitalio.DigitalInOut(board.D12)
key.direction = digitalio.Direction.OUTPUT


# make sure fona is on

print("booting up ...")

time.sleep(2)

fona_stat=ps.value
print("fona_stat=",fona_stat)

while(fona_stat==False):
    print("key OFF")
    key.value=False
    for i in range(3):
        fona_stat==ps.value
        print(fona_stat)
        time.sleep(1)
    print("key ON")
    key.value=True
    for i in range(5):
        fona_stat==ps.value
        print(fona_stat)
        time.sleep(1)

