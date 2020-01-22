EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_01x01 J1
U 1 1 5DDD2DD8
P 650 850
F 0 "J1" H 650 550 50  0000 C CNN
F 1 "VDD" H 650 700 50  0000 C CNN
F 2 "kicad_personal_lib:M5" H 650 850 50  0001 C CNN
F 3 "~" H 650 850 50  0001 C CNN
	1    650  850 
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5DDD2E55
P 650 1250
F 0 "J2" H 550 1500 50  0000 C CNN
F 1 "VSS" H 550 1400 50  0000 C CNN
F 2 "kicad_personal_lib:M5" H 650 1250 50  0001 C CNN
F 3 "~" H 650 1250 50  0001 C CNN
	1    650  1250
	-1   0    0    1   
$EndComp
$Comp
L Device:D D8
U 1 1 5DDD3100
P 5200 5400
F 0 "D8" H 5150 5250 50  0000 L CNN
F 1 "IXYS DSEI60-12A" H 4850 5550 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-247-2_Horizontal_TabDown" H 5200 5400 50  0001 C CNN
F 3 "http://ixapps.ixys.com/DataSheet/93023.pdf" H 5200 5400 50  0001 C CNN
	1    5200 5400
	0    1    1    0   
$EndComp
$Comp
L Sensor_Current:ACS712xLCTR-30A U7
U 1 1 5DDD31F4
P 4550 5900
F 0 "U7" H 4550 5900 50  0000 C CNN
F 1 "ACS712-30A" H 4550 6000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4650 5550 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 4550 5900 50  0001 C CNN
	1    4550 5900
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J9
U 1 1 5DDD3461
P 4000 4600
F 0 "J9" H 3920 4375 50  0000 C CNN
F 1 "conn_Motor (+)" H 3920 4466 50  0000 C CNN
F 2 "kicad_personal_lib:M5" H 4000 4600 50  0001 C CNN
F 3 "~" H 4000 4600 50  0001 C CNN
	1    4000 4600
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J10
U 1 1 5DDD3468
P 4000 4850
F 0 "J10" H 3900 5100 50  0000 C CNN
F 1 "conn_Motor (-)" H 3900 5000 50  0000 C CNN
F 2 "kicad_personal_lib:M5" H 4000 4850 50  0001 C CNN
F 3 "~" H 4000 4850 50  0001 C CNN
	1    4000 4850
	-1   0    0    1   
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5DDD4D3D
P 2200 4250
F 0 "U1" H 2200 4492 50  0000 C CNN
F 1 "L7805" H 2200 4401 50  0000 C CNN
F 2 "kicad_personal_lib:TO-252-3_cool" H 2225 4100 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2200 4200 50  0001 C CNN
	1    2200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 5DDE5EB1
P 1800 7000
F 0 "Q2" V 2050 7000 50  0000 C CNN
F 1 "IRFZ44N" V 2141 7000 50  0000 C CNN
F 2 "kicad_personal_lib:TO-252-3_cool" H 2000 7100 50  0001 C CNN
F 3 "~" H 1800 7000 50  0001 C CNN
	1    1800 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R12
U 1 1 5DDE60D1
P 1550 6900
F 0 "R12" V 1350 6850 50  0000 L CNN
F 1 "10kR" V 1450 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1550 6900 50  0001 C CNN
F 3 "~" H 1550 6900 50  0001 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R13
U 1 1 5DDE64CA
P 1800 6600
F 0 "R13" V 1600 6550 50  0000 L CNN
F 1 "100R" V 1700 6500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1800 6600 50  0001 C CNN
F 3 "~" H 1800 6600 50  0001 C CNN
	1    1800 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 5DDE676D
P 1200 6250
F 0 "R8" V 1000 6200 50  0000 L CNN
F 1 "100R" V 1100 6150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1200 6250 50  0001 C CNN
F 3 "~" H 1200 6250 50  0001 C CNN
	1    1200 6250
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5DDE68BD
P 2200 7300
F 0 "J4" V 2047 7348 50  0000 L CNN
F 1 "Klemens" V 2250 7100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2200 7300 50  0001 C CNN
F 3 "~" H 2200 7300 50  0001 C CNN
	1    2200 7300
	0    1    1    0   
$EndComp
Text Notes 1250 7550 0    50   ~ 0
12V 0.2A max (when using internal power supply)
$Comp
L Device:LED D2
U 1 1 5DDE6D7A
P 800 6250
F 0 "D2" H 791 6466 50  0000 C CNN
F 1 "LED" H 791 6375 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 800 6250 50  0001 C CNN
F 3 "~" H 800 6250 50  0001 C CNN
	1    800  6250
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q3
U 1 1 5DDE7361
P 2800 7000
F 0 "Q3" V 3050 7000 50  0000 C CNN
F 1 "IRFZ44N" V 3141 7000 50  0000 C CNN
F 2 "kicad_personal_lib:TO-252-3_cool" H 3000 7100 50  0001 C CNN
F 3 "~" H 2800 7000 50  0001 C CNN
	1    2800 7000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R17
U 1 1 5DDE7368
P 2550 6900
F 0 "R17" V 2350 6850 50  0000 L CNN
F 1 "10kR" V 2450 6800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2550 6900 50  0001 C CNN
F 3 "~" H 2550 6900 50  0001 C CNN
	1    2550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R18
U 1 1 5DDE736F
P 2800 6600
F 0 "R18" V 2600 6550 50  0000 L CNN
F 1 "100R" V 2700 6500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2800 6600 50  0001 C CNN
F 3 "~" H 2800 6600 50  0001 C CNN
	1    2800 6600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 5DDE7376
P 3200 7300
F 0 "J7" V 3047 7348 50  0000 L CNN
F 1 "Klemens" V 3250 7100 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3200 7300 50  0001 C CNN
F 3 "~" H 3200 7300 50  0001 C CNN
	1    3200 7300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small_US R7
U 1 1 5DDE790A
P 1200 5950
F 0 "R7" V 1000 5900 50  0000 L CNN
F 1 "100R" V 1100 5850 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1200 5950 50  0001 C CNN
F 3 "~" H 1200 5950 50  0001 C CNN
	1    1200 5950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5DDE7911
P 800 5950
F 0 "D1" H 791 6166 50  0000 C CNN
F 1 "LED" H 791 6075 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 800 5950 50  0001 C CNN
F 3 "~" H 800 5950 50  0001 C CNN
	1    800  5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R9
U 1 1 5DDE8470
P 1200 6400
F 0 "R9" V 1450 6400 50  0000 L CNN
F 1 "100R" V 1350 6300 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1200 6400 50  0001 C CNN
F 3 "~" H 1200 6400 50  0001 C CNN
	1    1200 6400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DDE8477
P 800 6400
F 0 "D3" H 800 6150 50  0000 C CNN
F 1 "LED" H 800 6250 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 800 6400 50  0001 C CNN
F 3 "~" H 800 6400 50  0001 C CNN
	1    800  6400
	1    0    0    -1  
$EndComp
Text Notes 2850 6450 0    50   ~ 0
PWM\n
Text Notes 1850 6450 0    50   ~ 0
PWM\n
Text Notes 900  5900 0    50   ~ 0
PWM\n
$Comp
L Sensor_Temperature:MCP9700AT-ETT U4
U 1 1 5DDEBAEC
P 3550 3850
F 0 "U4" H 3800 4000 50  0000 R CNN
F 1 "TempSens" V 3200 4050 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92" H 3550 3450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21942e.pdf" H 3400 4100 50  0001 C CNN
	1    3550 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR06
