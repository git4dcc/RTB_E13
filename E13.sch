EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "RTB E13 module"
Date "2024-11-14"
Rev "1"
Comp "Frank Schumacher"
Comment1 "WS2811 chip emulator for 12 multiplex LEDs"
Comment2 ""
Comment3 ""
Comment4 "Licensed under the Apache License, Version 2"
$EndDescr
Text GLabel 4600 2500 2    50   Input ~ 0
UPDI
Text GLabel 8900 1850 0    50   Input ~ 0
OUT4
Text GLabel 8900 1750 0    50   Input ~ 0
OUT3
Text GLabel 8900 1650 0    50   Input ~ 0
OUT2
Text GLabel 8900 1550 0    50   Input ~ 0
OUT1
Text GLabel 3100 3100 3    50   Input ~ 0
V24.tx
Text GLabel 3200 3100 3    50   Input ~ 0
V24.rx
Text GLabel 3400 3100 3    50   Input ~ 0
V24.cts
$Comp
L Device:C C2
U 1 1 6072CAD8
P 5800 1000
F 0 "C2" H 5915 1046 50  0001 L CNN
F 1 "100n" H 5850 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5838 850 50  0001 C CNN
F 3 "~" H 5800 1000 50  0001 C CNN
	1    5800 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60730021
P 6150 1000
F 0 "C3" H 6265 1046 50  0001 L CNN
F 1 "100n" H 6200 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 850 50  0001 C CNN
F 3 "~" H 6150 1000 50  0001 C CNN
	1    6150 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 850  6150 850 
Wire Wire Line
	5800 1150 6150 1150
$Comp
L power:GND #PWR0107
U 1 1 60735B90
P 5800 1150
F 0 "#PWR0107" H 5800 900 50  0001 C CNN
F 1 "GND" H 5805 977 50  0000 C CNN
F 2 "" H 5800 1150 50  0001 C CNN
F 3 "" H 5800 1150 50  0001 C CNN
	1    5800 1150
	1    0    0    -1  
$EndComp
Connection ~ 5800 1150
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 60679519
P 9100 1750
F 0 "J7" H 9300 1650 50  0000 R CNN
F 1 "Multiplex out" H 9700 1750 50  0000 R CNN
F 2 "RTB_parts:1725672" H 9100 1750 50  0001 C CNN
F 3 "~" H 9100 1750 50  0001 C CNN
	1    9100 1750
	1    0    0    1   
$EndComp
$Comp
L Device:R R18
U 1 1 606D9C59
P 3100 1300
F 0 "R18" V 3600 1300 50  0000 C CNN
F 1 "160" V 3100 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3030 1300 50  0001 C CNN
F 3 "~" H 3100 1300 50  0001 C CNN
	1    3100 1300
	-1   0    0    1   
$EndComp
Text GLabel 3100 1150 1    50   Input ~ 0
DI
$Comp
L Device:R R19
U 1 1 606DE0A7
P 1950 2200
F 0 "R19" V 2050 2000 50  0000 C CNN
F 1 "160" V 1950 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1880 2200 50  0001 C CNN
F 3 "~" H 1950 2200 50  0001 C CNN
	1    1950 2200
	0    1    1    0   
$EndComp
Text GLabel 1800 2200 0    50   Input ~ 0
DO
Text GLabel 3300 3100 3    50   Input ~ 0
V24.rts
Text Notes 5100 2100 0    50   ~ 0
USART-0
Text Notes 3100 3600 0    50   ~ 0
USART-2
Wire Notes Line
	7750 700  10700 700 
Wire Notes Line
	10700 700  10700 3850
Wire Notes Line
	10700 3850 7750 3850
Wire Notes Line
	7750 3850 7750 700 
Connection ~ 5500 5050
Wire Wire Line
	5500 5050 5200 5050
