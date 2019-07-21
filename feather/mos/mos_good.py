import board
import busio
import digitalio
import time


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

    print("\n\nD6:") 
    D6.value=True 
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
    
    D6.value=False
    led.value=False
    
    # get temp data here, and add to send_str

    # send temp data
   
    print("\n\nSending:"+send_str)

    time.sleep(1)