U 1 1 5DDECB8C
P 950 5450
F 0 "#PWR06" H 950 5200 50  0001 C CNN
F 1 "GNDREF" H 955 5277 50  0001 C CNN
F 2 "" H 950 5450 50  0001 C CNN
F 3 "" H 950 5450 50  0001 C CNN
	1    950  5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R6
U 1 1 5DDED5BA
P 1000 5050
F 0 "R6" V 800 5000 50  0001 L CNN
F 1 "100R" V 900 4950 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 5050 50  0001 C CNN
F 3 "~" H 1000 5050 50  0001 C CNN
	1    1000 5050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5DDED809
P 800 5250
F 0 "SW3" H 850 5400 50  0000 R CNN
F 1 "SW_Push" H 950 5500 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 5450 50  0001 C CNN
F 3 "" H 800 5450 50  0001 C CNN
	1    800  5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5DDEDC51
P 800 4750
F 0 "R1" V 600 4700 50  0001 L CNN
F 1 "100R" V 700 4650 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 800 4750 50  0001 C CNN
F 3 "~" H 800 4750 50  0001 C CNN
	1    800  4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5DDEE181
P 1150 5250
F 0 "C3" V 950 5250 50  0000 C CNN
F 1 "100nF" V 1050 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1150 5250 50  0001 C CNN
F 3 "~" H 1150 5250 50  0001 C CNN
	1    1150 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR08
U 1 1 5DDEE491
P 1200 4400
F 0 "#PWR08" H 1200 4150 50  0001 C CNN
F 1 "GNDREF" H 1205 4227 50  0001 C CNN
F 2 "" H 1200 4400 50  0001 C CNN
F 3 "" H 1200 4400 50  0001 C CNN
	1    1200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R5
U 1 1 5DDEE497
P 1000 4300
F 0 "R5" V 800 4250 50  0001 L CNN
F 1 "100R" V 900 4200 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 4300 50  0001 C CNN
F 3 "~" H 1000 4300 50  0001 C CNN
	1    1000 4300
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5DDEE49D
P 800 4000
F 0 "SW2" H 850 4150 50  0000 R CNN
F 1 "SW_Push" H 950 4250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 4200 50  0001 C CNN
F 3 "" H 800 4200 50  0001 C CNN
	1    800  4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 5DDEE4A4
P 1000 4200
F 0 "R4" V 800 4150 50  0001 L CNN
F 1 "100R" V 900 4100 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 4200 50  0001 C CNN
F 3 "~" H 1000 4200 50  0001 C CNN
	1    1000 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DDEE4AA
P 1100 4000
F 0 "C2" V 1250 4000 50  0000 C CNN
F 1 "100nF" V 1000 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1100 4000 50  0001 C CNN
F 3 "~" H 1100 4000 50  0001 C CNN
	1    1100 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR07
U 1 1 5DDEE4F7
P 1200 3550
F 0 "#PWR07" H 1200 3300 50  0001 C CNN
F 1 "GNDREF" H 1205 3377 50  0001 C CNN
F 2 "" H 1200 3550 50  0001 C CNN
F 3 "" H 1200 3550 50  0001 C CNN
	1    1200 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 5DDEE4FD
P 1000 3450
F 0 "R3" V 800 3400 50  0001 L CNN
F 1 "100R" V 900 3350 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 3450 50  0001 C CNN
F 3 "~" H 1000 3450 50  0001 C CNN
	1    1000 3450
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5DDEE503
P 800 3150
F 0 "SW1" H 850 3300 50  0000 R CNN
F 1 "SW_Push" H 950 3400 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 800 3350 50  0001 C CNN
F 3 "" H 800 3350 50  0001 C CNN
	1    800  3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 5DDEE50A
P 1000 3350
F 0 "R2" V 800 3300 50  0001 L CNN
F 1 "100R" V 900 3250 50  0001 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1000 3350 50  0001 C CNN
F 3 "~" H 1000 3350 50  0001 C CNN
	1    1000 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DDEE510
P 1100 3150
F 0 "C1" V 1250 3150 50  0000 C CNN
F 1 "100nF" V 1000 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1100 3150 50  0001 C CNN
F 3 "~" H 1100 3150 50  0001 C CNN
	1    1100 3150
	-1   0    0    1   
$EndComp
$Comp
L DC-Soft-Starter-V2-rescue:TLP250-Driver_FET U6
U 1 1 5DDF0D76
P 4050 7000
F 0 "U6" H 4050 7517 50  0000 C CNN
F 1 "TLP250" H 4050 7426 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4050 6600 50  0001 C CIN
F 3 "http://toshiba.semicon-storage.com/info/docget.jsp?did=16821&prodName=TLP250" H 3960 7005 50  0001 L CNN
	1    4050 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5DDF1E6C
P 4600 7050
F 0 "C25" H 4500 6950 50  0000 L CNN
F 1 "C" H 4500 7150 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4638 6900 50  0001 C CNN
F 3 "~" H 4600 7050 50  0001 C CNN
	1    4600 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GDS Q4
U 1 1 5DDF1FA0
P 5100 7050
F 0 "Q4" H 5000 7200 50  0000 L CNN
F 1 "IXFH50N60P3" V 5350 6850 50  0000 L CNN
F 2 "kicad_personal_lib:TO-247-3_Horizontal_TabDown" H 5300 7150 50  0001 C CNN
F 3 "~" H 5100 7050 50  0001 C CNN
	1    5100 7050
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C9
U 1 1 5DDF3826
P 2200 1500
F 0 "C9" H 2378 1546 50  0000 L CNN
F 1 "CAP" H 2378 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 2200 1500 50  0001 C CNN
F 3 "~" H 2200 1500 50  0001 C CNN
	1    2200 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C12
U 1 1 5DDF38A2
P 2750 1500
F 0 "C12" H 2928 1546 50  0000 L CNN
F 1 "CAP" H 2928 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 2750 1500 50  0001 C CNN
F 3 "~" H 2750 1500 50  0001 C CNN
	1    2750 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C15
U 1 1 5DDF3920
P 3300 1500
F 0 "C15" H 3478 1546 50  0000 L CNN
F 1 "CAP" H 3478 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 3300 1500 50  0001 C CNN
F 3 "~" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C20
U 1 1 5DDF39A4
P 3850 1500
F 0 "C20" H 4028 1546 50  0000 L CNN
F 1 "CAP" H 4028 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 3850 1500 50  0001 C CNN
F 3 "~" H 3850 1500 50  0001 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C6
U 1 1 5DDF3A3A
P 1950 850
F 0 "C6" V 1635 850 50  0000 C CNN
F 1 "CAP" V 1726 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 1950 850 50  0001 C CNN
F 3 "~" H 1950 850 50  0001 C CNN
	1    1950 850 
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C10
U 1 1 5DDF3B30
P 2500 850
F 0 "C10" V 2185 850 50  0000 C CNN
F 1 "CAP" V 2276 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 2500 850 50  0001 C CNN
F 3 "~" H 2500 850 50  0001 C CNN
	1    2500 850 
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C14
U 1 1 5DDF3BC2
P 3050 850
F 0 "C14" V 2735 850 50  0000 C CNN
F 1 "CAP" V 2826 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 3050 850 50  0001 C CNN
F 3 "~" H 3050 850 50  0001 C CNN
	1    3050 850 
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C16
U 1 1 5DDF3C46
P 3600 850
F 0 "C16" V 3285 850 50  0000 C CNN
F 1 "CAP" V 3376 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 3600 850 50  0001 C CNN
F 3 "~" H 3600 850 50  0001 C CNN
	1    3600 850 
	0    1    1    0   
