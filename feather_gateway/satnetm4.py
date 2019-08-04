import board
import busio
#import digitalio
from digitalio import DigitalInOut,Direction,Pull

import time
import adafruit_rfm9x
#import gc
from analogio import AnalogIn


from adafruit_onewire.bus import OneWireBus
from adafruit_ds18x20 import DS18X20

TIMEOUT=1

CELL_RETRIES=12 # one second per try

ec_5_in = AnalogIn(board.A0)
vbatt_in = AnalogIn(board.A5)

uart = busio.UART(board.TX, board.RX, baudrate=9600)


# lora radio
spi = busio.SPI(board.SCK, MOSI=board.MOSI, MISO=board.MISO)
cs = DigitalInOut(board.D9)
reset = DigitalInOut(board.D6)
rfm9x = adafruit_rfm9x.RFM9x(spi, cs, reset, 915.0)

# led
led = DigitalInOut(board.D13)
led.direction = Direction.OUTPUT

# done
done = DigitalInOut(board.D10)
done.direction = Direction.OUTPUT

# roaming_switch
roam_switch = DigitalInOut(board.D12)
roam_switch.direction = Direction.INPUT
roam_switch.pull=Pull.UP

# default values if probe doesn't work

temp=30
ec_5=20

FARMOS_NAME="edgecollective"

#PUBLIC_KEY="6cfffad03d942a303b39856a04148a01"
#PRIVATE_KEY="37d6266de73f098dc95fa9d3bfaf033b"
PUBLIC_KEY="c143a211004b8b6ff64936fdb78f102a"
PRIVATE_KEY="06b5e1f4636963c4529d14b9ce800033"

# sensor data + url
url_base='http://mosspig.club/?public_key='+PUBLIC_KEY+'&private_key='+PRIVATE_KEY+'&farmos_name='+FARMOS_NAME

# onewire sensor
ow_bus = OneWireBus(board.D5)

# Scan for sensors and grab the first one found.
ds18_bus=ow_bus.scan()
print(ds18_bus)

ds18=[]
for probe in ds18_bus:
    print(probe)
    ds18.append(DS18X20(ow_bus, probe))

def blink(numtimes,delaytime):
    for i in range(0,numtimes):
        led.value=True
        time.sleep(delaytime)
        led.value = False
        time.sleep(delaytime)

def relay_post(url):
    #time.sleep(CELL_PRE_SLEEP)


    print("roam_switch=",roam_switch.value)
    # wait for network
    uart.readline()
    uart.readline()

    net_stat="off"

    retry_index=0
    while (net_stat=="off" and retry_index<CELL_RETRIES):
        retry_index=retry_index+1
        print("writing AT+CREG?, retry_index=",retry_index)
        uart.write( b"AT+CREG?\r")
        time.sleep(1)
        for i in range(0,4):
            a=uart.readline()
            if a is not None:
                astr=str(a,'ascii').strip()
                print(astr)
                sp=astr.split(':')
                if(len(sp)==2):
                    net=int(sp[1].strip().split(',')[1])
                    print("net=",net)
                    if (net==1):
                        print("we're on!")
                        net_stat="on"
                    if (net==5):
                        print("roaming...")
                        led.value=True
                        blink(20,.1)
                        # if wire is connecting D12 and GND, then try to post while roaming
                        if(roam_switch.value==False):
                            net_stat="on"

    #gc.collect()
    if(net_stat=="on"):
        uart.readline()
        uart.readline()
        uart.write( b"AT+SAPBR=0,1\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        #uart.write( b"AT+SAPBR=3,1,\"APN\",\"fast.t-mobile.com\"\r")
        uart.write( b"AT+SAPBR=3,1,\"APN\",\"wholesale\"\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"AT+CREG?\r")
        uart.readline()
        uart.readline()
        uart.write( b"AT+SAPBR=2,1\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"AT+SAPBR=1,1\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"WAIT=6\r")
        uart.readline()
        uart.readline()
        uart.write( b"AT+CMGF=0\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"AT+HTTPINIT\r")
        time.sleep(1)
        uart.readline()
        uart.readline()

        uart.write( b"AT+HTTPPARA=\"URL\",\""+url+"\"\r")

        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"AT+HTTPPARA=\"CID\",1\r")
        time.sleep(1)
        uart.readline()
        uart.readline()

        uart.write( b"AT+HTTPACTION=0\r")
        time.sleep(1)
        uart.readline()
        uart.readline()
        uart.write( b"AT+HTTPREAD\r")
        time.sleep(1)
        a=uart.readline()
        b=uart.readline()
        print(a)
        print(b)

        uart.write( b"WAIT=6\r")
        uart.readline()
        uart.readline()
        uart.write( b"AT+HTTPTERM\r")
        time.sleep(1)
        uart.readline()
        uart.readline()

done.value=False

blink(2,1)

while True:

    temp = -99 #replace with onewire soon

    if (len(ds18)==1):
        sensor=ds18[0]
        temp=float(sensor.temperature)


    ec_5= ec_5_in.value # in counts

    vbatt = vbatt_in.value*3.3 / 65536 * 2 # voltage divider

    print("radio waiting ...")
    packet = rfm9x.receive(timeout=TIMEOUT)

    if packet is not None:
        blink(1,.1)
        try:
            packet_text = str(packet, 'ascii')

           
            rssi=str(rfm9x.rssi)


            params=packet_text.split(",")


            if len(params)==3:
                remote_temp=float(params[0])

                remote_ec_5=float(params[1])
            
                remote_batt = float(params[2])

                remote_rssi = float(rssi)
                url_full=url_base+'&vbatt='+str(vbatt)+'&ec_5='+str(ec_5)+'&temp='+str(temp)+'&remote_temp='+str(remote_temp)+'&remote_rssi='+str(remote_rssi)+'&remote_ec_5='+str(remote_ec_5)+'&remote_batt='+str(remote_batt)

                #print(url_full)

                blink(3,.1)
                print("sending..")
                relay_post(url_full)
                print("sent") 
                blink(5,.1)
                #time.sleep(60)

                print("setting timer DONE")
                done.value=True

        except Exception as e:
            print("error: "+str(e))

