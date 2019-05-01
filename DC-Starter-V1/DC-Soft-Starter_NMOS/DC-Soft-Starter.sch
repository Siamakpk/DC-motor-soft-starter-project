EESchema Schematic File Version 4
LIBS:DC-Soft-Starter-cache
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
L Device:Transformer_1P_1S T?
U 1 1 5CAD70AA
P 8500 6000
F 0 "T?" H 8500 6381 50  0001 C CNN
F 1 "Transformer_1P_1S" H 8500 6290 50  0000 C CNN
F 2 "" H 8500 6000 50  0001 C CNN
F 3 "~" H 8500 6000 50  0001 C CNN
	1    8500 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_+-AA D?
U 1 1 5CAD8EA5
P 9200 6000
F 0 "D?" H 9544 6046 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 9544 5955 50  0000 L CNN
F 2 "" H 9200 6000 50  0001 C CNN
F 3 "~" H 9200 6000 50  0001 C CNN
	1    9200 6000
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 5CAD99B7
P 2800 1850
F 0 "D?" V 2754 1930 50  0001 L CNN
F 1 "1N4007" V 2800 1930 50  0000 L CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "~" H 2800 1850 50  0001 C CNN
F 4 "Y" H 2800 1850 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 2800 1850 50  0001 L CNN "Spice_Primitive"
	1    2800 1850
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 5CADA8F1
P 6650 5500
F 0 "D?" H 6450 5300 50  0001 C CNN
F 1 "D_TVS" H 6650 5650 50  0000 C CNN
F 2 "" H 6650 5500 50  0001 C CNN
F 3 "~" H 6650 5500 50  0001 C CNN
	1    6650 5500
	-1   0    0    1   
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5CADB8B9
P 4000 3050
F 0 "C?" H 4178 3096 50  0001 L CNN
F 1 "100nF" V 4200 2950 50  0000 L CNN
F 2 "" H 4000 3050 50  0001 C CNN
F 3 "~" H 4000 3050 50  0001 C CNN
	1    4000 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US 2.5_Watt
U 1 1 5CADC86F
P 2800 2650
F 0 "2.5_Watt" V 2650 2500 50  0000 L CNN
F 1 "22kR" V 2950 2550 50  0000 L CNN
F 2 "" V 2840 2640 50  0001 C CNN
F 3 "~" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CADD623
P 2800 3700
F 0 "R?" H 2868 3746 50  0001 L CNN
F 1 "fine adj res" V 2700 3525 50  0000 L CNN
F 2 "" V 2840 3690 50  0001 C CNN
F 3 "~" H 2800 3700 50  0001 C CNN
	1    2800 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CADDDA3
P 6100 1500
F 0 "J?" H 6208 1681 50  0001 C CNN
F 1 "Conn_01x02" V 6000 1450 50  0000 C CNN
F 2 "" H 6100 1500 50  0001 C CNN
F 3 "~" H 6100 1500 50  0001 C CNN
	1    6100 1500
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5CAE0416
P 5900 3500
F 0 "A?" V 5250 3000 50  0001 R CNN
F 1 "Arduino_Nano" V 5900 3800 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 6050 2550 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 5900 2500 50  0001 C CNN
	1    5900 3500
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CAE1CC5
P 6400 4650
F 0 "R?" V 6605 4650 50  0001 C CNN
F 1 "4.7R" V 6513 4650 50  0000 C CNN
F 2 "" V 6440 4640 50  0001 C CNN
F 3 "~" H 6400 4650 50  0001 C CNN
	1    6400 4650
	0    -1   -1   0   
$EndComp
$Comp
L Sensor_Current:ACS712xLCTR-30A U?
U 1 1 5CAE398F
P 5500 4800
F 0 "U?" V 5546 4356 50  0001 R CNN
F 1 "ACS712 30A" V 5000 5050 50  0000 R CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5600 4450 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS712-Datasheet.ashx?la=en" H 5500 4800 50  0001 C CNN
	1    5500 4800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRF7799L2 Q?
U 1 1 5CAE68A1
P 6650 5100
F 0 "Q?" V 6901 5100 50  0001 C CNN
F 1 "IRF7799L2" V 6901 5100 50  0000 C CNN
F 2 "Package_DirectFET:DirectFET_L8" H 6650 5100 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf7799l2pbf.pdf?fileId=5546d462533600a401535607bc471cbc" H 6650 5100 50  0001 L CNN
	1    6650 5100
	0    -1   1    0   
$EndComp
$Comp
L Isolator:PC817 U?
U 1 1 5CAEF739
P 3500 3200
F 0 "U?" H 3500 3525 50  0001 C CNN
F 1 "PC817" H 3500 3434 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 3300 3000 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 3500 3200 50  0001 L CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
$Comp
L Isolator:PC817 U?
U 1 1 5CB09CB7
P 3500 4100
F 0 "U?" H 3500 4425 50  0000 C CNN
F 1 "PC817" H 3500 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-4_W7.62mm" H 3300 3900 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 3500 4100 50  0001 L CNN
	1    3500 4100
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5CB4BA24
P 4000 4100
F 0 "C?" H 4178 4146 50  0001 L CNN
F 1 "100nF" V 4200 4000 50  0000 L CNN
F 2 "" H 4000 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3100 3200 3100
Wire Wire Line
	3200 3300 3200 4000