$EndComp
Connection ~ 2200 1250
Connection ~ 2750 1250
Connection ~ 3300 1250
Wire Wire Line
	2750 1750 2800 1750
Wire Wire Line
	3300 850  3300 1250
Wire Wire Line
	2800 850  2800 1750
Connection ~ 2800 1750
Wire Wire Line
	2750 850  2750 1250
Wire Wire Line
	2250 850  2250 1750
Wire Wire Line
	2200 1750 2250 1750
Wire Wire Line
	2200 850  2200 1100
Wire Wire Line
	3350 850  3350 1100
Wire Wire Line
	3350 1750 3300 1750
Connection ~ 3300 1750
Connection ~ 3350 1750
Wire Wire Line
	3850 1250 3850 1100
Connection ~ 3850 1250
Text Notes 1600 1950 0    50   ~ 0
adjust the number of caps here \n(use the value we have right now with easily accessible caps (more the better))
Wire Wire Line
	5200 1750 5200 4600
Connection ~ 5200 4600
Wire Wire Line
	5200 4600 5200 5250
Wire Wire Line
	4200 4600 5200 4600
Wire Notes Line
	4400 4500 4400 4700
Wire Notes Line
	4400 4700 4900 4700
Wire Notes Line
	4900 4700 4900 4500
Wire Notes Line
	4400 4500 4900 4500
Text Notes 4450 4600 0    50   ~ 0
Fuse here
Wire Wire Line
	4450 7100 4450 7050
$Comp
L Device:R_Small_US R25
U 1 1 5DE06282
P 4800 7050
F 0 "R25" V 4700 7050 50  0000 C CNN
F 1 "47R" V 4900 7050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4800 7050 50  0001 C CNN
F 3 "~" H 4800 7050 50  0001 C CNN
	1    4800 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 7050 4450 7050
Connection ~ 4450 7050
Wire Wire Line
	4450 7050 4450 6900
Wire Wire Line
	4600 6900 4600 6700
Wire Wire Line
	4600 6700 4450 6700
Wire Wire Line
	4600 7200 4600 7300
Wire Wire Line
	4600 7300 4450 7300
$Comp
L Device:R_Small_US R26
U 1 1 5DE07E2D
P 5050 7300
F 0 "R26" V 4950 7300 50  0001 C CNN
F 1 "10kR" V 5150 7300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 5050 7300 50  0001 C CNN
F 3 "~" H 5050 7300 50  0001 C CNN
	1    5050 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 7300 5200 7300
Wire Wire Line
	5200 7300 5200 7250
Wire Wire Line
	4950 7300 4900 7300
Wire Wire Line
	4900 7300 4900 7050
Connection ~ 4900 7050
Wire Wire Line
	5400 7300 5200 7300
Connection ~ 5200 7300
$Comp
L power:GNDREF #PWR037
U 1 1 5DE12241
P 4550 6300
F 0 "#PWR037" H 4550 6050 50  0001 C CNN
F 1 "GNDREF" H 4555 6127 50  0001 C CNN
F 2 "" H 4550 6300 50  0001 C CNN
F 3 "" H 4550 6300 50  0001 C CNN
	1    4550 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R20
U 1 1 5DE12CDC
P 3450 6700
F 0 "R20" V 3350 6800 50  0000 C CNN
F 1 "47R" V 3350 6650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3450 6700 50  0001 C CNN
F 3 "~" H 3450 6700 50  0001 C CNN
	1    3450 6700
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR027
U 1 1 5DE137AC
P 3500 7300
F 0 "#PWR027" H 3500 7050 50  0001 C CNN
F 1 "GNDREF" H 3505 7127 50  0001 C CNN
F 2 "" H 3500 7300 50  0001 C CNN
F 3 "" H 3500 7300 50  0001 C CNN
	1    3500 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7300 3650 7300
$Comp
L Device:C_Small C22
U 1 1 5DE158E5
P 4200 6300
F 0 "C22" V 4300 6350 50  0000 C CNN
F 1 "1nF" V 4100 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4200 6300 50  0001 C CNN
F 3 "~" H 4200 6300 50  0001 C CNN
	1    4200 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 6300 4550 6300
Connection ~ 4550 6300
Wire Wire Line
	4100 6300 4050 6300
Wire Wire Line
	4050 6300 4050 6000
Wire Wire Line
	4050 6000 4150 6000
$Comp
L Device:C_Small C18
U 1 1 5DE1D64C
P 3750 6100
F 0 "C18" V 3900 6100 50  0000 C CNN
F 1 "1nF" V 3650 6100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3750 6100 50  0001 C CNN
F 3 "~" H 3750 6100 50  0001 C CNN
	1    3750 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R22
U 1 1 5DE1D70B
P 3900 5900
F 0 "R22" V 3800 6000 50  0000 C CNN
F 1 "47R" V 3800 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3900 5900 50  0001 C CNN
F 3 "~" H 3900 5900 50  0001 C CNN
	1    3900 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 5900 4150 5900
Wire Wire Line
	3750 5900 3800 5900
$Comp
L power:GNDREF #PWR031
U 1 1 5DE1F4F8
P 3750 6300
F 0 "#PWR031" H 3750 6050 50  0001 C CNN
F 1 "GNDREF" H 3755 6127 50  0001 C CNN
F 2 "" H 3750 6300 50  0001 C CNN
F 3 "" H 3750 6300 50  0001 C CNN
	1    3750 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6700 3650 6700
Wire Wire Line
	3750 6200 3750 6300
Wire Wire Line
	3750 6000 3750 5900
Text GLabel 3650 5900 0    50   Input ~ 0
A5
Wire Wire Line
	3650 5900 3750 5900
Connection ~ 3750 5900
Text GLabel 1800 5850 3    50   Input ~ 0
A7
Text Notes 3450 5700 0    50   ~ 0
rc low pass filter\n(check the current values)\n
$Comp
L DC-Soft-Starter-V2-rescue:Arduino_Nano_v3.x-MCU_Module A1
U 1 1 5DDE585C
P 2500 5300
F 0 "A1" V 2300 5050 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 2500 5500 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 2650 4350 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2500 4300 50  0001 C CNN
	1    2500 5300
	0    1    1    0   
$EndComp
Wire Notes Line
	4100 5750 4100 5950
Wire Notes Line
	4100 5950 3850 5950
Wire Notes Line
	3850 5950 3850 6250
Wire Notes Line
	3500 6250 3500 5750
Wire Notes Line
	3500 5750 4100 5750
Wire Notes Line
	3500 6250 3850 6250
$Comp
L power:+12V #PWR011
U 1 1 5DE33819
P 1600 4200
F 0 "#PWR011" H 1600 4050 50  0001 C CNN
F 1 "+12V" H 1615 4373 50  0000 C CNN
F 2 "" H 1600 4200 50  0001 C CNN
F 3 "" H 1600 4200 50  0001 C CNN
	1    1600 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C24
U 1 1 5DE339BD
P 4400 5400
F 0 "C24" V 4550 5400 50  0000 C CNN
F 1 "100nF" V 4300 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4400 5400 50  0001 C CNN
F 3 "~" H 4400 5400 50  0001 C CNN
	1    4400 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 5300 4550 5400
