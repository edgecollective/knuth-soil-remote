import board
import busio
import digitalio
import time
import adafruit_rfm9x
from analogio import AnalogIn


# set up analog measurement
analog_in = AnalogIn(board.A1)

def get_voltage(pin):
    return pin.value # max 65536

# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = digitalio.DigitalInOut(board.RFM9X_CS)
reset = digitalio.DigitalInOut(board.RFM9X_RST)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)


led = digitalio.DigitalInOut(board.D13)
led.direction = digitalio.Direction.OUTPUT

D6=digitalio.DigitalInOut(board.D6)
D6.direction=digitalio.Direction.OUTPUT
A5=digitalio.DigitalInOut(board.A5)
A5.direction=digitalio.Direction.OUTPUT

D6.value=False
A5.value=False

uart = busio.UART(board.TX, board.RX, baudrate=1200)


while True:


    send_str=""

    print("\n\nA5:") 
    A5.value=True 
    led.value=True 
    time.sleep(.3) 
    data = uart.read(32)  # read up to 32 bytes
    print(data)  # this is a bytearray type

    if data is not None:
        led.value = False
        time.sleep(.1)
        led.value=True 
        data_string=''.join([chr(b) for b in data])
        raw_string=data_string.split(' ')
        p0=''.join(ch for ch in raw_string[0] if ch.isdigit())
        p1=''.join(ch for ch in raw_string[1] if ch.isdigit())
        p2=''.join(ch for ch in raw_string[2] if ch.isdigit())
        
        print(p0,p1,p2)
        this_str=p0+","+p1+","+p2
        send_str=send_str+this_str
    
    A5.value=False
    led.value=False
    
   
    # get temp data here, and add to send_str

    # send temp data
   
    print("\n\nSending:"+send_str)

    rfm9x.send(send_str) 
    for i in range(0,2):
        led.value=True
        time.sleep(.05)
        led.value=False
        time.sleep(.05) 

    time.sleep(1)
