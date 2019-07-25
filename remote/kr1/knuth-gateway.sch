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
L knuth-gateway-rescue:Q_NPN_EBC-Device Q1
U 1 1 5D1906A1
P 5200 4350
F 0 "Q1" H 5391 4304 50  0000 L CNN
F 1 "Q_NPN_EBC" H 5391 4395 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_Wide" H 5400 4450 50  0001 C CNN
F 3 "~" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R1
U 1 1 5D190899
P 5300 4000
F 0 "R1" H 5370 4046 50  0000 L CNN
F 1 "500 Ohms" H 5370 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5230 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	1    0    0    -1  
$EndComp
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
L knuth-gateway-rescue:+BATT-power #PWR0101
U 1 1 5D19682C
P 3450 2200
F 0 "#PWR0101" H 3450 2050 50  0001 C CNN
F 1 "+BATT" H 3465 2373 50  0000 C CNN
F 2 "" H 3450 2200 50  0001 C CNN
F 3 "" H 3450 2200 50  0001 C CNN
	1    3450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2400 3450 2200
Wire Wire Line
	3200 2500 3500 2500
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
Connection ~ 3500 2500
Wire Wire Line
	3500 2500 3750 2500
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
	3650 2400 3450 2400
Connection ~ 3450 2400
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
	3300 3300 3900 3300
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
	3400 2800 4600 2800
$Comp
L knuth-gateway-rescue:R-Device R3
U 1 1 5D198BCF
P 4050 3300
F 0 "R3" V 3843 3300 50  0000 C CNN
F 1 "1K" V 3934 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 3300 50  0001 C CNN
F 3 "~" H 4050 3300 50  0001 C CNN
	1    4050 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3550 4900 3550
Wire Wire Line
	4700 3550 4700 3350
$Comp
L knuth-gateway-rescue:+BATT-power #PWR0103
U 1 1 5D199524
P 4700 3350
F 0 "#PWR0103" H 4700 3200 50  0001 C CNN
F 1 "+BATT" H 4715 3523 50  0000 C CNN
F 2 "" H 4700 3350 50  0001 C CNN
F 3 "" H 4700 3350 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3300 4200 4350
Wire Wire Line
	4200 4350 5000 4350
Wire Wire Line
	5500 3550 5800 3550
$Comp
L knuth:Q_RHS U2
U 1 1 5D19C257
P 1750 5600
F 0 "U2" H 1681 6865 50  0000 C CNN
F 1 "Q_RHS" H 1681 6774 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 1750 5600 50  0001 C CNN
F 3 "" H 1750 5600 50  0001 C CNN
	1    1750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4900 1850 4900
Wire Wire Line
	3200 2800 3200 4900
Wire Wire Line
	1850 5500 2400 5500
$Comp
L knuth-gateway-rescue:GND-power #PWR0106
U 1 1 5D1A1ECD
P 2400 5500
F 0 "#PWR0106" H 2400 5250 50  0001 C CNN
F 1 "GND" H 2405 5327 50  0000 C CNN
F 2 "" H 2400 5500 50  0001 C CNN
F 3 "" H 2400 5500 50  0001 C CNN
	1    2400 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6100 1850 6100
Wire Wire Line
	4900 3550 4900 2950
Connection ~ 4900 3550
Wire Wire Line
	4900 3550 4700 3550
$Comp
L knuth-gateway-rescue:GND-power #PWR0108
U 1 1 5D1AA2EF
P 5300 4550
F 0 "#PWR0108" H 5300 4300 50  0001 C CNN
F 1 "GND" H 5305 4377 50  0000 C CNN
F 2 "" H 5300 4550 50  0001 C CNN
F 3 "" H 5300 4550 50  0001 C CNN
	1    5300 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 1850 3650 1850
Wire Wire Line
	3650 1850 3650 2400
Wire Wire Line
	3800 1950 3800 2400
Wire Wire Line
	3650 2400 3650 2950
Wire Wire Line
	3650 2950 4900 2950
Connection ~ 3650 2400
Wire Wire Line
	1850 4600 1400 4600
Wire Wire Line
	1400 4700 1850 4700
Wire Wire Line
	1850 4800 1400 4800
Wire Wire Line
	1400 4900 1850 4900
Connection ~ 1850 4900
Wire Wire Line
	1850 5000 1400 5000
Connection ~ 1850 5000
Wire Wire Line
	1400 5100 1850 5100
Connection ~ 1850 5100
Wire Wire Line
	1850 5200 1400 5200
Wire Wire Line
	1400 5300 1850 5300
Wire Wire Line
	1850 5400 1400 5400
Wire Wire Line
	1400 5500 1850 5500
Connection ~ 1850 5500
Wire Wire Line
	1850 5600 1400 5600
Wire Wire Line
	1400 5700 1850 5700
Wire Wire Line
	1850 5800 1400 5800
