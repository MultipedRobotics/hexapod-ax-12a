EESchema Schematic File Version 4
LIBS:robot-cache
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
L robot-rescue:PWR_FLAG-power #FLG01
U 1 1 5A7E28CA
P 4150 7050
F 0 "#FLG01" H 4150 7125 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 7200 50  0000 C CNN
F 2 "" H 4150 7050 50  0001 C CNN
F 3 "" H 4150 7050 50  0001 C CNN
	1    4150 7050
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:GND-power #PWR02
U 1 1 5A7E2968
P 4150 7150
F 0 "#PWR02" H 4150 6900 50  0001 C CNN
F 1 "GND" H 4150 7000 50  0000 C CNN
F 2 "" H 4150 7150 50  0001 C CNN
F 3 "" H 4150 7150 50  0001 C CNN
	1    4150 7150
	1    0    0    -1  
$EndComp
Text Notes 7400 3450 0    60   ~ 0
Robotis AX-12A Servo Data to Serial Converter
$Comp
L robot-rescue:GND-power #PWR03
U 1 1 5A93AA24
P 4900 2300
F 0 "#PWR03" H 4900 2050 50  0001 C CNN
F 1 "GND" H 4900 2150 50  0000 C CNN
F 2 "" H 4900 2300 50  0001 C CNN
F 3 "" H 4900 2300 50  0001 C CNN
	1    4900 2300
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:+3V3-power #PWR07
U 1 1 5AA1ADF2
P 3500 1900
F 0 "#PWR07" H 3500 1750 50  0001 C CNN
F 1 "+3V3" H 3500 2040 50  0000 C CNN
F 2 "" H 3500 1900 50  0001 C CNN
F 3 "" H 3500 1900 50  0001 C CNN
	1    3500 1900
	1    0    0    -1  
$EndComp
Text Notes 1800 2300 2    60   ~ 0
3V3\nGND\nSDA\nSCL
$Comp
L Logic_74xgxx:74LVC1G125 U2
U 1 1 5AA2CD3D
P 9300 5050
F 0 "U2" H 9200 5200 50  0000 C CNN
F 1 "74LVC1G125" H 9300 4900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 9300 5050 50  0001 C CNN
F 3 "" H 9300 5050 50  0001 C CNN
	1    9300 5050
	1    0    0    -1  
$EndComp
$Comp
L Logic_74xgxx:74LVC1G126 U3
U 1 1 5AA2CDC6
P 9300 4450
F 0 "U3" H 9200 4600 50  0000 C CNN
F 1 "74LVC1G126" H 9150 4300 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 9300 4450 50  0001 C CNN
F 3 "" H 9300 4450 50  0001 C CNN
	1    9300 4450
	-1   0    0    1   
$EndComp
$Comp
L robot-rescue:R-Device R3
U 1 1 5AA2CFAD
P 7800 4150
F 0 "R3" V 7880 4150 50  0000 C CNN
F 1 "10k" V 7800 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7730 4150 50  0001 C CNN
F 3 "" H 7800 4150 50  0001 C CNN
	1    7800 4150
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:R-Device R2
U 1 1 5AA2CFFB
P 8450 4150
F 0 "R2" V 8530 4150 50  0000 C CNN
F 1 "10k" V 8450 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8380 4150 50  0001 C CNN
F 3 "" H 8450 4150 50  0001 C CNN
	1    8450 4150
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:+5V-power #PWR09
U 1 1 5AA2D056
P 8450 3850
F 0 "#PWR09" H 8450 3700 50  0001 C CNN
F 1 "+5V" H 8450 3990 50  0000 C CNN
F 2 "" H 8450 3850 50  0001 C CNN
F 3 "" H 8450 3850 50  0001 C CNN
	1    8450 3850
	1    0    0    -1  
