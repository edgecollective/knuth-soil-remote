EESchema Schematic File Version 4
LIBS:knuth-gateway-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L knuth:tpl5110 U4
U 1 1 5D196517
P 3100 3750
F 0 "U4" H 2856 4115 50  0000 C CNN
F 1 "tpl5111" H 2856 4024 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0102
U 1 1 5D196982
P 3650 3750
F 0 "#PWR0102" H 3650 3500 50  0001 C CNN
F 1 "GND" H 3655 3577 50  0000 C CNN
F 2 "" H 3650 3750 50  0001 C CNN
F 3 "" H 3650 3750 50  0001 C CNN
	1    3650 3750
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector-knuth-gateway-rescue R_Delay1
U 1 1 5D197A39
P 4050 3850
F 0 "R_Delay1" H 4077 3826 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4077 3735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4050 3850 50  0001 C CNN
F 3 "~" H 4050 3850 50  0001 C CNN
	1    4050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3850 3300 3850
Wire Wire Line
	3300 3850 3300 4050
Wire Wire Line
	3850 4050 3850 3950
$Comp
L knuth-gateway-rescue:Conn_01x12_Female-Connector-knuth-gateway-rescue J1
U 1 1 5D3A6009
P 9100 2250
F 0 "J1" H 8900 2900 50  0000 L CNN
F 1 "FeatherLora1" V 9300 1850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 9100 2250 50  0001 C CNN
F 3 "~" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector-knuth-gateway-rescue J2
U 1 1 5D3A613C
P 8150 2050
F 0 "J2" H 8000 2900 50  0000 L CNN
F 1 "FeatherLora2" V 8300 1600 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 8150 2050 50  0001 C CNN
F 3 "~" H 8150 2050 50  0001 C CNN
	1    8150 2050
	1    0    0    -1  
$EndComp
Text GLabel 8900 1750 0    50   Input ~ 0
VBAT
Text GLabel 8900 1850 0    50   Input ~ 0
EN
Text GLabel 8900 1950 0    50   Input ~ 0
VBUS
Text GLabel 8900 2050 0    50   Input ~ 0
D13
Text GLabel 8900 2150 0    50   Input ~ 0
D12
Text GLabel 8900 2250 0    50   Input ~ 0
D11
Text GLabel 8900 2350 0    50   Input ~ 0
D10
Text GLabel 8900 2450 0    50   Input ~ 0
D9
Text GLabel 8900 2550 0    50   Input ~ 0
D6
Text GLabel 8900 2650 0    50   Input ~ 0
D5
Text GLabel 8900 2750 0    50   Input ~ 0
SCL
Text GLabel 8900 2850 0    50   Input ~ 0
SDA
Text GLabel 7950 1350 0    50   Input ~ 0
RESET
Wire Wire Line
	7950 1450 7600 1450
Wire Wire Line
	7600 1450 7600 1250
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0101
U 1 1 5D3A928A
P 7600 1250
F 0 "#PWR0101" H 7600 1100 50  0001 C CNN
F 1 "+3V3" H 7615 1423 50  0000 C CNN
F 2 "" H 7600 1250 50  0001 C CNN
F 3 "" H 7600 1250 50  0001 C CNN
	1    7600 1250
	1    0    0    -1  
$EndComp
Text GLabel 7950 1550 0    50   Input ~ 0
AREF
Wire Wire Line
	7950 1650 7600 1650
Wire Wire Line
	7600 1650 7600 1700
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0103
U 1 1 5D3AC17C
P 7600 1700
F 0 "#PWR0103" H 7600 1450 50  0001 C CNN
F 1 "GND" H 7605 1527 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	1    0    0    -1  
$EndComp
Text GLabel 7950 1750 0    50   Input ~ 0
A0
Text GLabel 7950 1850 0    50   Input ~ 0
A1
Text GLabel 7950 1950 0    50   Input ~ 0
A2
Text GLabel 7950 2050 0    50   Input ~ 0
A3
Text GLabel 7950 2150 0    50   Input ~ 0
A4
Text GLabel 7950 2250 0    50   Input ~ 0
A5
Text GLabel 7950 2350 0    50   Input ~ 0
SCK
Text GLabel 7950 2450 0    50   Input ~ 0
MOSI
Text GLabel 7950 2550 0    50   Input ~ 0
MISO
Text GLabel 7950 2650 0    50   Input ~ 0
FEATHER_RX
Text GLabel 7950 2750 0    50   Input ~ 0
FEATHER_TX
Text GLabel 7950 2850 0    50   Input ~ 0
DI01
Wire Wire Line
	3100 3750 3650 3750
