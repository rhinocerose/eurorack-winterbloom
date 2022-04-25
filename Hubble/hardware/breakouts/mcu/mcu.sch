EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Project name"
Date "2021-09-17"
Rev "v0"
Comp "Winterbloom"
Comment1 "CERN OHL-P V2"
Comment2 "project.wntr.dev"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L winterbloom:ATSAMD51J20A-M U2
U 1 1 615E4A5A
P 4900 4025
F 0 "U2" H 4850 4150 60  0000 L CNN
F 1 "ATSAMD51J20A-M" H 4500 4025 60  0000 L CNN
F 2 "Package_DFN_QFN:QFN-64-1EP_9x9mm_P0.5mm_EP3.8x3.8mm" H 7600 5225 60  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/SAM_D5x_E5x_Family_Data_Sheet_DS60001507G.pdf" H 8500 3825 60  0001 C CNN
F 4 "ATSAMD51J20A-M" H 7900 5075 39  0001 C CNN "mpn"
	1    4900 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2500 4950 2675
$Comp
L power:GND #PWR0101
U 1 1 615EA908
P 5150 2675
F 0 "#PWR0101" H 5150 2425 50  0001 C CNN
F 1 "GND" H 5155 2502 50  0001 C CNN
F 2 "" H 5150 2675 50  0001 C CNN
F 3 "" H 5150 2675 50  0001 C CNN
	1    5150 2675
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 615EAF97
P 6200 3375
F 0 "#PWR0102" H 6200 3125 50  0001 C CNN
F 1 "GND" H 6205 3202 50  0001 C CNN
F 2 "" H 6200 3375 50  0001 C CNN
F 3 "" H 6200 3375 50  0001 C CNN
	1    6200 3375
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 615EB738
P 6200 4775
F 0 "#PWR0103" H 6200 4525 50  0001 C CNN
F 1 "GND" H 6205 4602 50  0001 C CNN
F 2 "" H 6200 4775 50  0001 C CNN
F 3 "" H 6200 4775 50  0001 C CNN
	1    6200 4775
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 615EBB80
P 4650 5275
F 0 "#PWR0104" H 4650 5025 50  0001 C CNN
F 1 "GND" H 4655 5102 50  0001 C CNN
F 2 "" H 4650 5275 50  0001 C CNN
F 3 "" H 4650 5275 50  0001 C CNN
	1    4650 5275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 615EC2A1
P 3600 3875
F 0 "#PWR0105" H 3600 3625 50  0001 C CNN
F 1 "GND" H 3605 3702 50  0001 C CNN
F 2 "" H 3600 3875 50  0001 C CNN
F 3 "" H 3600 3875 50  0001 C CNN
	1    3600 3875
	0    1    1    0   
$EndComp
Text Label 4950 2500 1    50   ~ 0
VDDIO
Text Label 6425 3275 0    50   ~ 0
VDDIO
Wire Wire Line
	6425 3275 6200 3275
Text Label 6425 4675 0    50   ~ 0
VDDIO
Wire Wire Line
	6425 4675 6200 4675
Text Label 4550 5550 3    50   ~ 0
VDDIO
Wire Wire Line
	4550 5550 4550 5275
Text Label 3325 3975 2    50   ~ 0
VDDANA
Wire Wire Line
	3600 3975 3325 3975
$Comp
L power:GND #PWR0106
U 1 1 615ED869
P 3600 3175
F 0 "#PWR0106" H 3600 2925 50  0001 C CNN
F 1 "GND" H 3605 3002 50  0001 C CNN
F 2 "" H 3600 3175 50  0001 C CNN
F 3 "" H 3600 3175 50  0001 C CNN
	1    3600 3175
	0    1    1    0   
$EndComp
Text Label 3325 3275 2    50   ~ 0
XIN
Wire Wire Line
	3600 3275 3325 3275
Text Label 3325 3375 2    50   ~ 0
XOUT
Wire Wire Line
	3600 3375 3325 3375
$Comp
L Device:Crystal_Small Y1
U 1 1 615EE997
P 1575 4900
F 0 "Y1" H 1575 5125 50  0000 C CNN
F 1 "32.768kHz" H 1575 5034 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_2012-2Pin_2.0x1.2mm_HandSoldering" H 1575 4900 50  0001 C CNN
F 3 "~" H 1575 4900 50  0001 C CNN
	1    1575 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 615EF02C
P 1750 5075
F 0 "C2" H 1842 5121 50  0000 L CNN
F 1 "18pF" H 1842 5030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1750 5075 50  0001 C CNN
F 3 "~" H 1750 5075 50  0001 C CNN
	1    1750 5075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 615EFB03
P 1350 5075
F 0 "C1" H 1442 5121 50  0000 L CNN
F 1 "18pF" H 1442 5030 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1350 5075 50  0001 C CNN
F 3 "~" H 1350 5075 50  0001 C CNN
	1    1350 5075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4975 1350 4900
Wire Wire Line
	1350 4900 1475 4900
