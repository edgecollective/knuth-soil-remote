import board
import busio
import digitalio

import time
import adafruit_rfm9x
import gc
from analogio import AnalogIn


led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT


def blink(numtimes):
    for i in range(0,numtimes):
        led.value=True
        time.sleep(.1)
        led.value = False
        time.sleep(.1)
        print("blink")



while True:

    blink(3)
    time.sleep(1)