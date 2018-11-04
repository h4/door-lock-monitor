EESchema Schematic File Version 4
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
L power:Earth #PWR0101
U 1 1 5BBA03F7
P 6350 5050
AR Path="/5BBA03F7" Ref="#PWR0101"  Part="1" 
AR Path="/5BB9FFCC/5BBA03F7" Ref="#PWR07"  Part="1" 
F 0 "#PWR0101" H 6350 4800 50  0001 C CNN
F 1 "Earth" H 6350 4900 50  0001 C CNN
F 2 "" H 6350 5050 50  0001 C CNN
F 3 "~" H 6350 5050 50  0001 C CNN
	1    6350 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5BBA03FD
P 6250 2450
AR Path="/5BBA03FD" Ref="R1"  Part="1" 
AR Path="/5BB9FFCC/5BBA03FD" Ref="R1"  Part="1" 
F 0 "R1" H 6320 2496 50  0000 L CNN
F 1 "R10k" H 6320 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6180 2450 50  0001 C CNN
F 3 "~" H 6250 2450 50  0001 C CNN
	1    6250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BBA0404
P 7750 2450
AR Path="/5BBA0404" Ref="R4"  Part="1" 
AR Path="/5BB9FFCC/5BBA0404" Ref="R4"  Part="1" 
F 0 "R4" H 7820 2496 50  0000 L CNN
F 1 "R10k" H 7820 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 2450 50  0001 C CNN
F 3 "~" H 7750 2450 50  0001 C CNN
	1    7750 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BBA040B
P 7300 2450
AR Path="/5BBA040B" Ref="R3"  Part="1" 
AR Path="/5BB9FFCC/5BBA040B" Ref="R3"  Part="1" 
F 0 "R3" H 7370 2496 50  0000 L CNN
F 1 "R10k" H 7370 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7230 2450 50  0001 C CNN
F 3 "~" H 7300 2450 50  0001 C CNN
	1    7300 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 2250 6250 2300
Connection ~ 6250 2250
$Comp
L ESP8266:ESP-01v090 U2
U 1 1 5BBA0414
P 6200 3800
AR Path="/5BBA0414" Ref="U2"  Part="1" 
AR Path="/5BB9FFCC/5BBA0414" Ref="U2"  Part="1" 
F 0 "U2" V 6154 4178 50  0000 L CNN
F 1 "ESP-01v090" V 6245 4178 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical_Flip" H 6200 3800 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 6200 3800 50  0001 C CNN
	1    6200 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2250 6050 2850
Wire Wire Line
	6250 4800 6250 4750
Wire Wire Line
	6150 4750 6150 4950
Wire Wire Line
	6250 2250 6750 2250
Wire Wire Line
	6250 4800 7300 4800
Wire Wire Line
	7300 2300 7300 2250
Wire Wire Line
	6150 4950 7750 4950
Connection ~ 6050 2250
$Comp
L Regulator_Linear:LM2937xS U1
U 1 1 5BBA0423
P 4850 2250
AR Path="/5BBA0423" Ref="U1"  Part="1" 
AR Path="/5BB9FFCC/5BBA0423" Ref="U1"  Part="1" 
F 0 "U1" H 4850 2492 50  0000 C CNN
F 1 "LM2937xS" H 4850 2401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-3_TabPin2" H 4850 2475 50  0001 C CIN
F 3 "https://www.chipdip.ru/product/lm2937imp-3.3-nopb" H 4850 2200 50  0001 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5BBA042A
P 4400 2850
AR Path="/5BBA042A" Ref="C1"  Part="1" 
AR Path="/5BB9FFCC/5BBA042A" Ref="C1"  Part="1" 
F 0 "C1" H 4515 2896 50  0000 L CNN
F 1 "C0.1mF" H 4515 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4438 2700 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5BBA0431
P 5400 2850
AR Path="/5BBA0431" Ref="C2"  Part="1" 
AR Path="/5BB9FFCC/5BBA0431" Ref="C2"  Part="1" 
F 0 "C2" H 5518 2896 50  0000 L CNN
F 1 "CP10mF" H 5518 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_2816_7142Metric_Pad3.20x4.45mm_HandSolder" H 5438 2700 50  0001 C CNN
F 3 "~" H 5400 2850 50  0001 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0102
U 1 1 5BBA0438
P 4400 3350
AR Path="/5BBA0438" Ref="#PWR0102"  Part="1" 
AR Path="/5BB9FFCC/5BBA0438" Ref="#PWR03"  Part="1" 
F 0 "#PWR0102" H 4400 3100 50  0001 C CNN
F 1 "Earth" H 4400 3200 50  0001 C CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "~" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR0103
U 1 1 5BBA043E
P 5400 3350
AR Path="/5BBA043E" Ref="#PWR0103"  Part="1" 
AR Path="/5BB9FFCC/5BBA043E" Ref="#PWR05"  Part="1" 
F 0 "#PWR0103" H 5400 3100 50  0001 C CNN
F 1 "Earth" H 5400 3200 50  0001 C CNN
F 2 "" H 5400 3350 50  0001 C CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4750 6350 5050
$Comp
L power:Earth #PWR0104
U 1 1 5BBA0445
P 3700 3350
AR Path="/5BBA0445" Ref="#PWR0104"  Part="1" 
AR Path="/5BB9FFCC/5BBA0445" Ref="#PWR01"  Part="1" 
F 0 "#PWR0104" H 3700 3100 50  0001 C CNN
F 1 "Earth" H 3700 3200 50  0001 C CNN
F 2 "" H 3700 3350 50  0001 C CNN
F 3 "~" H 3700 3350 50  0001 C CNN
	1    3700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2250 4150 2250