Wire Wire Line
	2800 3100 2800 3550
Wire Wire Line
	6650 4850 6650 4900
$Comp
L power:+5V #PWR?
U 1 1 5CB71A2F
P 3800 2700
F 0 "#PWR?" H 3800 2550 50  0001 C CNN
F 1 "+5V" H 3815 2873 50  0000 C CNN
F 2 "" H 3800 2700 50  0001 C CNN
F 3 "" H 3800 2700 50  0001 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CB85CCE
P 4550 3900
F 0 "#PWR?" H 4550 3650 50  0001 C CNN
F 1 "GNDREF" H 4555 3727 50  0000 C CNN
F 2 "" H 4550 3900 50  0001 C CNN
F 3 "" H 4550 3900 50  0001 C CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CB987A7
P 4550 3750
F 0 "R?" H 4618 3796 50  0001 L CNN
F 1 "10kR" V 4450 3650 50  0000 L CNN
F 2 "" V 4590 3740 50  0001 C CNN
F 3 "~" H 4550 3750 50  0001 C CNN
	1    4550 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CB9D98A
P 6000 4900
F 0 "#PWR?" H 6000 4650 50  0001 C CNN
F 1 "GNDREF" H 6005 4727 50  0000 C CNN
F 2 "" H 6000 4900 50  0001 C CNN
F 3 "" H 6000 4900 50  0001 C CNN
	1    6000 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 4800 6000 4800
Wire Wire Line
	6000 4800 6000 4900
$Comp
L power:+5V #PWR?
U 1 1 5CBA01E4
P 4800 4800
F 0 "#PWR?" H 4800 4650 50  0001 C CNN
F 1 "+5V" V 4815 4928 50  0000 L CNN
F 2 "" H 4800 4800 50  0001 C CNN
F 3 "" H 4800 4800 50  0001 C CNN
	1    4800 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2800 3850 2800 4200
Wire Wire Line
	3200 4200 2800 4200
Wire Wire Line
	2800 4200 2800 5200
Connection ~ 2800 4200
Wire Wire Line
	5700 5200 6400 5200
Wire Wire Line
	2800 2800 2800 3100
Connection ~ 2800 3100
Wire Wire Line
	3800 4650 6250 4650
Wire Wire Line
	6550 4650 6650 4650
Wire Wire Line
	6650 4650 6650 4850
Connection ~ 6650 4850
Wire Wire Line
	1900 1000 2800 1000
Wire Wire Line
	2350 5200 2800 5200
Wire Wire Line
	1900 1600 2350 1600
Connection ~ 2800 5200
Wire Wire Line
	2800 5200 5300 5200
Wire Wire Line
	2800 2000 2800 2500
Wire Wire Line
	3800 2700 3800 2800
Wire Wire Line
	4000 2800 3800 2800
Connection ~ 3800 2800
Wire Wire Line
	3800 2800 3800 3100
Wire Wire Line
	3800 4200 3800 4350
Wire Wire Line
	3800 3750 3800 3850
Connection ~ 3800 3850
Wire Wire Line
	3800 3850 3800 4000
Connection ~ 3800 4350
Wire Wire Line
	3800 4350 3800 4650
Wire Wire Line
	3800 4350 4000 4350
Wire Wire Line
	3800 3850 4000 3850
Wire Wire Line
	6500 5500 6400 5500
Wire Wire Line
	6400 5500 6400 5200
Connection ~ 6400 5200
Wire Wire Line
	6400 5200 6450 5200
Wire Wire Line
	6800 5500 6900 5500
Wire Wire Line
	6900 5500 6900 5200
Connection ~ 6900 5200
Wire Wire Line
	9950 4500 9950 4400
Wire Wire Line
	9950 4100 9950 4000
Wire Wire Line
	6900 4850 6650 4850
$Comp
L Device:R_US R?
U 1 1 5CAE23E6
P 6900 5000
F 0 "R?" H 6968 5046 50  0001 L CNN
F 1 "10kR" H 6968 5000 50  0000 L CNN
F 2 "" V 6940 4990 50  0001 C CNN
F 3 "~" H 6900 5000 50  0001 C CNN
	1    6900 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5150 6900 5200
$Comp
L Device:R_US R?
U 1 1 5CC6A8D2
P 7400 3350
F 0 "R?" V 7195 3350 50  0001 C CNN
F 1 "220R" V 7550 3350 50  0000 C CNN
F 2 "" V 7440 3340 50  0001 C CNN
F 3 "~" H 7400 3350 50  0001 C CNN
	1    7400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3000 6000 2800
Wire Wire Line
	6000 2800 7400 2800
Wire Wire Line
	7400 2800 7400 3200
Wire Wire Line
	4550 2950 5200 2950
Wire Wire Line
	5200 2950 5200 3000
Wire Wire Line
	7400 3500 7400 3900
Wire Wire Line
	7400 4500 7400 4700
Wire Wire Line
	7550 4500 7400 4500
$Comp
L power:GNDREF #PWR?
U 1 1 5CC79331
P 7400 4700
F 0 "#PWR?" H 7400 4450 50  0001 C CNN
F 1 "GNDREF" H 7405 4527 50  0000 C CNN
F 2 "" H 7400 4700 50  0001 C CNN
F 3 "" H 7400 4700 50  0001 C CNN
	1    7400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4250 8350 4300