Connection ~ 5400 5900
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5400 5900
$Comp
L power:+5V #PWR0118
U 1 1 6072C827
P 1750 5000
F 0 "#PWR0118" H 1750 4850 50  0001 C CNN
F 1 "+5V" H 1765 5173 50  0000 C CNN
F 2 "" H 1750 5000 50  0001 C CNN
F 3 "" H 1750 5000 50  0001 C CNN
	1    1750 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0105
U 1 1 60700A86
P 5200 6400
F 0 "#PWR0105" H 5200 6250 50  0001 C CNN
F 1 "VDD" V 5200 6550 50  0000 L CNN
F 2 "" H 5200 6400 50  0001 C CNN
F 3 "" H 5200 6400 50  0001 C CNN
	1    5200 6400
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0104
U 1 1 606FF267
P 5200 5500
F 0 "#PWR0104" H 5200 5350 50  0001 C CNN
F 1 "VDD" V 5200 5650 50  0000 L CNN
F 2 "" H 5200 5500 50  0001 C CNN
F 3 "" H 5200 5500 50  0001 C CNN
	1    5200 5500
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0102
U 1 1 606FD673
P 3000 5000
F 0 "#PWR0102" H 3000 4850 50  0001 C CNN
F 1 "VDD" H 3017 5173 50  0000 C CNN
F 2 "" H 3000 5000 50  0001 C CNN
F 3 "" H 3000 5000 50  0001 C CNN
	1    3000 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5150 5650 5150
Text GLabel 5200 4650 0    50   Input ~ 0
DO
Wire Wire Line
	5650 4650 5200 4650
Wire Wire Line
	5400 4450 5400 4950
Text GLabel 5200 6700 0    50   Input ~ 0
V24.cts
$Comp
L power:GND #PWR0101
U 1 1 606717F4
P 5400 6800
F 0 "#PWR0101" H 5400 6550 50  0001 C CNN
F 1 "GND" H 5405 6627 50  0000 C CNN
F 2 "" H 5400 6800 50  0001 C CNN
F 3 "" H 5400 6800 50  0001 C CNN
	1    5400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6200 5400 6800
Wire Wire Line
	5650 6700 5200 6700
Wire Wire Line
	5400 5900 5400 6200
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 606643DB
P 5850 4550
F 0 "J2" H 5822 4574 50  0001 R CNN
F 1 "WS-bus output" H 5800 4550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 4550 50  0001 C CNN
F 3 "~" H 5850 4550 50  0001 C CNN
	1    5850 4550
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 60665244
P 5850 5050
F 0 "J3" H 5822 5074 50  0001 R CNN
F 1 "WS-bus input" H 5800 5050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5850 5050 50  0001 C CNN
F 3 "~" H 5850 5050 50  0001 C CNN
	1    5850 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 6300 5200 6300
Wire Wire Line
	5650 6500 5200 6500
Wire Wire Line
	5200 6600 5650 6600
Text GLabel 5200 6500 0    50   Input ~ 0
V24.rx
Text GLabel 5200 6600 0    50   Input ~ 0
V24.tx
Text GLabel 5200 6300 0    50   Input ~ 0
V24.rts
Wire Wire Line
	5650 6400 5200 6400
Connection ~ 5400 6200
Wire Wire Line
	5650 6200 5400 6200
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 606FB752
P 5850 6400
F 0 "J5" H 5822 6374 50  0001 R CNN
F 1 "Debug IF" H 5800 6400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5850 6400 50  0001 C CNN
F 3 "~" H 5850 6400 50  0001 C CNN
	1    5850 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5650 5500 5200 5500
Text GLabel 5200 5150 0    50   Input ~ 0
DI
Wire Wire Line
	5500 5050 5650 5050
Wire Wire Line
	5500 4550 5500 5050
Wire Wire Line
	5650 4550 5500 4550
Wire Wire Line
	5650 5900 5400 5900
Wire Wire Line
	5650 4950 5400 4950
Wire Wire Line
	5650 4450 5400 4450
Wire Wire Line
	5200 5400 5650 5400
