EESchema Schematic File Version 4
LIBS:dc starter-cache
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
L arduino_shieldsNCL:ARDUINO_SHIELD SHIELD1
U 1 1 5C7D0AC7
P 2750 2050
F 0 "SHIELD1" H 2750 3137 60  0000 C CNN
F 1 "ARDUINO_SHIELD" H 2750 3031 60  0000 C CNN
F 2 "" H 2750 2050 50  0001 C CNN
F 3 "" H 2750 2050 50  0001 C CNN
	1    2750 2050
	1    0    0    -1  
$EndComp
$Comp
L Driver_FET:TLP250 U1
U 1 1 5C7D0B8A
P 4600 2650
F 0 "U1" H 4600 3167 50  0000 C CNN
F 1 "TLP250" H 4600 3076 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4600 2250 50  0001 C CIN
F 3 "http://toshiba.semicon-storage.com/info/docget.jsp?did=16821&prodName=TLP250" H 4510 2655 50  0001 L CNN
	1    4600 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C7D0D95
P 3950 2350
F 0 "R1" V 3743 2350 50  0000 C CNN
F 1 "R" V 3834 2350 50  0000 C CNN
F 2 "" V 3880 2350 50  0001 C CNN
F 3 "~" H 3950 2350 50  0001 C CNN
	1    3950 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2350 4200 2350
Wire Wire Line
	3800 2350 3700 2350
$Comp
L Connector_Generic:Conn_01x03 START1
U 1 1 5C7D1015
P 2400 3850
F 0 "START1" V 2273 4030 50  0000 L CNN
F 1 "Conn_01x03" V 2364 4030 50  0000 L CNN
F 2 "" H 2400 3850 50  0001 C CNN
F 3 "~" H 2400 3850 50  0001 C CNN
	1    2400 3850
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 STOP1
U 1 1 5C7D1060
P 3300 3850
F 0 "STOP1" V 3173 4030 50  0000 L CNN
F 1 "Conn_01x03" V 3264 4030 50  0000 L CNN
F 2 "" H 3300 3850 50  0001 C CNN
F 3 "~" H 3300 3850 50  0001 C CNN
	1    3300 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 2650 3800 2650
Wire Wire Line
	3800 2650 3800 3450
Wire Wire Line
	3800 3450 2400 3450
Wire Wire Line
	2400 3450 2400 3650
Wire Wire Line
	3300 3650 3300 3550
Wire Wire Line
	3300 3550 3900 3550
Wire Wire Line
	3900 3550 3900 2550
Wire Wire Line
	3900 2550 3700 2550
Wire Wire Line
	3200 3650 3200 3350
Wire Wire Line
	2300 3650 2300 3350
Wire Wire Line
	4200 2950 4200 3350
Wire Wire Line
	4200 3350 3200 3350
Connection ~ 2300 3350
Wire Wire Line
	2300 3350 1550 3350
Connection ~ 3200 3350
Wire Wire Line
	3200 3350 2300 3350
Wire Wire Line
	1550 3350 1550 1950
Wire Wire Line
	1800 1950 1550 1950
Wire Wire Line
	2500 3650 3400 3650
Wire Wire Line
	1400 3650 1400 1750
Wire Wire Line
	1400 1750 1800 1750
Connection ~ 2500 3650
Wire Wire Line
	1400 3650 2500 3650
$Comp
L Device:C C1
U 1 1 5C7D2D35
P 5350 2650
F 0 "C1" H 5465 2696 50  0000 L CNN
F 1 "C" H 5465 2605 50  0000 L CNN
F 2 "" H 5388 2500 50  0001 C CNN
F 3 "~" H 5350 2650 50  0001 C CNN
	1    5350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2500 5350 2350
Wire Wire Line
	5350 2350 5000 2350
Wire Wire Line
	5350 2800 5350 2950
Wire Wire Line
	5350 2950 5000 2950
Wire Wire Line
	5000 2750 5000 2550
$Comp
L Transistor_FET:SUD50P06-15 Q1
U 1 1 5C7D3E2F
P 6400 2550
F 0 "Q1" H 6605 2596 50  0000 L CNN
F 1 "SUD50P06-15" H 6605 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 6595 2475 50  0001 L CIN
F 3 "https://www.vishay.com/docs/68940/sud50p06.pdf" H 6400 2550 50  0001 C CNN
	1    6400 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C7D3E8E
