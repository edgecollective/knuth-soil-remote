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
F 2 "Package_TO_SOT_THT:TO-92" H 5400 4450 50  0001 C CNN
F 3 "~" H 5200 4350 50  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L knuth-gateway-rescue:R-Device R1
U 1 1 5D190899
P 5300 4000
F 0 "R1" H 5370 4046 50  0000 L CNN
F 1 "R" H 5370 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5230 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	1    0    0    -1  
$EndComp
$Comp
L knuth:FONA808 U1
U 1 1 5D195B61
P 1750 2600
F 0 "U1" H 1706 3065 50  0000 C CNN
F 1 "FONA808" H 1706 2974 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 1750 2600 50  0001 C CNN
F 3 "" H 1750 2600 50  0001 C CNN
	1    1750 2600
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
	3200 2400 3300 2400
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
Wire Wire Line
	3500 2500 3500 3000
Wire Wire Line
	3500 3000 2500 3000
Wire Wire Line
	2500 3000 2500 2600
Connection ~ 3500 2500
Wire Wire Line
	3500 2500 3750 2500
Wire Wire Line
	3300 2400 3300 2050
Wire Wire Line
	3300 2050 2450 2050
Wire Wire Line
	2450 2050 2450 2500
Connection ~ 3300 2400
Wire Wire Line
	3300 2400 3450 2400
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
Wire Wire Line
	1950 2500 2450 2500
Wire Wire Line
	1950 2600 2500 2600
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
F 1 "R" V 3934 3300 50  0000 C CNN
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
$Comp
L knuth:powerboost_500 U7
U 1 1 5D19A756
P 6900 3700
F 0 "U7" H 6423 3604 50  0000 R CNN
F 1 "powerboost_500" H 6423 3695 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 6900 3700 50  0001 C CNN
F 3 "" H 6900 3700 50  0001 C CNN
	1    6900 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 3800 6100 3800
Wire Wire Line
	6100 3800 6100 3550
Wire Wire Line
	5500 3550 6100 3550
$Comp
L knuth-gateway-rescue:GND-power #PWR0104
U 1 1 5D19AE89
P 6550 4000
F 0 "#PWR0104" H 6550 3750 50  0001 C CNN
F 1 "GND" H 6555 3827 50  0000 C CNN
F 2 "" H 6550 4000 50  0001 C CNN
F 3 "" H 6550 4000 50  0001 C CNN
	1    6550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3900 6550 3900
Wire Wire Line
	6550 3900 6550 4000
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
	1950 3200 2100 3200
Wire Wire Line
	2100 3200 2100 3350
$Comp
L knuth-gateway-rescue:GND-power #PWR0105
U 1 1 5D19CDAE
P 2100 3350
F 0 "#PWR0105" H 2100 3100 50  0001 C CNN
F 1 "GND" H 2105 3177 50  0000 C CNN
F 2 "" H 2100 3350 50  0001 C CNN
F 3 "" H 2100 3350 50  0001 C CNN
	1    2100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3000 2250 3000
Wire Wire Line
	2250 3000 2250 5100
Wire Wire Line
	2250 5100 1850 5100
Wire Wire Line
	1950 2900 2350 2900
Wire Wire Line
	2350 2900 2350 5000
Wire Wire Line
	2350 5000 1850 5000
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
	6800 3050 6400 3050
Wire Wire Line
	6800 3300 6800 3050
Wire Wire Line
	6400 3050 6400 6100
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
	1850 5900 2650 5900
Wire Wire Line
	2650 5900 2650 2700
Wire Wire Line
	2650 2700 1950 2700
Wire Wire Line
	4000 1850 3650 1850
Wire Wire Line
	3650 1850 3650 2400
Wire Wire Line
	4000 1950 3950 1950
Wire Wire Line
	3800 1950 3800 2400
Wire Wire Line
	4000 2050 3900 2050
Wire Wire Line
	4000 2150 3750 2150
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector J_DC_6V_IN1
U 1 1 5D1B33C1
P 4400 1350
F 0 "J_DC_6V_IN1" H 4427 1326 50  0000 L CNN
F 1 "Conn_01x02_Female" H 4427 1235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 4400 1350 50  0001 C CNN
F 3 "~" H 4400 1350 50  0001 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1450 3900 2050
Wire Wire Line
	3750 1550 3750 2150
$Comp
L knuth:CUI_5V_SWITCHING U3
U 1 1 5D1B5FD5
P 2200 1500
F 0 "U3" H 2031 1865 50  0000 C CNN
F 1 "CUI_5V_SWITCHING" H 2031 1774 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 2200 1500 50  0001 C CNN
F 3 "" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1350 3900 1350
Wire Wire Line
	3900 1350 3900 1450
Connection ~ 3900 1450
Wire Wire Line
	3950 1950 3950 1450
Wire Wire Line
	3950 1450 4200 1450
Connection ~ 3950 1950
Wire Wire Line
	3950 1950 3800 1950
$Comp
L knuth-gateway-rescue:Conn_01x02_Female-Connector J_DC_6.5V+_IN1
U 1 1 5D1BF711
P 3150 1000
F 0 "J_DC_6.5V+_IN1" V 3090 812 50  0000 R CNN
F 1 "Conn_01x02_Female" V 2999 812 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 3150 1000 50  0001 C CNN
F 3 "~" H 3150 1000 50  0001 C CNN
	1    3150 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1400 3150 1200
Wire Wire Line
	3250 1500 3250 1200
$Comp
L knuth-gateway-rescue:GND-power #PWR0109
U 1 1 5D1C288A
P 3250 1500
F 0 "#PWR0109" H 3250 1250 50  0001 C CNN
F 1 "GND" H 3255 1327 50  0000 C CNN
F 2 "" H 3250 1500 50  0001 C CNN
F 3 "" H 3250 1500 50  0001 C CNN
	1    3250 1500
	1    0    0    -1  
$EndComp
Connection ~ 3250 1500
Wire Wire Line
	3500 1450 3500 1800
Wire Wire Line
	3500 1800 2950 1800
Wire Wire Line
	2950 1800 2950 1600
Wire Wire Line
	3500 1450 3900 1450
Wire Wire Line
	3250 1500 3400 1500
Wire Wire Line
	3400 1500 3400 1550
Wire Wire Line
	3400 1550 3750 1550
$Comp
L knuth-gateway-rescue:R-Device R2
U 1 1 5D1CAEE6
P 2450 1600
F 0 "R2" V 2657 1600 50  0000 C CNN
F 1 "R" V 2566 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2380 1600 50  0001 C CNN
F 3 "~" H 2450 1600 50  0001 C CNN
	1    2450 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2600 1600 2950 1600
Wire Wire Line
	2300 1600 2200 1600
Wire Wire Line
	2200 1500 3250 1500
Wire Wire Line
	2200 1400 3150 1400
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
$EndSCHEMATC