Wire Wire Line
	1675 4900 1750 4900
Wire Wire Line
	1750 4900 1750 4975
Wire Wire Line
	1750 5175 1750 5275
Wire Wire Line
	1750 5275 1550 5275
Wire Wire Line
	1350 5275 1350 5175
$Comp
L power:GND #PWR0107
U 1 1 615F07E3
P 1550 5275
F 0 "#PWR0107" H 1550 5025 50  0001 C CNN
F 1 "GND" H 1555 5102 50  0001 C CNN
F 2 "" H 1550 5275 50  0001 C CNN
F 3 "" H 1550 5275 50  0001 C CNN
	1    1550 5275
	1    0    0    -1  
$EndComp
Connection ~ 1550 5275
Wire Wire Line
	1550 5275 1350 5275
Text Label 1225 4900 2    50   ~ 0
XIN
Text Label 1900 4900 0    50   ~ 0
XOUT
Wire Wire Line
	1900 4900 1750 4900
Connection ~ 1750 4900
Wire Wire Line
	1350 4900 1225 4900
Connection ~ 1350 4900
Text Label 1775 6975 0    50   ~ 0
RESET
Text Label 1125 6675 0    50   ~ 0
VDDIO
Text Label 1775 7275 0    50   ~ 0
SWDIO
Text Label 1775 7175 0    50   ~ 0
SWCLK
Text Label 4850 2500 1    50   ~ 0
SWCLK
Text Label 4750 2500 1    50   ~ 0
SWDIO
Wire Wire Line
	4850 2500 4850 2675
Wire Wire Line
	4750 2675 4750 2500
Text Label 5350 2500 1    50   ~ 0
RESET
Wire Wire Line
	5350 2500 5350 2675
Text Label 6425 3475 0    50   ~ 0
D+
Text Label 6425 3575 0    50   ~ 0
D-
Wire Wire Line
	6200 3475 6425 3475
Wire Wire Line
	6425 3575 6200 3575
Text Label 5300 6875 0    50   ~ 0
VDDIO
$Comp
L winterbloom:USB_B_Receptacle J1
U 1 1 615F84BA
P 1000 1100
F 0 "J1" H 1033 1565 50  0000 C CNN
F 1 "USB_B_Receptacle" H 1033 1474 50  0000 C CNN
F 2 "Connector_USB:USB_B_OST_USB-B1HSxx_Horizontal" H 1200 1050 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=5787834&DocType=Customer+Drawing&DocLang=English&PartCntxt=5787834-1&DocFormat=pdf" H 1200 1050 50  0001 C CNN
F 4 "5787834-1" H 1000 1100 39  0001 C CNN "mpn"
	1    1000 1100
	1    0    0    -1  
$EndComp
Text Label 1575 900  0    50   ~ 0
VBUS
Text Label 1575 1000 0    50   ~ 0
D+
Text Label 1575 1100 0    50   ~ 0
D-
$Comp
L power:GND #PWR0109
U 1 1 615F984C
P 1600 1750
F 0 "#PWR0109" H 1600 1500 50  0001 C CNN
F 1 "GND" H 1605 1577 50  0001 C CNN
F 2 "" H 1600 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0001 C CNN
	1    1600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1100 1575 1100
Wire Wire Line
	1575 1000 1350 1000
Wire Wire Line
	1350 900  1575 900 
$Comp
L Device:C_Small C7
U 1 1 615FBF47
P 4750 7550
F 0 "C7" H 4842 7596 50  0000 L CNN
F 1 "0.1uF" H 4842 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4750 7550 50  0001 C CNN
F 3 "~" H 4750 7550 50  0001 C CNN
	1    4750 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 615FC782
P 5125 7550
F 0 "C8" H 5217 7596 50  0000 L CNN
F 1 "0.1uF" H 5217 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5125 7550 50  0001 C CNN
F 3 "~" H 5125 7550 50  0001 C CNN
	1    5125 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 615FCD80
P 5500 7550
F 0 "C9" H 5592 7596 50  0000 L CNN
F 1 "0.1uF" H 5592 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5500 7550 50  0001 C CNN
F 3 "~" H 5500 7550 50  0001 C CNN
	1    5500 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 615FD553
P 5875 7550
F 0 "C10" H 5967 7596 50  0000 L CNN
F 1 "0.1uF" H 5967 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5875 7550 50  0001 C CNN
F 3 "~" H 5875 7550 50  0001 C CNN
	1    5875 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7450 5125 7450
Connection ~ 5125 7450
Connection ~ 5500 7450
Wire Wire Line
	5500 7450 5875 7450
Wire Wire Line
	5875 7650 5500 7650
Connection ~ 5125 7650
Wire Wire Line
	5125 7650 4750 7650
Connection ~ 5500 7650
Wire Wire Line
	5500 7650 5325 7650
Wire Wire Line
	5125 7450 5325 7450
Wire Wire Line
	5325 7350 5325 7450
