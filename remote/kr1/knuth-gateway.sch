EESchema Schematic File Version 4
LIBS:knuth-gateway-cache
EELAYER 29 0
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
F 1 "tpl5110" H 2956 2774 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 3200 2500 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:GND-power #PWR0102
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
L knuth:adasolarlipo U5
U 1 1 5D196E31
P 4100 1950
F 0 "U5" H 3823 2046 50  0000 R CNN
F 1 "adasolarlipo" H 3823 1955 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 4100 1950 50  0001 C CNN
F 3 "" H 4100 1950 50  0001 C CNN
	1    4100 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3800 2500 3750 2500
Connection ~ 3750 2500
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector R_Delay1
U 1 1 5D197A39
P 4800 2600
F 0 "R_Delay1" H 4827 2576 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4827 2485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4800 2600 50  0001 C CNN
F 3 "~" H 4800 2600 50  0001 C CNN
	1    4800 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2600 3400 2600
Wire Wire Line
	3400 2600 3400 2800
Wire Wire Line
	3200 2700 3300 2700
Wire Wire Line
	3300 2700 3300 3300
Wire Wire Line
	3800 2400 4600 2400
Wire Wire Line
	4600 2400 4600 2600
Connection ~ 3800 2400
Wire Wire Line
	3800 2400 3800 2500
Wire Wire Line
	4600 2800 4600 2700
Wire Wire Line
	3800 1950 3800 2400
$Comp
L knuth-gateway-rescue:Conn_01x12_Female-Connector J1
U 1 1 5D3A6009
P 7200 1550
F 0 "J1" H 7000 2200 50  0000 L CNN
F 1 "FeatherLora1" V 6550 1200 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 7200 1550 50  0001 C CNN
F 3 "~" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector J2
U 1 1 5D3A613C
P 8350 1750
F 0 "J2" H 8200 2600 50  0000 L CNN
F 1 "FeatherLora2" V 8500 1500 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 8350 1750 50  0001 C CNN
F 3 "~" H 8350 1750 50  0001 C CNN
	1    8350 1750
	1    0    0    -1  
$EndComp
Text GLabel 7000 1050 0    50   Input ~ 0
VBAT
Text GLabel 7000 1150 0    50   Input ~ 0
EN
Text GLabel 7000 1250 0    50   Input ~ 0
VBUS
Text GLabel 7000 1350 0    50   Input ~ 0
D13
Text GLabel 7000 1450 0    50   Input ~ 0
D12
Text GLabel 7000 1550 0    50   Input ~ 0
D11
Text GLabel 7000 1650 0    50   Input ~ 0
D10
Text GLabel 7000 1750 0    50   Input ~ 0
D9
Text GLabel 7000 1850 0    50   Input ~ 0
D6
Text GLabel 7000 1950 0    50   Input ~ 0
D5
Text GLabel 7000 2050 0    50   Input ~ 0
SCL
Text GLabel 7000 2150 0    50   Input ~ 0
SDA
Text GLabel 8150 1050 0    50   Input ~ 0
RESET
Wire Wire Line
	8150 1150 7800 1150
Wire Wire Line
	7800 1150 7800 950 
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0101
U 1 1 5D3A928A
P 7800 950
F 0 "#PWR0101" H 7800 800 50  0001 C CNN
F 1 "+3V3" H 7815 1123 50  0000 C CNN
F 2 "" H 7800 950 50  0001 C CNN
F 3 "" H 7800 950 50  0001 C CNN
	1    7800 950 
	1    0    0    -1  
$EndComp
Text GLabel 8150 1250 0    50   Input ~ 0
AREF
Wire Wire Line
	8150 1350 7800 1350
Wire Wire Line
	7800 1350 7800 1400
$Comp
L knuth-gateway-rescue:GND-power #PWR0103
U 1 1 5D3AC17C
P 7800 1400
F 0 "#PWR0103" H 7800 1150 50  0001 C CNN
F 1 "GND" H 7805 1227 50  0000 C CNN
F 2 "" H 7800 1400 50  0001 C CNN
F 3 "" H 7800 1400 50  0001 C CNN
	1    7800 1400
	1    0    0    -1  