$Comp
L Connector:Conn_01x03_Female EC-5
U 1 1 5D3CA29A
P 6900 4950
F 0 "EC-5" H 6928 4976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6928 4885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6900 4950 50  0001 C CNN
F 3 "~" H 6900 4950 50  0001 C CNN
	1    6900 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female 1-Wire1
U 1 1 5D3CC155
P 6900 3800
F 0 "1-Wire1" H 6928 3826 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6928 3735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6900 3800 50  0001 C CNN
F 3 "~" H 6900 3800 50  0001 C CNN
	1    6900 3800
	1    0    0    -1  
$EndComp
Text GLabel 5800 3900 0    50   Input ~ 0
D5
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0104
U 1 1 5D3D0428
P 6500 3400
F 0 "#PWR0104" H 6500 3150 50  0001 C CNN
F 1 "GND" H 6505 3227 50  0000 C CNN
F 2 "" H 6500 3400 50  0001 C CNN
F 3 "" H 6500 3400 50  0001 C CNN
	1    6500 3400
	1    0    0    -1  
$EndComp
Text GLabel 6600 4850 0    50   Input ~ 0
A0
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0105
U 1 1 5D3D5056
P 6050 4950
F 0 "#PWR0105" H 6050 4700 50  0001 C CNN
F 1 "GND" H 6055 4777 50  0000 C CNN
F 2 "" H 6050 4950 50  0001 C CNN
F 3 "" H 6050 4950 50  0001 C CNN
	1    6050 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R RP1
U 1 1 5D3DC753
P 5800 3700
F 0 "RP1" H 5850 3450 50  0000 R CNN
F 1 "4.7K" V 5900 3800 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5730 3700 50  0001 C CNN
F 3 "~" H 5800 3700 50  0001 C CNN
	1    5800 3700
	-1   0    0    1   
$EndComp
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0106
U 1 1 5D3CF14A
P 6200 3350
F 0 "#PWR0106" H 6200 3200 50  0001 C CNN
F 1 "+3V3" H 6215 3523 50  0000 C CNN
F 2 "" H 6200 3350 50  0001 C CNN
F 3 "" H 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0107
U 1 1 5D3F51C7
P 6350 5050
F 0 "#PWR0107" H 6350 4900 50  0001 C CNN
F 1 "+3V3" H 6365 5223 50  0000 C CNN
F 2 "" H 6350 5050 50  0001 C CNN
F 3 "" H 6350 5050 50  0001 C CNN
	1    6350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4050 3100 4300
Wire Wire Line
	3100 4300 3550 4300
Text GLabel 3550 4300 2    50   Input ~ 0
D10
$Comp
L Device:R RD1
U 1 1 5D3B9AD0
P 1050 3100
F 0 "RD1" H 1120 3146 50  0000 L CNN
F 1 "R" H 1120 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 980 3100 50  0001 C CNN
F 3 "~" H 1050 3100 50  0001 C CNN
	1    1050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RD2
U 1 1 5D3B9B54
P 1050 3400
F 0 "RD2" H 1120 3446 50  0000 L CNN
F 1 "R" H 1120 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 980 3400 50  0001 C CNN
F 3 "~" H 1050 3400 50  0001 C CNN
	1    1050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3250 900  3250
Connection ~ 1050 3250
Text GLabel 900  3250 0    50   Input ~ 0
A5
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0108
U 1 1 5D3BB55A
P 1050 3550
F 0 "#PWR0108" H 1050 3300 50  0001 C CNN
F 1 "GND" H 1055 3377 50  0000 C CNN
F 2 "" H 1050 3550 50  0001 C CNN
F 3 "" H 1050 3550 50  0001 C CNN
	1    1050 3550
	1    0    0    -1  