Connection ~ 8350 4250
Wire Wire Line
	8550 4250 8350 4250
Wire Wire Line
	9300 4500 9650 4500
Wire Wire Line
	8350 4100 8350 4250
Wire Wire Line
	8350 3900 8350 3650
Wire Wire Line
	9300 3050 9300 4000
$Comp
L power:GNDREF #PWR?
U 1 1 5CC1924B
P 7600 1800
F 0 "#PWR?" H 7600 1550 50  0001 C CNN
F 1 "GNDREF" V 7600 1500 50  0000 C CNN
F 2 "" H 7600 1800 50  0001 C CNN
F 3 "" H 7600 1800 50  0001 C CNN
	1    7600 1800
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CC185E8
P 7500 1800
F 0 "#PWR?" H 7500 1650 50  0001 C CNN
F 1 "+15V" V 7500 2050 50  0000 C CNN
F 2 "" H 7500 1800 50  0001 C CNN
F 3 "" H 7500 1800 50  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
Connection ~ 9300 3050
Wire Wire Line
	9150 3050 9300 3050
Wire Wire Line
	9300 2750 9300 2850
Wire Wire Line
	9150 2750 9300 2750
Wire Wire Line
	9300 2950 9300 3050
Wire Wire Line
	9400 2850 9300 2850
Wire Wire Line
	9300 2950 9400 2950
Connection ~ 9300 4000
Connection ~ 9300 4500
Connection ~ 9650 4500
Wire Wire Line
	9300 4500 9300 4450
Connection ~ 9650 4000
Wire Wire Line
	9300 4000 9300 4050
Wire Wire Line
	9650 4000 9300 4000
Wire Wire Line
	9950 4000 9650 4000
Wire Wire Line
	9650 4500 9950 4500
$Comp
L Device:D_TVS D?
U 1 1 5CB2260C
P 9950 4250
F 0 "D?" V 9904 4329 50  0000 L CNN
F 1 "D_TVS" V 9995 4329 50  0000 L CNN
F 2 "" H 9950 4250 50  0001 C CNN
F 3 "~" H 9950 4250 50  0001 C CNN
	1    9950 4250
	0    1    1    0   
$EndComp
$Comp
L Driver_FET:TLP250 U?
U 1 1 5CAEC6C4
P 7950 4200
F 0 "U?" H 7950 4717 50  0001 C CNN
F 1 "TLP350" H 7950 4625 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 7950 3800 50  0001 C CIN
F 3 "http://toshiba.semicon-storage.com/info/docget.jsp?did=16821&prodName=TLP250" H 7860 4205 50  0001 L CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF7799L2 Q?
U 1 1 5CAE8856
P 9200 4250
F 0 "Q?" H 9100 4350 50  0001 L CNN
F 1 "IRF7799L2" V 9450 4050 50  0000 L CNN
F 2 "Package_DirectFET:DirectFET_L8" H 9200 4250 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/irf7799l2pbf.pdf?fileId=5546d462533600a401535607bc471cbc" H 9200 4250 50  0001 L CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US 10kR
U 1 1 5CAE3246
P 9150 4450
F 0 "10kR" V 9275 4450 50  0000 C CNN
F 1 "R_US" V 9036 4450 50  0001 C CNN
F 2 "" V 9190 4440 50  0001 C CNN
F 3 "~" H 9150 4450 50  0001 C CNN
	1    9150 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CAE2776
P 8700 4250
F 0 "R?" V 8150 4300 50  0001 C CNN
F 1 "4.7R" V 8800 4250 50  0000 C CNN
F 2 "" V 8740 4240 50  0001 C CNN
F 3 "~" H 8700 4250 50  0001 C CNN
	1    8700 4250
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 IN
U 1 1 5CADED40
P 7600 2000
F 0 "IN" V 7850 1900 50  0000 L CNN
F 1 "15 VDC" V 7750 1800 50  0000 L CNN
F 2 "" H 7600 2000 50  0001 C CNN
F 3 "~" H 7600 2000 50  0001 C CNN
	1    7600 2000
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 5CADE69D
P 9600 2850
F 0 "J?" H 9680 2842 50  0001 L CNN
F 1 "Screw_Terminal_01x02" V 9750 2350 50  0000 L CNN
F 2 "" H 9600 2850 50  0001 C CNN
F 3 "~" H 9600 2850 50  0001 C CNN
	1    9600 2850
	1    0    0    -1  
$EndComp
$Comp
L pspice:CAP C?
U 1 1 5CADB376
P 9650 4250
F 0 "C?" H 9828 4296 50  0001 L CNN
F 1 "CAP" V 9850 4200 50  0000 L CNN
F 2 "" H 9650 4250 50  0001 C CNN
F 3 "~" H 9650 4250 50  0001 C CNN
	1    9650 4250
	1    0    0    -1  
$EndComp
$Comp
L Simulation_SPICE:DIODE D?
U 1 1 5CADA182
P 9150 2900
F 0 "D?" V 9196 2820 50  0001 R CNN
F 1 "DIODE" H 9250 3050 50  0000 R CNN
F 2 "" H 9150 2900 50  0001 C CNN
F 3 "~" H 9150 2900 50  0001 C CNN
F 4 "Y" H 9150 2900 50  0001 L CNN "Spice_Netlist_Enabled"
F 5 "V" H 9150 2900 50  0001 L CNN "Spice_Primitive"
	1    9150 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3900 7550 3900