$EndComp
Text GLabel 8550 4400 2    60   BiDi ~ 0
DATA
Text GLabel 9750 4450 2    60   Input ~ 0
TXO
Text GLabel 9750 4750 2    60   Input ~ 0
DTR
Text GLabel 9750 5050 2    60   Output ~ 0
RXI
$Comp
L robot-rescue:+5V-power #PWR010
U 1 1 5AA2F235
P 3100 6950
F 0 "#PWR010" H 3100 6800 50  0001 C CNN
F 1 "+5V" H 3100 7090 50  0000 C CNN
F 2 "" H 3100 6950 50  0001 C CNN
F 3 "" H 3100 6950 50  0001 C CNN
	1    3100 6950
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:PWR_FLAG-power #FLG011
U 1 1 5AA2F273
P 3100 7150
F 0 "#FLG011" H 3100 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 7300 50  0000 C CNN
F 2 "" H 3100 7150 50  0001 C CNN
F 3 "" H 3100 7150 50  0001 C CNN
	1    3100 7150
	-1   0    0    1   
$EndComp
Text GLabel 6300 1950 0    60   BiDi ~ 0
DATA
$Comp
L robot-rescue:GND-power #PWR012
U 1 1 5AA31552
P 6300 2200
F 0 "#PWR012" H 6300 1950 50  0001 C CNN
F 1 "GND" H 6300 2050 50  0000 C CNN
F 2 "" H 6300 2200 50  0001 C CNN
F 3 "" H 6300 2200 50  0001 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 7150 4150 7050
Wire Notes Line
	7350 3300 10650 3300
Wire Notes Line
	10650 3300 10650 6150
Wire Notes Line
	7350 6150 7350 3300
Wire Wire Line
	9600 4450 9750 4450
Connection ~ 9300 4750
Wire Wire Line
	9050 4450 9000 4450
Wire Wire Line
	9000 4450 9000 4750
Connection ~ 9000 4750
Wire Wire Line
	9550 5050 9750 5050
Wire Wire Line
	3100 6950 3100 7150
Wire Notes Line
	10650 6150 7350 6150
Wire Wire Line
	6450 2150 6300 2150
Wire Wire Line
	6300 2150 6300 2200
$Comp
L robot-rescue:BSS138 Q1
U 1 1 5AAD3B03
P 8150 4300
F 0 "Q1" V 8400 4300 50  0000 L CNN
F 1 "BSS138" V 8500 4150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8350 4225 50  0001 L CIN
F 3 "" H 8150 4300 50  0001 L CNN
	1    8150 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 4400 8450 4400
Wire Wire Line
	8450 4300 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8450 4000 8450 3850
Wire Wire Line
	7800 3850 7800 3900
Wire Wire Line
	8150 4100 8150 3900
Wire Wire Line
	8150 3900 7800 3900
Connection ~ 7800 3900
Wire Wire Line
	7800 4300 7800 4400
Wire Wire Line
	7800 4400 7950 4400
Connection ~ 7800 4400
$Comp
L robot-rescue:+5V-power #PWR013
U 1 1 5AAD5DA7
P 4400 1900
F 0 "#PWR013" H 4400 1750 50  0001 C CNN
F 1 "+5V" H 4400 2040 50  0000 C CNN
F 2 "" H 4400 1900 50  0001 C CNN
F 3 "" H 4400 1900 50  0001 C CNN
	1    4400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4750 9000 4750
$Comp
L robot-rescue:+3V3-power #PWR014
U 1 1 5B844AC7
P 7800 3850
F 0 "#PWR014" H 7800 3700 50  0001 C CNN
F 1 "+3V3" H 7800 3990 50  0000 C CNN
F 2 "" H 7800 3850 50  0001 C CNN
F 3 "" H 7800 3850 50  0001 C CNN
	1    7800 3850
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:Conn_01x03 J6
U 1 1 5B844EA8
P 6650 2050
F 0 "J6" H 6650 2250 50  0000 C CNN
F 1 "5V/Data" H 6650 1800 50  0000 C CNN
F 2 "Connectors_Molex:Molex_SPOX-5267_22-03-5035_03x2.54mm_Straight" H 6650 2050 50  0001 C CNN
F 3 "" H 6650 2050 50  0001 C CNN
	1    6650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1950 6450 1950
Wire Wire Line
	6450 2050 5850 2050
