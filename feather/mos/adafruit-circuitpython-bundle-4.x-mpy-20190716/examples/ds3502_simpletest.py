from time import sleep
import board
import adafruit_ds3502
from analogio import AnalogIn

####### NOTE ################
# this example will not work with Blinka/rasberry Pi due to the lack of analog pins.
# Blinka and Raspberry Pi users should run the "ds3502_blinka_simpletest.py" example

i2c = board.I2C()
ds3502 = adafruit_ds3502.DS3502(i2c)
wiper_output = AnalogIn(board.A0)

while True:

    ds3502.wiper = 127
    print("Wiper set to %d"%ds3502.wiper)
    voltage = wiper_output.value
    voltage *= 3.3
    voltage /= 65535
    print("Wiper voltage: %.2f"%voltage)
    print("")
    sleep(1.0)

    ds3502.wiper = 0
    print("Wiper set to %d"%ds3502.wiper)
    voltage = wiper_output.value
    voltage *= 3.3
    voltage /= 65535
    print("Wiper voltage: %.2f"%voltage)
    print("")
    sleep(1.0)

    ds3502.wiper = 63
    print("Wiper set to %d"%ds3502.wiper)
    voltage = wiper_output.value
    voltage *= 3.3
    voltage /= 65535
    print("Wiper voltage: %.2f"%voltage)
    print("")
    sleep(1.0)
    