Wire Wire Line
	6900 5200 9300 5200
Wire Wire Line
	6850 5200 6900 5200
$Comp
L power:GNDREF #PWR?
U 1 1 5CCC3DCB
P 4800 5000
F 0 "#PWR?" H 4800 4750 50  0001 C CNN
F 1 "GNDREF" V 4805 4872 50  0000 R CNN
F 2 "" H 4800 5000 50  0001 C CNN
F 3 "" H 4800 5000 50  0001 C CNN
	1    4800 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4800 5000 4800
$Comp
L Device:C_Small C?
U 1 1 5CCD6A3D
P 5000 4900
F 0 "C?" H 5092 4946 50  0001 L CNN
F 1 "100nF" H 4850 5100 50  0000 L CNN
F 2 "" H 5000 4900 50  0001 C CNN
F 3 "~" H 5000 4900 50  0001 C CNN
	1    5000 4900
	1    0    0    -1  
$EndComp
Connection ~ 5000 4800
Wire Wire Line
	5000 4800 5100 4800
Wire Wire Line
	4800 5000 5000 5000
$Comp
L Device:C_Small s
U 1 1 5CCE4B11
P 6000 4650
F 0 "s" H 6092 4696 50  0001 L CNN
F 1 "1nF" H 6050 4550 50  0000 L CNN
F 2 "" H 6000 4650 50  0001 C CNN
F 3 "~" H 6000 4650 50  0001 C CNN
	1    6000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4400 5600 4350
Wire Wire Line
	5600 4350 6000 4350
Wire Wire Line
	6000 4350 6000 4550
Wire Wire Line
	6000 4750 6000 4800
Connection ~ 6000 4800
$Comp
L power:GNDREF #PWR?
U 1 1 5CCF241C
P 4850 3900
F 0 "#PWR?" H 4850 3650 50  0001 C CNN
F 1 "GNDREF" H 4855 3727 50  0000 C CNN
F 2 "" H 4850 3900 50  0001 C CNN
F 3 "" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 3900 4850 3600
Wire Wire Line
	4850 3500 4900 3500
Wire Wire Line
	4900 3600 4850 3600
Connection ~ 4850 3600
Wire Wire Line
	4850 3600 4850 3500
Text Notes 6650 2950 2    50   ~ 0
Fan PWM ?\n
Wire Wire Line
	6200 3000 6200 2850
Wire Wire Line
	6200 2850 6300 2850
$Comp
L Device:R_US R?
U 1 1 5CD4D0AC
P 5400 1900
F 0 "R?" H 5468 1900 50  0001 L CNN
F 1 "R_US" H 5468 1855 50  0001 L CNN
F 2 "" V 5440 1890 50  0001 C CNN
F 3 "~" H 5400 1900 50  0001 C CNN
	1    5400 1900
	1    0    0    -1  
$EndComp
Connection ~ 4150 2250
Wire Wire Line
	4150 2150 4300 2150
Wire Wire Line
	4150 2250 4150 2150
Wire Wire Line
	4150 2250 4300 2250
Wire Wire Line
	4150 2350 4150 2250
Wire Wire Line
	4150 2350 4300 2350
$Comp
L power:+5V #PWR?
U 1 1 5CD19512
P 5300 1600
F 0 "#PWR?" H 5300 1450 50  0001 C CNN
F 1 "+5V" H 5315 1773 50  0000 C CNN
F 2 "" H 5300 1600 50  0001 C CNN
F 3 "" H 5300 1600 50  0001 C CNN
	1    5300 1600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5CCFAF7B
P 4500 2150
F 0 "SW?" V 4546 2062 50  0001 R CNN
F 1 "SW_DPST_x2" H 4750 2300 50  0001 R CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "~" H 4500 2150 50  0001 C CNN
	1    4500 2150
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5CCF9489
P 4500 2250
F 0 "SW?" V 4546 2162 50  0001 R CNN
F 1 "SW_DPST_x2" H 4750 2400 50  0001 R CNN
F 2 "" H 4500 2250 50  0001 C CNN
F 3 "~" H 4500 2250 50  0001 C CNN
	1    4500 2250
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5CAF5401
P 4500 2350
F 0 "SW?" V 4546 2262 50  0001 R CNN
F 1 "SW_DPST_x2" H 4750 2500 50  0001 R CNN
F 2 "" H 4500 2350 50  0001 C CNN
F 3 "~" H 4500 2350 50  0001 C CNN
	1    4500 2350
	-1   0    0    1   
$EndComp
Text Notes 5125 1750 3    50   ~ 0
10kR x3
$Comp
L Transistor_FET:ZXMN2A14F Q?
U 1 1 5CD8F079
P 6550 2000
F 0 "Q?" H 6756 1954 50  0001 L CNN
F 1 "NMOS" H 6300 2100 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6750 1925 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ZXMN2A14F.pdf" H 6550 2000 50  0001 L CNN
	1    6550 2000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:ZXMN2A14F Q?