Connection ~ 5325 7450
Wire Wire Line
	5325 7450 5500 7450
Text Label 5325 7350 1    50   ~ 0
VDDIO
$Comp
L power:GND #PWR0110
U 1 1 616030CC
P 5325 7775
F 0 "#PWR0110" H 5325 7525 50  0001 C CNN
F 1 "GND" H 5330 7602 50  0001 C CNN
F 2 "" H 5325 7775 50  0001 C CNN
F 3 "" H 5325 7775 50  0001 C CNN
	1    5325 7775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5325 7775 5325 7650
Connection ~ 5325 7650
Wire Wire Line
	5325 7650 5125 7650
Text Label 5250 2500 1    50   ~ 0
VDDCORE
Wire Wire Line
	5250 2500 5250 2675
Text Label 4125 7350 1    50   ~ 0
VDDCORE
$Comp
L Device:C_Small C5
U 1 1 61606F01
P 3925 7550
F 0 "C5" H 3725 7600 50  0000 L CNN
F 1 "0.1uF" H 3625 7500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3925 7550 50  0001 C CNN
F 3 "~" H 3925 7550 50  0001 C CNN
	1    3925 7550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 61606F07
P 4300 7550
F 0 "C6" H 4392 7596 50  0000 L CNN
F 1 "4.7uF" H 4392 7505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4300 7550 50  0001 C CNN
F 3 "~" H 4300 7550 50  0001 C CNN
	1    4300 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 7650 4125 7650
Wire Wire Line
	3925 7450 4125 7450
Wire Wire Line
	4125 7350 4125 7450
Connection ~ 4125 7450
Wire Wire Line
	4125 7450 4300 7450
$Comp
L power:GND #PWR0111
U 1 1 61606F21
P 4125 7775
F 0 "#PWR0111" H 4125 7525 50  0001 C CNN
F 1 "GND" H 4130 7602 50  0001 C CNN
F 2 "" H 4125 7775 50  0001 C CNN
F 3 "" H 4125 7775 50  0001 C CNN
	1    4125 7775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4125 7775 4125 7650
Connection ~ 4125 7650
Wire Wire Line
	4125 7650 3925 7650
$Comp
L winterbloom:Tactile_Switch SW1
U 1 1 6160CD8D
P 1550 6375
F 0 "SW1" H 1550 6604 45  0000 C CNN
F 1 "RESET" H 1550 6520 45  0000 C CNN
F 2 "winterbloom:Tactile_Switch_4.2mm" H 1310 6510 20  0001 L CNN
F 3 "https://factory.macrofab.com/part/MF-SW-TACT-4.2MM" H 1550 6375 60  0001 C CNN
F 4 "MF-SW-TACT-4.2MM, MF-SW-TACT-6MM" H 1550 6565 50  0001 C CNN "mpn"
	1    1550 6375
	1    0    0    -1  
$EndComp
Text Label 1200 6375 2    50   ~ 0
RESET
Wire Wire Line
	1200 6375 1350 6375
$Comp
L power:GND #PWR0112
U 1 1 6160EB4E
P 1750 6375
F 0 "#PWR0112" H 1750 6125 50  0001 C CNN
F 1 "GND" H 1755 6202 50  0001 C CNN
F 2 "" H 1750 6375 50  0001 C CNN
F 3 "" H 1750 6375 50  0001 C CNN
	1    1750 6375
	1    0    0    -1  
$EndComp
Text Label 1200 6025 2    50   ~ 0
RESET
$Comp
L Device:R_US R3
U 1 1 616108D9
P 1550 6025
F 0 "R3" V 1345 6025 50  0000 C CNN
F 1 "10k" V 1436 6025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1590 6015 50  0001 C CNN
F 3 "~" H 1550 6025 50  0001 C CNN
	1    1550 6025
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 6025 1400 6025
Text Label 1900 6025 0    50   ~ 0
VDDIO
Wire Wire Line
	1900 6025 1700 6025
Text Notes 750  5725 0    50   ~ 0
Pull-up required, see Errata CHIP003-159
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 61613D2D
P 2950 7425
F 0 "FB1" V 2713 7425 50  0000 C CNN
F 1 "300mA" V 2804 7425 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 7425 50  0001 C CNN
F 3 "~" H 2950 7425 50  0001 C CNN
	1    2950 7425
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 616140F7
P 3150 7625
F 0 "C4" H 2950 7675 50  0000 L CNN
F 1 "0.1uF" H 2850 7575 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3150 7625 50  0001 C CNN
F 3 "~" H 3150 7625 50  0001 C CNN
	1    3150 7625
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 7425 3150 7425
Wire Wire Line
	3150 7425 3150 7525
Wire Wire Line
	3150 7425 3275 7425