Wire Wire Line
	4550 5400 4500 5400
Wire Wire Line
	4550 5400 4550 5500
Connection ~ 4550 5400
$Comp
L power:GNDREF #PWR034
U 1 1 5DE35C0C
P 4250 5450
F 0 "#PWR034" H 4250 5200 50  0001 C CNN
F 1 "GNDREF" H 4255 5277 50  0001 C CNN
F 2 "" H 4250 5450 50  0001 C CNN
F 3 "" H 4250 5450 50  0001 C CNN
	1    4250 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5450 4250 5400
Wire Wire Line
	4250 5400 4300 5400
Text GLabel 4650 6550 2    50   Input ~ 0
12V
Wire Wire Line
	4650 6550 4600 6550
Wire Wire Line
	4600 6550 4600 6700
Connection ~ 4600 6700
$Comp
L power:+5V #PWR036
U 1 1 5DE6CEED
P 4550 5300
F 0 "#PWR036" H 4550 5150 50  0001 C CNN
F 1 "+5V" H 4565 5473 50  0000 C CNN
F 2 "" H 4550 5300 50  0001 C CNN
F 3 "" H 4550 5300 50  0001 C CNN
	1    4550 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR030
U 1 1 5DE6D40F
P 3600 5350
F 0 "#PWR030" H 3600 5200 50  0001 C CNN
F 1 "+5V" H 3615 5523 50  0000 C CNN
F 2 "" H 3600 5350 50  0001 C CNN
F 3 "" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
Text GLabel 2200 2800 3    50   Input ~ 0
A6
Wire Wire Line
	2000 7100 2100 7100
Wire Wire Line
	3000 7100 3100 7100
$Comp
L power:+5V #PWR03
U 1 1 5DEB621D
P 800 2900
F 0 "#PWR03" H 800 2750 50  0001 C CNN
F 1 "+5V" H 815 3073 50  0000 C CNN
F 2 "" H 800 2900 50  0001 C CNN
F 3 "" H 800 2900 50  0001 C CNN
	1    800  2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5DEB629C
P 800 3750
F 0 "#PWR04" H 800 3600 50  0001 C CNN
F 1 "+5V" H 815 3923 50  0000 C CNN
F 2 "" H 800 3750 50  0001 C CNN
F 3 "" H 800 3750 50  0001 C CNN
	1    800  3750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5DEB631B
P 800 4600
F 0 "#PWR05" H 800 4450 50  0001 C CNN
F 1 "+5V" H 815 4773 50  0000 C CNN
F 2 "" H 800 4600 50  0001 C CNN
F 3 "" H 800 4600 50  0001 C CNN
	1    800  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3750 800  3800
Wire Wire Line
	800  2900 800  2950
Wire Wire Line
	800  2950 1100 2950
Connection ~ 800  2950
Wire Wire Line
	900  3350 800  3350
Wire Wire Line
	900  3450 800  3450
Wire Wire Line
	800  3450 800  3350
Connection ~ 800  3350
Wire Wire Line
	1100 3450 1200 3450
Wire Wire Line
	1200 3450 1200 3550
Wire Wire Line
	1200 3350 1100 3350
Connection ~ 1100 3350
Wire Wire Line
	1100 3800 800  3800
Connection ~ 800  3800
Wire Wire Line
	900  4200 800  4200
Wire Wire Line
	900  4300 800  4300
Wire Wire Line
	800  4300 800  4200
Connection ~ 800  4200
Wire Wire Line
	1100 4300 1200 4300
Wire Wire Line
	1200 4300 1200 4400
Wire Wire Line
	800  4600 800  4650
Wire Wire Line
	1200 5050 1150 5050
Wire Wire Line
	1200 4200 1100 4200
Connection ~ 1100 4200
Wire Wire Line
	1100 4100 1100 4200
Wire Wire Line
	1100 3800 1100 3900
Wire Wire Line
	1100 3250 1100 3350
Wire Wire Line
	1100 3050 1100 2950
Text GLabel 1200 3350 2    50   Input ~ 0
D4
Text GLabel 1200 4200 2    50   Input ~ 0
D7
Text GLabel 1200 5050 2    50   Input ~ 0
RESET
$Comp
L power:+5V #PWR023
U 1 1 5DF36381
P 2850 4200
F 0 "#PWR023" H 2850 4050 50  0001 C CNN
F 1 "+5V" H 2865 4373 50  0000 C CNN
F 2 "" H 2850 4200 50  0001 C CNN
F 3 "" H 2850 4200 50  0001 C CNN
	1    2850 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4250 2550 4250
$Comp
L Device:C_Small C5
U 1 1 5DF3CA62
P 1850 4400
F 0 "C5" V 1700 4400 50  0000 C CNN
F 1 "22uF" V 1950 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1850 4400 50  0001 C CNN
F 3 "~" H 1850 4400 50  0001 C CNN
	1    1850 4400
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5DF3CB3B
P 2550 4400
F 0 "C11" V 2650 4400 50  0000 C CNN
F 1 "10uF" V 2450 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2550 4400 50  0001 C CNN
F 3 "~" H 2550 4400 50  0001 C CNN
	1    2550 4400
	-1   0    0    1   
$EndComp
Connection ~ 2550 4250
Connection ~ 2200 4550
Wire Wire Line
	2200 4550 2550 4550
Wire Wire Line
	1850 4550 2200 4550
Wire Wire Line
	1850 4250 1900 4250
Connection ~ 1850 4250
Wire Wire Line
	1850 4250 1850 4300
Wire Wire Line
	2550 4300 2550 4250
Wire Wire Line
	1850 4500 1850 4550
Wire Wire Line
	2550 4550 2550 4500
$Comp
L Device:C_Small C4
U 1 1 5DF66BF8
P 1600 4400
F 0 "C4" V 1450 4400 50  0000 C CNN
F 1 "22uF" V 1700 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1600 4400 50  0001 C CNN
F 3 "~" H 1600 4400 50  0001 C CNN
	1    1600 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 4550 1600 4550
Wire Wire Line
	1600 4550 1600 4500
Connection ~ 1850 4550
Wire Wire Line
	1600 4300 1600 4250
Wire Wire Line
	1600 4250 1850 4250
$Comp
L Device:C_Small C13
U 1 1 5DF739C6
P 2850 4400
F 0 "C13" V 2950 4400 50  0000 C CNN
F 1 "10uF" V 2750 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2850 4400 50  0001 C CNN
F 3 "~" H 2850 4400 50  0001 C CNN
	1    2850 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2550 4550 2850 4550
Wire Wire Line
	2850 4550 2850 4500
Connection ~ 2550 4550
Wire Wire Line
	2850 4300 2850 4250
Wire Wire Line
	2850 4250 2550 4250
Wire Wire Line
	1600 4200 1600 4250
Connection ~ 1600 4250
Wire Wire Line
	2850 4200 2850 4250
Connection ~ 2850 4250
$Comp
L power:GNDREF #PWR017
U 1 1 5DF8FA2E
P 2200 4550
F 0 "#PWR017" H 2200 4300 50  0001 C CNN
F 1 "GNDREF" H 2205 4377 50  0001 C CNN
F 2 "" H 2200 4550 50  0001 C CNN
F 3 "" H 2200 4550 50  0001 C CNN
	1    2200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR029
