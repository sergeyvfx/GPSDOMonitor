EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Microcontroller:PIC18LF2550-ISO U1
U 1 1 604E2F5D
P 4750 3650
F 0 "U1" H 5050 4600 50  0000 L BNN
F 1 "PIC18LF2550-ISO" H 5050 4500 50  0000 L BNN
F 2 "Package_SO:SOIC-28_Width7.50mm_Pitch1.27mm" H 6200 4600 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/39632e.pdf" H 6200 4600 50  0001 C CNN
F 4 "IC MCU 8BIT 32KB FLASH 28SOIC" H 4750 3650 50  0001 C CNN "Description"
F 5 "PIC PIC® 18F Microcontroller IC 8-Bit 48MHz 32KB (16K x 16) FLASH 28-SOIC" H 4750 3650 50  0001 C CNN "Detailed Description"
F 6 "Microchip Technology" H 4750 3650 50  0001 C CNN "Manufacturer"
F 7 "PIC18F2550T-I/SO" H 4750 3650 50  0001 C CNN "Manufacturer Part Number"
F 8 "PIC18F2550T-I/SOCT-ND" H 4750 3650 50  0001 C CNN "Digi-Key Part Number"
	1    4750 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 604E4DC3
P 4700 4650
F 0 "#PWR02" H 4700 4400 50  0001 C CNN
F 1 "GND" H 4705 4477 50  0000 C CNN
F 2 "" H 4700 4650 50  0001 C CNN
F 3 "" H 4700 4650 50  0001 C CNN
	1    4700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4650 4700 4550
Wire Wire Line
	4800 4550 4700 4550
Connection ~ 4700 4550
$Comp
L power:+3V3 #PWR03
U 1 1 604E5FFA
P 4750 2650
F 0 "#PWR03" H 4750 2500 50  0001 C CNN
F 1 "+3V3" H 4765 2823 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2750 4750 2650
$Comp
L Crystal:ABM8W-20.0000MHZ-4-K1Z-T3 X1
U 1 1 604E2C84
P 2250 3900
F 0 "X1" H 2450 4050 50  0000 L CNN
F 1 "ABM8W-20.0000MHZ-4-K1Z-T3" H 2400 4175 50  0001 L BNN
F 2 "Crystal:Crystal_SMD_4Pin_3.2x2.5mm" H 2650 3900 50  0001 C CNN
F 3 "https://abracon.com/Resonators/ABM8W.pdf" H 2650 3900 50  0001 C CNN
F 4 "CRYSTAL 20.0000MHZ 4PF SMD" H 2250 3900 50  0001 C CNN "Description"
F 5 "20MHz ±10ppm Crystal 4pF 50 Ohms 4-SMD, No Lead" H 2250 3900 50  0001 C CNN "Detailed Description"
F 6 "Abracon LLC" H 2250 3900 50  0001 C CNN "Manufacturer"
F 7 "ABM8W-20.0000MHZ-4-K1Z-T3" H 2250 3900 50  0001 C CNN "Manufacturer Part Number"
F 8 "535-14037-1-ND" H 2250 3900 50  0001 C CNN "Digi-Key Part Number"
F 9 "20MHz" H 2450 3950 50  0000 L CNN "Frequency"
	1    2250 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3900 2550 3900
Wire Wire Line
	3350 3800 2750 3800
Wire Wire Line
	2750 3800 2750 3600
Wire Wire Line
	2250 3700 2250 3650
Wire Wire Line
	2050 3650 2050 4150
Wire Wire Line
	2050 4150 2250 4150
Wire Wire Line
	2250 4150 2250 4100
Wire Wire Line
	2050 3650 2250 3650
$Comp
L power:GND #PWR01
U 1 1 604E745B
P 2250 4300
F 0 "#PWR01" H 2250 4050 50  0001 C CNN
F 1 "GND" H 2255 4127 50  0000 C CNN
F 2 "" H 2250 4300 50  0001 C CNN
F 3 "" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
Connection ~ 2250 4150
$Comp
L Capacitor_Ceramic:CBR04C409B5GAC C1
U 1 1 604E374B
P 1700 4100
F 0 "C1" V 1654 4235 50  0000 L CNN
F 1 "CBR04C409B5GAC" H 1550 4200 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 1550 4300 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1030_CBR_SMD.pdf" H 1550 4300 50  0001 C CNN
F 4 "CAP CER 4PF 50V C0G/NP0 0402" H 1700 4100 50  0001 C CNN "Description"
F 5 "4pF ±0.1pF 50V Ceramic Capacitor C0G, NP0 0402 (1005 Metric)" H 1700 4100 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 1700 4100 50  0001 C CNN "Manufacturer"
F 7 "CBR04C409B5GAC" H 1700 4100 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-13246-1-ND" H 1700 4100 50  0001 C CNN "Digi-Key Part Number"
F 9 "4 pF" V 1745 4235 50  0000 L CNN "Capacitance"
	1    1700 4100
	0    1    1    0   
