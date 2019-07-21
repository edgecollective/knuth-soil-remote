import board
import time

from analogio import AnalogIn
analog_in = AnalogIn(board.A2)

while True:
    print(analog_in.value*3.3/65536)
    time.sleep(1)