$EndComp
$Comp
L knuth:sim800 U1
U 1 1 5D3DF3F6
P 3400 5400
F 0 "U1" H 3477 5571 50  0000 L CNN
F 1 "sim800" H 3477 5480 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 3150 5650 50  0001 C CNN
F 3 "" H 3150 5650 50  0001 C CNN
	1    3400 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5D3DFE86
P 1350 1050
F 0 "J3" H 1377 1026 50  0000 L CNN
F 1 "Conn_01x02_Female" H 1377 935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1350 1050 50  0001 C CNN
F 3 "~" H 1350 1050 50  0001 C CNN
	1    1350 1050
	1    0    0    -1  
$EndComp
Text GLabel 1150 1050 0    50   Input ~ 0
BATT
$Comp
L power:GND #PWR0109
U 1 1 5D3E025E
P 1150 1150
F 0 "#PWR0109" H 1150 900 50  0001 C CNN
F 1 "GND" H 1155 977 50  0000 C CNN
F 2 "" H 1150 1150 50  0001 C CNN
F 3 "" H 1150 1150 50  0001 C CNN
	1    1150 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5D3E035E
P 1350 1550
F 0 "J4" H 1377 1526 50  0000 L CNN
F 1 "Conn_01x02_Female" H 1377 1435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1350 1550 50  0001 C CNN
F 3 "~" H 1350 1550 50  0001 C CNN
	1    1350 1550
	1    0    0    -1  
$EndComp
Text GLabel 1150 1550 0    50   Input ~ 0
LOAD
$Comp
L power:GND #PWR0110
U 1 1 5D3E03DF
P 1150 1650
F 0 "#PWR0110" H 1150 1400 50  0001 C CNN
F 1 "GND" H 1155 1477 50  0000 C CNN
F 2 "" H 1150 1650 50  0001 C CNN
F 3 "" H 1150 1650 50  0001 C CNN
	1    1150 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J5
U 1 1 5D3E0DC7
P 3400 2950
F 0 "J5" H 3427 2976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3427 2885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3400 2950 50  0001 C CNN
F 3 "~" H 3400 2950 50  0001 C CNN
	1    3400 2950
	1    0    0    -1  
$EndComp
Text GLabel 3200 2850 0    50   Input ~ 0
LOAD
Text GLabel 3200 2950 0    50   Input ~ 0
SWITCHED_LOAD
Text GLabel 3100 3650 2    50   Input ~ 0
SWITCHED_LOAD
Wire Wire Line
	3850 3750 3850 3850
Wire Wire Line
	3850 4050 3300 4050
Wire Wire Line
	3850 3750 3650 3750
Connection ~ 3650 3750
Text GLabel 2950 4750 0    50   Input ~ 0
BATT
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0111
U 1 1 5D3E888D
P 2550 4850
F 0 "#PWR0111" H 2550 4600 50  0001 C CNN
F 1 "GND" H 2555 4677 50  0000 C CNN
F 2 "" H 2550 4850 50  0001 C CNN
F 3 "" H 2550 4850 50  0001 C CNN
	1    2550 4850
	1    0    0    -1  
$EndComp
Text GLabel 3550 4150 2    50   Input ~ 0
VBUS
Wire Wire Line
	3100 3950 3200 3950
Wire Wire Line
	3200 3950 3200 4150
Wire Wire Line
	3200 4150 3550 4150
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0112
U 1 1 5D3EBE79
P 2250 5850
F 0 "#PWR0112" H 2250 5700 50  0001 C CNN
F 1 "+3V3" H 2265 6023 50  0000 C CNN
F 2 "" H 2250 5850 50  0001 C CNN
F 3 "" H 2250 5850 50  0001 C CNN
	1    2250 5850
	1    0    0    -1  
$EndComp
Text GLabel 1050 2800 2    50   Input ~ 0
BATT
Wire Wire Line
	1050 2950 1050 2800
$Comp
L Connector:Screw_Terminal_01x03 J8
U 1 1 5D3ED3C0
P 7700 3800
F 0 "J8" H 7620 3475 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 7620 3566 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-3.5-H_1x03_P3.50mm_Horizontal" H 7700 3800 50  0001 C CNN
F 3 "~" H 7700 3800 50  0001 C CNN
	1    7700 3800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J9