Wire Wire Line
	5150 2250 5400 2250
Wire Wire Line
	5400 2700 5400 2250
Connection ~ 5400 2250
Wire Wire Line
	5400 2250 6050 2250
Wire Wire Line
	4400 3000 4400 3350
Wire Wire Line
	5400 3000 5400 3350
$Comp
L power:Earth #PWR0105
U 1 1 5BBA0452
P 4850 3350
AR Path="/5BBA0452" Ref="#PWR0105"  Part="1" 
AR Path="/5BB9FFCC/5BBA0452" Ref="#PWR04"  Part="1" 
F 0 "#PWR0105" H 4850 3100 50  0001 C CNN
F 1 "Earth" H 4850 3200 50  0001 C CNN
F 2 "" H 4850 3350 50  0001 C CNN
F 3 "~" H 4850 3350 50  0001 C CNN
	1    4850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2550 4850 3350
Wire Wire Line
	6050 2250 6250 2250
$Comp
L power:+5V #PWR0106
U 1 1 5BBA045A
P 4150 1950
AR Path="/5BBA045A" Ref="#PWR0106"  Part="1" 
AR Path="/5BB9FFCC/5BBA045A" Ref="#PWR02"  Part="1" 
F 0 "#PWR0106" H 4150 1800 50  0001 C CNN
F 1 "+5V" H 4165 2123 50  0000 C CNN
F 2 "" H 4150 1950 50  0001 C CNN
F 3 "" H 4150 1950 50  0001 C CNN
	1    4150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1950 4150 2250
$Comp
L Connector:USB_B_Mini J1
U 1 1 5BBA0461
P 3700 2450
AR Path="/5BBA0461" Ref="J1"  Part="1" 
AR Path="/5BB9FFCC/5BBA0461" Ref="J1"  Part="1" 
F 0 "J1" H 3755 2917 50  0000 C CNN
F 1 "USB_B_Mini" H 3755 2826 50  0000 C CNN
F 2 "Connector_USB:USB_Mini-B_Lumberg_2486_01_Horizontal" H 3850 2400 50  0001 C CNN
F 3 "~" H 3850 2400 50  0001 C CNN
	1    3700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2850 3700 3100
Connection ~ 4150 2250
Wire Wire Line
	4150 2250 4400 2250
Wire Wire Line
	4400 2250 4400 2700
Connection ~ 4400 2250
Wire Wire Line
	4400 2250 4550 2250
$Comp
L Device:R R2
U 1 1 5BBA046E
P 6750 2450
AR Path="/5BBA046E" Ref="R2"  Part="1" 
AR Path="/5BB9FFCC/5BBA046E" Ref="R2"  Part="1" 
F 0 "R2" H 6820 2496 50  0000 L CNN
F 1 "R10k" H 6820 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6680 2450 50  0001 C CNN
F 3 "~" H 6750 2450 50  0001 C CNN
	1    6750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2700 6750 2600
