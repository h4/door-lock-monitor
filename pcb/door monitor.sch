EESchema Schematic File Version 4
LIBS:door monitor-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 10050 1900 900  900 
U 5BB9FDC3
F0 "Led" 50
F1 "led.sch" 50
F2 "led_in" I L 10050 2150 50 
F3 "led_out" I L 10050 2400 50 
F4 "sw_in" I L 10050 2550 50 
F5 "sw_out" O L 10050 2700 50 
$EndSheet
$Sheet
S 1250 1350 7150 4650
U 5BB9FFCC
F0 "contoller" 50
F1 "controller.sch" 50
F2 "board_out_vcc" I R 8400 2150 50 
F3 "board_out_gnd" I R 8400 2300 50 
F4 "sw_out" O R 8400 2550 50 
F5 "sw_in" I R 8400 2700 50 
$EndSheet
Wire Wire Line
	8400 2150 10050 2150
Wire Wire Line
	8400 2300 9250 2300
Wire Wire Line
	9250 2300 9250 2400
Wire Wire Line
	9250 2400 10050 2400
Wire Wire Line
	8400 2550 10050 2550
Wire Wire Line
	8400 2700 10050 2700
$EndSCHEMATC
