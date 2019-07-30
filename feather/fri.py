import board
import busio
import digitalio
import time
import adafruit_rfm9x
import gc
from analogio import AnalogIn


from adafruit_onewire.bus import OneWireBus
from adafruit_ds18x20 import DS18X20


ec_5_in = AnalogIn(board.A0)
vbatt_in = AnalogIn(board.A5)


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

# done
done = digitalio.DigitalInOut(board.D10)
done.direction = digitalio.Direction.OUTPUT

# default values if probe doesn't work

temp=30
ec_5=20

done.value=False

while True:
    
    if (len(ds18)==1):
        
        sensor=ds18[0]
        temp=float(sensor.temperature)
        print("read temp:"+str(temp))
        #print('{0:0.3f}C'.format(sensor.temperature))

    #temp = 25. #replace with onewire soon

    ec_5= ec_5_in.value # in counts

    print("ec_5=",str(ec_5))

    vbatt = vbatt_in.value*3.3 / 65536
    
    sendstr=str(temp)+","+str(ec_5)+","+str(vbatt)

    rfm9x.send(sendstr)
    led.value=True
    time.sleep(.1)
    led.value = False
    time.sleep(.1)
    print(sendstr)
    time.sleep(1)
    gc.collect()

    done.value=True
    time.sleep(SLEEP_TIME)