Text GLabel 5200 5400 0    50   Input ~ 0
UPDI
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 60666C65
P 5850 5600
F 0 "J4" H 5822 5574 50  0001 R CNN
F 1 "UPDI" H 5800 5600 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x03_P1.27mm_Vertical" H 5850 5600 50  0001 C CNN
F 3 "~" H 5850 5600 50  0001 C CNN
	1    5850 5600
	-1   0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60670943
P 2700 7450
F 0 "H4" H 2800 7496 50  0000 L CNN
F 1 "MountingHole" H 2800 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 2700 7450 50  0001 C CNN
F 3 "~" H 2700 7450 50  0001 C CNN
	1    2700 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 65435EAC
P 3600 7450
F 0 "H3" H 3700 7496 50  0000 L CNN
F 1 "MountingHole" H 3700 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 3600 7450 50  0001 C CNN
F 3 "~" H 3600 7450 50  0001 C CNN
	1    3600 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 606D2D2A
P 1850 7450
F 0 "H2" H 1950 7496 50  0000 L CNN
F 1 "MountingHole" H 1950 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 1850 7450 50  0001 C CNN
F 3 "~" H 1850 7450 50  0001 C CNN
	1    1850 7450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 606D2302
P 950 7450
F 0 "H1" H 1050 7496 50  0000 L CNN
F 1 "MountingHole" H 1050 7405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965" H 950 7450 50  0001 C CNN
F 3 "~" H 950 7450 50  0001 C CNN
	1    950  7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 65566999
P 5200 5050
F 0 "#PWR0113" H 5200 4900 50  0001 C CNN
F 1 "+5V" V 5200 5250 50  0000 C CNN
F 2 "" H 5200 5050 50  0001 C CNN
F 3 "" H 5200 5050 50  0001 C CNN
	1    5200 5050
	0    -1   -1   0   
$EndComp
NoConn ~ 5650 5600
NoConn ~ 5650 5700
NoConn ~ 5650 5800
Wire Notes Line
	4400 4100 6600 4100
Wire Notes Line
	6600 4100 6600 7050
Wire Notes Line
	6600 7050 4400 7050
Wire Notes Line
	4400 7050 4400 4100
Wire Notes Line
	3800 4100 1050 4100
Wire Notes Line
	1050 4100 1050 7050
Wire Notes Line
	1050 7050 3800 7050
Wire Notes Line
	3800 7050 3800 4100
Text Notes 1100 4300 0    79   ~ 16
Power
Text Notes 4500 4300 0    79   ~ 16
Interfaces
Wire Notes Line
	1050 3850 6600 3850
Wire Notes Line
	6600 3850 6600 700 
Wire Notes Line
	6600 700  1050 700 
Wire Notes Line
	1050 700  1050 3850
Text Notes 1150 900  0    79   ~ 16
CPU
Text Notes 7850 900  0    79   ~ 16
Multiplex Signal connector
$Comp
L power:GND #PWR0106
U 1 1 65698D2B
P 2400 6100
F 0 "#PWR0106" H 2400 5850 50  0001 C CNN
F 1 "GND" H 2405 5927 50  0000 C CNN
F 2 "" H 2400 6100 50  0001 C CNN
F 3 "" H 2400 6100 50  0001 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 656982B2
P 1750 5850
F 0 "C1" H 1800 5750 50  0000 L CNN
F 1 "4.7u/10V" H 1800 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1788 5700 50  0001 C CNN
F 3 "~" H 1750 5850 50  0001 C CNN
	1    1750 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6591D86E
P 3000 5850
F 0 "C4" H 3050 5750 50  0000 L CNN
F 1 "4.7u/10V" H 3050 5650 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3038 5700 50  0001 C CNN
F 3 "~" H 3000 5850 50  0001 C CNN
	1    3000 5850
	1    0    0    -1  