Connection ~ 3150 7425
Text Label 3275 7425 0    50   ~ 0
VDDANA
$Comp
L power:+3V3 #PWR0113
U 1 1 616165BD
P 2850 7425
F 0 "#PWR0113" H 2850 7275 50  0001 C CNN
F 1 "+3V3" V 2850 7650 50  0000 C CNN
F 2 "" H 2850 7425 50  0001 C CNN
F 3 "" H 2850 7425 50  0001 C CNN
	1    2850 7425
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61616D51
P 3150 7725
F 0 "#PWR0114" H 3150 7475 50  0001 C CNN
F 1 "GND" H 3155 7552 50  0001 C CNN
F 2 "" H 3150 7725 50  0001 C CNN
F 3 "" H 3150 7725 50  0001 C CNN
	1    3150 7725
	1    0    0    -1  
$EndComp
$Comp
L winterbloom:Dotstar D3
U 1 1 616365E9
P 1550 3825
F 0 "D3" H 1400 4075 50  0000 C CNN
F 1 "Dotstar" H 1725 3575 50  0000 C CNN
F 2 "winterbloom:Dotstar_5050" H 1600 3525 50  0001 L TNN
F 3 "https://www.alibaba.com/product-detail/High-Efficiency-SK9822-Similar-APA102-5050_62326807400.html" H 1650 3450 50  0001 L TNN
F 4 "SK9822" H 1750 3425 50  0001 C CNN "mpn"
	1    1550 3825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 616366D1
P 1550 4125
F 0 "#PWR0115" H 1550 3875 50  0001 C CNN
F 1 "GND" H 1555 3952 50  0001 C CNN
F 2 "" H 1550 4125 50  0001 C CNN
F 3 "" H 1550 4125 50  0001 C CNN
	1    1550 4125
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0116
U 1 1 61636B17
P 1550 3525
F 0 "#PWR0116" H 1550 3375 50  0001 C CNN
F 1 "+3V3" H 1550 3700 50  0000 C CNN
F 2 "" H 1550 3525 50  0001 C CNN
F 3 "" H 1550 3525 50  0001 C CNN
	1    1550 3525
	1    0    0    -1  
$EndComp
NoConn ~ 1850 3725
NoConn ~ 1850 3825
Text Label 1125 3725 2    50   ~ 0
DOTSTAR_SDI
Text Label 1125 3825 2    50   ~ 0
DOTSTAR_SCK
Wire Wire Line
	1125 3725 1250 3725
Wire Wire Line
	1125 3825 1250 3825
$Comp
L Device:LED_ALT D1
U 1 1 6163FE31
P 900 2500
F 0 "D1" V 939 2382 50  0000 R CNN
F 1 "POWER" V 848 2382 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 900 2500 50  0001 C CNN
F 3 "~" H 900 2500 50  0001 C CNN
	1    900  2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61643439
P 900 2800
F 0 "R1" H 968 2846 50  0000 L CNN
F 1 "10k" H 968 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 940 2790 50  0001 C CNN
F 3 "~" H 900 2800 50  0001 C CNN
	1    900  2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 616455C5
P 900 2950
F 0 "#PWR0117" H 900 2700 50  0001 C CNN
F 1 "GND" H 905 2777 50  0001 C CNN
F 2 "" H 900 2950 50  0001 C CNN
F 3 "" H 900 2950 50  0001 C CNN
	1    900  2950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0118
U 1 1 6164998C
P 5225 6875
F 0 "#PWR0118" H 5225 6725 50  0001 C CNN
F 1 "+3V3" V 5225 7100 50  0000 C CNN
F 2 "" H 5225 6875 50  0001 C CNN
F 3 "" H 5225 6875 50  0001 C CNN
	1    5225 6875
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5225 6875 5300 6875
$Comp
L power:+3V3 #PWR0119
U 1 1 6164E77E
P 900 2350
F 0 "#PWR0119" H 900 2200 50  0001 C CNN
F 1 "+3V3" H 915 2523 50  0000 C CNN
F 2 "" H 900 2350 50  0001 C CNN
F 3 "" H 900 2350 50  0001 C CNN
	1    900  2350
	1    0    0    -1  
$EndComp
Text Label 3325 3475 2    50   ~ 0
DAC.VOUT0
Text Label 3325 3575 2    50   ~ 0
ADC0.AIN1+ANAREF.VREF0
Text Label 3325 3675 2    50   ~ 0
ADC1.AIN6
Text Label 3325 3775 2    50   ~ 0
ADC1.AIN7
Text Label 3325 4075 2    50   ~ 0
ADC1.AIN8
Text Label 3325 4175 2    50   ~ 0
ADC1.AIN9
Text Label 3325 4275 2    50   ~ 0
ADC0.AIN2+ADC1.AIN0
Text Label 3325 4375 2    50   ~ 0
ADC0.AIN3+ADC1.AIN1
Text Label 3325 4475 2    50   ~ 0
ADC0.AIN4+ANAREF.VREF1
Text Label 3325 4575 2    50   ~ 0
DAC.VOUT1
Text Label 3325 4675 2    50   ~ 0
ADC0.AIN6+ANAREF.VREF2
Text Label 3325 4775 2    50   ~ 0
ADC0.AIN7
Wire Wire Line
	3325 3475 3600 3475