U 1 1 5DF8FAB5
P 3550 4150
F 0 "#PWR029" H 3550 3900 50  0001 C CNN
F 1 "GNDREF" H 3555 3977 50  0001 C CNN
F 2 "" H 3550 4150 50  0001 C CNN
F 3 "" H 3550 4150 50  0001 C CNN
	1    3550 4150
	1    0    0    -1  
$EndComp
Text GLabel 3950 3850 2    50   Input ~ 0
A7
$Comp
L power:+5V #PWR028
U 1 1 5DF8FC38
P 3550 3550
F 0 "#PWR028" H 3550 3400 50  0001 C CNN
F 1 "+5V" H 3565 3723 50  0000 C CNN
F 2 "" H 3550 3550 50  0001 C CNN
F 3 "" H 3550 3550 50  0001 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR012
U 1 1 5DF9036D
P 1850 3350
F 0 "#PWR012" H 1850 3200 50  0001 C CNN
F 1 "+12V" H 1865 3523 50  0000 C CNN
F 2 "" H 1850 3350 50  0001 C CNN
F 3 "" H 1850 3350 50  0001 C CNN
	1    1850 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR014
U 1 1 5DF90488
P 2050 3350
F 0 "#PWR014" H 2050 3100 50  0001 C CNN
F 1 "GNDREF" H 2055 3177 50  0001 C CNN
F 2 "" H 2050 3350 50  0001 C CNN
F 3 "" H 2050 3350 50  0001 C CNN
	1    2050 3350
	1    0    0    -1  
$EndComp
Text GLabel 2850 3350 3    50   Input ~ 0
12V
Wire Wire Line
	1550 7000 1550 7100
Wire Wire Line
	1800 6700 1800 6750
Wire Wire Line
	2600 7100 2550 7100
Wire Wire Line
	2550 7100 2550 7000
Wire Wire Line
	2550 6800 2550 6750
Wire Wire Line
	2550 6750 2800 6750
Wire Wire Line
	2800 6750 2800 6700
Wire Wire Line
	2800 6750 2800 6800
Connection ~ 2800 6750
Wire Wire Line
	1800 6750 1550 6750
Wire Wire Line
	1550 6750 1550 6800
Connection ~ 1800 6750
Wire Wire Line
	1800 6750 1800 6800
$Comp
L power:GNDREF #PWR09
U 1 1 5E00BE6B
P 1350 7150
F 0 "#PWR09" H 1350 6900 50  0001 C CNN
F 1 "GNDREF" H 1355 6977 50  0001 C CNN
F 2 "" H 1350 7150 50  0001 C CNN
F 3 "" H 1350 7150 50  0001 C CNN
	1    1350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR020
U 1 1 5E00BEF2
P 2450 7200
F 0 "#PWR020" H 2450 6950 50  0001 C CNN
F 1 "GNDREF" H 2455 7027 50  0001 C CNN
F 2 "" H 2450 7200 50  0001 C CNN
F 3 "" H 2450 7200 50  0001 C CNN
	1    2450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7100 2550 7100
Connection ~ 2550 7100
Wire Wire Line
	1350 7150 1350 7100
Wire Wire Line
	1350 7100 1550 7100
Connection ~ 1550 7100
Wire Wire Line
	1550 7100 1600 7100
Wire Wire Line
	1100 6250 950  6250
Wire Wire Line
	1100 5950 950  5950
Wire Wire Line
	1100 6400 950  6400
Wire Wire Line
	1300 6400 1800 6400
Wire Wire Line
	1800 6400 1800 6500
Wire Wire Line
	1300 6250 2800 6250
Wire Wire Line
	2800 6250 2800 6500
Text GLabel 2800 6200 1    50   Input ~ 0
D11
Text GLabel 1800 6200 1    50   Input ~ 0
D6
Wire Wire Line
	1800 6400 1800 6200
Connection ~ 1800 6400
Wire Wire Line
	2800 6250 2800 6200
Connection ~ 2800 6250
Wire Wire Line
	1400 5950 1300 5950
Text GLabel 1400 5950 2    50   Input ~ 0
D3
Wire Wire Line
	1800 5800 1800 5850
$Comp
L power:GNDREF #PWR010
U 1 1 5E0A5AB9
P 1450 5450
F 0 "#PWR010" H 1450 5200 50  0001 C CNN
F 1 "GNDREF" H 1455 5277 50  0001 C CNN
F 2 "" H 1450 5450 50  0001 C CNN
F 3 "" H 1450 5450 50  0001 C CNN
	1    1450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5400 1500 5400
$Comp
L power:+12V #PWR018
U 1 1 5E0B03C4
P 2200 7000
F 0 "#PWR018" H 2200 6850 50  0001 C CNN
F 1 "+12V" H 2215 7173 50  0000 C CNN
F 2 "" H 2200 7000 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 7000 2200 7100
$Comp
L power:+12V #PWR025
U 1 1 5E0BA6A7
P 3200 7000
F 0 "#PWR025" H 3200 6850 50  0001 C CNN
F 1 "+12V" H 3215 7173 50  0000 C CNN
F 2 "" H 3200 7000 50  0001 C CNN
F 3 "" H 3200 7000 50  0001 C CNN
	1    3200 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7000 3200 7100
$Comp
L power:GNDREF #PWR01
U 1 1 5E0C52C4
P 550 6500
F 0 "#PWR01" H 550 6250 50  0001 C CNN
F 1 "GNDREF" H 555 6327 50  0001 C CNN
F 2 "" H 550 6500 50  0001 C CNN
F 3 "" H 550 6500 50  0001 C CNN
	1    550  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	550  6500 550  6400
Wire Wire Line
	550  6400 650  6400
Wire Wire Line
	650  6250 550  6250
Wire Wire Line
	550  6250 550  6400
Connection ~ 550  6400
Wire Wire Line
	650  5950 550  5950
Wire Wire Line
	550  5950 550  6250
Connection ~ 550  6250
Text GLabel 3200 6650 1    50   Input ~ 0
D5
Wire Wire Line
	3200 6650 3200 6700
Wire Wire Line
	3200 6700 3350 6700
Wire Wire Line
	1500 5300 1450 5300
Wire Wire Line
	1450 5300 1450 5400
Connection ~ 1450 5400
Wire Wire Line
	1450 5400 1450 5450
$Comp
L Device:C_Small C19
U 1 1 5E0FE087
P 3800 5400
F 0 "C19" V 3900 5400 50  0000 C CNN
F 1 "100uF" V 3700 5400 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 3800 5400 50  0001 C CNN
F 3 "~" H 3800 5400 50  0001 C CNN
	1    3800 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR033
U 1 1 5E1210B7
P 4050 5450
F 0 "#PWR033" H 4050 5200 50  0001 C CNN
F 1 "GNDREF" H 4055 5277 50  0001 C CNN
F 2 "" H 4050 5450 50  0001 C CNN
F 3 "" H 4050 5450 50  0001 C CNN
	1    4050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5450 4050 5400
Wire Wire Line
	4050 5400 3900 5400
Wire Wire Line
	3600 5400 3600 5500
Wire Wire Line
	3600 5500 3500 5500
Wire Wire Line
	3600 5400 3700 5400
Wire Wire Line
	3600 5350 3600 5400
Connection ~ 3600 5400
Text GLabel 1800 4800 1    50   Input ~ 0
D1
Text GLabel 1900 4800 1    50   Input ~ 0
D2
Text GLabel 2700 4800 1    50   Input ~ 0
D4
Text GLabel 2000 4800 1    50   Input ~ 0
D11
Text GLabel 2500 4800 1    50   Input ~ 0
D6
Text GLabel 2800 4800 1    50   Input ~ 0
D3
Text GLabel 1900 5850 3    50   Input ~ 0
A6
Wire Wire Line
	1900 5800 1900 5850