U 1 1 5CD91108
P 6900 1850
F 0 "Q?" H 7106 1804 50  0001 L CNN
F 1 "NMOS" H 6650 1900 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7100 1775 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ZXMN2A14F.pdf" H 6900 1850 50  0001 L CNN
	1    6900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2350 5300 3000
Wire Wire Line
	5400 2250 5400 3000
$Comp
L Transistor_FET:ZXMN2A14F Q?
U 1 1 5CAF5FE0
P 6200 2150
F 0 "Q?" H 6406 2104 50  0001 L CNN
F 1 "NMOS" H 5950 2250 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6400 2075 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ZXMN2A14F.pdf" H 6200 2150 50  0001 L CNN
	1    6200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2150 5500 3000
Wire Wire Line
	5800 3000 5800 2800
Wire Wire Line
	5800 2150 6000 2150
Wire Wire Line
	5700 3000 5700 2800
Wire Wire Line
	5700 2000 6350 2000
$Comp
L power:GNDREF #PWR?
U 1 1 5CE4032D
P 7150 2550
F 0 "#PWR?" H 7150 2300 50  0001 C CNN
F 1 "GNDREF" V 7155 2422 50  0000 R CNN
F 2 "" H 7150 2550 50  0001 C CNN
F 3 "" H 7150 2550 50  0001 C CNN
	1    7150 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 2350 6300 2400
Wire Wire Line
	6300 2550 6650 2550
Wire Wire Line
	6650 2200 6650 2250
Connection ~ 6650 2550
Wire Wire Line
	6650 2550 7000 2550
Wire Wire Line
	7000 2050 7000 2100
Connection ~ 7000 2550
Wire Wire Line
	7000 2550 7150 2550
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CE52562
P 6450 1500
F 0 "J?" H 6558 1681 50  0001 C CNN
F 1 "Conn_01x02" V 6400 1450 50  0000 C CNN
F 2 "" H 6450 1500 50  0001 C CNN
F 3 "~" H 6450 1500 50  0001 C CNN
	1    6450 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5CE52860
P 6800 1500
F 0 "J?" H 6908 1681 50  0001 C CNN
F 1 "Conn_01x02" V 6750 1450 50  0000 C CNN
F 2 "" H 6800 1500 50  0001 C CNN
F 3 "~" H 6800 1500 50  0001 C CNN
	1    6800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1600 6650 1800
Wire Wire Line
	7000 1600 7000 1650
Wire Wire Line
	6300 1600 6300 1950
Wire Wire Line
	5600 1850 6700 1850
Wire Wire Line
	5600 1850 5600 2500
$Comp
L power:+15V #PWR?
U 1 1 5CEB570E
P 6300 1300
F 0 "#PWR?" H 6300 1150 50  0001 C CNN
F 1 "+15V" H 6315 1473 50  0000 C CNN
F 2 "" H 6300 1300 50  0001 C CNN
F 3 "" H 6300 1300 50  0001 C CNN
	1    6300 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CEB626D
P 6650 1300
F 0 "#PWR?" H 6650 1150 50  0001 C CNN
F 1 "+15V" H 6665 1473 50  0000 C CNN
F 2 "" H 6650 1300 50  0001 C CNN
F 3 "" H 6650 1300 50  0001 C CNN
	1    6650 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CEB68A5
P 7000 1300
F 0 "#PWR?" H 7000 1150 50  0001 C CNN
F 1 "+15V" H 7015 1473 50  0000 C CNN
F 2 "" H 7000 1300 50  0001 C CNN
F 3 "" H 7000 1300 50  0001 C CNN
	1    7000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1300 6300 1500
Wire Wire Line
	6650 1300 6650 1500
Wire Wire Line
	7000 1300 7000 1500
$Comp
L Device:LED D?
U 1 1 5CECA2F8
P 5600 1550
F 0 "D?" V 5593 1629 50  0001 L CNN
F 1 "LED" V 5638 1628 50  0001 L CNN
F 2 "" H 5600 1550 50  0001 C CNN
F 3 "~" H 5600 1550 50  0001 C CNN
	1    5600 1550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5CECAC68
P 5700 1550
F 0 "D?" V 5693 1629 50  0001 L CNN
F 1 "LED" V 5738 1628 50  0001 L CNN
F 2 "" H 5700 1550 50  0001 C CNN
F 3 "~" H 5700 1550 50  0001 C CNN
	1    5700 1550
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5CECB099
P 5800 1550
F 0 "D?" V 5793 1629 50  0001 L CNN
F 1 "LED" V 5838 1628 50  0001 L CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "~" H 5800 1550 50  0001 C CNN
	1    5800 1550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CECBD51
P 5600 2650
F 0 "R?" H 5668 2650 50  0001 L CNN
F 1 "R_US" H 5668 2605 50  0001 L CNN
F 2 "" V 5640 2640 50  0001 C CNN
F 3 "~" H 5600 2650 50  0001 C CNN
	1    5600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2800 5600 3000
$Comp
L Device:R_US R?
U 1 1 5CECDEDD
P 5700 2650
F 0 "R?" H 5768 2650 50  0001 L CNN
F 1 "R_US" H 5768 2605 50  0001 L CNN
F 2 "" V 5740 2640 50  0001 C CNN
F 3 "~" H 5700 2650 50  0001 C CNN
	1    5700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2500 5700 2000
