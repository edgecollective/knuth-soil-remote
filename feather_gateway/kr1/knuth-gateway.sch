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
P 3200 2500
F 0 "U4" H 2956 2865 50  0000 C CNN
F 1 "tpl5111" H 2956 2774 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0102
U 1 1 5D196982
P 3750 2500
F 0 "#PWR0102" H 3750 2250 50  0001 C CNN
F 1 "GND" H 3755 2327 50  0000 C CNN
F 2 "" H 3750 2500 50  0001 C CNN
F 3 "" H 3750 2500 50  0001 C CNN
	1    3750 2500
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector-knuth-gateway-rescue R_Delay1
U 1 1 5D197A39
P 4150 2600
F 0 "R_Delay1" H 4177 2576 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4177 2485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4150 2600 50  0001 C CNN
F 3 "~" H 4150 2600 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2600 3400 2600
Wire Wire Line
	3400 2600 3400 2800
Wire Wire Line
	3950 2800 3950 2700
$Comp
L knuth-gateway-rescue:Conn_01x12_Female-Connector-knuth-gateway-rescue J1
U 1 1 5D3A6009
P 7100 2050
F 0 "J1" H 6900 2700 50  0000 L CNN
F 1 "FeatherLora1" V 7300 1650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 7100 2050 50  0001 C CNN
F 3 "~" H 7100 2050 50  0001 C CNN
	1    7100 2050
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector-knuth-gateway-rescue J2
U 1 1 5D3A613C
P 6150 1850
F 0 "J2" H 6000 2700 50  0000 L CNN
F 1 "FeatherLora2" V 6300 1400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6150 1850 50  0001 C CNN
F 3 "~" H 6150 1850 50  0001 C CNN
	1    6150 1850
	1    0    0    -1  
$EndComp
Text GLabel 6900 1550 0    50   Input ~ 0
VBAT
Text GLabel 6900 1650 0    50   Input ~ 0
EN
Text GLabel 6900 1750 0    50   Input ~ 0
VBUS
Text GLabel 6900 1850 0    50   Input ~ 0
D13
Text GLabel 6900 1950 0    50   Input ~ 0
D12
Text GLabel 6900 2050 0    50   Input ~ 0
D11
Text GLabel 6900 2150 0    50   Input ~ 0
D10
Text GLabel 6900 2250 0    50   Input ~ 0
D9
Text GLabel 6900 2350 0    50   Input ~ 0
D6
Text GLabel 6900 2450 0    50   Input ~ 0
D5
Text GLabel 6900 2550 0    50   Input ~ 0
SCL
Text GLabel 6900 2650 0    50   Input ~ 0
SDA
Text GLabel 5950 1150 0    50   Input ~ 0
RESET
Wire Wire Line
	5950 1250 5600 1250
Wire Wire Line
	5600 1250 5600 1050
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0101
U 1 1 5D3A928A
P 5600 1050
F 0 "#PWR0101" H 5600 900 50  0001 C CNN
F 1 "+3V3" H 5615 1223 50  0000 C CNN
F 2 "" H 5600 1050 50  0001 C CNN
F 3 "" H 5600 1050 50  0001 C CNN
	1    5600 1050
	1    0    0    -1  
$EndComp
Text GLabel 5950 1350 0    50   Input ~ 0
AREF
Wire Wire Line
	5950 1450 5600 1450
Wire Wire Line
	5600 1450 5600 1500
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0103
U 1 1 5D3AC17C
P 5600 1500
F 0 "#PWR0103" H 5600 1250 50  0001 C CNN
F 1 "GND" H 5605 1327 50  0000 C CNN
F 2 "" H 5600 1500 50  0001 C CNN
F 3 "" H 5600 1500 50  0001 C CNN
	1    5600 1500
	1    0    0    -1  
$EndComp
Text GLabel 5950 1550 0    50   Input ~ 0
A0
Text GLabel 5950 1650 0    50   Input ~ 0
A1
Text GLabel 5950 1750 0    50   Input ~ 0
A2
Text GLabel 5950 1850 0    50   Input ~ 0
A3
Text GLabel 5950 1950 0    50   Input ~ 0
A4
Text GLabel 5950 2050 0    50   Input ~ 0
A5
Text GLabel 5950 2150 0    50   Input ~ 0
SCK
Text GLabel 5950 2250 0    50   Input ~ 0
MOSI
Text GLabel 5950 2350 0    50   Input ~ 0
MISO
Text GLabel 5950 2450 0    50   Input ~ 0
FEATHER_RX
Text GLabel 5950 2550 0    50   Input ~ 0
FEATHER_TX
Text GLabel 5950 2650 0    50   Input ~ 0
DI01
Wire Wire Line
	3200 2500 3750 2500
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
	3200 2800 3200 3050
Wire Wire Line
	3200 3050 3650 3050
Text GLabel 3650 3050 2    50   Input ~ 0
D10
$Comp
L Device:R RD1
U 1 1 5D3B9AD0
P 1350 3100
F 0 "RD1" H 1420 3146 50  0000 L CNN
F 1 "R" H 1420 3055 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1280 3100 50  0001 C CNN
F 3 "~" H 1350 3100 50  0001 C CNN
	1    1350 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R RD2