Wire Wire Line
	800  4850 800  5050
Wire Wire Line
	900  5050 800  5050
Connection ~ 800  5050
Wire Wire Line
	1150 5150 1150 5050
Connection ~ 1150 5050
Wire Wire Line
	1150 5050 1100 5050
Wire Wire Line
	800  5450 950  5450
Wire Wire Line
	1150 5450 1150 5350
Connection ~ 950  5450
Wire Wire Line
	950  5450 1150 5450
Text GLabel 3000 5850 3    50   Input ~ 0
RESET
Wire Wire Line
	3000 5800 3000 5850
$Comp
L power:GND #PWR040
U 1 1 5E1CD581
P 5400 7300
F 0 "#PWR040" H 5400 7050 50  0001 C CNN
F 1 "GND" H 5405 7127 50  0000 C CNN
F 2 "" H 5400 7300 50  0001 C CNN
F 3 "" H 5400 7300 50  0001 C CNN
	1    5400 7300
	1    0    0    -1  
$EndComp
Connection ~ 5400 7300
$Comp
L power:GND #PWR019
U 1 1 5E1CD756
P 3050 3350
F 0 "#PWR019" H 3050 3100 50  0001 C CNN
F 1 "GND" H 3055 3177 50  0001 C CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5E1CF206
P 4600 7300
F 0 "#PWR038" H 4600 7050 50  0001 C CNN
F 1 "GND" H 4605 7127 50  0000 C CNN
F 2 "" H 4600 7300 50  0001 C CNN
F 3 "" H 4600 7300 50  0001 C CNN
	1    4600 7300
	1    0    0    -1  
$EndComp
Connection ~ 4600 7300
$Comp
L pspice:CAP C23
U 1 1 5E1D05EC
P 4400 1500
F 0 "C23" H 4578 1546 50  0000 L CNN
F 1 "CAP" H 4578 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 4400 1500 50  0001 C CNN
F 3 "~" H 4400 1500 50  0001 C CNN
	1    4400 1500
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C21
U 1 1 5E1D0718
P 4150 850
F 0 "C21" V 3835 850 50  0000 C CNN
F 1 "CAP" V 3926 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 4150 850 50  0001 C CNN
F 3 "~" H 4150 850 50  0001 C CNN
	1    4150 850 
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C26
U 1 1 5E1D07BA
P 4700 850
F 0 "C26" V 4385 850 50  0000 C CNN
F 1 "CAP" V 4476 850 50  0000 C CNN
F 2 "kicad_personal_lib:Cap_Parallel" H 4700 850 50  0001 C CNN
F 3 "~" H 4700 850 50  0001 C CNN
	1    4700 850 
	0    1    1    0   
$EndComp
Connection ~ 4950 1250
Wire Wire Line
	4400 850  4400 1250
Connection ~ 4400 1250
Wire Wire Line
	4400 1750 4450 1750
Wire Wire Line
	4400 1750 3900 1750
Connection ~ 4400 1750
Connection ~ 3850 1750
Wire Wire Line
	3850 1250 4400 1250
Wire Wire Line
	3900 850  3900 1750
Wire Wire Line
	4400 1250 4950 1250
Connection ~ 3900 1750
Wire Wire Line
	3900 1750 3850 1750
Wire Wire Line
	4450 850  4450 1100
Connection ~ 4450 1750
Wire Wire Line
	4950 850  4950 1100
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5E2292E8
P 3450 4600
F 0 "J8" H 3423 4480 50  0000 R CNN
F 1 "Conn_01x04_Male" V 3300 4950 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3450 4600 50  0001 C CNN
F 3 "~" H 3450 4600 50  0001 C CNN
	1    3450 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4500 3000 4500
Wire Wire Line
	3000 4500 3000 4800
Wire Wire Line
	3250 4600 3100 4600
Wire Wire Line
	3100 4600 3100 4800
$Comp
L power:GNDREF #PWR024
U 1 1 5E243953
P 3100 4400
F 0 "#PWR024" H 3100 4150 50  0001 C CNN
F 1 "GNDREF" H 3105 4227 50  0001 C CNN
F 2 "" H 3100 4400 50  0001 C CNN
F 3 "" H 3100 4400 50  0001 C CNN
	1    3100 4400
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR026
U 1 1 5E251096
P 3250 4800
F 0 "#PWR026" H 3250 4650 50  0001 C CNN
F 1 "+5V" V 3265 4928 50  0000 L CNN
F 2 "" H 3250 4800 50  0001 C CNN
F 3 "" H 3250 4800 50  0001 C CNN
	1    3250 4800
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4800 3200 4800
Wire Wire Line
	3200 4800 3200 4700
Wire Wire Line
	3200 4700 3250 4700
Wire Wire Line
	3100 4400 3250 4400
Wire Wire Line
	4950 1250 5400 1250
Wire Wire Line
	5400 1250 5400 7300
$Comp
L Simulation_SPICE:DIODE D4
U 1 1 5E20B3F5
P 1000 850
F 0 "D4" H 1000 1050 50  0000 C CNN
F 1 "DSEK6-06A" H 1000 1150 50  0000 C CNN
F 2 "kicad_personal_lib:TO-247-3_Staggered_TabUp_1" H 1000 850 50  0001 C CNN
F 3 "~" H 1000 850 50  0001 C CNN
F 4 "Y" H 1000 850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 1000 850 50  0001 L CNN "Spice_Primitive"
	1    1000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 850  1250 850 
$Comp
L Device:R R10
U 1 1 5E21A02B
P 1400 850
F 0 "R10" V 1200 850 50  0000 C CNN
F 1 "2x11W (5k each)" V 1300 850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_Power_L48.0mm_W12.5mm_P55.88mm" V 1330 850 50  0001 C CNN
F 3 "~" H 1400 850 50  0001 C CNN
	1    1400 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 850  1700 850 
$Comp
L Device:R R11
U 1 1 5E21B712
P 1400 950
F 0 "R11" V 1100 950 50  0001 C CNN
F 1 "2x11W (5k each)" V 1500 950 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_Power_L48.0mm_W12.5mm_P55.88mm" V 1330 950 50  0001 C CNN
F 3 "~" H 1400 950 50  0001 C CNN
	1    1400 950 
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 950  1250 850 
Connection ~ 1250 850 
Connection ~ 1550 850 
Wire Wire Line
	850  1450 1250 1450
Wire Wire Line
	1250 1450 1250 950 
Connection ~ 1250 950 
$Comp
L _personalRelay:HK15F_r K1
U 1 1 5E27F5B9
P 1150 2150
F 0 "K1" V 1667 2150 50  0000 C CNN
F 1 "HK15F_r" V 1576 2150 50  0000 C CNN
F 2 "kicad_personal_lib:Relay_SPDT_RAYEX-L90S" H 2250 2100 50  0001 C CNN
F 3 "" H 1150 2150 50  0001 C CNN
	1    1150 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	850  1450 850  2000
Wire Wire Line
	1550 850  1550 950 
Wire Wire Line
	1450 1900 1550 1900
Connection ~ 1550 950 
Wire Wire Line
	1550 950  1550 1900
$Comp
L Diode:1N4007 D5
U 1 1 5E2A632C
P 1000 2700
F 0 "D5" H 1000 2916 50  0000 C CNN
F 1 "1N4007" H 950 2600 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 1000 2525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1000 2700 50  0001 C CNN
	1    1000 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2400 850  2700