$EndComp
$Comp
L Capacitor_Ceramic:CBR04C409B5GAC C2
U 1 1 604E4BEB
P 2550 4100
F 0 "C2" V 2504 4235 50  0000 L CNN
F 1 "CBR04C409B5GAC" H 2400 4200 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 2400 4300 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1030_CBR_SMD.pdf" H 2400 4300 50  0001 C CNN
F 4 "CAP CER 4PF 50V C0G/NP0 0402" H 2550 4100 50  0001 C CNN "Description"
F 5 "4pF ±0.1pF 50V Ceramic Capacitor C0G, NP0 0402 (1005 Metric)" H 2550 4100 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 2550 4100 50  0001 C CNN "Manufacturer"
F 7 "CBR04C409B5GAC" H 2550 4100 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-13246-1-ND" H 2550 4100 50  0001 C CNN "Digi-Key Part Number"
F 9 "4 pF" V 2595 4235 50  0000 L CNN "Capacitance"
	1    2550 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 3600 1700 3900
Wire Wire Line
	1700 3600 2750 3600
Wire Wire Line
	1700 3900 2100 3900
Connection ~ 1700 3900
Wire Wire Line
	1700 3900 1700 3950
Wire Wire Line
	2550 3950 2550 3900
Connection ~ 2550 3900
Wire Wire Line
	2550 3900 3350 3900
$Comp
L power:GND #PWR05
U 1 1 604E699A
P 2550 4300
F 0 "#PWR05" H 2550 4050 50  0001 C CNN
F 1 "GND" H 2555 4127 50  0000 C CNN
F 2 "" H 2550 4300 50  0001 C CNN
F 3 "" H 2550 4300 50  0001 C CNN
	1    2550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 604E7035
P 1700 4300
F 0 "#PWR04" H 1700 4050 50  0001 C CNN
F 1 "GND" H 1705 4127 50  0000 C CNN
F 2 "" H 1700 4300 50  0001 C CNN
F 3 "" H 1700 4300 50  0001 C CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4250 1700 4300
Wire Wire Line
	2250 4150 2250 4300
Wire Wire Line
	2550 4250 2550 4300
$Comp
L power:+5V #PWR0101
U 1 1 6055F980
P 7850 2800
F 0 "#PWR0101" H 7850 2650 50  0001 C CNN
F 1 "+5V" H 7865 2973 50  0000 C CNN
F 2 "" H 7850 2800 50  0001 C CNN
F 3 "" H 7850 2800 50  0001 C CNN
	1    7850 2800
	1    0    0    -1  
$EndComp
Text Notes 8640 3135 0    50   ~ 0
24
Text Notes 8640 3235 0    50   ~ 0
23
Text Notes 8640 3335 0    50   ~ 0
22
Text Notes 8640 3435 0    50   ~ 0
21
Text Notes 8640 3535 0    50   ~ 0
20
Text Notes 8640 3635 0    50   ~ 0
19
Text Notes 8640 3735 0    50   ~ 0
18
Text Notes 8640 3835 0    50   ~ 0
17
Text Notes 8640 3935 0    50   ~ 0
16
Text Notes 8640 4035 0    50   ~ 0
15
Text Notes 8640 4135 0    50   ~ 0
14
Text Notes 8640 4235 0    50   ~ 0
13
Text Notes 8640 4335 0    50   ~ 0
12
Text Notes 8640 4435 0    50   ~ 0
11
Text Notes 8640 4535 0    50   ~ 0
10
Text Notes 8640 4635 0    50   ~ 0
9
Text Notes 8640 4735 0    50   ~ 0
8
Text Notes 8640 4835 0    50   ~ 0
7
Text Notes 8640 4935 0    50   ~ 0
6
Text Notes 8640 5035 0    50   ~ 0
5
Text Notes 8640 5135 0    50   ~ 0
4
Text Notes 8640 5235 0    50   ~ 0
3
Text Notes 8640 5335 0    50   ~ 0
2
Text Notes 8640 5435 0    50   ~ 0
1
Wire Wire Line
	7850 2800 7850 3000