Wire Wire Line
	5850 2050 5850 1950
$Comp
L robot-rescue:+5V-power #PWR018
U 1 1 5B8453C9
P 5850 1950
F 0 "#PWR018" H 5850 1800 50  0001 C CNN
F 1 "+5V" H 5850 2090 50  0000 C CNN
F 2 "" H 5850 1950 50  0001 C CNN
F 3 "" H 5850 1950 50  0001 C CNN
	1    5850 1950
	1    0    0    -1  
$EndComp
Text GLabel 4450 2300 2    60   Input ~ 0
TXO
Text GLabel 4450 2400 2    60   Output ~ 0
RXI
Wire Wire Line
	9300 4650 9300 4750
Wire Wire Line
	9300 4750 9750 4750
Text GLabel 3450 2300 0    60   Input ~ 0
DTR
$Comp
L robot-rescue:Conn_01x04 J4
U 1 1 5B8893A7
P 2050 2200
F 0 "J4" H 2050 2400 50  0000 C CNN
F 1 "i2c" H 2050 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2050 2200 50  0001 C CNN
F 3 "" H 2050 2200 50  0001 C CNN
	1    2050 2200
	-1   0    0    1   
$EndComp
$Comp
L robot-rescue:GND-power #PWR023
U 1 1 5B8896CA
P 3600 2500
F 0 "#PWR023" H 3600 2250 50  0001 C CNN
F 1 "GND" H 3600 2350 50  0000 C CNN
F 2 "" H 3600 2500 50  0001 C CNN
F 3 "" H 3600 2500 50  0001 C CNN
	1    3600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4750 9300 4850
Wire Wire Line
	9000 4750 9000 5050
Wire Wire Line
	8450 4400 8550 4400
Wire Wire Line
	7800 3900 7800 4000
Wire Wire Line
	7800 4400 7800 4750
$Comp
L robot-rescue:Conn_01x04 J1
U 1 1 5BFA42D0
P 2050 2900
F 0 "J1" H 2050 3100 50  0000 C CNN
F 1 "i2c" H 2050 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2050 2900 50  0001 C CNN
F 3 "" H 2050 2900 50  0001 C CNN
	1    2050 2900
	-1   0    0    1   
$EndComp
$Comp
L robot-rescue:Conn_02x05_Odd_Even-Connector_Generic J2
U 1 1 5BFB75E1
P 3900 2200
F 0 "J2" H 3950 2617 50  0000 C CNN
F 1 "Pi Header" H 3950 2526 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 3900 2200 50  0001 C CNN
F 3 "~" H 3900 2200 50  0001 C CNN
	1    3900 2200
	1    0    0    -1  
$EndComp
Text GLabel 3450 2200 0    60   Input ~ 0
SCL
Text GLabel 3450 2100 0    60   Input ~ 0
SDA
Text GLabel 2650 2200 2    60   Input ~ 0
SDA
Text GLabel 2650 2300 2    60   Input ~ 0
SCL
$Comp
L robot-rescue:GND-power #PWR0101
U 1 1 5BFC0448
P 2500 3100
F 0 "#PWR0101" H 2500 2850 50  0001 C CNN
F 1 "GND" H 2500 2950 50  0000 C CNN
F 2 "" H 2500 3100 50  0001 C CNN
F 3 "" H 2500 3100 50  0001 C CNN
	1    2500 3100
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:+3V3-power #PWR0102
U 1 1 5BFC049F
P 2400 1900
F 0 "#PWR0102" H 2400 1750 50  0001 C CNN
F 1 "+3V3" H 2400 2040 50  0000 C CNN
F 2 "" H 2400 1900 50  0001 C CNN
F 3 "" H 2400 1900 50  0001 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2100 4400 2100
Wire Wire Line
	4400 2100 4400 2000
Wire Wire Line
	4200 2000 4400 2000
Connection ~ 4400 2000
Wire Wire Line
	4400 2000 4400 1900
Wire Wire Line
	3700 2000 3500 2000
Wire Wire Line
	3500 2000 3500 1900