Wire Wire Line
	1400 5900 1850 5900
Connection ~ 1850 5900
Wire Wire Line
	1850 6000 1400 6000
Wire Wire Line
	1400 6100 1850 6100
Connection ~ 1850 6100
$Comp
L knuth-gateway-rescue:Q_PNP_BCE-device Q2
U 1 1 5D1BCE58
P 5300 3650
F 0 "Q2" V 5631 3650 50  0000 C CNN
F 1 "Q_PNP_BCE" V 5538 3650 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5500 3750 50  0001 C CNN
F 3 "" H 5300 3650 50  0001 C CNN
	1    5300 3650
	0    1    -1   0   
$EndComp
$Comp
L knuth-gateway-rescue:Conn_01x16_Female-Connector J1
U 1 1 5D1A8A1E
P 1200 5400
F 0 "J1" H 1094 4375 50  0000 C CNN
F 1 "Conn_01x16_Female" H 1094 4466 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 1200 5400 50  0001 C CNN
F 3 "~" H 1200 5400 50  0001 C CNN
	1    1200 5400
	-1   0    0    1   
$EndComp
$Comp
L knuth:sim800 U1
U 1 1 5D2EB948
P 4350 5250
F 0 "U1" H 4727 5346 50  0000 L CNN
F 1 "sim800" H 4727 5255 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 4100 5500 50  0001 C CNN
F 3 "" H 4100 5500 50  0001 C CNN
	1    4350 5250
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:+BATT-power #PWR0104
U 1 1 5D308005
P 3750 4600
F 0 "#PWR0104" H 3750 4450 50  0001 C CNN
F 1 "+BATT" H 3765 4773 50  0000 C CNN
F 2 "" H 3750 4600 50  0001 C CNN
F 3 "" H 3750 4600 50  0001 C CNN
	1    3750 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4600 3750 4600
$Comp
L knuth-gateway-rescue:GND-power #PWR0105
U 1 1 5D313FAD
P 3500 4700
F 0 "#PWR0105" H 3500 4450 50  0001 C CNN
F 1 "GND" H 3505 4527 50  0000 C CNN
F 2 "" H 3500 4700 50  0001 C CNN
F 3 "" H 3500 4700 50  0001 C CNN
	1    3500 4700
	1    0    0    -1  
$EndComp
Connection ~ 3500 4700
Wire Wire Line
	3200 2400 3450 2400
Wire Wire Line
	3500 2500 3500 4700
Wire Wire Line
	1850 5900 3750 5900
Wire Wire Line
	6400 4500 8100 4500
Wire Wire Line
	8100 4500 8100 4000
Wire Wire Line
	6400 4500 6400 6100
$Comp
L knuth-gateway-rescue:GND-power #PWR0107
U 1 1 5D38ACAD
P 7800 3900
F 0 "#PWR0107" H 7800 3650 50  0001 C CNN
F 1 "GND" H 7805 3727 50  0000 C CNN
F 2 "" H 7800 3900 50  0001 C CNN
F 3 "" H 7800 3900 50  0001 C CNN
	1    7800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 3900 7800 3900
Wire Wire Line
	5800 3550 5800 3100
Wire Wire Line
	5800 3100 7950 3100
Wire Wire Line
	7950 3100 7950 3400
Wire Wire Line
	7950 3400 8100 3400
Wire Wire Line
	3500 4700 3650 4700
Wire Wire Line
	3650 4700 3650 5200
Wire Wire Line
	3650 5200 3900 5200
Connection ~ 3650 4700
Wire Wire Line
	3650 4700 3900 4700
Wire Wire Line
	3900 5400 3300 5400
Wire Wire Line
	3300 5400 3300 5100
Wire Wire Line
	3600 5000 3600 5500
Wire Wire Line
	3600 5500 3900 5500
Wire Wire Line
	1850 5000 3600 5000
Wire Wire Line
	1850 5100 3300 5100
Wire Wire Line
	3750 5900 3750 5700
Wire Wire Line
	3750 5700 3900 5700
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 5D3A6009
P 7200 1550
F 0 "J?" H 7000 2200 50  0000 L CNN
F 1 "FeatherLora1" V 6550 1200 50  0000 L CNN
F 2 "" H 7200 1550 50  0001 C CNN
F 3 "~" H 7200 1550 50  0001 C CNN
	1    7200 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J?
U 1 1 5D3A613C
P 8350 1750
F 0 "J?" H 8200 2600 50  0000 L CNN
F 1 "FeatherLora2" V 8500 1500 50  0000 L CNN
F 2 "" H 8350 1750 50  0001 C CNN
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
L power:+3V3 #PWR?
U 1 1 5D3A928A
P 7800 950
F 0 "#PWR?" H 7800 800 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5D3AC17C
P 7800 1400
F 0 "#PWR?" H 7800 1150 50  0001 C CNN
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
$EndSCHEMATC