Wire Wire Line
	3600 3575 3325 3575
Wire Wire Line
	3325 3675 3600 3675
Wire Wire Line
	3600 3775 3325 3775
Wire Wire Line
	3325 4075 3600 4075
Wire Wire Line
	3600 4175 3325 4175
Wire Wire Line
	3325 4275 3600 4275
Wire Wire Line
	3600 4375 3325 4375
Wire Wire Line
	3325 4475 3600 4475
Wire Wire Line
	3600 4575 3325 4575
Wire Wire Line
	3325 4675 3600 4675
Wire Wire Line
	3600 4775 3325 4775
Text Label 4150 5550 3    50   ~ 0
ADC0.AIN8+ADC1.AIN2
Text Label 4250 5550 3    50   ~ 0
ADC0.AIN9+ADC1.AIN3
Text Label 4350 5550 3    50   ~ 0
ADC0.AIN10
Text Label 4450 5550 3    50   ~ 0
ADC0.AIN11
Wire Wire Line
	4450 5550 4450 5275
Wire Wire Line
	4350 5275 4350 5550
Wire Wire Line
	4250 5275 4250 5550
Wire Wire Line
	4150 5550 4150 5275
Text Label 4750 5550 3    50   ~ 0
PB10
Text Label 4850 5550 3    50   ~ 0
PB11
Text Label 4950 5550 3    50   ~ 0
SERCOM4.0
Text Label 5050 5550 3    50   ~ 0
SERCOM4.1
Text Label 5150 5550 3    50   ~ 0
SERCOM4.2
Text Label 5250 5550 3    50   ~ 0
SERCOM4.3
Text Label 5350 5550 3    50   ~ 0
SERCOM2.0
Text Label 5450 5550 3    50   ~ 0
SERCOM2.1
Text Label 5550 5550 3    50   ~ 0
SERCOM2.2
Text Label 5650 5550 3    50   ~ 0
SERCOM2.3
Wire Wire Line
	4750 5550 4750 5275
Wire Wire Line
	4850 5275 4850 5550
Wire Wire Line
	4950 5550 4950 5275
Wire Wire Line
	5050 5275 5050 5550
Wire Wire Line
	5150 5550 5150 5275
Wire Wire Line
	5250 5275 5250 5550
Wire Wire Line
	5350 5550 5350 5275
Wire Wire Line
	5450 5550 5450 5275
Wire Wire Line
	5550 5550 5550 5275
Wire Wire Line
	5650 5275 5650 5550
Text Label 6425 3675 0    50   ~ 0
SERCOM3.1
Text Label 6425 3775 0    50   ~ 0
SERCOM3.0
Wire Wire Line
	6425 3675 6200 3675
Wire Wire Line
	6200 3775 6425 3775
Text Label 6425 3875 0    50   ~ 0
PA21
Text Label 6425 3975 0    50   ~ 0
PA20
Text Label 6425 4075 0    50   ~ 0
PA17
Text Label 6425 4175 0    50   ~ 0
PA16
Text Label 6425 4275 0    50   ~ 0
SERCOM1.3
Text Label 6425 4375 0    50   ~ 0
SERCOM1.2
Text Label 6425 4475 0    50   ~ 0
SERCOM1.1
Text Label 6425 4575 0    50   ~ 0
SERCOM1.0
Wire Wire Line
	6425 3875 6200 3875
Wire Wire Line
	6200 3975 6425 3975
Wire Wire Line
	6425 4075 6200 4075
Wire Wire Line
	6200 4175 6425 4175
Wire Wire Line
	6425 4275 6200 4275
Wire Wire Line
	6200 4375 6425 4375
Wire Wire Line
	6425 4475 6200 4475
Wire Wire Line
	6200 4575 6425 4575
Text Label 1375 4400 0    50   ~ 0
SERCOM3.1
Text Label 1375 4500 0    50   ~ 0
SERCOM3.0
Text Label 1225 4400 2    50   ~ 0
DOTSTAR_SDI
Text Label 1225 4500 2    50   ~ 0
DOTSTAR_SCK
Wire Wire Line
	1225 4400 1375 4400
Wire Wire Line
	1375 4500 1225 4500
$Comp
L Device:R_US R4
U 1 1 616C191C
P 1425 1525
F 0 "R4" H 1493 1571 50  0000 L CNN
F 1 "10k" H 1493 1480 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1465 1515 50  0001 C CNN
F 3 "~" H 1425 1525 50  0001 C CNN
	1    1425 1525
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 616C228D
P 1750 1525
F 0 "C3" H 1842 1571 50  0000 L CNN
F 1 "4.7nF" H 1842 1480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1750 1525 50  0001 C CNN
F 3 "~" H 1750 1525 50  0001 C CNN
	1    1750 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	1425 1675 1425 1750
Wire Wire Line
	1425 1750 1600 1750
Wire Wire Line
	1600 1750 1750 1750
