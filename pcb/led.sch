EESchema Schematic File Version 4
LIBS:led-cache
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
L Connector_Generic:Conn_01x04 J4
U 1 1 5BB9C619
P 5100 4000
F 0 "J4" H 5100 4350 50  0000 C CNN
F 1 "Conn_01x02" H 5100 4250 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x04_P3.175mm_Drill0.8mm" H 5100 4000 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BB9C6E5
P 5900 3700
F 0 "R5" V 5693 3700 50  0000 C CNN
F 1 "68R" V 5784 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5830 3700 50  0001 C CNN
F 3 "~" H 5900 3700 50  0001 C CNN
	1    5900 3700
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5BB9C789
P 5900 4200
F 0 "D1" H 5891 4416 50  0000 C CNN
F 1 "LED" H 5891 4325 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5900 4200 50  0001 C CNN
F 3 "https://www.chipdip.ru/product/kpt-2012surck" H 5900 4200 50  0001 C CNN
	1    5900 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3900 5450 3900
Wire Wire Line
	5450 3900 5450 3700
Wire Wire Line
	5450 3700 5750 3700
Wire Wire Line
	6050 3700 6250 3700
Wire Wire Line
	6250 3700 6250 4200
Wire Wire Line
	6250 4200 6050 4200
Wire Wire Line
	5750 4200 5450 4200
Wire Wire Line
	5450 4200 5450 4000
Wire Wire Line
	5450 4000 5300 4000
Text HLabel 5300 3900 0    50   Input ~ 0
led_in
Text HLabel 5300 4000 0    50   Output ~ 0
led_out
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5BBA6E90
P 6750 4100
F 0 "J5" H 6830 4092 50  0000 L CNN
F 1 "Conn_01x02" H 6830 4001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 6750 4100 50  0001 C CNN
F 3 "~" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4100 5400 4100
Wire Wire Line
	5400 4100 5400 4350
Wire Wire Line
	5400 4350 6300 4350
Wire Wire Line
	6300 4350 6300 4100
Wire Wire Line
	6300 4100 6550 4100
Wire Wire Line
	5300 4200 5350 4200
Wire Wire Line
	5350 4200 5350 4400
Wire Wire Line
	5350 4400 6350 4400
Wire Wire Line
	6350 4400 6350 4200
Wire Wire Line
	6350 4200 6550 4200
Text HLabel 5300 4100 0    50   Input ~ 0
sw_in
Text HLabel 5300 4200 0    50   Output ~ 0
sw_out
$EndSCHEMATC