$Comp
L Device:R_US R?
U 1 1 5CECE237
P 5800 2650
F 0 "R?" H 5868 2650 50  0001 L CNN
F 1 "R_US" H 5868 2605 50  0001 L CNN
F 2 "" V 5840 2640 50  0001 C CNN
F 3 "~" H 5800 2650 50  0001 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2500 5800 2150
Wire Wire Line
	5600 1700 5600 1850
Connection ~ 5600 1850
Wire Wire Line
	5700 1700 5700 2000
Connection ~ 5700 2000
Wire Wire Line
	5800 1700 5800 2150
Connection ~ 5800 2150
$Comp
L power:GNDREF #PWR?
U 1 1 5CEE0480
P 5600 1200
F 0 "#PWR?" H 5600 950 50  0001 C CNN
F 1 "GNDREF" H 5605 1027 50  0001 C CNN
F 2 "" H 5600 1200 50  0001 C CNN
F 3 "" H 5600 1200 50  0001 C CNN
	1    5600 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CEE2F60
P 5700 1200
F 0 "#PWR?" H 5700 950 50  0001 C CNN
F 1 "GNDREF" H 5705 1027 50  0001 C CNN
F 2 "" H 5700 1200 50  0001 C CNN
F 3 "" H 5700 1200 50  0001 C CNN
	1    5700 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CEE32F2
P 5800 1200
F 0 "#PWR?" H 5800 950 50  0001 C CNN
F 1 "GNDREF" H 5805 1027 50  0001 C CNN
F 2 "" H 5800 1200 50  0001 C CNN
F 3 "" H 5800 1200 50  0001 C CNN
	1    5800 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5600 1200 5600 1400
Wire Wire Line
	5700 1200 5700 1400
Wire Wire Line
	5800 1200 5800 1400
Text Notes 5900 2700 0    50   ~ 0
Led current limiting res /or/ gate res\n
Wire Wire Line
	2350 1600 2350 5200
Wire Wire Line
	2800 1000 2800 1700
Connection ~ 9300 2750
Text Notes 1450 1700 1    118  ~ 0
230 VDC
Wire Wire Line
	2800 1000 9300 1000
Wire Wire Line
	9300 1000 9300 2750
Connection ~ 2800 1000
Text Notes 9950 3400 1    118  ~ 0
DC MOTOR
$Comp
L Device:C_Small C?
U 1 1 5CF62EA5
P 7050 3550
F 0 "C?" H 7142 3596 50  0001 L CNN
F 1 "100uf" V 7150 3450 50  0000 L CNN
F 2 "" H 7050 3550 50  0001 C CNN
F 3 "~" H 7050 3550 50  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CF6521A
P 7050 3300
F 0 "#PWR?" H 7050 3150 50  0001 C CNN
F 1 "+15V" H 7065 3473 50  0000 C CNN
F 2 "" H 7050 3300 50  0001 C CNN
F 3 "" H 7050 3300 50  0001 C CNN
	1    7050 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5CF661A6
P 7050 3900
F 0 "#PWR?" H 7050 3650 50  0001 C CNN
F 1 "GNDREF" H 7055 3727 50  0000 C CNN
F 2 "" H 7050 3900 50  0001 C CNN
F 3 "" H 7050 3900 50  0001 C CNN
	1    7050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3650 7050 3900
Wire Wire Line
	7050 3450 7050 3400
Wire Wire Line
	7050 3400 6900 3400
Wire Wire Line
	7050 3300 7050 3400
Connection ~ 7050 3400
$Comp
L Regulator_Linear:LM78M05_TO252 U?
U 1 1 5CFB26CF
P 8500 1700
F 0 "U?" H 8500 1942 50  0001 C CNN
F 1 "78M05" H 8500 1900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 8500 1925 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM78M05.pdf" H 8500 1650 50  0001 C CNN
	1    8500 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5CFB42A1
P 8100 1550
F 0 "#PWR?" H 8100 1400 50  0001 C CNN
F 1 "+15V" H 8115 1723 50  0000 C CNN
F 2 "" H 8100 1550 50  0001 C CNN
F 3 "" H 8100 1550 50  0001 C CNN
	1    8100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1700 8200 1700
Wire Wire Line
	8100 1550 8100 1700
$Comp
L power:GNDREF #PWR?
U 1 1 5CFC1CDD
P 8500 2200
F 0 "#PWR?" H 8500 1950 50  0001 C CNN
F 1 "GNDREF" H 8505 2027 50  0000 C CNN
F 2 "" H 8500 2200 50  0001 C CNN
F 3 "" H 8500 2200 50  0001 C CNN
	1    8500 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5CFC95E7
P 8850 1550
F 0 "#PWR?" H 8850 1400 50  0001 C CNN
F 1 "+5V" H 8865 1723 50  0000 C CNN
F 2 "" H 8850 1550 50  0001 C CNN
F 3 "" H 8850 1550 50  0001 C CNN
	1    8850 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1700 8850 1700
Wire Wire Line
	8850 1700 8850 1550
$Comp
L Device:C_Small C?
U 1 1 5CFD0C53
P 8100 1950
F 0 "C?" H 8000 1500 50  0001 L CNN
F 1 "220uF" V 7950 1850 50  0000 L CNN
F 2 "" H 8100 1950 50  0001 C CNN
F 3 "~" H 8100 1950 50  0001 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1700 8100 1850
Connection ~ 8100 1700
Wire Wire Line
	8500 2000 8500 2100