Wire Wire Line
	3700 2100 3450 2100
Wire Wire Line
	3700 2200 3450 2200
Wire Wire Line
	3700 2300 3450 2300
Wire Wire Line
	3700 2400 3600 2400
Wire Wire Line
	3600 2400 3600 2500
Wire Wire Line
	4200 2400 4450 2400
Wire Wire Line
	4200 2300 4450 2300
Wire Wire Line
	4200 2200 4900 2200
Wire Wire Line
	4900 2200 4900 2300
Wire Wire Line
	2250 2000 2400 2000
Wire Wire Line
	2400 2000 2400 1900
Wire Wire Line
	2250 2700 2400 2700
Wire Wire Line
	2400 2700 2400 2000
Connection ~ 2400 2000
Wire Wire Line
	2250 2100 2500 2100
Wire Wire Line
	2500 2100 2500 2800
Wire Wire Line
	2250 2800 2500 2800
Connection ~ 2500 2800
Wire Wire Line
	2500 2800 2500 3100
Wire Wire Line
	2650 2200 2300 2200
Wire Wire Line
	2650 2300 2350 2300
Wire Wire Line
	2250 2900 2300 2900
Wire Wire Line
	2300 2900 2300 2200
Connection ~ 2300 2200
Wire Wire Line
	2300 2200 2250 2200
Wire Wire Line
	2250 3000 2350 3000
Wire Wire Line
	2350 3000 2350 2300
Connection ~ 2350 2300
Wire Wire Line
	2350 2300 2250 2300
$Comp
L robot-rescue:VCC-power #PWR0103
U 1 1 5BFD7D0B
P 3450 6950
F 0 "#PWR0103" H 3450 6800 50  0001 C CNN
F 1 "VCC" H 3467 7123 50  0000 C CNN
F 2 "" H 3450 6950 50  0001 C CNN
F 3 "" H 3450 6950 50  0001 C CNN
	1    3450 6950
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:+3V3-power #PWR0104
U 1 1 5BFD9890
P 3650 6950
F 0 "#PWR0104" H 3650 6800 50  0001 C CNN
F 1 "+3V3" H 3665 7123 50  0000 C CNN
F 2 "" H 3650 6950 50  0001 C CNN
F 3 "" H 3650 6950 50  0001 C CNN
	1    3650 6950
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:PWR_FLAG-power #FLG0101
U 1 1 5BFD98B4
P 3650 7150
F 0 "#FLG0101" H 3650 7225 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 7300 50  0000 C CNN
F 2 "" H 3650 7150 50  0001 C CNN
F 3 "" H 3650 7150 50  0001 C CNN
	1    3650 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 7150 3650 7050
Wire Wire Line
	3450 6950 3450 7050
Wire Wire Line
	3450 7050 3650 7050
Connection ~ 3650 7050
Wire Wire Line
	3650 7050 3650 6950
$Comp
L robot-rescue:Conn_01x03 J3
U 1 1 5BFDAA78
P 6650 1350
F 0 "J3" H 6650 1550 50  0000 C CNN
F 1 "12V/Data" H 6650 1100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_SPOX-5267_22-03-5035_03x2.54mm_Straight" H 6650 1350 50  0001 C CNN
F 3 "" H 6650 1350 50  0001 C CNN
	1    6650 1350
	1    0    0    -1  
$EndComp
$Comp
L robot-rescue:GND-power #PWR0105
U 1 1 5BFDAB28
P 6300 1550
F 0 "#PWR0105" H 6300 1300 50  0001 C CNN
F 1 "GND" H 6300 1400 50  0000 C CNN
F 2 "" H 6300 1550 50  0001 C CNN
F 3 "" H 6300 1550 50  0001 C CNN
	1    6300 1550
	1    0    0    -1  
$EndComp
Text GLabel 6300 1250 0    60   BiDi ~ 0
DATA
NoConn ~ 6450 1350
Wire Wire Line
	6450 1450 6300 1450
Wire Wire Line
	6300 1450 6300 1550
Wire Wire Line
	6450 1250 6300 1250
$EndSCHEMATC