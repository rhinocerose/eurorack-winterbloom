EESchema Schematic File Version 4
LIBS:dac-breakout-ad5689-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "DAC Breakout - AD5689"
Date "2019-06-30"
Rev "v0"
Comp "Winterbloom"
Comment1 "Alethea Flowers"
Comment2 "CC-BY-SA-4"
Comment3 "thea.codes"
Comment4 ""
$EndDescr
$Comp
L Analog_DAC:AD5689RxRUZ U1
U 1 1 5D35C864
P 5850 3800
F 0 "U1" H 5850 3111 50  0000 C CNN
F 1 "AD5689RxRUZ" H 5850 3020 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 5850 3800 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD5689R_5687R.pdf" H 5850 3800 50  0001 C CNN
	1    5850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D35D1EB
P 7150 3350
F 0 "C1" H 7265 3396 50  0000 L CNN
F 1 "10uF" H 7265 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7188 3200 50  0001 C CNN
F 3 "~" H 7150 3350 50  0001 C CNN
	1    7150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D35D3E9
P 7500 3350
F 0 "C2" H 7615 3396 50  0000 L CNN
F 1 "100nF" H 7615 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7538 3200 50  0001 C CNN
F 3 "~" H 7500 3350 50  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4200 5050 4200
Wire Wire Line
	5050 4200 5050 4900
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 5D35DEED
P 5050 5050
F 0 "JP4" V 5004 5118 50  0000 L CNN
F 1 "RESET LOW" V 5095 5118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 5050 5050 50  0001 C CNN
F 3 "~" H 5050 5050 50  0001 C CNN
	1    5050 5050
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5D35E537
P 4750 5050
F 0 "JP3" V 4704 5118 50  0000 L CNN
F 1 "RESET MID" V 4795 5118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4750 5050 50  0001 C CNN
F 3 "~" H 4750 5050 50  0001 C CNN
	1    4750 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4900 5050 4900
Connection ~ 5050 4900
$Comp
L power:GND #PWR0101
U 1 1 5D35ECC8
P 5950 4400
F 0 "#PWR0101" H 5950 4150 50  0001 C CNN
F 1 "GND" H 5955 4227 50  0000 C CNN
F 2 "" H 5950 4400 50  0001 C CNN
F 3 "" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D35F1FD
P 5050 5200
F 0 "#PWR0102" H 5050 4950 50  0001 C CNN
F 1 "GND" H 5055 5027 50  0000 C CNN
F 2 "" H 5050 5200 50  0001 C CNN
F 3 "" H 5050 5200 50  0001 C CNN
	1    5050 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0103
U 1 1 5D35F61F
P 4750 5200
F 0 "#PWR0103" H 4750 5050 50  0001 C CNN
F 1 "+3V3" H 4765 5373 50  0000 C CNN
F 2 "" H 4750 5200 50  0001 C CNN
F 3 "" H 4750 5200 50  0001 C CNN
	1    4750 5200
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5D35FD4B
P 5850 3200
F 0 "#PWR0104" H 5850 3050 50  0001 C CNN
F 1 "+3V3" H 5865 3373 50  0000 C CNN
F 2 "" H 5850 3200 50  0001 C CNN
F 3 "" H 5850 3200 50  0001 C CNN
	1    5850 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0105
U 1 1 5D36057A
P 5450 3900
F 0 "#PWR0105" H 5450 3750 50  0001 C CNN
F 1 "+3V3" V 5465 4028 50  0000 L CNN
F 2 "" H 5450 3900 50  0001 C CNN
F 3 "" H 5450 3900 50  0001 C CNN
	1    5450 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5D360AF8
P 5450 3800
F 0 "#PWR0106" H 5450 3550 50  0001 C CNN
F 1 "GND" V 5455 3672 50  0000 R CNN
F 2 "" H 5450 3800 50  0001 C CNN
F 3 "" H 5450 3800 50  0001 C CNN
	1    5450 3800
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Bridged JP2
U 1 1 5D364A9E
P 4350 5050
F 0 "JP2" V 4304 5118 50  0000 L CNN
F 1 "GAIN 1" V 4395 5118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 4350 5050 50  0001 C CNN
F 3 "~" H 4350 5050 50  0001 C CNN
	1    4350 5050
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5D364AA4
P 4050 5050
F 0 "JP1" V 4004 5118 50  0000 L CNN
F 1 "GAIN 2" V 4095 5118 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_Pad1.0x1.5mm" H 4050 5050 50  0001 C CNN
F 3 "~" H 4050 5050 50  0001 C CNN
	1    4050 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4900 4350 4900