$EndComp
Text GLabel 8150 1450 0    50   Input ~ 0
A0
Text GLabel 8150 1550 0    50   Input ~ 0
A1
Text GLabel 8150 1650 0    50   Input ~ 0
A2
Text GLabel 8150 1750 0    50   Input ~ 0
A3
Text GLabel 8150 1850 0    50   Input ~ 0
A4
Text GLabel 8150 1950 0    50   Input ~ 0
A5
Text GLabel 8150 2050 0    50   Input ~ 0
SCK
Text GLabel 8150 2150 0    50   Input ~ 0
MOSI
Text GLabel 8150 2250 0    50   Input ~ 0
MISO
Text GLabel 8150 2350 0    50   Input ~ 0
D0
Text GLabel 8150 2450 0    50   Input ~ 0
D1
Text GLabel 8150 2550 0    50   Input ~ 0
DI01
Wire Wire Line
	3800 1950 4000 1950
Wire Wire Line
	3200 2500 3750 2500
Wire Wire Line
	3400 2800 4600 2800
$Comp
L Connector:Conn_01x03_Female EC-5
U 1 1 5D3CA29A
P 6900 4600
F 0 "EC-5" H 6928 4626 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6928 4535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6900 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female 1-Wire1
U 1 1 5D3CC155
P 6900 3900
F 0 "1-Wire1" H 6928 3926 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6928 3835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6900 3900 50  0001 C CNN
F 3 "~" H 6900 3900 50  0001 C CNN
	1    6900 3900
	1    0    0    -1  
$EndComp
Text GLabel 6650 3450 2    50   Input ~ 0
D5
$Comp
L knuth-gateway-rescue:GND-power #PWR0104
U 1 1 5D3D0428
P 6700 4000
F 0 "#PWR0104" H 6700 3750 50  0001 C CNN
F 1 "GND" H 6705 3827 50  0000 C CNN
F 2 "" H 6700 4000 50  0001 C CNN
F 3 "" H 6700 4000 50  0001 C CNN
	1    6700 4000
	1    0    0    -1  
$EndComp
Text GLabel 6700 4500 0    50   Input ~ 0
A0
$Comp
L knuth-gateway-rescue:GND-power #PWR0105
U 1 1 5D3D5056
P 6700 4700
F 0 "#PWR0105" H 6700 4450 50  0001 C CNN
F 1 "GND" H 6705 4527 50  0000 C CNN
F 2 "" H 6700 4700 50  0001 C CNN
F 3 "" H 6700 4700 50  0001 C CNN
	1    6700 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D3DC753
P 6450 3650
F 0 "R1" H 6380 3604 50  0000 R CNN
F 1 "4.7K" V 6550 3750 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P5.08mm_Vertical" V 6380 3650 50  0001 C CNN
F 3 "~" H 6450 3650 50  0001 C CNN
	1    6450 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 4600 6200 4600
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0106
U 1 1 5D3CF14A
P 6200 3350
F 0 "#PWR0106" H 6200 3200 50  0001 C CNN
F 1 "+3V3" H 6215 3523 50  0000 C CNN
F 2 "" H 6200 3350 50  0001 C CNN
F 3 "" H 6200 3350 50  0001 C CNN
	1    6200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3350 6200 3500
Wire Wire Line
	6700 3800 6650 3800
Wire Wire Line
	6450 3500 6200 3500
Connection ~ 6200 3500
Wire Wire Line
	6200 3500 6200 3900
Wire Wire Line
	6650 3800 6650 3450
Connection ~ 6650 3800
Wire Wire Line
	6650 3800 6450 3800
Wire Wire Line
	6700 3900 6200 3900
$Comp
L knuth-gateway-rescue:+3V3-power #PWR0107
U 1 1 5D3F51C7
P 6200 4600
F 0 "#PWR0107" H 6200 4450 50  0001 C CNN
F 1 "+3V3" H 6215 4773 50  0000 C CNN
F 2 "" H 6200 4600 50  0001 C CNN
F 3 "" H 6200 4600 50  0001 C CNN
	1    6200 4600
	1    0    0    -1  
$EndComp
Text GLabel 3300 3300 2    50   Input ~ 0
VBAT
Wire Wire Line
	3200 2800 3200 3050
Wire Wire Line
	3200 3050 3650 3050
Text GLabel 3650 3050 2    50   Input ~ 0
D10
$Comp
L Connector:Conn_01x03_Female switch1
U 1 1 5D40388A
P 3550 1400
F 0 "switch1" V 3488 1212 50  0000 R CNN
F 1 "Conn_01x03_Female" V 3397 1212 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3550 1400 50  0001 C CNN
F 3 "~" H 3550 1400 50  0001 C CNN
	1    3550 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 1850 3650 1850
Wire Wire Line
	3650 1850 3650 1600
Wire Wire Line
	3550 1600 3550 2400
Wire Wire Line
	3550 2400 3200 2400
$EndSCHEMATC