Wire Wire Line
	8100 2050 8100 2100
Wire Wire Line
	8100 2100 8500 2100
Connection ~ 8500 2100
Wire Wire Line
	8500 2100 8500 2200
$Comp
L Device:C_Small C?
U 1 1 5CFE6A6A
P 8850 1950
F 0 "C?" H 8942 1996 50  0001 L CNN
F 1 "100uF" V 9000 1850 50  0000 L CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "~" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2100 8850 2100
Wire Wire Line
	8850 2100 8850 2050
Wire Wire Line
	8850 1850 8850 1700
Connection ~ 8850 1700
Wire Wire Line
	8350 3900 8500 3900
Connection ~ 8350 3900
Wire Wire Line
	8350 4500 8500 4500
$Comp
L Device:C_Small C?
U 1 1 5D03DB72
P 8500 4250
F 0 "C?" H 8592 4296 50  0001 L CNN
F 1 "100nF" V 8450 4350 50  0000 L CNN
F 2 "" H 8500 4250 50  0001 C CNN
F 3 "~" H 8500 4250 50  0001 C CNN
	1    8500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3900 8500 4150
Wire Wire Line
	8500 4350 8500 4500
Connection ~ 8500 4500
Wire Wire Line
	8500 4500 9300 4500
Text GLabel 3800 3750 1    47   Input ~ 0
15V
Text GLabel 8350 3650 1    47   Input ~ 0
15V
$Comp
L Device:D_Bridge_+-AA Rectifier
U 1 1 5CAD7BE8
P 1900 1300
F 0 "Rectifier" H 1750 1300 50  0000 L CNN
F 1 "D_Bridge_+-AA" H 2300 1300 50  0001 L CNN
F 2 "" H 1900 1300 50  0001 C CNN
F 3 "~" H 1900 1300 50  0001 C CNN
	1    1900 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:Transformer_1P_1S T?
U 1 1 5CAD5B04
P 1900 1950
F 0 "T?" H 1900 2331 50  0001 C CNN
F 1 "Transformer_1P_1S" H 1900 2240 50  0001 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "~" H 1900 1950 50  0001 C CNN
	1    1900 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1550 1700 1300
Wire Wire Line
	1700 1300 1600 1300
Wire Wire Line
	2100 1550 2100 1300
Wire Wire Line
	2100 1300 2200 1300
Wire Wire Line
	8900 6000 9300 6000
Wire Wire Line
	9300 4500 9300 5200
Connection ~ 9300 5200
Wire Wire Line
	9300 5200 9300 6000
Text GLabel 9500 5200 1    50   Input ~ 0
15V
Wire Wire Line
	8900 6200 9200 6200
Wire Wire Line
	9200 6200 9200 6300
Wire Wire Line
	8900 5800 9200 5800
Wire Wire Line
	9500 5200 9500 6000
Wire Wire Line
	2100 2350 2100 5800
Wire Wire Line
	2100 5800 8100 5800
Wire Wire Line
	8100 6200 1700 6200
Wire Wire Line
	1700 6200 1700 2350
Wire Wire Line
	2100 5800 1300 5800
Wire Wire Line
	1300 5800 1300 5850
Connection ~ 2100 5800
Wire Wire Line
	1700 6200 1300 6200
Wire Wire Line
	1300 6200 1300 6250
Connection ~ 1700 6200
Text Notes 925  5850 0    50   ~ 0
LIVE\n
Text Notes 900  6250 0    50   ~ 0
NEUTRAL\n
$Comp
L Device:R_US R?
U 1 1 5CFEBF73
P 6150 2400
F 0 "R?" V 5945 2400 50  0001 C CNN
F 1 "R_US" V 6037 2400 50  0001 C CNN
F 2 "" V 6190 2390 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
Connection ~ 6300 2400
Wire Wire Line
	6300 2400 6300 2550
Wire Wire Line
	6000 2400 6000 2150
Connection ~ 6000 2150
$Comp
L Device:R_US R?
U 1 1 5CFF86D1
P 6500 2250
F 0 "R?" V 6295 2250 50  0001 C CNN
F 1 "R_US" V 6387 2250 50  0001 C CNN
F 2 "" V 6540 2240 50  0001 C CNN
F 3 "~" H 6500 2250 50  0001 C CNN
	1    6500 2250
	0    1    1    0   
$EndComp
Connection ~ 6650 2250
Wire Wire Line
	6650 2250 6650 2550
Wire Wire Line
	6350 2000 6350 2250
Connection ~ 6350 2000
$Comp
L Device:R_US R?
U 1 1 5D001D5E
P 6850 2100
F 0 "R?" V 6645 2100 50  0001 C CNN
F 1 "R_US" V 6737 2100 50  0001 C CNN
F 2 "" V 6890 2090 50  0001 C CNN
F 3 "~" H 6850 2100 50  0001 C CNN
	1    6850 2100
	0    1    1    0   
$EndComp
Connection ~ 7000 2100
Wire Wire Line
	7000 2100 7000 2550
Wire Wire Line
	6700 1850 6700 2100
Connection ~ 6700 1850
Text Notes 2425 1625 1    39   ~ 0
1x2 Barrier Klemens\n\n
Wire Notes Line
	2250 975  2250 1625
