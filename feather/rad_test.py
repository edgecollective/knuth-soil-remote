import board
import busio
import digitalio
import time
import adafruit_rfm9x

# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = digitalio.DigitalInOut(board.RFM9X_CS)
reset = digitalio.DigitalInOut(board.RFM9X_RST)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)


led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

while True:
	print("sending ...")
	rfm9x.send("hello")
	time.sleep(1)
	led.value=True
	time.sleep(.1)
	led.value=False