U 1 1 5D3B9B54
P 1350 3400
F 0 "RD2" H 1420 3446 50  0000 L CNN
F 1 "R" H 1420 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1280 3400 50  0001 C CNN
F 3 "~" H 1350 3400 50  0001 C CNN
	1    1350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3250 1200 3250
Connection ~ 1350 3250
Text GLabel 1200 3250 0    50   Input ~ 0
A5
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0108
U 1 1 5D3BB55A
P 1350 3550
F 0 "#PWR0108" H 1350 3300 50  0001 C CNN
F 1 "GND" H 1355 3377 50  0000 C CNN
F 2 "" H 1350 3550 50  0001 C CNN
F 3 "" H 1350 3550 50  0001 C CNN
	1    1350 3550
	1    0    0    -1  
$EndComp
$Comp
L knuth:sim800 U1
U 1 1 5D3DF3F6
P 3450 4450
F 0 "U1" H 3527 4621 50  0000 L CNN
F 1 "sim800" H 3527 4530 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 3200 4700 50  0001 C CNN
F 3 "" H 3200 4700 50  0001 C CNN
	1    3450 4450
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
P 3550 1750
F 0 "J5" H 3577 1776 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3577 1685 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3550 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
Text GLabel 3350 1650 0    50   Input ~ 0
LOAD
Text GLabel 3350 1750 0    50   Input ~ 0
SWITCHED_LOAD
Text GLabel 3200 2400 2    50   Input ~ 0
SWITCHED_LOAD
Wire Wire Line
	3950 2500 3950 2600
Wire Wire Line
	3950 2800 3400 2800
Wire Wire Line
	3950 2500 3750 2500
Connection ~ 3750 2500
Text GLabel 3000 3800 0    50   Input ~ 0
BATT
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0111
U 1 1 5D3E888D
P 2600 3900
F 0 "#PWR0111" H 2600 3650 50  0001 C CNN
F 1 "GND" H 2605 3727 50  0000 C CNN
F 2 "" H 2600 3900 50  0001 C CNN
F 3 "" H 2600 3900 50  0001 C CNN
	1    2600 3900
	1    0    0    -1  
$EndComp
Text GLabel 3650 2900 2    50   Input ~ 0
VBUS
Wire Wire Line
	3200 2700 3300 2700
Wire Wire Line
	3300 2700 3300 2900
Wire Wire Line
	3300 2900 3650 2900
$Comp
L knuth-gateway-rescue:+3V3-power-knuth-gateway-rescue #PWR0112
U 1 1 5D3EBE79
P 2300 4900
F 0 "#PWR0112" H 2300 4750 50  0001 C CNN
F 1 "+3V3" H 2315 5073 50  0000 C CNN
F 2 "" H 2300 4900 50  0001 C CNN
F 3 "" H 2300 4900 50  0001 C CNN
	1    2300 4900
	1    0    0    -1  
$EndComp
Text GLabel 1350 2800 2    50   Input ~ 0
BATT
Wire Wire Line
	1350 2950 1350 2800
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
P 4750 4300
F 0 "J7" H 4777 4276 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4800 4100 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4750 4300 50  0001 C CNN
F 3 "~" H 4750 4300 50  0001 C CNN
	1    4750 4300
	1    0    0    -1  
$EndComp
Text GLabel 2550 4400 0    50   Input ~ 0
KEY
Text GLabel 3000 4300 0    50   Input ~ 0
PS
Text GLabel 3000 4600 0    50   Input ~ 0
FEATHER_RX
Text GLabel 3000 4700 0    50   Input ~ 0
FEATHER_TX
Wire Wire Line
	2300 4900 3000 4900
Text GLabel 4550 4100 0    50   Input ~ 0
KEY
Text GLabel 4550 4400 0    50   Input ~ 0
PS
Text GLabel 4550 3900 0    50   Input ~ 0
D12
Text GLabel 4550 4300 0    50   Input ~ 0
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
Text Notes 3200 1450 0    50   ~ 0
switch
Text Notes 4350 3800 0    50   ~ 0
optional power status\n& control
Text Notes 6950 3500 0    50   ~ 0
1-wire
Text Notes 6950 4600 0    50   ~ 0
ec-5
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 5D400FB4
P 4750 4000
F 0 "J6" H 4777 4026 50  0000 L CNN
F 1 "Conn_01x03_Female" H 4777 3935 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4750 4000 50  0001 C CNN
F 3 "~" H 4750 4000 50  0001 C CNN
	1    4750 4000
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power-knuth-gateway-rescue #PWR0113
U 1 1 5D402B8E
P 4550 4000
F 0 "#PWR0113" H 4550 3750 50  0001 C CNN
F 1 "GND" H 4555 3827 50  0000 C CNN
F 2 "" H 4550 4000 50  0001 C CNN
F 3 "" H 4550 4000 50  0001 C CNN
	1    4550 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4400 3000 4400
Wire Wire Line
	2600 3900 3000 3900
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
$EndSCHEMATC