$EndComp
Text GLabel 8900 2800 0    50   Input ~ 0
OUT4
Text GLabel 8900 2700 0    50   Input ~ 0
OUT3
Text GLabel 8900 2600 0    50   Input ~ 0
OUT2
Text GLabel 8900 2500 0    50   Input ~ 0
OUT1
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 658F13E6
P 9100 2600
F 0 "J1" H 9300 2600 50  0000 R CNN
F 1 "Multiplex out" H 9700 2500 50  0000 R CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x02_P2.00mm_Vertical" H 9100 2600 50  0001 C CNN
F 3 "~" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MIC5205-5.0YM5 U2
U 1 1 65909D8D
P 2400 5700
F 0 "U2" H 2400 6042 50  0000 C CNN
F 1 "MIC5205-5.0YM5" H 2400 5951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2400 6025 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005785A.pdf" H 2400 5700 50  0001 C CNN
	1    2400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5600 1950 5600
Wire Wire Line
	1750 5600 1750 5700
Wire Wire Line
	1750 6000 1750 6100
Wire Wire Line
	1750 6100 2400 6100
Wire Wire Line
	2400 6000 2400 6100
Connection ~ 2400 6100
Wire Wire Line
	2400 6100 3000 6100
Wire Wire Line
	2700 5600 3000 5600
Wire Wire Line
	3000 5600 3000 5700
Wire Wire Line
	3000 6000 3000 6100
Connection ~ 1750 5600
Wire Wire Line
	2100 5700 1950 5700
Wire Wire Line
	1950 5700 1950 5600
Connection ~ 1950 5600
Wire Wire Line
	1950 5600 1750 5600
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 65922BEA
P 2400 5150
F 0 "JP1" H 2400 5355 50  0000 C CNN
F 1 "skip LDO" H 2400 5264 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2400 5150 50  0001 C CNN
F 3 "~" H 2400 5150 50  0001 C CNN
	1    2400 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5000 1750 5150
Wire Wire Line
	3000 5000 3000 5150
Connection ~ 3000 5600
Wire Wire Line
	2550 5150 3000 5150
Connection ~ 3000 5150
Wire Wire Line
	3000 5150 3000 5600
Wire Wire Line
	2250 5150 1750 5150
Connection ~ 1750 5150
Wire Wire Line
	1750 5150 1750 5600
NoConn ~ 2700 5700
$Comp
L Device:R R15
U 1 1 606C55DD
P 2800 1300
F 0 "R15" V 3300 1300 50  0000 C CNN
F 1 "120" V 2800 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 1300 50  0001 C CNN
F 3 "~" H 2800 1300 50  0001 C CNN
	1    2800 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 606C55E7
P 3000 1300
F 0 "R16" V 3500 1300 50  0000 C CNN
F 1 "120" V 3000 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2930 1300 50  0001 C CNN
F 3 "~" H 3000 1300 50  0001 C CNN
	1    3000 1300
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 6594502C
P 1500 5850
F 0 "D1" V 1600 5700 50  0000 L CNN
F 1 "SSL34F" V 1700 5550 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 1500 5675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1500 5850 50  0001 C CNN
	1    1500 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 6100 1500 6100
Wire Wire Line
	1500 6100 1500 6000
Connection ~ 1750 6100
Wire Wire Line
	1500 5700 1500 5600
Wire Wire Line
	1500 5600 1750 5600
Text Notes 1300 5750 0    50   ~ 0
n.f.
Text GLabel 2900 1150 1    50   Input ~ 0
OUT2
Text GLabel 2800 1150 1    50   Input ~ 0
OUT3
NoConn ~ 4600 2200
$Comp
L power:GND #PWR0103
U 1 1 65D8CD76
P 4600 2300
F 0 "#PWR0103" H 4600 2050 50  0001 C CNN
F 1 "GND" V 4600 2100 50  0000 C CNN
F 2 "" H 4600 2300 50  0001 C CNN
F 3 "" H 4600 2300 50  0001 C CNN
	1    4600 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 65D8DC2E