Wire Wire Line
	6750 2300 6750 2250
Connection ~ 6750 2250
$Comp
L Switch:SW_Push SW1
U 1 1 5BBA0478
P 6750 3100
AR Path="/5BBA0478" Ref="SW1"  Part="1" 
AR Path="/5BB9FFCC/5BBA0478" Ref="SW1"  Part="1" 
F 0 "SW1" V 6704 3248 50  0000 L CNN
F 1 "SW_Push" V 6795 3248 50  0000 L CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 6750 3300 50  0001 C CNN
F 3 "" H 6750 3300 50  0001 C CNN
	1    6750 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 2900 6750 2700
Connection ~ 6750 2700
$Comp
L power:Earth #PWR0107
U 1 1 5BBA0481
P 6750 3500
AR Path="/5BBA0481" Ref="#PWR0107"  Part="1" 
AR Path="/5BB9FFCC/5BBA0481" Ref="#PWR08"  Part="1" 
F 0 "#PWR0107" H 6750 3250 50  0001 C CNN
F 1 "Earth" H 6750 3350 50  0001 C CNN
F 2 "" H 6750 3500 50  0001 C CNN
F 3 "~" H 6750 3500 50  0001 C CNN
	1    6750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3300 6750 3500
NoConn ~ 6350 2850
Wire Wire Line
	7750 2250 7750 2300
Connection ~ 7300 2250
Wire Wire Line
	6750 2250 7300 2250
Wire Wire Line
	6150 2700 6150 2850
Wire Wire Line
	6150 2700 6750 2700
Wire Wire Line
	6250 2850 6250 2600
Wire Wire Line
	3600 2850 3600 3100
Wire Wire Line
	3600 3100 3700 3100
Connection ~ 3700 3100
Wire Wire Line
	3700 3100 3700 3350
NoConn ~ 4000 2450
NoConn ~ 4000 2550
NoConn ~ 4000 2650
Wire Wire Line
	7300 2250 7750 2250
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5BBA0497
P 5750 4850
AR Path="/5BBA0497" Ref="J2"  Part="1" 
AR Path="/5BB9FFCC/5BBA0497" Ref="J2"  Part="1" 
F 0 "J2" H 5750 5050 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 5750 5000 50  0000 L TNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 5750 4850 50  0001 C CNN
F 3 "~" H 5750 4850 50  0001 C CNN
	1    5750 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7300 2600 7300 4800
Wire Wire Line
	5950 4850 6050 4850
Wire Wire Line
	6050 4750 6050 4850
$Comp
L power:Earth #PWR0108
U 1 1 5BBA04A1
P 6050 5050
AR Path="/5BBA04A1" Ref="#PWR0108"  Part="1" 
AR Path="/5BB9FFCC/5BBA04A1" Ref="#PWR06"  Part="1" 
F 0 "#PWR0108" H 6050 4800 50  0001 C CNN
F 1 "Earth" H 6050 4900 50  0001 C CNN
F 2 "" H 6050 5050 50  0001 C CNN
F 3 "~" H 6050 5050 50  0001 C CNN
	1    6050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4950 6050 4950
Wire Wire Line
	6050 4950 6050 5050
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5BBA04A9
P 8300 3500
AR Path="/5BBA04A9" Ref="J3"  Part="1" 
AR Path="/5BB9FFCC/5BBA04A9" Ref="J3"  Part="1" 
F 0 "J3" H 8380 3492 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8380 3401 50  0000 L CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 8300 3500 50  0001 C CNN
F 3 "~" H 8300 3500 50  0001 C CNN
	1    8300 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2600 7750 3600
Wire Wire Line
	7750 3600 8100 3600
Connection ~ 7750 3600
Wire Wire Line
	7750 3600 7750 4950
Wire Wire Line
	7750 2250 8100 2250
Wire Wire Line
	8100 2250 8100 3500
Connection ~ 7750 2250
Text HLabel 8100 3500 2    50   Input ~ 0
board_out_vcc
Text HLabel 8100 3600 2    50   Input ~ 0
board_out_gnd
Text HLabel 5950 4850 0    50   Output ~ 0
sw_out
Text HLabel 5950 4950 0    50   Input ~ 0
sw_in
$EndSCHEMATC