Connection ~ 4350 4900
$Comp
L power:GND #PWR0107
U 1 1 5D364AAC
P 4350 5200
F 0 "#PWR0107" H 4350 4950 50  0001 C CNN
F 1 "GND" H 4355 5027 50  0000 C CNN
F 2 "" H 4350 5200 50  0001 C CNN
F 3 "" H 4350 5200 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0108
U 1 1 5D364AB2
P 4050 5200
F 0 "#PWR0108" H 4050 5050 50  0001 C CNN
F 1 "+3V3" H 4065 5373 50  0000 C CNN
F 2 "" H 4050 5200 50  0001 C CNN
F 3 "" H 4050 5200 50  0001 C CNN
	1    4050 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 4100 5450 4100
Wire Wire Line
	4350 4100 4350 4900
$Comp
L power:VDD #PWR0109
U 1 1 5D3652D0
P 5950 3200
F 0 "#PWR0109" H 5950 3050 50  0001 C CNN
F 1 "VDD" H 5967 3373 50  0000 C CNN
F 2 "" H 5950 3200 50  0001 C CNN
F 3 "" H 5950 3200 50  0001 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0110
U 1 1 5D36567D
P 7150 3200
F 0 "#PWR0110" H 7150 3050 50  0001 C CNN
F 1 "VDD" H 7167 3373 50  0000 C CNN
F 2 "" H 7150 3200 50  0001 C CNN
F 3 "" H 7150 3200 50  0001 C CNN
	1    7150 3200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0111
U 1 1 5D365A04
P 7500 3200
F 0 "#PWR0111" H 7500 3050 50  0001 C CNN
F 1 "VDD" H 7517 3373 50  0000 C CNN
F 2 "" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5D365C10
P 7150 3500
F 0 "#PWR0112" H 7150 3250 50  0001 C CNN
F 1 "GND" H 7155 3327 50  0000 C CNN
F 2 "" H 7150 3500 50  0001 C CNN
F 3 "" H 7150 3500 50  0001 C CNN
	1    7150 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5D366022
P 7500 3500
F 0 "#PWR0113" H 7500 3250 50  0001 C CNN
F 1 "GND" H 7505 3327 50  0000 C CNN
F 2 "" H 7500 3500 50  0001 C CNN
F 3 "" H 7500 3500 50  0001 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
Text GLabel 6250 3600 2    50   Input ~ 0
OUTA
Text GLabel 6250 3700 2    50   Input ~ 0
OUTB
Text GLabel 6250 3900 2    50   Input ~ 0
SDO
Text GLabel 5450 3400 0    50   Input ~ 0
SCLK
Text GLabel 5450 3500 0    50   Input ~ 0
MOSI
Text GLabel 5450 3600 0    50   Input ~ 0
CS
$Comp
L SparkFun-Connectors:CONN_08LOCK_LONGPADS J1
U 1 1 5D3676F2
P 3600 3700
F 0 "J1" H 3558 4510 45  0000 C CNN
F 1 "Input Connector" H 3558 4426 45  0000 C CNN
F 2 "SF Connectors:1X08_LOCK_LONGPADS" H 3600 4400 20  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
F 4 "XXX-00000" H 3558 4331 60  0000 C CNN "Field4"
	1    3600 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5D367F5A
P 3700 3300
F 0 "#PWR0114" H 3700 3050 50  0001 C CNN
F 1 "GND" V 3705 3172 50  0000 R CNN
F 2 "" H 3700 3300 50  0001 C CNN
F 3 "" H 3700 3300 50  0001 C CNN
	1    3700 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:VDD #PWR0115
U 1 1 5D36826F
P 3700 3500
F 0 "#PWR0115" H 3700 3350 50  0001 C CNN
F 1 "VDD" V 3717 3628 50  0000 L CNN
F 2 "" H 3700 3500 50  0001 C CNN
F 3 "" H 3700 3500 50  0001 C CNN
	1    3700 3500
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 5D368694
P 3700 3400
F 0 "#PWR0116" H 3700 3250 50  0001 C CNN
F 1 "+3V3" V 3715 3528 50  0000 L CNN
F 2 "" H 3700 3400 50  0001 C CNN
F 3 "" H 3700 3400 50  0001 C CNN
	1    3700 3400
	0    1    1    0   
$EndComp
Text GLabel 3700 3000 2    50   Input ~ 0
SCLK
Text GLabel 3700 3100 2    50   Input ~ 0
MOSI
Text GLabel 3700 3200 2    50   Input ~ 0
CS
Text GLabel 3700 3600 2    50   Input ~ 0
OUTA
Text GLabel 3700 3700 2    50   Input ~ 0
OUTB
$EndSCHEMATC