Wire Wire Line
	1750 1750 1750 1625
Connection ~ 1600 1750
Wire Wire Line
	1350 1300 1425 1300
Wire Wire Line
	1425 1300 1425 1375
Wire Wire Line
	1425 1300 1750 1300
Wire Wire Line
	1750 1300 1750 1425
Connection ~ 1425 1300
$Comp
L power:GND #PWR0121
U 1 1 616DA0AC
P 1350 1200
F 0 "#PWR0121" H 1350 950 50  0001 C CNN
F 1 "GND" H 1355 1027 50  0001 C CNN
F 2 "" H 1350 1200 50  0001 C CNN
F 3 "" H 1350 1200 50  0001 C CNN
	1    1350 1200
	0    -1   -1   0   
$EndComp
Text Label 3125 7050 2    50   ~ 0
ADC0.AIN1+ANAREF.VREF0
Text Label 3275 7050 0    50   ~ 0
VDDANA
Wire Wire Line
	3275 7050 3125 7050
Text Notes 2125 6925 0    50   ~ 0
Required for DAC, see Errata CHIP003-161
Text Label 4150 2500 1    50   ~ 0
ADC0.AIN15
Text Label 4250 2500 1    50   ~ 0
ADC0.AIN14
Text Label 4350 2500 1    50   ~ 0
ADC0.AIN13
Text Label 4450 2500 1    50   ~ 0
ADC0.AIN12
Text Label 4550 2500 1    50   ~ 0
SERCOM5.0
Text Label 4650 2500 1    50   ~ 0
SERCOM5.1
Text Label 5450 2500 1    50   ~ 0
PA27
Text Label 5550 2500 1    50   ~ 0
PB23
Text Label 5650 2500 1    50   ~ 0
PB22
Wire Wire Line
	4150 2500 4150 2675
Wire Wire Line
	4250 2675 4250 2500
Wire Wire Line
	4350 2500 4350 2675
Wire Wire Line
	4450 2500 4450 2675
Wire Wire Line
	4550 2675 4550 2500
Wire Wire Line
	4650 2500 4650 2675
Wire Wire Line
	5450 2675 5450 2500
Wire Wire Line
	5550 2500 5550 2675
Wire Wire Line
	5650 2675 5650 2500
Text Label 8175 2375 2    50   ~ 0
SERCOM5.0
Text Label 8425 2375 0    50   ~ 0
SCL
Text Label 8175 2500 2    50   ~ 0
SERCOM5.1
Text Label 8425 2500 0    50   ~ 0
SDA
NoConn ~ 5050 2675
$Comp
L Device:LED_ALT D2
U 1 1 61712AF3
P 1375 2500
F 0 "D2" V 1414 2382 50  0000 R CNN
F 1 "USB" V 1323 2382 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 1375 2500 50  0001 C CNN
F 3 "~" H 1375 2500 50  0001 C CNN
	1    1375 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 61712AFD
P 1375 2800
F 0 "R2" H 1443 2846 50  0000 L CNN
F 1 "10k" H 1443 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1415 2790 50  0001 C CNN
F 3 "~" H 1375 2800 50  0001 C CNN
	1    1375 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 61712B07
P 1375 2950
F 0 "#PWR0122" H 1375 2700 50  0001 C CNN
F 1 "GND" H 1380 2777 50  0001 C CNN
F 2 "" H 1375 2950 50  0001 C CNN
F 3 "" H 1375 2950 50  0001 C CNN
	1    1375 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_ALT D4
U 1 1 617188B4
P 1775 2500
F 0 "D4" V 1814 2382 50  0000 R CNN
F 1 "ACT" V 1723 2382 50  0000 R CNN
F 2 "winterbloom:LED_0805_Kingbright_APT2012" H 1775 2500 50  0001 C CNN
F 3 "~" H 1775 2500 50  0001 C CNN
	1    1775 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R5
U 1 1 617188BE
P 1775 2800
F 0 "R5" H 1843 2846 50  0000 L CNN
F 1 "10k" H 1843 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1815 2790 50  0001 C CNN
F 3 "~" H 1775 2800 50  0001 C CNN
	1    1775 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 617188C8
P 1775 2950
F 0 "#PWR0123" H 1775 2700 50  0001 C CNN
F 1 "GND" H 1780 2777 50  0001 C CNN
F 2 "" H 1775 2950 50  0001 C CNN
F 3 "" H 1775 2950 50  0001 C CNN
	1    1775 2950
	1    0    0    -1  
$EndComp
Text Label 1375 2350 1    50   ~ 0
VBUS
$Comp
L Connector_Generic:Conn_01x26 J3
U 1 1 6171DD94
P 8425 4775
F 0 "J3" H 8505 4767 50  0000 L CNN
F 1 "Conn_01x26" H 8505 4676 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x26_P2.54mm_Vertical" H 8425 4775 50  0001 C CNN
F 3 "~" H 8425 4775 50  0001 C CNN
	1    8425 4775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x26 J4