U 1 1 5D3ED41C
P 7750 4950
F 0 "J9" H 7670 4625 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 7670 4716 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-3-3.5-H_1x03_P3.50mm_Horizontal" H 7750 4950 50  0001 C CNN
F 3 "~" H 7750 4950 50  0001 C CNN
	1    7750 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3800 7900 3800
Wire Wire Line
	6700 3900 7900 3900
Wire Wire Line
	6700 4850 6600 4850
Wire Wire Line
	6700 4850 7950 4850
Connection ~ 6700 4850
Wire Wire Line
	7950 4950 6700 4950
Connection ~ 6700 3800
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5D3F2988
P 4700 5250
F 0 "J7" H 4727 5226 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4750 5050 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4700 5250 50  0001 C CNN
F 3 "~" H 4700 5250 50  0001 C CNN
	1    4700 5250
	1    0    0    -1  
$EndComp
Text GLabel 2500 5350 0    50   Input ~ 0
KEY
Text GLabel 2950 5250 0    50   Input ~ 0
PS
Text GLabel 2950 5550 0    50   Input ~ 0
FEATHER_RX
Text GLabel 2950 5650 0    50   Input ~ 0
FEATHER_TX
Wire Wire Line
	2250 5850 2950 5850
Text GLabel 4500 5050 0    50   Input ~ 0
KEY
Text GLabel 4500 5350 0    50   Input ~ 0
PS
Text GLabel 4500 4850 0    50   Input ~ 0
D12
Text GLabel 4500 5250 0    50   Input ~ 0
D11
Wire Notes Line
	700  850  2300 850 
Wire Notes Line
	2300 850  2300 2050
Wire Notes Line
	2300 2050 700  2050
Wire Notes Line
	700  2050 700  850 
Text Notes 1150 750  0    50   ~ 0
adafruit solar lipo
Text Notes 3100 2700 0    50   ~ 0
switch
Text Notes 4300 4750 0    50   ~ 0
optional power status\n& control
Text Notes 6950 3500 0    50   ~ 0
1-wire
Text Notes 6950 4600 0    50   ~ 0
ec-5
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 5D400FB4
P 4700 4950
F 0 "J6" H 4727 4976 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4727 4885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4700 4950 50  0001 C CNN
F 3 "~" H 4700 4950 50  0001 C CNN
	1    4700 4950
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0113
U 1 1 5D402B8E
P 4500 4950
F 0 "#PWR0113" H 4500 4700 50  0001 C CNN
F 1 "GND" H 4505 4777 50  0000 C CNN
F 2 "" H 4500 4950 50  0001 C CNN
F 3 "" H 4500 4950 50  0001 C CNN
	1    4500 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 5350 2950 5350
Wire Wire Line
	2550 4850 2950 4850
Wire Wire Line
	6700 3900 5800 3900
Wire Wire Line
	5800 3900 5800 3850
Connection ~ 6700 3900
Wire Wire Line
	6200 3350 6200 3550
Wire Wire Line
	6200 3800 6700 3800
Wire Wire Line
	5800 3550 6200 3550
Connection ~ 6200 3550
Wire Wire Line
	6200 3550 6200 3800
Connection ~ 6700 5050
Wire Wire Line
	6700 5050 7950 5050
Wire Wire Line
	6700 3700 6700 3400
Wire Wire Line
	6700 3400 6500 3400
Wire Wire Line
	6700 3700 7900 3700
Connection ~ 6700 3700
Wire Wire Line
	6350 5050 6700 5050
Wire Wire Line
	6700 4950 6050 4950
Connection ~ 6700 4950
$Comp
L Connector:Conn_01x03_Female vlx1
U 1 1 5D3E4A9A
P 3700 1600
F 0 "vlx1" H 3727 1626 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3250 1850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3700 1600 50  0001 C CNN
F 3 "~" H 3700 1600 50  0001 C CNN
	1    3700 1600
	1    0    0    -1  
$EndComp
Text GLabel 3150 1500 0    50   Input ~ 0
EXT_BAT
Text GLabel 3150 1700 0    50   Input ~ 0
5V_OUT
$Comp
L Connector:Conn_01x02_Female J12
U 1 1 5D3E5D62
P 4500 1300
F 0 "J12" H 4527 1276 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3950 1450 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4500 1300 50  0001 C CNN
F 3 "~" H 4500 1300 50  0001 C CNN
	1    4500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1600 4300 1600