Wire Wire Line
	1450 2700 1450 2400
Wire Wire Line
	1450 2400 1700 2400
Connection ~ 1450 2400
$Comp
L power:+12V #PWR02
U 1 1 5E3017EF
P 700 2400
F 0 "#PWR02" H 700 2250 50  0001 C CNN
F 1 "+12V" H 715 2573 50  0000 C CNN
F 2 "" H 700 2400 50  0001 C CNN
F 3 "" H 700 2400 50  0001 C CNN
	1    700  2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  2400 850  2400
Connection ~ 850  2400
$Comp
L power:GNDREF #PWR013
U 1 1 5E30E32A
P 1700 2800
F 0 "#PWR013" H 1700 2550 50  0001 C CNN
F 1 "GNDREF" H 1705 2627 50  0001 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5E3125EF
P 1300 2700
F 0 "D6" H 1300 2484 50  0000 C CNN
F 1 "18V zener" H 1300 2850 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 1300 2700 50  0001 C CNN
F 3 "~" H 1300 2700 50  0001 C CNN
	1    1300 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q1
U 1 1 5E2E244D
P 1800 2600
F 0 "Q1" V 2150 2550 50  0000 L CNN
F 1 "Q_NMOS_GDS" V 2050 2350 50  0000 L CNN
F 2 "kicad_personal_lib:TO-252-3_cool" H 2000 2700 50  0001 C CNN
F 3 "~" H 1800 2600 50  0001 C CNN
	1    1800 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R15
U 1 1 5E3205E0
P 1900 2800
F 0 "R15" V 2000 2650 50  0000 L CNN
F 1 "10kR" V 2000 2800 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 1900 2800 50  0001 C CNN
F 3 "~" H 1900 2800 50  0001 C CNN
	1    1900 2800
	0    1    1    0   
$EndComp
Connection ~ 1700 2800
Wire Wire Line
	1800 2800 1700 2800
Wire Wire Line
	2000 2800 2000 2600
$Comp
L Device:R_Small_US R16
U 1 1 5E339EBB
P 2100 2600
F 0 "R16" V 2200 2450 50  0000 L CNN
F 1 "100R" V 2200 2600 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2100 2600 50  0001 C CNN
F 3 "~" H 2100 2600 50  0001 C CNN
	1    2100 2600
	0    1    1    0   
$EndComp
Connection ~ 2000 2600
$Comp
L Isolator:PC817 U2
U 1 1 5E33B372
P 2500 2500
F 0 "U2" H 2500 2825 50  0000 C CNN
F 1 "PC817" H 2500 2734 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 2300 2300 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 2500 2500 50  0001 L CNN
	1    2500 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR016
U 1 1 5E3613EF
P 2200 2350
F 0 "#PWR016" H 2200 2200 50  0001 C CNN
F 1 "+12V" H 2215 2523 50  0000 C CNN
F 2 "" H 2200 2350 50  0001 C CNN
F 3 "" H 2200 2350 50  0001 C CNN
	1    2200 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2350 2200 2400
$Comp
L Device:C_Small C8
U 1 1 5E36D9B9
P 2100 2400
F 0 "C8" V 2250 2400 50  0000 C CNN
F 1 "100nF" V 2000 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2100 2400 50  0001 C CNN
F 3 "~" H 2100 2400 50  0001 C CNN
	1    2100 2400
	0    -1   -1   0   
$EndComp
Connection ~ 2200 2400
$Comp
L power:GNDREF #PWR015
U 1 1 5E36DFD9
P 1950 2400
F 0 "#PWR015" H 1950 2150 50  0001 C CNN
F 1 "GNDREF" H 1955 2227 50  0001 C CNN
F 2 "" H 1950 2400 50  0001 C CNN
F 3 "" H 1950 2400 50  0001 C CNN
	1    1950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2400 2000 2400
$Comp
L power:GND #PWR021
U 1 1 5E37B1DC
P 2800 2800
F 0 "#PWR021" H 2800 2550 50  0001 C CNN
F 1 "GND" H 2805 2627 50  0000 C CNN
F 2 "" H 2800 2800 50  0001 C CNN
F 3 "" H 2800 2800 50  0001 C CNN
	1    2800 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2800 2800 2600
$Comp
L Amplifier_Operational:LM358 U3
U 1 1 5E38868F
P 3400 2400
F 0 "U3" H 3400 2767 50  0000 C CNN
F 1 "LM358" H 3400 2676 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3400 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3400 2400 50  0001 C CNN
	1    3400 2400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R19
U 1 1 5E38D11A
P 2950 2400
F 0 "R19" V 3050 2250 50  0000 L CNN
F 1 "470R" V 3050 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2950 2400 50  0001 C CNN
F 3 "~" H 2950 2400 50  0001 C CNN
	1    2950 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 2400 2800 2400
Wire Wire Line
	3050 2400 3100 2400
$Comp
L Reference_Voltage:TL431DBZ U5
U 1 1 5E3B4257
P 3800 2600
F 0 "U5" V 3800 3000 50  0000 R CNN
F 1 "TL431DBZ" V 3700 3000 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3800 2450 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tl431.pdf" H 3800 2600 50  0001 C CIN
	1    3800 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5E3B6599
P 3800 2700
F 0 "#PWR032" H 3800 2450 50  0001 C CNN
F 1 "GND" H 3805 2527 50  0000 C CNN
F 2 "" H 3800 2700 50  0001 C CNN
F 3 "" H 3800 2700 50  0001 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2500 3700 2500
Wire Wire Line
	3700 2600 3700 2500
Connection ~ 3700 2500
$Comp
L Device:R_Small_US R21
U 1 1 5E3D0F76
P 3900 2500
F 0 "R21" V 3800 2300 50  0000 L CNN
F 1 "330R" V 3800 2400 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3900 2500 50  0001 C CNN
F 3 "~" H 3900 2500 50  0001 C CNN
	1    3900 2500
	0    1    1    0   
$EndComp
Connection ~ 3800 2500
Text GLabel 4000 2500 2    50   Input ~ 0
12V
Text GLabel 1700 850  1    31   Input ~ 0
Bus+
Text GLabel 3800 2050 0    31   Input ~ 0
Bus+
$Comp
L Device:R_Small_US R23
U 1 1 5E3D686F
P 4050 2050
F 0 "R23" V 3950 1850 50  0000 L CNN
F 1 "820kR" V 3950 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4050 2050 50  0001 C CNN
F 3 "~" H 4050 2050 50  0001 C CNN
	1    4050 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R24
U 1 1 5E3D6D4A
P 4300 2600
F 0 "R24" V 4200 2400 50  0000 L CNN
F 1 "8.2kR" V 4200 2500 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4300 2600 50  0001 C CNN
F 3 "~" H 4300 2600 50  0001 C CNN
	1    4300 2600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 2300 4300 2300
Wire Wire Line
	4150 2050 4300 2050
Wire Wire Line
	4300 2050 4300 2300
Connection ~ 4300 2300
Wire Wire Line
	3800 2050 3950 2050
Wire Wire Line
	4300 2500 4300 2300
