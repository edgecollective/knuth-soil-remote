import board
import busio
import digitalio
import time
import adafruit_rfm9x
import gc

# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = digitalio.DigitalInOut(board.RFM9X_CS)
reset = digitalio.DigitalInOut(board.RFM9X_RST)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)

# led
led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

temp=15
moisture=30

sendstr=str(temp)+","+str(moisture)
rfm9x.send(sendstr)
led.value=True
time.sleep(.1)
led.value = False
time.sleep(.1)
print(sendstr)
time.sleep(1)
gc.collect()