Wire Notes Line
	2250 1625 2400 1625
Wire Notes Line
	2400 1625 2400 975 
Wire Notes Line
	2400 975  2250 975 
Wire Wire Line
	4700 2150 5400 2150
Wire Wire Line
	4700 2250 5300 2250
Wire Wire Line
	4700 2350 5200 2350
$Comp
L Device:R_US R?
U 1 1 5CF5D992
P 5300 1900
F 0 "R?" H 5368 1900 50  0001 L CNN
F 1 "R_US" H 5368 1855 50  0001 L CNN
F 2 "" V 5340 1890 50  0001 C CNN
F 3 "~" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5CF5DCAB
P 5200 1900
F 0 "R?" H 5268 1900 50  0001 L CNN
F 1 "R_US" H 5268 1855 50  0001 L CNN
F 2 "" V 5240 1890 50  0001 C CNN
F 3 "~" H 5200 1900 50  0001 C CNN
	1    5200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2050 5200 2350
Connection ~ 5200 2350
Wire Wire Line
	5200 2350 5300 2350
Wire Wire Line
	5300 2050 5300 2250
Connection ~ 5300 2250
Wire Wire Line
	5300 2250 5400 2250
Wire Wire Line
	5400 2050 5400 2150
Connection ~ 5400 2150
Wire Wire Line
	5400 2150 5500 2150
Wire Wire Line
	5200 1750 5200 1675
Wire Wire Line
	5200 1675 5300 1675
Wire Wire Line
	5300 1675 5300 1600
Wire Wire Line
	5300 1675 5400 1675
Wire Wire Line
	5400 1675 5400 1750
Connection ~ 5300 1675
Wire Wire Line
	5300 1750 5300 1675
$Comp
L power:GNDREF #PWR?
U 1 1 5CF999BC
P 4000 2250
F 0 "#PWR?" H 4000 2000 50  0001 C CNN
F 1 "GNDREF" H 4005 2077 50  0000 C CNN
F 2 "" H 4000 2250 50  0001 C CNN
F 3 "" H 4000 2250 50  0001 C CNN
	1    4000 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 2250 4150 2250
Wire Notes Line
	2750 2475 2850 2475
Wire Notes Line
	2850 2475 2850 2825
Wire Notes Line
	2850 2825 2750 2825
Wire Notes Line
	2750 2475 2750 2825
Text Notes 2946 3213 0    50   ~ 0
>\n10mA\n
Wire Wire Line
	3800 3300 4000 3300
Wire Wire Line
	4550 2950 4550 3300
Connection ~ 4550 3300
Wire Wire Line
	4550 3300 4550 3600
Connection ~ 4000 3300
Wire Wire Line
	4000 3300 4550 3300
$Comp
L Device:R_US R?
U 1 1 5CFBD684
P 5500 4200
F 0 "R?" V 4950 4250 50  0001 C CNN
F 1 "filter res" V 5575 4225 50  0000 C CNN
F 2 "" V 5540 4190 50  0001 C CNN
F 3 "~" H 5500 4200 50  0001 C CNN
	1    5500 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 4000 5500 4050
Wire Wire Line
	5500 4350 5500 4400
$Comp
L Device:C_Small s?
U 1 1 5CFD3FCA
P 5600 4075
F 0 "s?" H 5692 4121 50  0001 L CNN
F 1 "1nF" V 5650 4150 50  0000 L CNN
F 2 "" H 5600 4075 50  0001 C CNN
F 3 "~" H 5600 4075 50  0001 C CNN
	1    5600 4075
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 4075 5500 4050
Connection ~ 5500 4050
$Comp
L power:GNDREF #PWR?
U 1 1 5CFDF548
P 5900 4100
F 0 "#PWR?" H 5900 3850 50  0001 C CNN
F 1 "GNDREF" H 5905 3927 50  0000 C CNN
F 2 "" H 5900 4100 50  0001 C CNN
F 3 "" H 5900 4100 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4075 5900 4075
Wire Wire Line
	5900 4075 5900 4100
Connection ~ 9300 4450
Wire Wire Line
	9000 4450 8925 4450
Wire Wire Line
	8925 4450 8925 4250
Connection ~ 8925 4250
Wire Wire Line
	8925 4250 9000 4250
Wire Wire Line
	8850 4250 8925 4250
Text Notes 10175 3275 1    39   ~ 0
1x2 Barrier Klemens\n\n
Wire Notes Line
	10025 3300 10150 3300
Wire Notes Line
	10150 3300 10150 2625
Wire Notes Line
	10150 2625 10025 2625
Wire Notes Line
	10025 2625 10025 3300
Text Notes 7300 2400 0    50   ~ 0
1x2 Klemens\n
Text Notes 9350 5500 0    50   ~ 0
1x2 Klemens\n
Wire Notes Line
	9275 5425 9850 5425
Wire Notes Line
	9850 5425 9850 5525
Wire Notes Line
	9850 5525 9275 5525
Wire Notes Line
	9275 5525 9275 5425
Wire Notes Line
	7275 2300 7275 2425
Wire Notes Line
	7275 2425 7825 2425
Wire Notes Line
	7825 2425 7825 2300
Wire Notes Line
	7825 2300 7300 2300
$EndSCHEMATC