Text Notes 8465 3035 0    50   ~ 0
50
Text Notes 8465 3135 0    50   ~ 0
49
Text Notes 8465 3235 0    50   ~ 0
48
Text Notes 8465 3335 0    50   ~ 0
47
Text Notes 8465 3435 0    50   ~ 0
46
Text Notes 8465 3535 0    50   ~ 0
45
Text Notes 8465 3635 0    50   ~ 0
44
Text Notes 8465 3735 0    50   ~ 0
43
Text Notes 8465 3835 0    50   ~ 0
42
Text Notes 8465 3935 0    50   ~ 0
41
Text Notes 8465 4035 0    50   ~ 0
40
Text Notes 8465 4135 0    50   ~ 0
39
Text Notes 8465 4235 0    50   ~ 0
38
Text Notes 8465 4335 0    50   ~ 0
37
Text Notes 8465 4435 0    50   ~ 0
36
Text Notes 8465 4535 0    50   ~ 0
35
Text Notes 8465 4635 0    50   ~ 0
34
Text Notes 8465 4735 0    50   ~ 0
33
Text Notes 8465 4835 0    50   ~ 0
32
Text Notes 8465 4935 0    50   ~ 0
31
Text Notes 8465 5035 0    50   ~ 0
30
Text Notes 8465 5135 0    50   ~ 0
29
Text Notes 8465 5235 0    50   ~ 0
28
Text Notes 8465 5335 0    50   ~ 0
27
Text Notes 8465 5435 0    50   ~ 0
26
Wire Wire Line
	7850 3600 8200 3600
Wire Wire Line
	8200 3500 7850 3500
Connection ~ 7850 3500
Wire Wire Line
	7850 3500 7850 3600
Wire Wire Line
	8200 3400 7850 3400
Connection ~ 7850 3400
Wire Wire Line
	7850 3400 7850 3500
Wire Wire Line
	8200 3300 7850 3300
Connection ~ 7850 3300
Wire Wire Line
	7850 3300 7850 3400
Wire Wire Line
	8200 3200 7850 3200
Connection ~ 7850 3200
Wire Wire Line
	7850 3200 7850 3300
Wire Wire Line
	8200 3100 7850 3100
Connection ~ 7850 3100
Wire Wire Line
	7850 3100 7850 3200
Wire Wire Line
	8200 3000 7850 3000
Connection ~ 7850 3000
Wire Wire Line
	7850 3000 7850 3100
Text Notes 8640 3035 0    50   ~ 0
25
$Comp
L Connector_Data:F31S-1A7L1-11050 J1
U 1 1 6055EFBD
P 8600 2850
F 0 "J1" H 8600 2965 50  0000 C CNN
F 1 "F31S-1A7L1-11050" H 8600 2874 50  0000 C CNN
F 2 "Connector_Data:F31S-1A7L1-11050" H 8600 2850 50  0001 C CNN
F 3 "https://www.amphenol-icc.com/media/wysiwyg/files/documentation/datasheet/flex/ffc_fpc_050mm_f31s.pdf" H 8600 2850 50  0001 C CNN
F 4 "FLEX CONNECTOR, 0.50MM PITCH, HE" H 8600 2850 50  0001 C CNN "Description"
F 5 "50 Position FFC, FPC Connector Contacts, Vertical - 1 Sided 0.020\" (0.50mm) Surface Mount" H 8600 2850 50  0001 C CNN "Detailed Description"
F 6 "Amphenol ICC (FCI)" H 8600 2850 50  0001 C CNN "Manufacturer"
F 7 "F31S-1A7L1-11050" H 8600 2850 50  0001 C CNN "Manufacturer Part Number"
F 8 "609-F31S-1A7L1-11050CT-ND" H 8600 2850 50  0001 C CNN "Digi-Key Part Number"
F 9 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/f31s.pdf" H 8600 2850 50  0001 C CNN "Drawing"
	1    8600 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3800 7850 3800
Wire Wire Line
	7850 3800 7850 3900