U 1 1 6171ECF3
P 8750 4775
F 0 "J4" H 8668 6192 50  0000 C CNN
F 1 "Conn_01x26" H 8668 6101 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x26_P2.54mm_Vertical" H 8750 4775 50  0001 C CNN
F 3 "~" H 8750 4775 50  0001 C CNN
	1    8750 4775
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J2
U 1 1 61759133
P 1125 7275
F 0 "J2" H 682 7321 50  0000 R CNN
F 1 "SWD" H 682 7230 50  0000 R CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical" H 1125 7275 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 775 6025 50  0001 C CNN
	1    1125 7275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 6175A310
P 1025 7875
F 0 "#PWR0108" H 1025 7625 50  0001 C CNN
F 1 "GND" H 1030 7702 50  0001 C CNN
F 2 "" H 1025 7875 50  0001 C CNN
F 3 "" H 1025 7875 50  0001 C CNN
	1    1025 7875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 6175A8B9
P 1125 7875
F 0 "#PWR0120" H 1125 7625 50  0001 C CNN
F 1 "GND" H 1130 7702 50  0001 C CNN
F 2 "" H 1125 7875 50  0001 C CNN
F 3 "" H 1125 7875 50  0001 C CNN
	1    1125 7875
	1    0    0    -1  
$EndComp
NoConn ~ 1625 7475
NoConn ~ 1625 7375
Wire Wire Line
	1775 6975 1625 6975
Wire Wire Line
	1625 7175 1775 7175
Wire Wire Line
	1775 7275 1625 7275
Text Label 8100 4675 2    50   ~ 0
VDDANA
Text Label 8100 4375 2    50   ~ 0
DAC.VOUT0
Text Label 8100 4475 2    50   ~ 0
ADC1.AIN6
Text Label 8100 4575 2    50   ~ 0
ADC1.AIN7
Text Label 8100 4775 2    50   ~ 0
ADC1.AIN8
Text Label 8100 4875 2    50   ~ 0
ADC1.AIN9
Text Label 8100 4975 2    50   ~ 0
ADC0.AIN2+ADC1.AIN0
Text Label 8100 5075 2    50   ~ 0
ADC0.AIN3+ADC1.AIN1
Text Label 8100 5175 2    50   ~ 0
ADC0.AIN4+ANAREF.VREF1
Text Label 8100 5275 2    50   ~ 0
DAC.VOUT1
Text Label 8100 5375 2    50   ~ 0
ADC0.AIN6+ANAREF.VREF2
Text Label 8100 5475 2    50   ~ 0
ADC0.AIN7
Text Label 8100 4275 2    50   ~ 0
ADC0.AIN15
Text Label 8100 4175 2    50   ~ 0
ADC0.AIN14
Text Label 8100 4075 2    50   ~ 0
ADC0.AIN13
Text Label 8100 3975 2    50   ~ 0
ADC0.AIN12
Text Label 8100 3875 2    50   ~ 0
SERCOM5.0
Text Label 8100 3775 2    50   ~ 0
SERCOM5.1
Text Label 8100 5575 2    50   ~ 0
ADC0.AIN8+ADC1.AIN2
Text Label 8100 5675 2    50   ~ 0
ADC0.AIN9+ADC1.AIN3
Text Label 8100 5775 2    50   ~ 0
ADC0.AIN10
Text Label 8100 5875 2    50   ~ 0
ADC0.AIN11
Text Label 9075 4175 0    50   ~ 0
SERCOM3.1
Text Label 9075 4275 0    50   ~ 0
SERCOM3.0
Text Label 9075 4375 0    50   ~ 0
PA21
Text Label 9075 4475 0    50   ~ 0
PA20
Text Label 9075 4575 0    50   ~ 0
PA17
Text Label 9075 4675 0    50   ~ 0
PA16
Text Label 9075 4775 0    50   ~ 0
SERCOM1.3
Text Label 9075 4875 0    50   ~ 0
SERCOM1.2
Text Label 9075 4975 0    50   ~ 0
SERCOM1.1
Text Label 9075 5075 0    50   ~ 0
SERCOM1.0
Text Label 9075 3875 0    50   ~ 0
PA27
Text Label 9075 3975 0    50   ~ 0
PB23
Text Label 9075 4075 0    50   ~ 0
PB22
Text Label 8100 5975 2    50   ~ 0
PB10
Text Label 9075 5975 0    50   ~ 0
PB11
Text Label 9075 5875 0    50   ~ 0
SERCOM4.0
Text Label 9075 5775 0    50   ~ 0
SERCOM4.1
Text Label 9075 5675 0    50   ~ 0
SERCOM4.2
Text Label 9075 5575 0    50   ~ 0
SERCOM4.3
Text Label 9075 5475 0    50   ~ 0
SERCOM2.0
Text Label 9075 5375 0    50   ~ 0
SERCOM2.1
Text Label 9075 5275 0    50   ~ 0
SERCOM2.2
Text Label 9075 5175 0    50   ~ 0
SERCOM2.3
$Comp
L power:+3V3 #PWR0124
U 1 1 617C1048
P 9075 3775
F 0 "#PWR0124" H 9075 3625 50  0001 C CNN
F 1 "+3V3" V 9050 4000 50  0000 C CNN
F 2 "" H 9075 3775 50  0001 C CNN
F 3 "" H 9075 3775 50  0001 C CNN
	1    9075 3775
	0    1    1    0   