P 4600 1900
F 0 "#PWR0108" H 4600 1650 50  0001 C CNN
F 1 "GND" V 4600 1700 50  0000 C CNN
F 2 "" H 4600 1900 50  0001 C CNN
F 3 "" H 4600 1900 50  0001 C CNN
	1    4600 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0109
U 1 1 65D8E0C1
P 4600 2400
F 0 "#PWR0109" H 4600 2250 50  0001 C CNN
F 1 "VDD" V 4600 2600 50  0000 C CNN
F 2 "" H 4600 2400 50  0001 C CNN
F 3 "" H 4600 2400 50  0001 C CNN
	1    4600 2400
	0    1    1    0   
$EndComp
NoConn ~ 4600 2600
NoConn ~ 4600 2700
$Comp
L RTB:AVR64DB32-I_RXB IC1
U 1 1 65D6906D
P 3500 1500
F 0 "IC1" V 3500 2250 50  0000 C CNN
F 1 "AVR64DB32-I_RXB" V 3600 2550 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.3x3.3mm" H 4950 2400 50  0001 L CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/AVR64DB28-32-48-64-DataSheet-DS40002300A.pdf" H 4950 2300 50  0001 L CNN
F 4 "AVR64DB32-I/RXB" H 4950 2200 50  0001 L CNN "Description"
F 5 "0.9" H 4950 2100 50  0001 L CNN "Height"
F 6 "579-AVR64DB32-I/RXB" H 4950 2000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Microchip-Technology/AVR64DB32-I-RXB?qs=eP2BKZSCXI6qYgfD2L6q3w%3D%3D" H 4950 1900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Microchip" H 4950 1800 50  0001 L CNN "Manufacturer_Name"
F 9 "AVR64DB32-I/RXB" H 4950 1700 50  0001 L CNN "Manufacturer_Part_Number"
	1    3500 1500
	0    1    1    0   
$EndComp
Text Notes 3650 3400 0    50   ~ 0
Hbt (grn)
$Comp
L Device:R R20
U 1 1 60759709
P 4100 3250
F 0 "R20" V 4000 3250 50  0000 C CNN
F 1 "3.3k" V 4100 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4030 3250 50  0001 C CNN
F 3 "~" H 4100 3250 50  0001 C CNN
	1    4100 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6074997E
P 3800 3250
F 0 "D2" V 3850 3500 50  0001 R CNN
F 1 "HBT(green)" V 3750 3700 50  0001 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3800 3250 50  0001 C CNN
F 3 "~" H 3800 3250 50  0001 C CNN
	1    3800 3250
	1    0    0    1   
$EndComp
Wire Wire Line
	3650 3250 3500 3250
Wire Wire Line
	3500 3250 3500 3100
$Comp
L power:GND #PWR0110
U 1 1 65DA62F3
P 3000 3100
F 0 "#PWR0110" H 3000 2850 50  0001 C CNN
F 1 "GND" V 3000 2900 50  0000 C CNN
F 2 "" H 3000 3100 50  0001 C CNN
F 3 "" H 3000 3100 50  0001 C CNN
	1    3000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 65DA6BBD
P 2900 3100
F 0 "#PWR0111" H 2900 2950 50  0001 C CNN
F 1 "VDD" V 2900 3300 50  0000 C CNN
F 2 "" H 2900 3100 50  0001 C CNN
F 3 "" H 2900 3100 50  0001 C CNN
	1    2900 3100
	-1   0    0    1   
$EndComp
NoConn ~ 2800 3100
$Comp
L power:VDD #PWR0112
U 1 1 65DDBDFD
P 4250 3250
F 0 "#PWR0112" H 4250 3100 50  0001 C CNN
F 1 "VDD" V 4250 3450 50  0000 C CNN
F 2 "" H 4250 3250 50  0001 C CNN
F 3 "" H 4250 3250 50  0001 C CNN
	1    4250 3250
	0    1    1    0   