Wire Wire Line
	8200 3900 7850 3900
Connection ~ 7850 3900
Wire Wire Line
	7850 3900 7850 4000
Wire Wire Line
	8200 4000 7850 4000
Connection ~ 7850 4000
Wire Wire Line
	7850 4000 7850 4200
Wire Wire Line
	8200 4200 7850 4200
Connection ~ 7850 4200
Wire Wire Line
	7850 4200 7850 4500
Wire Wire Line
	8200 4500 7850 4500
Connection ~ 7850 4500
Wire Wire Line
	7850 4500 7850 4800
Wire Wire Line
	8200 4800 7850 4800
Connection ~ 7850 4800
Wire Wire Line
	7850 4800 7850 5000
Wire Wire Line
	8200 5000 7850 5000
Connection ~ 7850 5000
Wire Wire Line
	7850 5000 7850 5200
Wire Wire Line
	8200 5200 7850 5200
Connection ~ 7850 5200
Wire Wire Line
	7850 5200 7850 5400
Wire Wire Line
	8200 5400 7850 5400
Connection ~ 7850 5400
Wire Wire Line
	7850 5400 7850 5550
$Comp
L power:GND #PWR0102
U 1 1 6057C2D6
P 7850 5550
F 0 "#PWR0102" H 7850 5300 50  0001 C CNN
F 1 "GND" H 7855 5377 50  0000 C CNN
F 2 "" H 7850 5550 50  0001 C CNN
F 3 "" H 7850 5550 50  0001 C CNN
	1    7850 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6058360B
P 9400 5550
F 0 "#PWR0103" H 9400 5300 50  0001 C CNN
F 1 "GND" H 9405 5377 50  0000 C CNN
F 2 "" H 9400 5550 50  0001 C CNN
F 3 "" H 9400 5550 50  0001 C CNN
	1    9400 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5400 9400 5550
Wire Wire Line
	9000 5400 9400 5400
Wire Wire Line
	9000 5200 9400 5200
Wire Wire Line
	9400 5200 9400 5400
Connection ~ 9400 5400
Wire Wire Line
	9000 5000 9400 5000
Wire Wire Line
	9400 5000 9400 5200
Connection ~ 9400 5200
Wire Wire Line
	9000 4800 9400 4800
Wire Wire Line
	9400 4800 9400 5000
Connection ~ 9400 5000
Wire Wire Line
	9000 4600 9400 4600
Wire Wire Line
	9400 4600 9400 4800
Connection ~ 9400 4800
Wire Wire Line
	9000 4400 9400 4400
Wire Wire Line
	9400 4400 9400 4600
Connection ~ 9400 4600
Wire Wire Line
	9000 3800 9400 3800
Wire Wire Line
	9400 3800 9400 4400
Connection ~ 9400 4400
Wire Wire Line
	9000 3500 9400 3500
Wire Wire Line
	9400 3500 9400 3800
Connection ~ 9400 3800
Wire Wire Line
	9000 3300 9400 3300
Wire Wire Line
	9400 3300 9400 3500
Connection ~ 9400 3500
Wire Wire Line
	9000 3100 9400 3100
Wire Wire Line
	9400 3100 9400 3300
Connection ~ 9400 3300
Wire Wire Line
	9000 5300 9900 5300
Text GLabel 9900 5300 2    50   Input ~ 0
UART4_TX
Text GLabel 9900 3400 2    50   Input ~ 0
PP2S
Wire Wire Line
	9000 3400 9900 3400
Text GLabel 9900 3200 2    50   Input ~ 0
10MHz
Wire Wire Line
	9000 3200 9900 3200
Text GLabel 7550 4700 0    50   Input ~ 0
UART2_RxD_HV
Wire Wire Line
	8200 4700 7550 4700
Text GLabel 7550 4600 0    50   Input ~ 0
UART2_TxD_HV
Wire Wire Line
	8200 4600 7550 4600
Text GLabel 7550 4400 0    50   Input ~ 0
UART3_RxD
Text GLabel 7550 4300 0    50   Input ~ 0
UART3_TxD
Wire Wire Line
	7550 4300 8200 4300
Wire Wire Line
	8200 4400 7550 4400
Text Notes 9200 3000 0    50   ~ 0
NOTE: The blue numbers are the\npin numbers on the GPSDO side.
$EndSCHEMATC