Wire Wire Line
	4300 1600 4300 1400
Wire Wire Line
	3500 1500 4150 1500
Wire Wire Line
	4150 1500 4150 1300
Text Notes 5300 1350 0    50   ~ 0
to aligator clips & battery
$Comp
L Connector:Conn_01x02_Female J11
U 1 1 5D3EBB21
P 4450 2000
F 0 "J11" H 4477 1976 50  0000 L CNN
F 1 "Conn_01x02_Female" H 3800 1750 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4450 2000 50  0001 C CNN
F 3 "~" H 4450 2000 50  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1500 3150 1500
Connection ~ 3500 1500
Wire Wire Line
	3500 1600 3350 1600
Connection ~ 3500 1600
Wire Wire Line
	3500 1700 3150 1700
Connection ~ 3350 1600
Wire Wire Line
	3350 2100 4250 2100
Wire Wire Line
	3350 1600 3350 2100
Wire Wire Line
	3500 2000 3500 1700
Connection ~ 3500 1700
Text Notes 5300 2100 0    50   ~ 0
to 5.5 / 2.1 mm jack (positive inner pole)\n(plug into DC jack on solar lipo charger)
$Comp
L Connector:Screw_Terminal_01x02 alligator1
U 1 1 5D3F7694
P 4750 1400
F 0 "alligator1" H 4750 1150 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 4850 1600 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" H 4750 1400 50  0001 C CNN
F 3 "~" H 4750 1400 50  0001 C CNN
	1    4750 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 1300 4300 1300
Connection ~ 4300 1300
Wire Wire Line
	4300 1300 4950 1300
Wire Wire Line
	4300 1400 4950 1400
Connection ~ 4300 1400
$Comp
L Connector:Screw_Terminal_01x02 dc_jack1
U 1 1 5D3F92F8
P 5150 2000
F 0 "dc_jack1" H 5150 1750 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 4750 2150 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_PT-1,5-2-3.5-H_1x02_P3.50mm_Horizontal" H 5150 2000 50  0001 C CNN
F 3 "~" H 5150 2000 50  0001 C CNN
	1    5150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2000 4250 2000
Connection ~ 4250 2000
Wire Wire Line
	4250 2000 4950 2000
Connection ~ 4250 2100
Text Notes 3650 800  0    50   ~ 0
Backup Power into Lion Charger Jack\n(use up to 36V)
Wire Wire Line
	4250 2100 4950 2100
$Comp
L Device:R RE1
U 1 1 5D404CA9
P 6650 1000
F 0 "RE1" H 6720 1046 50  0000 L CNN
F 1 "R" H 6720 955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 1000 50  0001 C CNN
F 3 "~" H 6650 1000 50  0001 C CNN
	1    6650 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R RE2
U 1 1 5D404CB0
P 6650 1300
F 0 "RE2" H 6720 1346 50  0000 L CNN
F 1 "=1/14 of top R" H 6720 1255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6580 1300 50  0001 C CNN
F 3 "~" H 6650 1300 50  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1150 6500 1150
Connection ~ 6650 1150
Text GLabel 6500 1150 0    50   Input ~ 0
A1
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0114
U 1 1 5D404CBA
P 6650 1450
F 0 "#PWR0114" H 6650 1200 50  0001 C CNN
F 1 "GND" H 6655 1277 50  0000 C CNN
F 2 "" H 6650 1450 50  0001 C CNN
F 3 "" H 6650 1450 50  0001 C CNN
	1    6650 1450
	1    0    0    -1  
$EndComp
Text GLabel 6650 700  2    50   Input ~ 0
EXT_BAT
Wire Wire Line
	6650 850  6650 700 
Wire Wire Line
	2650 1600 2650 1650
Wire Wire Line
	2650 1600 3350 1600
$Comp
L power:GND #PWR?
U 1 1 5D40C0D2
P 2650 1650
F 0 "#PWR?" H 2650 1400 50  0001 C CNN
F 1 "GND" H 2655 1477 50  0000 C CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