$EndComp
$Comp
L power:VDD #PWR0114
U 1 1 65DE59D9
P 5800 850
F 0 "#PWR0114" H 5800 700 50  0001 C CNN
F 1 "VDD" V 5800 1050 50  0000 C CNN
F 2 "" H 5800 850 50  0001 C CNN
F 3 "" H 5800 850 50  0001 C CNN
	1    5800 850 
	0    -1   -1   0   
$EndComp
Connection ~ 5800 850 
NoConn ~ 4600 2100
NoConn ~ 4600 2000
Text GLabel 2100 2600 0    50   Input ~ 0
DAC
$Comp
L Device:C C5
U 1 1 65D770C8
P 5200 1000
F 0 "C5" H 5315 1046 50  0001 L CNN
F 1 "100n" H 5250 900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5238 850 50  0001 C CNN
F 3 "~" H 5200 1000 50  0001 C CNN
	1    5200 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 65D775C6
P 5200 1150
F 0 "#PWR0119" H 5200 900 50  0001 C CNN
F 1 "GND" H 5205 977 50  0000 C CNN
F 2 "" H 5200 1150 50  0001 C CNN
F 3 "" H 5200 1150 50  0001 C CNN
	1    5200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 850  5200 850 
Text GLabel 2100 2000 0    50   Input ~ 0
DAC
Text GLabel 5050 850  0    50   Input ~ 0
DAC
Text GLabel 3000 1150 1    50   Input ~ 0
OUT1
$Comp
L Device:R R17
U 1 1 606C55F1
P 2900 1300
F 0 "R17" V 3400 1300 50  0000 C CNN
F 1 "120" V 2900 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2830 1300 50  0001 C CNN
F 3 "~" H 2900 1300 50  0001 C CNN
	1    2900 1300
	-1   0    0    1   
$EndComp
Text GLabel 1800 1900 0    50   Input ~ 0
OUT4
$Comp
L Device:R R14
U 1 1 606C55D3
P 1950 1900
F 0 "R14" V 1850 1900 50  0000 C CNN
F 1 "120" V 1950 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1880 1900 50  0001 C CNN
F 3 "~" H 1950 1900 50  0001 C CNN
	1    1950 1900
	0    1    1    0   
$EndComp
Text GLabel 2100 2100 0    50   Input ~ 0
OUT1
Text GLabel 2100 2300 0    50   Input ~ 0
OUT2
Text GLabel 2100 2400 0    50   Input ~ 0
OUT3
Text GLabel 2100 2500 0    50   Input ~ 0
OUT4
$Comp
L Device:R_Pack04 RN1
U 1 1 661ED67C
P 3400 1300
F 0 "RN1" H 3600 1300 50  0000 L CNN
F 1 "4x 22k" H 3600 1200 50  0000 L CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 3675 1300 50  0001 C CNN
F 3 "~" H 3400 1300 50  0001 C CNN
	1    3400 1300
	1    0    0    -1  
$EndComp
Text GLabel 3200 1100 1    50   Input ~ 0
OUT1
Text GLabel 3300 1100 1    50   Input ~ 0
OUT2
Text GLabel 3400 1100 1    50   Input ~ 0
OUT3
Text GLabel 3500 1100 1    50   Input ~ 0
OUT4
Wire Wire Line
	2800 1450 2800 1500
Wire Wire Line
	2900 1500 2900 1450
Wire Wire Line
	3000 1500 3000 1450
Wire Wire Line
	3100 1500 3100 1450
Text Notes 3600 1250 0    50   ~ 0
n.f. (for LED dim tuning)
Text Notes 1750 4400 0    50   Italic 0
LDO is optional and only to protect CPU against\nhigh voltage on the bus. The D1 protects against\nreverse polarity. Close JP1 if LDO is not fitted.
Text Notes 3650 3550 0    50   Italic 0
Note: R20 depends on LED
Text Notes 8500 2050 0    50   Italic 0
1x4 terminal connector (optional)
Text Notes 8650 3000 0    50   Italic 0
2x2 pin header
$EndSCHEMATC