$EndComp
Text Label 9075 3675 0    50   ~ 0
VBUS
$Comp
L power:GND #PWR0125
U 1 1 617C19A7
P 8950 6075
F 0 "#PWR0125" H 8950 5825 50  0001 C CNN
F 1 "GND" H 8955 5902 50  0001 C CNN
F 2 "" H 8950 6075 50  0001 C CNN
F 3 "" H 8950 6075 50  0001 C CNN
	1    8950 6075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 617C2117
P 8225 6075
F 0 "#PWR0126" H 8225 5825 50  0001 C CNN
F 1 "GND" H 8230 5902 50  0001 C CNN
F 2 "" H 8225 6075 50  0001 C CNN
F 3 "" H 8225 6075 50  0001 C CNN
	1    8225 6075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 617C26FA
P 8950 3575
F 0 "#PWR0127" H 8950 3325 50  0001 C CNN
F 1 "GND" H 8955 3402 50  0001 C CNN
F 2 "" H 8950 3575 50  0001 C CNN
F 3 "" H 8950 3575 50  0001 C CNN
	1    8950 3575
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 617C341D
P 8225 3575
F 0 "#PWR0128" H 8225 3325 50  0001 C CNN
F 1 "GND" H 8230 3402 50  0001 C CNN
F 2 "" H 8225 3575 50  0001 C CNN
F 3 "" H 8225 3575 50  0001 C CNN
	1    8225 3575
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR0129
U 1 1 617C3F47
P 8100 3675
F 0 "#PWR0129" H 8100 3525 50  0001 C CNN
F 1 "+3V3" V 8125 3900 50  0000 C CNN
F 2 "" H 8100 3675 50  0001 C CNN
F 3 "" H 8100 3675 50  0001 C CNN
	1    8100 3675
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 3675 8225 3675
Wire Wire Line
	8225 3775 8100 3775
Wire Wire Line
	8100 3875 8225 3875
Wire Wire Line
	8225 3975 8100 3975
Wire Wire Line
	8100 4075 8225 4075
Wire Wire Line
	8225 4175 8100 4175
Wire Wire Line
	8100 4275 8225 4275
Wire Wire Line
	8225 4375 8100 4375
Wire Wire Line
	8100 4475 8225 4475
Wire Wire Line
	8100 4575 8225 4575
Wire Wire Line
	8100 4675 8225 4675
Wire Wire Line
	8100 4775 8225 4775
Wire Wire Line
	8225 4875 8100 4875
Wire Wire Line
	8100 4975 8225 4975
Wire Wire Line
	8100 5075 8225 5075
Wire Wire Line
	8225 5175 8100 5175
Wire Wire Line
	8100 5275 8225 5275
Wire Wire Line
	8225 5375 8100 5375
Wire Wire Line
	8100 5475 8225 5475
Wire Wire Line
	8100 5575 8225 5575
Wire Wire Line
	8100 5675 8225 5675
Wire Wire Line
	8225 5775 8100 5775
Wire Wire Line
	8100 5875 8225 5875
Wire Wire Line
	8225 5975 8100 5975
Wire Wire Line
	8950 3675 9075 3675
Wire Wire Line
	9075 3775 8950 3775
Wire Wire Line
	8950 3875 9075 3875
Wire Wire Line
	9075 3975 8950 3975
Wire Wire Line
	9075 4075 8950 4075
Wire Wire Line
	8950 4175 9075 4175
Wire Wire Line
	9075 4275 8950 4275
Wire Wire Line
	8950 4375 9075 4375
Wire Wire Line
	9075 4475 8950 4475
Wire Wire Line
	8950 4575 9075 4575
Wire Wire Line
	9075 4675 8950 4675
Wire Wire Line
	8950 4775 9075 4775
Wire Wire Line
	9075 4875 8950 4875
Wire Wire Line
	8950 4975 9075 4975
Wire Wire Line
	9075 5075 8950 5075
Wire Wire Line
	8950 5175 9075 5175
Wire Wire Line
	9075 5275 8950 5275
Wire Wire Line
	8950 5375 9075 5375
Wire Wire Line
	9075 5475 8950 5475
Wire Wire Line
	8950 5575 9075 5575
Wire Wire Line
	9075 5675 8950 5675
Wire Wire Line
	8950 5775 9075 5775
Wire Wire Line
	9075 5875 8950 5875
Wire Wire Line
	8950 5975 9075 5975
Text Label 1775 2350 1    50   ~ 0
PA27
$EndSCHEMATC