P 5950 2550
F 0 "R2" V 5743 2550 50  0000 C CNN
F 1 "R" V 5834 2550 50  0000 C CNN
F 2 "" V 5880 2550 50  0001 C CNN
F 3 "~" H 5950 2550 50  0001 C CNN
	1    5950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2550 6150 2550
Wire Wire Line
	5800 2550 5000 2550
Connection ~ 5000 2550
$Comp
L Device:R R3
U 1 1 5C7D45C8
P 6150 2700
F 0 "R3" H 6220 2746 50  0000 L CNN
F 1 "R" H 6220 2655 50  0000 L CNN
F 2 "" V 6080 2700 50  0001 C CNN
F 3 "~" H 6150 2700 50  0001 C CNN
	1    6150 2700
	1    0    0    -1  
$EndComp
Connection ~ 6150 2550
Wire Wire Line
	6150 2550 6100 2550
Wire Wire Line
	6500 2750 6500 2950
Wire Wire Line
	6500 2950 6150 2950
Wire Wire Line
	6150 2950 6150 2850
Wire Wire Line
	6150 2950 5650 2950
Connection ~ 6150 2950
Connection ~ 5350 2950
$Comp
L Connector_Generic:Conn_01x02 15VDC1
U 1 1 5C7D52AA
P 5550 2150
F 0 "15VDC1" V 5516 1962 50  0000 R CNN
F 1 "Conn_01x02" V 5425 1962 50  0000 R CNN
F 2 "" H 5550 2150 50  0001 C CNN
F 3 "~" H 5550 2150 50  0001 C CNN
	1    5550 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 2350 5350 2350
Connection ~ 5350 2350
Wire Wire Line
	5650 2350 5650 2950
Connection ~ 5650 2950
Wire Wire Line
	5650 2950 5350 2950
$Comp
L Connector_Generic:Conn_01x02 DCMOTOR1
U 1 1 5C7D5DA9
P 6700 2100
F 0 "DCMOTOR1" H 6780 2092 50  0000 L CNN
F 1 "Conn_01x02" H 6780 2001 50  0000 L CNN
F 2 "" H 6700 2100 50  0001 C CNN
F 3 "~" H 6700 2100 50  0001 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2350 6500 2200
$Comp
L Connector_Generic:Conn_01x02 230VDC1
U 1 1 5C7D7473
P 7950 2450
F 0 "230VDC1" H 8030 2442 50  0000 L CNN
F 1 "Conn_01x02" H 8030 2351 50  0000 L CNN
F 2 "" H 7950 2450 50  0001 C CNN
F 3 "~" H 7950 2450 50  0001 C CNN
	1    7950 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2450 7750 1900
Wire Wire Line
	6500 1900 6500 2100
Wire Wire Line
	7750 2550 7750 2950
Wire Wire Line
	7750 2950 7400 2950
Connection ~ 6500 2950
$Comp
L pspice:DIODE D1
U 1 1 5C7D8D2B
P 7400 2500
F 0 "D1" V 7446 2372 50  0000 R CNN
F 1 "DIODE" V 7355 2372 50  0000 R CNN
F 2 "" H 7400 2500 50  0001 C CNN
F 3 "~" H 7400 2500 50  0001 C CNN
	1    7400 2500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 2300 7400 1900
Wire Wire Line
	6500 1900 6750 1900
Connection ~ 7400 1900
Wire Wire Line
	7400 1900 7750 1900
Wire Wire Line
	7400 2700 7400 2950
Connection ~ 7400 2950
Wire Wire Line
	7400 2950 6500 2950
$Comp
L Sensor_Current:ACS712xLCTR-30A U2
U 1 1 5C7DB57B
P 6950 1500
F 0 "U2" H 6950 2078 50  0000 C CNN
F 1 "ACS712xLCTR-30A" V 6950 1987 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 1150 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 6950 1500 50  0001 C CNN
	1    6950 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 1900 7400 1900
Wire Wire Line
	6550 1500 4300 1500
Wire Wire Line
	4300 1500 4300 850 
Wire Wire Line
	4300 850  1700 850 
Wire Wire Line
	1700 850  1700 1850
Wire Wire Line
	1700 1850 1800 1850
Wire Wire Line
	7350 1500 7350 850 
Wire Wire Line
	7350 850  4550 850 
Wire Wire Line
	4550 850  4550 1350
Wire Wire Line
	4550 1350 3700 1350
Wire Wire Line
	6950 1100 1250 1100
Wire Wire Line
	1250 1100 1250 2350
Wire Wire Line
	1250 2350 1800 2350
$EndSCHEMATC