$Comp
L power:GND #PWR035
U 1 1 5E433EA7
P 4300 2700
F 0 "#PWR035" H 4300 2450 50  0001 C CNN
F 1 "GND" H 4305 2527 50  0000 C CNN
F 2 "" H 4300 2700 50  0001 C CNN
F 3 "" H 4300 2700 50  0001 C CNN
	1    4300 2700
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U3
U 3 1 5E434B56
P 4750 2450
F 0 "U3" H 4708 2496 50  0000 L CNN
F 1 "LM358" H 4708 2405 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4750 2450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4750 2450 50  0001 C CNN
	3    4750 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5E437660
P 4650 2750
F 0 "#PWR039" H 4650 2500 50  0001 C CNN
F 1 "GND" H 4655 2577 50  0000 C CNN
F 2 "" H 4650 2750 50  0001 C CNN
F 3 "" H 4650 2750 50  0001 C CNN
	1    4650 2750
	1    0    0    -1  
$EndComp
Text GLabel 4750 2050 2    50   Input ~ 0
12V
Wire Wire Line
	4650 2050 4650 2150
Wire Wire Line
	4650 2050 4750 2050
Wire Wire Line
	2200 2800 2200 2600
Connection ~ 2200 2600
Wire Wire Line
	4950 1750 5200 1750
Wire Wire Line
	4450 1750 4950 1750
Connection ~ 4950 1750
$Comp
L pspice:CAP C28
U 1 1 5E1D085C
P 4950 1500
F 0 "C28" H 5128 1546 50  0000 L CNN
F 1 "CAP" H 5128 1455 50  0000 L CNN
F 2 "kicad_personal_lib:C_Rect_L29.0mm_W14.2mm_P27.50mm_MKT" H 4950 1500 50  0001 C CNN
F 3 "~" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1250 1850 1250
Connection ~ 1700 850 
Wire Wire Line
	1700 850  1700 1100
Wire Wire Line
	1700 1750 1850 1750
Connection ~ 2200 1750
Wire Notes Line
	2000 1200 2000 1800
Text Notes 5650 1700 1    47   ~ 0
6x film cap\n 4.7 uF \n16x30x26\n
Wire Notes Line
	1800 450  1800 1150
Wire Notes Line
	5700 1150 5700 450 
Text Notes 5600 1100 1    47   ~ 0
11x Alumin caps\n150 uF 18x35.5\n
Wire Notes Line
	5700 1800 5700 1200
Wire Notes Line
	5700 1200 2000 1200
Wire Notes Line
	1800 1150 5700 1150
Wire Notes Line
	2000 1800 5700 1800
Wire Notes Line
	5700 450  1800 450 
$Comp
L Device:R R14
U 1 1 5E53A75E
P 1850 1500
F 0 "R14" V 1550 1500 50  0000 C CNN
F 1 "56kR 1W" V 1950 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 1780 1500 50  0001 C CNN
F 3 "~" H 1850 1500 50  0001 C CNN
	1    1850 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1350 1850 1250
Connection ~ 1850 1250
Wire Wire Line
	1850 1250 2200 1250
Wire Wire Line
	1850 1650 1850 1750
Connection ~ 1850 1750
Wire Wire Line
	1850 1750 2200 1750
Text GLabel 850  850  3    31   Input ~ 0
VDD
Text GLabel 2650 3650 3    47   Input ~ 0
VDD
$Comp
L Diode:1N4007 D7
U 1 1 5E558104
P 2650 3500
F 0 "D7" H 2650 3716 50  0000 C CNN
F 1 "1N4007" H 2600 3600 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 2650 3325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 2650 3500 50  0001 C CNN
	1    2650 3500
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C7
U 1 1 5E58892C
P 1950 1100
F 0 "C7" H 2128 1146 50  0000 L CNN
F 1 "CAP" H 2128 1055 50  0000 L CNN
F 2 "kicad_personal_lib:Cap_12.8" H 1950 1100 50  0001 C CNN
F 3 "~" H 1950 1100 50  0001 C CNN
	1    1950 1100
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C17
U 1 1 5E588C8D
P 3600 1100
F 0 "C17" H 3778 1146 50  0000 L CNN
F 1 "CAP" H 3778 1055 50  0000 L CNN
F 2 "kicad_personal_lib:Cap_18" H 3600 1100 50  0001 C CNN
F 3 "~" H 3600 1100 50  0001 C CNN
	1    3600 1100
	0    1    1    0   
$EndComp
$Comp
L pspice:CAP C27
U 1 1 5E589395
P 4700 1100
F 0 "C27" H 4878 1146 50  0000 L CNN
F 1 "CAP" H 4878 1055 50  0000 L CNN
F 2 "kicad_personal_lib:Cap_12.8" H 4700 1100 50  0001 C CNN
F 3 "~" H 4700 1100 50  0001 C CNN
	1    4700 1100
	0    1    1    0   
$EndComp
Connection ~ 3850 1100
Wire Wire Line
	3850 1100 3850 850 
Connection ~ 3350 1100
Wire Wire Line
	3350 1100 3350 1750
Connection ~ 2200 1100
Wire Wire Line
	2200 1100 2200 1250
Connection ~ 1700 1100
Wire Wire Line
	1700 1100 1700 1750
Connection ~ 4950 1100
Connection ~ 4450 1100
Wire Wire Line
	4950 1100 4950 1250
Wire Wire Line
	4450 1100 4450 1750
Connection ~ 2750 1750
Connection ~ 2250 1750
Wire Wire Line
	2200 1250 2750 1250
Wire Wire Line
	2250 1750 2750 1750
Wire Wire Line
	2800 1750 3300 1750
Wire Wire Line
	2750 1250 3300 1250
Wire Wire Line
	3350 1750 3850 1750
Wire Wire Line
	3300 1250 3850 1250
Text GLabel 2000 5850 3    50   Input ~ 0
A5
Wire Wire Line
	2000 5850 2000 5800
Wire Wire Line
	2450 7100 2450 7200
Wire Wire Line
	5200 5550 5200 5700
Wire Wire Line
	4950 5700 5200 5700
Connection ~ 5200 5700
Wire Wire Line
	5200 5700 5200 6850
Wire Wire Line
	4950 6100 5050 6100
Wire Wire Line
	5050 6100 5050 4850
Wire Wire Line
	4200 4850 5050 4850
$Comp
L Device:C_Small C29
U 1 1 5E3E2077
P 4500 2450
F 0 "C29" V 4600 2450 50  0000 C CNN
F 1 "10uF" V 4400 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4500 2450 50  0001 C CNN
F 3 "~" H 4500 2450 50  0001 C CNN
	1    4500 2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 2350 4500 2050
Wire Wire Line
	4500 2050 4650 2050
Connection ~ 4650 2050
Wire Wire Line
	4500 2750 4650 2750
Wire Wire Line
	4500 2550 4500 2750
Connection ~ 4650 2750
Text GLabel 2600 4800 1    50   Input ~ 0
D5
Text GLabel 2400 4800 1    50   Input ~ 0
D7
$Comp
L Connector:Screw_Terminal_01x05 J5
U 1 1 5E4BAAB9
P 2850 3150
F 0 "J5" V 2814 2862 50  0000 R CNN
F 1 "Screw_Terminal_01x05" V 2723 2862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2850 3150 50  0001 C CNN
F 3 "~" H 2850 3150 50  0001 C CNN
	1    2850 3150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J3
U 1 1 5E4DDA38
P 1950 3150
F 0 "J3" V 1914 2962 50  0000 R CNN
F 1 "Screw_Terminal_01x03" V 1823 2962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1950 3150 50  0001 C CNN
F 3 "~" H 1950 3150 50  0001 C CNN
	1    1950 3150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
