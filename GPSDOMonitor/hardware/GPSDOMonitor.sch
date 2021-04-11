EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Microcontroller:PIC18LF2550-ISO U3
U 1 1 604E2F5D
P 4050 2100
F 0 "U3" H 4350 3050 50  0000 L BNN
F 1 "PIC18LF2550-ISO" H 4350 2950 50  0000 L BNN
F 2 "Package_SO:SOIC-28_Width7.50mm_Pitch1.27mm" H 5500 3050 50  0001 C CNN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/39632e.pdf" H 5500 3050 50  0001 C CNN
F 4 "IC MCU 8BIT 32KB FLASH 28SOIC" H 4050 2100 50  0001 C CNN "Description"
F 5 "PIC PIC® 18F Microcontroller IC 8-Bit 48MHz 32KB (16K x 16) FLASH 28-SOIC" H 4050 2100 50  0001 C CNN "Detailed Description"
F 6 "Microchip Technology" H 4050 2100 50  0001 C CNN "Manufacturer"
F 7 "PIC18F2550T-I/SO" H 4050 2100 50  0001 C CNN "Manufacturer Part Number"
F 8 "PIC18F2550T-I/SOCT-ND" H 4050 2100 50  0001 C CNN "Digi-Key Part Number"
	1    4050 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3100 4000 3000
Wire Wire Line
	4100 3000 4000 3000
Connection ~ 4000 3000
Wire Wire Line
	4050 1200 4050 1100
$Comp
L Crystal:ABM8W-20.0000MHZ-4-K1Z-T3 X1
U 1 1 604E2C84
P 1550 2350
F 0 "X1" H 1750 2500 50  0000 L CNN
F 1 "ABM8W-20.0000MHZ-4-K1Z-T3" H 1700 2625 50  0001 L BNN
F 2 "Crystal:Crystal_SMD_4Pin_3.2x2.5mm" H 1950 2350 50  0001 C CNN
F 3 "https://abracon.com/Resonators/ABM8W.pdf" H 1950 2350 50  0001 C CNN
F 4 "CRYSTAL 20.0000MHZ 4PF SMD" H 1550 2350 50  0001 C CNN "Description"
F 5 "20MHz ±10ppm Crystal 4pF 50 Ohms 4-SMD, No Lead" H 1550 2350 50  0001 C CNN "Detailed Description"
F 6 "Abracon LLC" H 1550 2350 50  0001 C CNN "Manufacturer"
F 7 "ABM8W-20.0000MHZ-4-K1Z-T3" H 1550 2350 50  0001 C CNN "Manufacturer Part Number"
F 8 "535-14037-1-ND" H 1550 2350 50  0001 C CNN "Digi-Key Part Number"
F 9 "20MHz" H 1750 2400 50  0000 L CNN "Frequency"
	1    1550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2350 1850 2350
Wire Wire Line
	2650 2250 2050 2250
Wire Wire Line
	2050 2250 2050 2050
Wire Wire Line
	1550 2150 1550 2100
Wire Wire Line
	1350 2100 1350 2600
Wire Wire Line
	1350 2600 1550 2600
Wire Wire Line
	1550 2600 1550 2550
Wire Wire Line
	1350 2100 1550 2100
Connection ~ 1550 2600
$Comp
L Capacitor_Ceramic:CBR04C409B5GAC C1
U 1 1 604E374B
P 1000 2550
F 0 "C1" V 954 2685 50  0000 L CNN
F 1 "CBR04C409B5GAC" H 850 2650 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 850 2750 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1030_CBR_SMD.pdf" H 850 2750 50  0001 C CNN
F 4 "CAP CER 4PF 50V C0G/NP0 0402" H 1000 2550 50  0001 C CNN "Description"
F 5 "4pF ±0.1pF 50V Ceramic Capacitor C0G, NP0 0402 (1005 Metric)" H 1000 2550 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 1000 2550 50  0001 C CNN "Manufacturer"
F 7 "CBR04C409B5GAC" H 1000 2550 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-13246-1-ND" H 1000 2550 50  0001 C CNN "Digi-Key Part Number"
F 9 "4pF" V 1045 2685 50  0000 L CNN "Capacitance"
F 10 "RF, Microwave, High Frequency" H 1000 2550 50  0001 C CNN "Applications"
F 11 "High Q, Low Loss, Ultra Low ESR" H 1000 2550 50  0001 C CNN "Features"
F 12 "Surface Mount, MLCC" H 1000 2550 50  0001 C CNN "Mounting Type"
F 13 "-55°C ~ 125°C" H 1000 2550 50  0001 C CNN "Operating Temperature"
F 14 "0402 (1005 Metric)" H 1000 2550 50  0001 C CNN "Package / Case"
F 15 "Cut Tape (CT)" H 1000 2550 50  0001 C CNN "Packaging"
F 16 "CBR-SMD RF C0G" H 1000 2550 50  0001 C CNN "Series"
F 17 "C0G, NP0" H 1000 2550 50  0001 C CNN "Temperature Coefficient"
F 18 "±0.1pF" H 1000 2550 50  0001 C CNN "Tolerance"
F 19 "50V" H 1000 2550 50  0001 C CNN "Voltage - Rated"
	1    1000 2550
	0    1    1    0   
$EndComp
$Comp
L Capacitor_Ceramic:CBR04C409B5GAC C4
U 1 1 604E4BEB
P 1850 2550
F 0 "C4" V 1804 2685 50  0000 L CNN
F 1 "CBR04C409B5GAC" H 1700 2650 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 1700 2750 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1030_CBR_SMD.pdf" H 1700 2750 50  0001 C CNN
F 4 "CAP CER 4PF 50V C0G/NP0 0402" H 1850 2550 50  0001 C CNN "Description"
F 5 "4pF ±0.1pF 50V Ceramic Capacitor C0G, NP0 0402 (1005 Metric)" H 1850 2550 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 1850 2550 50  0001 C CNN "Manufacturer"
F 7 "CBR04C409B5GAC" H 1850 2550 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-13246-1-ND" H 1850 2550 50  0001 C CNN "Digi-Key Part Number"
F 9 "4pF" V 1895 2685 50  0000 L CNN "Capacitance"
F 10 "RF, Microwave, High Frequency" H 1850 2550 50  0001 C CNN "Applications"
F 11 "High Q, Low Loss, Ultra Low ESR" H 1850 2550 50  0001 C CNN "Features"
F 12 "Surface Mount, MLCC" H 1850 2550 50  0001 C CNN "Mounting Type"
F 13 "-55°C ~ 125°C" H 1850 2550 50  0001 C CNN "Operating Temperature"
F 14 "0402 (1005 Metric)" H 1850 2550 50  0001 C CNN "Package / Case"
F 15 "Cut Tape (CT)" H 1850 2550 50  0001 C CNN "Packaging"
F 16 "CBR-SMD RF C0G" H 1850 2550 50  0001 C CNN "Series"
F 17 "C0G, NP0" H 1850 2550 50  0001 C CNN "Temperature Coefficient"
F 18 "±0.1pF" H 1850 2550 50  0001 C CNN "Tolerance"
F 19 "50V" H 1850 2550 50  0001 C CNN "Voltage - Rated"
	1    1850 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 2050 1000 2350
Wire Wire Line
	1000 2050 2050 2050
Wire Wire Line
	1000 2350 1400 2350
Connection ~ 1000 2350
Wire Wire Line
	1000 2350 1000 2400
Wire Wire Line
	1850 2400 1850 2350
Connection ~ 1850 2350
Wire Wire Line
	1850 2350 2650 2350
Wire Wire Line
	1000 2700 1000 2750
Wire Wire Line
	1550 2600 1550 2750
Wire Wire Line
	1850 2700 1850 2750
Text Notes 12740 1435 0    50   ~ 0
24
Text Notes 12740 1535 0    50   ~ 0
23
Text Notes 12740 1635 0    50   ~ 0
22
Text Notes 12740 1735 0    50   ~ 0
21
Text Notes 12740 1835 0    50   ~ 0
20
Text Notes 12740 1935 0    50   ~ 0
19
Text Notes 12740 2035 0    50   ~ 0
18
Text Notes 12740 2135 0    50   ~ 0
17
Text Notes 12740 2235 0    50   ~ 0
16
Text Notes 12740 2335 0    50   ~ 0
15
Text Notes 12740 2435 0    50   ~ 0
14
Text Notes 12740 2535 0    50   ~ 0
13
Text Notes 12740 2635 0    50   ~ 0
12
Text Notes 12740 2735 0    50   ~ 0
11
Text Notes 12740 2835 0    50   ~ 0
10
Text Notes 12740 2935 0    50   ~ 0
9
Text Notes 12740 3035 0    50   ~ 0
8
Text Notes 12740 3135 0    50   ~ 0
7
Text Notes 12740 3235 0    50   ~ 0
6
Text Notes 12740 3335 0    50   ~ 0
5
Text Notes 12740 3435 0    50   ~ 0
4
Text Notes 12740 3535 0    50   ~ 0
3
Text Notes 12740 3635 0    50   ~ 0
2
Text Notes 12740 3735 0    50   ~ 0
1
Wire Wire Line
	11950 1100 11950 1300
Text Notes 12565 1335 0    50   ~ 0
50
Text Notes 12565 1435 0    50   ~ 0
49
Text Notes 12565 1535 0    50   ~ 0
48
Text Notes 12565 1635 0    50   ~ 0
47
Text Notes 12565 1735 0    50   ~ 0
46
Text Notes 12565 1835 0    50   ~ 0
45
Text Notes 12565 1935 0    50   ~ 0
44
Text Notes 12565 2035 0    50   ~ 0
43
Text Notes 12565 2135 0    50   ~ 0
42
Text Notes 12565 2235 0    50   ~ 0
41
Text Notes 12565 2335 0    50   ~ 0
40
Text Notes 12565 2435 0    50   ~ 0
39
Text Notes 12565 2535 0    50   ~ 0
38
Text Notes 12565 2635 0    50   ~ 0
37
Text Notes 12565 2735 0    50   ~ 0
36
Text Notes 12565 2835 0    50   ~ 0
35
Text Notes 12565 2935 0    50   ~ 0
34
Text Notes 12565 3035 0    50   ~ 0
33
Text Notes 12565 3135 0    50   ~ 0
32
Text Notes 12565 3235 0    50   ~ 0
31
Text Notes 12565 3335 0    50   ~ 0
30
Text Notes 12565 3435 0    50   ~ 0
29
Text Notes 12565 3535 0    50   ~ 0
28
Text Notes 12565 3635 0    50   ~ 0
27
Text Notes 12565 3735 0    50   ~ 0
26
Wire Wire Line
	11950 1900 12300 1900
Wire Wire Line
	12300 1800 11950 1800
Connection ~ 11950 1800
Wire Wire Line
	11950 1800 11950 1900
Wire Wire Line
	12300 1700 11950 1700
Connection ~ 11950 1700
Wire Wire Line
	11950 1700 11950 1800
Wire Wire Line
	12300 1600 11950 1600
Connection ~ 11950 1600
Wire Wire Line
	11950 1600 11950 1700
Wire Wire Line
	12300 1500 11950 1500
Connection ~ 11950 1500
Wire Wire Line
	11950 1500 11950 1600
Wire Wire Line
	12300 1400 11950 1400
Connection ~ 11950 1400
Wire Wire Line
	11950 1400 11950 1500
Wire Wire Line
	12300 1300 11950 1300
Connection ~ 11950 1300
Wire Wire Line
	11950 1300 11950 1400
Text Notes 12740 1335 0    50   ~ 0
25
$Comp
L Connector_Data:F31S-1A7L1-11050 J1
U 1 1 6055EFBD
P 12700 1150
F 0 "J1" H 12700 1265 50  0000 C CNN
F 1 "F31S-1A7L1-11050" H 12700 1174 50  0000 C CNN
F 2 "Connector_Data:F31S-1A7L1-11050" H 12700 1150 50  0001 C CNN
F 3 "https://www.amphenol-icc.com/media/wysiwyg/files/documentation/datasheet/flex/ffc_fpc_050mm_f31s.pdf" H 12700 1150 50  0001 C CNN
F 4 "FLEX CONNECTOR, 0.50MM PITCH, HE" H 12700 1150 50  0001 C CNN "Description"
F 5 "50 Position FFC, FPC Connector Contacts, Vertical - 1 Sided 0.020\" (0.50mm) Surface Mount" H 12700 1150 50  0001 C CNN "Detailed Description"
F 6 "Amphenol ICC (FCI)" H 12700 1150 50  0001 C CNN "Manufacturer"
F 7 "F31S-1A7L1-11050" H 12700 1150 50  0001 C CNN "Manufacturer Part Number"
F 8 "609-F31S-1A7L1-11050CT-ND" H 12700 1150 50  0001 C CNN "Digi-Key Part Number"
F 9 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/f31s.pdf" H 12700 1150 50  0001 C CNN "Drawing"
F 10 "Black" H 12700 1150 50  0001 C CNN "Actuator Color"
F 11 "Liquid Crystal Polymer (LCP), Glass Filled" H 12700 1150 50  0001 C CNN "Actuator Material"
F 12 "F31S-1A7L1" H 12700 1150 50  0001 C CNN "Base Part Number"
F 13 "Notched or Tabbed" H 12700 1150 50  0001 C CNN "Cable End Type"
F 14 "Contacts, Vertical - 1 Sided" H 12700 1150 50  0001 C CNN "Connector/Contact Type"
F 15 "Gold" H 12700 1150 50  0001 C CNN "Contact Finish"
F 16 "1.97µin (0.050µm)" H 12700 1150 50  0001 C CNN "Contact Finish Thickness"
F 17 "Phosphor Bronze" H 12700 1150 50  0001 C CNN "Contact Material"
F 18 "0.5A" H 12700 1150 50  0001 C CNN "Current Rating (Amps)"
F 19 "0.30mm" H 12700 1150 50  0001 C CNN "FFC, FCB Thickness"
F 20 "Solder Retention, Zero Insertion Force (ZIF)" H 12700 1150 50  0001 C CNN "Features"
F 21 "FFC, FPC" H 12700 1150 50  0001 C CNN "Flat Flex Type"
F 22 "0.228\" (5.80mm)" H 12700 1150 50  0001 C CNN "Height Above Board"
F 23 "Natural" H 12700 1150 50  0001 C CNN "Housing Color"
F 24 "Liquid Crystal Polymer (LCP), Glass Filled" H 12700 1150 50  0001 C CNN "Housing Material"
F 25 "Flip Lock" H 12700 1150 50  0001 C CNN "Locking Feature"
F 26 "UL94 V-0" H 12700 1150 50  0001 C CNN "Material Flammability Rating"
F 27 "30" H 12700 1150 50  0001 C CNN "Mating Cycles"
F 28 "Surface Mount" H 12700 1150 50  0001 C CNN "Mounting Type"
F 29 "50" H 12700 1150 50  0001 C CNN "Number of Positions"
F 30 "-40°C ~ 105°C" H 12700 1150 50  0001 C CNN "Operating Temperature"
F 31 "Cut Tape (CT)" H 12700 1150 50  0001 C CNN "Packaging"
F 32 "0.020\" (0.50mm)" H 12700 1150 50  0001 C CNN "Pitch"
F 33 "Aorora F31S" H 12700 1150 50  0001 C CNN "Series"
F 34 "Solder" H 12700 1150 50  0001 C CNN "Termination"
F 35 "50V" H 12700 1150 50  0001 C CNN "Voltage Rating"
	1    12700 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	12300 2100 11950 2100
Wire Wire Line
	11950 2100 11950 2200
Wire Wire Line
	12300 2200 11950 2200
Connection ~ 11950 2200
Wire Wire Line
	11950 2200 11950 2300
Wire Wire Line
	12300 2300 11950 2300
Connection ~ 11950 2300
Wire Wire Line
	11950 2300 11950 2500
Wire Wire Line
	12300 2500 11950 2500
Connection ~ 11950 2500
Wire Wire Line
	11950 2500 11950 2800
Wire Wire Line
	12300 2800 11950 2800
Connection ~ 11950 2800
Wire Wire Line
	11950 2800 11950 3100
Wire Wire Line
	12300 3100 11950 3100
Connection ~ 11950 3100
Wire Wire Line
	11950 3100 11950 3300
Wire Wire Line
	12300 3300 11950 3300
Connection ~ 11950 3300
Wire Wire Line
	11950 3300 11950 3500
Wire Wire Line
	12300 3500 11950 3500
Connection ~ 11950 3500
Wire Wire Line
	11950 3500 11950 3700
Wire Wire Line
	12300 3700 11950 3700
Connection ~ 11950 3700
Wire Wire Line
	11950 3700 11950 3850
Wire Wire Line
	13500 3700 13500 3850
Wire Wire Line
	13100 3700 13500 3700
Wire Wire Line
	13100 3500 13500 3500
Wire Wire Line
	13500 3500 13500 3700
Connection ~ 13500 3700
Wire Wire Line
	13100 3300 13500 3300
Wire Wire Line
	13500 3300 13500 3500
Connection ~ 13500 3500
Wire Wire Line
	13100 3100 13500 3100
Wire Wire Line
	13500 3100 13500 3300
Connection ~ 13500 3300
Wire Wire Line
	13100 2900 13500 2900
Wire Wire Line
	13500 2900 13500 3100
Connection ~ 13500 3100
Wire Wire Line
	13100 2700 13500 2700
Wire Wire Line
	13500 2700 13500 2900
Connection ~ 13500 2900
Wire Wire Line
	13100 2100 13500 2100
Wire Wire Line
	13500 2100 13500 2700
Connection ~ 13500 2700
Wire Wire Line
	13100 1800 13500 1800
Wire Wire Line
	13500 1800 13500 2100
Connection ~ 13500 2100
Wire Wire Line
	13100 1600 13500 1600
Wire Wire Line
	13500 1600 13500 1800
Connection ~ 13500 1800
Wire Wire Line
	13100 1400 13500 1400
Wire Wire Line
	13500 1400 13500 1600
Connection ~ 13500 1600
Wire Wire Line
	13100 3600 14000 3600
Text GLabel 14000 3600 2    50   Output ~ 0
UART4_TX
Text GLabel 14000 1700 2    50   Output ~ 0
PP2S
Wire Wire Line
	13100 1700 14000 1700
Text GLabel 14000 1500 2    50   Output ~ 0
10MHz
Wire Wire Line
	13100 1500 14000 1500
Text GLabel 11650 3000 0    50   Input ~ 0
UART2_RxD_HV
Wire Wire Line
	12300 3000 11650 3000
Text GLabel 11650 2900 0    50   Output ~ 0
UART2_TxD_HV
Wire Wire Line
	12300 2900 11650 2900
Text GLabel 11650 2700 0    50   Input ~ 0
UART3_RxD
Text GLabel 11650 2600 0    50   Output ~ 0
UART3_TxD
Wire Wire Line
	11650 2600 12300 2600
Wire Wire Line
	12300 2700 11650 2700
Text Notes 13300 1300 0    50   ~ 0
NOTE: The blue numbers are the\npin numbers on the GPSDO side.
Text GLabel 5800 1750 2    50   Input ~ 0
UART4_TX
Wire Wire Line
	5450 1750 5800 1750
Text GLabel 5800 2450 2    50   Input ~ 0
UART3_TxD
Wire Wire Line
	5450 2450 5800 2450
$Comp
L Power:+5V5 #PWR022
U 1 1 605767A4
P 11950 1100
F 0 "#PWR022" H 11950 950 50  0001 C CNN
F 1 "+5V5" H 11965 1273 50  0000 C CNN
F 2 "" H 11950 1100 50  0001 C CNN
F 3 "" H 11950 1100 50  0001 C CNN
	1    11950 1100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR023
U 1 1 605774B0
P 11950 3850
F 0 "#PWR023" H 11950 3650 50  0001 C CNN
F 1 "GND" H 11955 3727 50  0000 C CNN
F 2 "" H 11950 3850 50  0001 C CNN
F 3 "" H 11950 3850 50  0001 C CNN
	1    11950 3850
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR024
U 1 1 60577A8A
P 13500 3850
F 0 "#PWR024" H 13500 3650 50  0001 C CNN
F 1 "GND" H 13505 3727 50  0000 C CNN
F 2 "" H 13500 3850 50  0001 C CNN
F 3 "" H 13500 3850 50  0001 C CNN
	1    13500 3850
	1    0    0    -1  
$EndComp
$Comp
L Power:+3V3 #PWR015
U 1 1 605784B5
P 4050 1100
F 0 "#PWR015" H 4050 950 50  0001 C CNN
F 1 "+3V3" H 4065 1273 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR013
U 1 1 60579084
P 4000 3100
F 0 "#PWR013" H 4000 2900 50  0001 C CNN
F 1 "GND" H 4005 2977 50  0000 C CNN
F 2 "" H 4000 3100 50  0001 C CNN
F 3 "" H 4000 3100 50  0001 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR06
U 1 1 60579C1D
P 1550 2750
F 0 "#PWR06" H 1550 2550 50  0001 C CNN
F 1 "GND" H 1555 2627 50  0000 C CNN
F 2 "" H 1550 2750 50  0001 C CNN
F 3 "" H 1550 2750 50  0001 C CNN
	1    1550 2750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR07
U 1 1 6057A5D9
P 1850 2750
F 0 "#PWR07" H 1850 2550 50  0001 C CNN
F 1 "GND" H 1855 2627 50  0000 C CNN
F 2 "" H 1850 2750 50  0001 C CNN
F 3 "" H 1850 2750 50  0001 C CNN
	1    1850 2750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR01
U 1 1 6057A9B4
P 1000 2750
F 0 "#PWR01" H 1000 2550 50  0001 C CNN
F 1 "GND" H 1005 2627 50  0000 C CNN
F 2 "" H 1000 2750 50  0001 C CNN
F 3 "" H 1000 2750 50  0001 C CNN
	1    1000 2750
	1    0    0    -1  
$EndComp
Text Notes 2300 8750 0    50   ~ 0
3.3v regulator
Text Notes 2300 7000 0    50   ~ 0
5.5v 3A regulator
Wire Wire Line
	4500 9900 4500 10350
$Comp
L Power:GND #PWR020
U 1 1 60591233
P 4500 10350
F 0 "#PWR020" H 4500 10150 50  0001 C CNN
F 1 "GND" H 4505 10227 50  0000 C CNN
F 2 "" H 4500 10350 50  0001 C CNN
F 3 "" H 4500 10350 50  0001 C CNN
	1    4500 10350
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:EMK212BB7106KG-T C10
U 1 1 6058E3E8
P 4500 9750
F 0 "C10" V 4454 9885 50  0000 L CNN
F 1 "EMK212BB7106KG-T" H 4350 9850 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0805_2012Metric" H 4350 9950 50  0001 C CNN
F 3 "https://www.yuden.co.jp/productdata/catalog/mlcc06_e.pdf" H 4350 9950 50  0001 C CNN
F 4 "CAP CER 10UF 16V X7R 0805" H 4500 9750 50  0001 C CNN "Description"
F 5 "10µF ±10% 16V Ceramic Capacitor X7R 0805 (2012 Metric)" H 4500 9750 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 4500 9750 50  0001 C CNN "Manufacturer"
F 7 "EMK212BB7106KG-T" H 4500 9750 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6139-1-ND" H 4500 9750 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 4545 9885 50  0000 L CNN "Capacitance"
F 10 "M" H 4500 9750 50  0001 C CNN "Series"
F 11 "Cut Tape (CT) " H 4500 9750 50  0001 C CNN "Packaging"
F 12 "±10%" H 4500 9750 50  0001 C CNN "Tolerance"
F 13 "16V" H 4500 9750 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 4500 9750 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 4500 9750 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 4500 9750 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 4500 9750 50  0001 C CNN "Mounting Type"
F 18 "0805 (2012 Metric)" H 4500 9750 50  0001 C CNN "Package / Case"
F 19 "0.079\" L x 0.049\" W (2.00mm x 1.25mm)" H 4500 9750 50  0001 C CNN "Size / Dimension"
F 20 "0.053\" (1.35mm)" H 4500 9750 50  0001 C CNN "Thickness (Max)"
	1    4500 9750
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 8950 4100 9450
Wire Wire Line
	3900 8950 4100 8950
Wire Wire Line
	3600 8950 3300 8950
$Comp
L Diode:1N914BWT D2
U 1 1 6057FC51
P 3750 8950
F 0 "D2" H 3750 9165 50  0000 C CNN
F 1 "1N914BWT" H 3750 9074 50  0000 C CNN
F 2 "Diode:SOD-523" H 3760 9100 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/bnxdzepaue/ONSM-S-A0003584797-1.pdf?t.download=true&u=5oefqw" H 3760 9100 50  0001 C CNN
F 4 "DIODE GEN PURP 75V 200MA SOD523F" H 3750 8950 50  0001 C CNN "Description"
F 5 "Diode Standard 75V 200mA Surface Mount SOD-523F" H 3750 8950 50  0001 C CNN "Detailed Description"
F 6 "ON Semiconductor" H 3750 8950 50  0001 C CNN "Manufacturer"
F 7 "1N914BWT" H 3750 8950 50  0001 C CNN "Manufacturer Part Number"
F 8 "1N914BWTCT-ND" H 3750 8950 50  0001 C CNN "Digi-Key Part Number"
F 9 "Cut Tape (CT) " H 3750 8950 50  0001 C CNN "Packaging"
F 10 "Standard" H 3750 8950 50  0001 C CNN "Diode Type"
F 11 "75V" H 3750 8950 50  0001 C CNN "Voltage - DC Reverse (Vr) (Max)"
F 12 "20mA" H 3750 8950 50  0001 C CNN "Current - Average Rectified (Io)"
F 13 "1V @ 100mA" H 3750 8950 50  0001 C CNN "Voltage - Forward (Vf) (Max) @ If"
F 14 "Small Signal =< 200mA (Io), Any Speed" H 3750 8950 50  0001 C CNN "Speed"
F 15 "4ns" H 3750 8950 50  0001 C CNN "Reverse Recovery Time (trr)"
F 16 "5µA @ 75V" H 3750 8950 50  0001 C CNN "Current - Reverse Leakage @ Vr"
F 17 "4pF @ 0V, 1MHz" H 3750 8950 50  0001 C CNN "Capacitance @ Vr, F"
F 18 "Surface Mount" H 3750 8950 50  0001 C CNN "Mounting Type"
F 19 "SC-79, SOD-523F" H 3750 8950 50  0001 C CNN "Package / Case"
F 20 "SOD-523F" H 3750 8950 50  0001 C CNN "Supplier Device Package"
F 21 "-55°C ~ 150°C" H 3750 8950 50  0001 C CNN "Operating Temperature - Junction"
F 22 "1N914B" H 3750 8950 50  0001 C CNN "Base Part Number"
	1    3750 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 9450 4500 9600
Wire Wire Line
	4500 9450 4500 9050
Connection ~ 4500 9450
Wire Wire Line
	4100 9450 4500 9450
$Comp
L Power:+3V3 #PWR019
U 1 1 6058B85F
P 4500 9050
F 0 "#PWR019" H 4500 8900 50  0001 C CNN
F 1 "+3V3" H 4515 9223 50  0000 C CNN
F 2 "" H 4500 9050 50  0001 C CNN
F 3 "" H 4500 9050 50  0001 C CNN
	1    4500 9050
	1    0    0    -1  
$EndComp
Connection ~ 4100 9450
Wire Wire Line
	4100 9450 4100 9600
Wire Wire Line
	4050 9450 4100 9450
Wire Wire Line
	3500 9450 3550 9450
$Comp
L Inductor:NR6028T150M L2
U 1 1 6057E0BB
P 3800 9450
F 0 "L2" H 3800 9665 50  0000 C CNN
F 1 "NR6028T150M" H 3800 9400 50  0001 C CNN
F 2 "Inductor:NR6028" H 3800 9450 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=NR6028T150M%20%20&u=M" H 3800 9450 50  0001 C CNN
F 4 "FIXED IND 15UH 1.8A 123.5 MOHM" H 3800 9450 50  0001 C CNN "Description"
F 5 "15µH Shielded Wirewound Inductor 1.8A 123.5mOhm Max Nonstandard" H 3800 9450 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 3800 9450 50  0001 C CNN "Manufacturer"
F 7 "NR6028T150M" H 3800 9450 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-2630-1-ND" H 3800 9450 50  0001 C CNN "Digi-Key Part Number"
F 9 "NR" H 3800 9450 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 3800 9450 50  0001 C CNN "Packaging"
F 11 "Wirewound" H 3800 9450 50  0001 C CNN "Type"
F 12 "Ferrite" H 3800 9450 50  0001 C CNN "Material - Core"
F 13 "15µH" H 3800 9550 50  0000 C CNN "Inductance"
F 14 "±20%" H 3800 9450 50  0001 C CNN "Tolerance"
F 15 "1.8A" H 3800 9450 50  0001 C CNN "Current Rating (Amps)"
F 16 "1.6A" H 3800 9450 50  0001 C CNN "Current - Saturation (Isat)"
F 17 "Shielded" H 3800 9450 50  0001 C CNN "Shielding"
F 18 "123.5mOhm Max" H 3800 9450 50  0001 C CNN "DC Resistance (DCR)"
F 19 "17MHz" H 3800 9450 50  0001 C CNN "Frequency - Self Resonant"
F 20 "-25°C ~ 120°C" H 3800 9450 50  0001 C CNN "Operating Temperature"
F 21 "100kHz" H 3800 9450 50  0001 C CNN "Inductance Frequency - Test"
F 22 "Surface Mount" H 3800 9450 50  0001 C CNN "Mounting Type"
F 23 "Nonstandard" H 3800 9450 50  0001 C CNN "Package / Case"
F 24 "0.236\" L x 0.236\" W (6.00mm x 6.00mm)" H 3800 9450 50  0001 C CNN "Size / Dimension"
F 25 "0.110\" (2.80mm)" H 3800 9450 50  0001 C CNN "Height - Seated (Max)"
	1    3800 9450
	1    0    0    -1  
$EndComp
$Comp
L Inductor:ASPI-7318-4R7M-T L1
U 1 1 6057DE98
P 3700 7450
F 0 "L1" H 3700 7665 50  0000 C CNN
F 1 "ASPI-7318-4R7M-T" H 3700 7400 50  0001 C CNN
F 2 "Inductor:ASPI-7318" H 3700 7450 50  0001 C CNN
F 3 "https://abracon.com/Magnetics/power/ASPI7318.pdf" H 3700 7450 50  0001 C CNN
F 4 "FIXED IND 4.7UH 6.2A 34.2 MOHM" H 3700 7450 50  0001 C CNN "Description"
F 5 "4.7µH Shielded Molded Inductor 6.2A 34.2mOhm Max Nonstandard" H 3700 7450 50  0001 C CNN "Detailed Description"
F 6 "Abracon LLC" H 3700 7450 50  0001 C CNN "Manufacturer"
F 7 "ASPI-7318-4R7M-T" H 3700 7450 50  0001 C CNN "Manufacturer Part Number"
F 8 "ASPI-7318-4R7M-TCT-ND" H 3700 7450 50  0001 C CNN "Digi-Key Part Number"
F 9 "https://abracon.com/Support/PackageDrawing/Magnetics/ASPI-7318.PDF" H 3700 7450 50  0001 C CNN "Drawing"
F 10 "ASPI-7318" H 3700 7450 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3700 7450 50  0001 C CNN "Packaging"
F 12 "Wirewound" H 3700 7450 50  0001 C CNN "Type"
F 13 "Ferrite" H 3700 7450 50  0001 C CNN "Material - Core"
F 14 "4.7µH" H 3700 7574 50  0000 C CNN "Inductance"
F 15 "±20%" H 3700 7450 50  0001 C CNN "Tolerance"
F 16 "5A" H 3700 7450 50  0001 C CNN "Current Rating (Amps)"
F 17 "8A" H 3700 7450 50  0001 C CNN "Current - Saturation (Isat)"
F 18 "Shielded" H 3700 7450 50  0001 C CNN "Shielding"
F 19 "40mOhm Max" H 3700 7450 50  0001 C CNN "DC Resistance (DCR)"
F 20 "-55°C ~ 125°C" H 3700 7450 50  0001 C CNN "Operating Temperature"
F 21 "200kHz" H 3700 7450 50  0001 C CNN "Inductance Frequency - Test"
F 22 "Surface Mount" H 3700 7450 50  0001 C CNN "Mounting Type"
F 23 "Nonstandard" H 3700 7450 50  0001 C CNN "Package / Case"
F 24 "0.287\" L x 0.268\" W (7.30mm x 6.80mm)" H 3700 7450 50  0001 C CNN "Size / Dimension"
F 25 "0.118\" (3.00mm)" H 3700 7450 50  0001 C CNN "Height - Seated (Max)"
	1    3700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 9450 3500 9500
Connection ~ 3500 9450
Wire Wire Line
	3300 9450 3500 9450
Wire Wire Line
	3500 9800 3500 10350
$Comp
L Power:GND #PWR012
U 1 1 6058F6ED
P 3500 10350
F 0 "#PWR012" H 3500 10150 50  0001 C CNN
F 1 "GND" H 3505 10227 50  0000 C CNN
F 2 "" H 3500 10350 50  0001 C CNN
F 3 "" H 3500 10350 50  0001 C CNN
	1    3500 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 9950 4100 9950
$Comp
L Diode:SS14HE D1
U 1 1 6057E292
P 3500 9650
F 0 "D1" V 3454 9728 50  0000 L CNN
F 1 "SS14HE" V 3545 9728 50  0000 L CNN
F 2 "Diode:SOD-323HE" H 3510 9800 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/ss13he-d.pdf" H 3510 9800 50  0001 C CNN
F 4 "DIODE SCHOTTKY 40V 1A SOD323HE" H 3500 9650 50  0001 C CNN "Description"
F 5 "Diode Schottky 40V 1A Surface Mount SOD-323HE" H 3500 9650 50  0001 C CNN "Detailed Description"
F 6 "ON Semiconductor" H 3500 9650 50  0001 C CNN "Manufacturer"
F 7 "SS14HE" H 3500 9650 50  0001 C CNN "Manufacturer Part Number"
F 8 "SS14HECT-ND" H 3500 9650 50  0001 C CNN "Digi-Key Part Number"
F 9 "SS14" H 3500 9650 50  0001 C CNN "Base Part Number"
F 10 "Automotive, AEC-Q101" H 3500 9650 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3500 9650 50  0001 C CNN "Packaging"
F 12 "Schottky" H 3500 9650 50  0001 C CNN "Diode Type"
F 13 "40V" H 3500 9650 50  0001 C CNN "Voltage - DC Reverse (Vr) (Max)"
F 14 "1A" H 3500 9650 50  0001 C CNN "Current - Average Rectified (Io)"
F 15 "550mV @ 1A" H 3500 9650 50  0001 C CNN "Voltage - Forward (Vf) (Max) @ If"
F 16 "Fast Recovery =< 500ns, > 200mA (Io)" H 3500 9650 50  0001 C CNN "Speed"
F 17 "5.6ns" H 3500 9650 50  0001 C CNN "Reverse Recovery Time (trr)"
F 18 "50µA @ 40V" H 3500 9650 50  0001 C CNN "Current - Reverse Leakage @ Vr"
F 19 "55pF @ 4V, 1MHz" H 3500 9650 50  0001 C CNN "Capacitance @ Vr, F"
F 20 "Surface Mount" H 3500 9650 50  0001 C CNN "Mounting Type"
F 21 "2-SMD, Flat Lead" H 3500 9650 50  0001 C CNN "Package / Case"
F 22 "SOD-323HE" H 3500 9650 50  0001 C CNN "Supplier Device Package"
F 23 "-55°C ~ 150°C" H 3500 9650 50  0001 C CNN "Operating Temperature - Junction"
	1    3500 9650
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 9900 4100 9950
$Comp
L Resistor:CRGCQ0402F33K R3
U 1 1 6057CB7D
P 4200 9750
F 0 "R3" H 4170 9796 50  0000 L CNN
F 1 "CRGCQ0402F33K" H 4150 9750 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 4200 9750 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 4200 9750 50  0001 C CNN
F 4 "CRGCQ 0402 33K 1%" H 4200 9750 50  0001 C CNN "Description"
F 5 "33 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 4200 9750 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 4200 9750 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F33K" H 4200 9750 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129645CT-ND" H 4200 9750 50  0001 C CNN "Digi-Key Part Number"
F 9 "33k" H 4170 9705 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 4200 9750 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 4200 9750 50  0001 C CNN "Packaging"
F 12 "±1%" H 4200 9750 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 4200 9750 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 4200 9750 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 4200 9750 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 4200 9750 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 4200 9750 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 4200 9750 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 4200 9750 50  0001 C CNN "Ratings"
F 20 "0402" H 4200 9750 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 4200 9750 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 4200 9750 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 4200 9750 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 4200 9750 50  0001 C CNN "Base Part Number"
	1    4200 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 9550 3300 9950
Wire Wire Line
	3100 9550 3300 9550
Wire Wire Line
	4100 10300 4100 10350
$Comp
L Power:GND #PWR016
U 1 1 605D7A74
P 4100 10350
F 0 "#PWR016" H 4100 10150 50  0001 C CNN
F 1 "GND" H 4105 10227 50  0000 C CNN
F 2 "" H 4100 10350 50  0001 C CNN
F 3 "" H 4100 10350 50  0001 C CNN
	1    4100 10350
	1    0    0    -1  
$EndComp
Connection ~ 4100 9950
Wire Wire Line
	4100 9950 4100 10000
$Comp
L Resistor:CRGCQ0402F10K R4
U 1 1 605CFFBB
P 4200 10150
F 0 "R4" H 4170 10196 50  0000 L CNN
F 1 "CRGCQ0402F10K" H 4150 10150 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 4200 10150 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 4200 10150 50  0001 C CNN
F 4 "CRGCQ 0402 10K 1%" H 4200 10150 50  0001 C CNN "Description"
F 5 "10 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 4200 10150 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 4200 10150 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F10K" H 4200 10150 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129639CT-ND" H 4200 10150 50  0001 C CNN "Digi-Key Part Number"
F 9 "10k" H 4170 10105 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 4200 10150 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 4200 10150 50  0001 C CNN "Packaging"
F 12 "±1%" H 4200 10150 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 4200 10150 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 4200 10150 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 4200 10150 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 4200 10150 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 4200 10150 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 4200 10150 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 4200 10150 50  0001 C CNN "Ratings"
F 20 "0402" H 4200 10150 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 4200 10150 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 4200 10150 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 4200 10150 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 4200 10150 50  0001 C CNN "Base Part Number"
	1    4200 10150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 8950 3300 9100
Connection ~ 3300 8950
Wire Wire Line
	2750 8950 3300 8950
Wire Wire Line
	2750 9050 2750 8950
Wire Wire Line
	3300 9450 3300 9400
Connection ~ 3300 9450
Wire Wire Line
	3100 9450 3300 9450
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C8
U 1 1 605BAF12
P 3300 9250
F 0 "C8" V 3150 9400 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 3150 9350 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 3150 9450 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 3150 9450 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 3300 9250 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 3300 9250 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 3300 9250 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 3300 9250 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 3300 9250 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 3250 9400 50  0000 L BNN "Capacitance"
F 10 "M" H 3300 9250 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3300 9250 50  0001 C CNN "Packaging"
F 12 "±10%" H 3300 9250 50  0001 C CNN "Tolerance"
F 13 "50V" H 3300 9250 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 3300 9250 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 3300 9250 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 3300 9250 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 3300 9250 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 3300 9250 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3300 9250 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 3300 9250 50  0001 C CNN "Thickness (Max)"
	1    3300 9250
	0    1    1    0   
$EndComp
Wire Wire Line
	1950 9500 1950 9450
Wire Wire Line
	1400 9450 1400 9500
Connection ~ 1950 9450
Wire Wire Line
	1400 9450 1950 9450
Connection ~ 1400 9450
Wire Wire Line
	1400 9050 1400 9450
Wire Wire Line
	1400 9800 1400 9950
Wire Wire Line
	1950 9800 1950 9950
$Comp
L Power:GND #PWR05
U 1 1 605A5985
P 1400 9950
F 0 "#PWR05" H 1400 9750 50  0001 C CNN
F 1 "GND" H 1405 9827 50  0000 C CNN
F 2 "" H 1400 9950 50  0001 C CNN
F 3 "" H 1400 9950 50  0001 C CNN
	1    1400 9950
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK325AB7106KM-P C6
U 1 1 605A0432
P 1950 9650
F 0 "C6" V 1900 9800 50  0000 L BNN
F 1 "UMK325AB7106KM-P" H 1800 9750 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_1210_3225Metric" H 1800 9850 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK325AB7106KM-P%20&u=M" H 1800 9850 50  0001 C CNN
F 4 "CAP CER 10UF 50V X7R 1210" H 1950 9650 50  0001 C CNN "Description"
F 5 "10µF ±10% 50V Ceramic Capacitor X7R 1210 (3225 Metric)" H 1950 9650 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1950 9650 50  0001 C CNN "Manufacturer"
F 7 "UMK325AB7106KM-P" H 1950 9650 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6031-1-ND" H 1950 9650 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 2000 9800 50  0000 L BNN "Capacitance"
F 10 "M" H 1950 9650 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1950 9650 50  0001 C CNN "Packaging"
F 12 "±10%" H 1950 9650 50  0001 C CNN "Tolerance"
F 13 "50V" H 1950 9650 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1950 9650 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1950 9650 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1950 9650 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1950 9650 50  0001 C CNN "Mounting Type"
F 18 "1210 (3225 Metric)" H 1950 9650 50  0001 C CNN "Package / Case"
F 19 "0.126\" L x 0.098\" W (3.20mm x 2.50mm)" H 1950 9650 50  0001 C CNN "Size / Dimension"
F 20 "0.110\" (2.80mm)" H 1950 9650 50  0001 C CNN "Thickness (Max)"
	1    1950 9650
	0    1    1    0   
$EndComp
$Comp
L Power:+12V #PWR04
U 1 1 60596F6B
P 1400 9050
F 0 "#PWR04" H 1400 8900 50  0001 C CNN
F 1 "+12V" H 1415 9223 50  0000 C CNN
F 2 "" H 1400 9050 50  0001 C CNN
F 3 "" H 1400 9050 50  0001 C CNN
	1    1400 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 9450 2300 9450
Wire Wire Line
	2300 9450 2400 9450
Connection ~ 2300 9450
Wire Wire Line
	2300 9550 2300 9450
Wire Wire Line
	2400 9550 2300 9550
Wire Wire Line
	2750 9900 2750 9950
$Comp
L Power:GND #PWR09
U 1 1 60589A68
P 1950 9950
F 0 "#PWR09" H 1950 9750 50  0001 C CNN
F 1 "GND" H 1955 9827 50  0000 C CNN
F 2 "" H 1950 9950 50  0001 C CNN
F 3 "" H 1950 9950 50  0001 C CNN
	1    1950 9950
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR011
U 1 1 60588E80
P 2750 9950
F 0 "#PWR011" H 2750 9750 50  0001 C CNN
F 1 "GND" H 2755 9827 50  0000 C CNN
F 2 "" H 2750 9950 50  0001 C CNN
F 3 "" H 2750 9950 50  0001 C CNN
	1    2750 9950
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C3
U 1 1 605849A4
P 1400 9650
F 0 "C3" V 1354 9785 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 1250 9750 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 1250 9850 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 1250 9850 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 1400 9650 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 1400 9650 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1400 9650 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 1400 9650 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 1400 9650 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 1445 9785 50  0000 L BNN "Capacitance"
F 10 "M" H 1400 9650 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1400 9650 50  0001 C CNN "Packaging"
F 12 "±10%" H 1400 9650 50  0001 C CNN "Tolerance"
F 13 "50V" H 1400 9650 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1400 9650 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1400 9650 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1400 9650 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1400 9650 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 1400 9650 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 1400 9650 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 1400 9650 50  0001 C CNN "Thickness (Max)"
	1    1400 9650
	0    1    1    0   
$EndComp
$Comp
L Power_Management:MCP16301T-I_CHY U2
U 1 1 6057AC98
P 2750 9050
F 0 "U2" H 2650 9100 50  0000 R BNN
F 1 "MCP16301T-I_CHY" H 2650 9000 50  0000 R BNN
F 2 "Package_TO_SOT:SOT-23-6" H 2700 8750 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en554098" H 2700 8750 50  0001 C CNN
F 4 "IC REG BUCK ADJ 600MA SOT23-6" H 2800 8150 50  0001 C CNN "Description"
F 5 "Buck Switching Regulator IC Positive Adjustable 2V 1 Output 600mA SOT-23-6" H 2800 8150 50  0001 C CNN "Detailed Description"
F 6 "Microchip Technology" H 2800 8150 50  0001 C CNN "Manufacturer"
F 7 "MCP16301T-I/CHY" H 2800 8150 50  0001 C CNN "Manufacturer Part Number"
F 8 "MCP16301T-I/CHYCT-ND" H 2800 8150 50  0001 C CNN "Digi-Key Part Number"
F 9 "Cut Tape (CT)" H 2800 8150 50  0001 C CNN "Packaging"
F 10 "Step-Down" H 2800 8150 50  0001 C CNN "Function"
F 11 "Positive" H 2800 8150 50  0001 C CNN "Output Configuration"
F 12 "Buck" H 2750 9050 50  0001 C CNN "Topology"
F 13 "Adjustable" H 2800 8150 50  0001 C CNN "Output Type"
F 14 "1" H 2750 9050 50  0001 C CNN "Number of Outputs"
F 15 "4V" H 2750 9050 50  0001 C CNN "Voltage - Input (Min)"
F 16 "30V" H 2750 9050 50  0001 C CNN "Voltage - Input (Max)"
F 17 "2V" H 2750 9050 50  0001 C CNN "Voltage - Output (Min/Fixed)"
F 18 "15V" H 2750 9050 50  0001 C CNN "Voltage - Output (Max)"
F 19 "600mA" H 2800 8150 50  0001 C CNN "Current - Output"
F 20 "500kHz" H 2800 8150 50  0001 C CNN "Frequency - Switching"
F 21 "No" H 2750 9050 50  0001 C CNN "Synchronous Rectifier"
F 22 "-40°C ~ 125°C (TJ)" H 2800 8150 50  0001 C CNN "Operating Temperature"
F 23 "Surface Mount" H 2800 8150 50  0001 C CNN "Mounting Type"
F 24 "SOT-23-6" H 2800 8150 50  0001 C CNN "Package / Case"
F 25 "SOT-23-6" H 2800 8150 50  0001 C CNN "Supplier Device Package"
F 26 "MCP1630" H 2800 8150 50  0001 C CNN "Base Part Number"
	1    2750 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7450 3450 7450
Wire Wire Line
	3400 7550 3400 7850
Wire Wire Line
	3400 7850 4000 7850
Wire Wire Line
	4500 8000 4500 8250
$Comp
L Power:GND #PWR018
U 1 1 6057EFD1
P 4500 8250
F 0 "#PWR018" H 4500 8050 50  0001 C CNN
F 1 "GND" H 4505 8127 50  0000 C CNN
F 2 "" H 4500 8250 50  0001 C CNN
F 3 "" H 4500 8250 50  0001 C CNN
	1    4500 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 7450 4500 7700
$Comp
L Capacitor_Electrolytic:A768KE686M1GLAE038 C9
U 1 1 60579AA2
P 4500 7850
F 0 "C9" V 4454 7968 50  0000 L CNN
F 1 "A768KE686M1GLAE038" H 4350 7950 50  0001 L BNN
F 2 "Capacitor_Electrolytic:CP_Elec_KEMET_8mm" H 4350 8050 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/A768KE686M1GLAE038.pdf" H 4350 8050 50  0001 C CNN
F 4 "CAP ALUM POLY 68UF 20% 40V SMD" H 4500 7850 50  0001 C CNN "Description"
F 5 "68µF 40V Aluminum - Polymer Capacitors Radial, Can - SMD 38mOhm 2000 Hrs @ 125°C" H 4500 7850 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 4500 7850 50  0001 C CNN "Manufacturer"
F 7 "A768KE686M1GLAE038" H 4500 7850 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-A768KE686M1GLAE038CT-ND" H 4500 7850 50  0001 C CNN "Digi-Key Part Number"
F 9 "A768" H 4500 7850 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 4500 7850 50  0001 C CNN "Packaging"
F 11 "Polymer" H 4500 7850 50  0001 C CNN "Type"
F 12 "68µF" V 4545 7968 50  0000 L CNN "Capacitance"
F 13 "±20%" H 4500 7850 50  0001 C CNN "Tolerance"
F 14 "40V" H 4500 7850 50  0001 C CNN "Voltage - Rated"
F 15 "38mOhm" H 4500 7850 50  0001 C CNN "ESR (Equivalent Series Resistance)"
F 16 "2000 Hrs @ 125°C" H 4500 7850 50  0001 C CNN "Lifetime @ Temp."
F 17 "-55°C ~ 125°C" H 4500 7850 50  0001 C CNN "Operating Temperature"
F 18 "General Purpose" H 4500 7850 50  0001 C CNN "Applications"
F 19 "67.5mA @ 120Hz" H 4500 7850 50  0001 C CNN "Ripple Current @ Low Frequency"
F 20 "1.35A @ 100kHz" H 4500 7850 50  0001 C CNN "Ripple Current @ High Frequency"
F 21 "0.315\" Dia (8.00mm)" H 4500 7850 50  0001 C CNN "Size / Dimension"
F 22 "0.236\" (6.00mm)" H 4500 7850 50  0001 C CNN "Height - Seated (Max)"
F 23 "0.327\" L x 0.327\" W (8.30mm x 8.30mm)" H 4500 7850 50  0001 C CNN "Surface Mount Land Size"
F 24 "Surface Mount" H 4500 7850 50  0001 C CNN "Mounting Type"
F 25 "Radial, Can - SMD" H 4500 7850 50  0001 C CNN "Package / Case"
	1    4500 7850
	0    1    1    0   
$EndComp
Connection ~ 4500 7450
Wire Wire Line
	4500 7450 4500 7200
$Comp
L Power:+5V5 #PWR017
U 1 1 6057A8A5
P 4500 7200
F 0 "#PWR017" H 4500 7050 50  0001 C CNN
F 1 "+5V5" H 4515 7373 50  0000 C CNN
F 2 "" H 4500 7200 50  0001 C CNN
F 3 "" H 4500 7200 50  0001 C CNN
	1    4500 7200
	1    0    0    -1  
$EndComp
$Comp
L Resistor:CRGCQ0402F82K R1
U 1 1 60578B68
P 4100 7650
F 0 "R1" H 4070 7696 50  0000 L CNN
F 1 "CRGCQ0402F82K" H 4050 7650 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 4100 7650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 4100 7650 50  0001 C CNN
F 4 "CRGCQ 0402 82K 1%" H 4100 7650 50  0001 C CNN "Description"
F 5 "8.2 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 4100 7650 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 4100 7650 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F82K" H 4100 7650 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129650CT-ND" H 4100 7650 50  0001 C CNN "Digi-Key Part Number"
F 9 "82k" H 4070 7605 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 4100 7650 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 4100 7650 50  0001 C CNN "Packaging"
F 12 "±1%" H 4100 7650 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 4100 7650 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 4100 7650 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 4100 7650 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 4100 7650 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 4100 7650 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 4100 7650 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 4100 7650 50  0001 C CNN "Ratings"
F 20 "0402" H 4100 7650 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 4100 7650 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 4100 7650 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 4100 7650 50  0001 C CNN "Number of Terminations"
	1    4100 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 7800 4000 7850
Wire Wire Line
	3950 7450 4000 7450
Wire Wire Line
	4000 7450 4500 7450
Connection ~ 4000 7450
Wire Wire Line
	4000 7450 4000 7500
Connection ~ 4000 7850
Wire Wire Line
	4000 7850 4000 7900
Wire Wire Line
	4000 8200 4000 8250
$Comp
L Power:GND #PWR014
U 1 1 60583015
P 4000 8250
F 0 "#PWR014" H 4000 8050 50  0001 C CNN
F 1 "GND" H 4005 8127 50  0000 C CNN
F 2 "" H 4000 8250 50  0001 C CNN
F 3 "" H 4000 8250 50  0001 C CNN
	1    4000 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7550 3400 7550
$Comp
L Resistor:CRGCQ0402F10K R2
U 1 1 60578B8C
P 4100 8050
F 0 "R2" H 4070 8096 50  0000 L CNN
F 1 "CRGCQ0402F10K" H 4050 8050 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 4100 8050 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 4100 8050 50  0001 C CNN
F 4 "CRGCQ 0402 10K 1%" H 4100 8050 50  0001 C CNN "Description"
F 5 "10 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 4100 8050 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 4100 8050 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F10K" H 4100 8050 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129639CT-ND" H 4100 8050 50  0001 C CNN "Digi-Key Part Number"
F 9 "10k" H 4070 8005 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 4100 8050 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 4100 8050 50  0001 C CNN "Packaging"
F 12 "±1%" H 4100 8050 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 4100 8050 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 4100 8050 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 4100 8050 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 4100 8050 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 4100 8050 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 4100 8050 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 4100 8050 50  0001 C CNN "Ratings"
F 20 "0402" H 4100 8050 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 4100 8050 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 4100 8050 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 4100 8050 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 4100 8050 50  0001 C CNN "Base Part Number"
	1    4100 8050
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR010
U 1 1 60576EF6
P 2250 7750
F 0 "#PWR010" H 2250 7550 50  0001 C CNN
F 1 "GND" H 2255 7627 50  0000 C CNN
F 2 "" H 2250 7750 50  0001 C CNN
F 3 "" H 2250 7750 50  0001 C CNN
	1    2250 7750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR08
U 1 1 6057696C
P 1850 7750
F 0 "#PWR08" H 1850 7550 50  0001 C CNN
F 1 "GND" H 1855 7627 50  0000 C CNN
F 2 "" H 1850 7750 50  0001 C CNN
F 3 "" H 1850 7750 50  0001 C CNN
	1    1850 7750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR03
U 1 1 6057A467
P 1350 7750
F 0 "#PWR03" H 1350 7550 50  0001 C CNN
F 1 "GND" H 1355 7627 50  0000 C CNN
F 2 "" H 1350 7750 50  0001 C CNN
F 3 "" H 1350 7750 50  0001 C CNN
	1    1350 7750
	1    0    0    -1  
$EndComp
$Comp
L Power:+12V #PWR02
U 1 1 60576F71
P 1350 7200
F 0 "#PWR02" H 1350 7050 50  0001 C CNN
F 1 "+12V" H 1365 7373 50  0000 C CNN
F 2 "" H 1350 7200 50  0001 C CNN
F 3 "" H 1350 7200 50  0001 C CNN
	1    1350 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 7300 3400 7450
Wire Wire Line
	3100 7300 3100 7350
Connection ~ 3400 7450
Wire Wire Line
	3000 7450 3400 7450
Wire Wire Line
	3000 7350 3100 7350
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C7
U 1 1 6058DCC8
P 3250 7300
F 0 "C7" H 3350 7450 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 3100 7400 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 3100 7500 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 3100 7500 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 3250 7300 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 3250 7300 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 3250 7300 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 3250 7300 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 3250 7300 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" H 3350 7350 50  0000 L BNN "Capacitance"
F 10 "M" H 3250 7300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3250 7300 50  0001 C CNN "Packaging"
F 12 "±10%" H 3250 7300 50  0001 C CNN "Tolerance"
F 13 "50V" H 3250 7300 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 3250 7300 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 3250 7300 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 3250 7300 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 3250 7300 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 3250 7300 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3250 7300 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 3250 7300 50  0001 C CNN "Thickness (Max)"
	1    3250 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 7450 2250 7350
Wire Wire Line
	2300 7450 2250 7450
Wire Wire Line
	2250 7550 2250 7750
Wire Wire Line
	2300 7550 2250 7550
Wire Wire Line
	1850 7700 1850 7750
Wire Wire Line
	1350 7700 1350 7750
Wire Wire Line
	2250 7350 1850 7350
Wire Wire Line
	1850 7350 1350 7350
Connection ~ 1850 7350
Wire Wire Line
	1850 7400 1850 7350
Wire Wire Line
	1350 7350 1350 7400
Connection ~ 2250 7350
Wire Wire Line
	2300 7350 2250 7350
Connection ~ 1350 7350
Wire Wire Line
	1350 7200 1350 7350
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C2
U 1 1 60576016
P 1350 7550
F 0 "C2" V 1304 7685 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 1200 7650 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 1200 7750 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 1200 7750 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 1350 7550 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 1350 7550 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1350 7550 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 1350 7550 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 1350 7550 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 1395 7685 50  0000 L BNN "Capacitance"
F 10 "M" H 1350 7550 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1350 7550 50  0001 C CNN "Packaging"
F 12 "±10%" H 1350 7550 50  0001 C CNN "Tolerance"
F 13 "50V" H 1350 7550 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1350 7550 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1350 7550 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1350 7550 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1350 7550 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 1350 7550 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 1350 7550 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 1350 7550 50  0001 C CNN "Thickness (Max)"
	1    1350 7550
	0    1    1    0   
$EndComp
$Comp
L Capacitor_Ceramic:UMK325AB7106KM-P C5
U 1 1 60575BD8
P 1850 7550
F 0 "C5" V 1800 7700 50  0000 L BNN
F 1 "UMK325AB7106KM-P" H 1700 7650 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_1210_3225Metric" H 1700 7750 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK325AB7106KM-P%20&u=M" H 1700 7750 50  0001 C CNN
F 4 "CAP CER 10UF 50V X7R 1210" H 1850 7550 50  0001 C CNN "Description"
F 5 "10µF ±10% 50V Ceramic Capacitor X7R 1210 (3225 Metric)" H 1850 7550 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1850 7550 50  0001 C CNN "Manufacturer"
F 7 "UMK325AB7106KM-P" H 1850 7550 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6031-1-ND" H 1850 7550 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 1900 7700 50  0000 L BNN "Capacitance"
F 10 "M" H 1850 7550 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1850 7550 50  0001 C CNN "Packaging"
F 12 "±10%" H 1850 7550 50  0001 C CNN "Tolerance"
F 13 "50V" H 1850 7550 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1850 7550 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1850 7550 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1850 7550 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1850 7550 50  0001 C CNN "Mounting Type"
F 18 "1210 (3225 Metric)" H 1850 7550 50  0001 C CNN "Package / Case"
F 19 "0.126\" L x 0.098\" W (3.20mm x 2.50mm)" H 1850 7550 50  0001 C CNN "Size / Dimension"
F 20 "0.110\" (2.80mm)" H 1850 7550 50  0001 C CNN "Thickness (Max)"
	1    1850 7550
	0    1    1    0   
$EndComp
$Comp
L Power_Management:TPS563231DRLR U1
U 1 1 6058BE82
P 2650 7250
F 0 "U1" H 2650 7375 50  0000 C CNN
F 1 "TPS563231DRLR" H 2650 7284 50  0000 C CNN
F 2 "Package_TO_SOT:SOT-563" H 2650 7250 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps563231.pdf?HQS=dis-dk-null-digikeymode-dsf-pf-null-wwe&ts=1616258618453" H 2650 7250 50  0001 C CNN
F 4 "POWER MANAGEMENT" H 2650 7250 50  0001 C CNN "Description"
F 5 "Buck Switching Regulator IC Positive Adjustable 0.6V 1 Output 3A SOT-563, SOT-666" H 2650 7250 50  0001 C CNN "Detailed Description"
F 6 "Texas Instruments" H 2650 7250 50  0001 C CNN "Manufacturer"
F 7 "TPS563231DRLR" H 2650 7250 50  0001 C CNN "Manufacturer Part Number"
F 8 "296-TPS563231DRLRCT-ND" H 2650 7250 50  0001 C CNN "Digi-Key Part Number"
	1    2650 7250
	1    0    0    -1  
$EndComp
$Comp
L LED:5977703607F D6
U 1 1 606C11CC
P 9250 6800
F 0 "D6" H 9250 6950 50  0000 C CNN
F 1 "5977703607F" H 9255 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 9260 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 9260 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 9250 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 9250 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 9250 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 9250 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 9250 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 9250 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 9250 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 9250 7000 50  0001 C CNN "Color"
F 12 "Independent" H 9250 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 9250 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 9250 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 9250 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 9250 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 9250 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 9250 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 9250 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 9255 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 9250 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 9250 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 9250 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 9250 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 9245 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 9250 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 9250 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 9250 7000 50  0001 C CNN "Base Part Number"
F 29 "GPS_TIME" V 9550 6700 50  0000 C CNN "Label"
	1    9250 6800
	0    -1   -1   0   
$EndComp
$Comp
L LED:5977703607F D7
U 1 1 606C42AE
P 11050 6800
F 0 "D7" H 11050 6950 50  0000 C CNN
F 1 "5977703607F" H 11055 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 11060 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 11060 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 11050 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 11050 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 11050 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 11050 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 11050 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 11050 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 11050 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 11050 7000 50  0001 C CNN "Color"
F 12 "Independent" H 11050 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 11050 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 11050 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 11050 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 11050 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 11050 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 11050 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 11050 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 11055 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 11050 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 11050 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 11050 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 11050 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 11045 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 11050 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 11050 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 11050 7000 50  0001 C CNN "Base Part Number"
F 29 "LEAP" V 11350 6700 50  0000 C CNN "Label"
	1    11050 6800
	0    -1   -1   0   
$EndComp
$Comp
L LED:5977703607F D5
U 1 1 606BEC14
P 8650 6800
F 0 "D5" H 8650 6950 50  0000 C CNN
F 1 "5977703607F" H 8655 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 8660 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 8660 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 8650 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 8650 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 8650 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 8650 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 8650 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 8650 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 8650 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 8650 7000 50  0001 C CNN "Color"
F 12 "Independent" H 8650 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 8650 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 8650 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 8650 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 8650 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 8650 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 8650 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 8650 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 8655 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 8650 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 8650 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 8650 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 8650 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 8645 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 8650 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 8650 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 8650 7000 50  0001 C CNN "Base Part Number"
F 29 "PLL" V 8950 6700 50  0000 C CNN "Label"
	1    8650 6800
	0    -1   -1   0   
$EndComp
$Comp
L LED:5977703607F D4
U 1 1 606BC6C6
P 8000 6800
F 0 "D4" H 8000 6950 50  0000 C CNN
F 1 "5977703607F" H 8005 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 8010 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 8010 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 8000 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 8000 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 8000 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 8000 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 8000 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 8000 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 8000 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 8000 7000 50  0001 C CNN "Color"
F 12 "Independent" H 8000 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 8000 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 8000 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 8000 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 8000 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 8000 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 8000 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 8000 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 8005 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 8000 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 8000 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 8000 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 8000 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 7995 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 8000 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 8000 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 8000 7000 50  0001 C CNN "Base Part Number"
F 29 "ANT" V 8300 6700 50  0000 C CNN "Label"
	1    8000 6800
	0    -1   -1   0   
$EndComp
$Comp
L LED:5977703607F D3
U 1 1 606BAF96
P 7400 6800
F 0 "D3" H 7400 6950 50  0000 C CNN
F 1 "5977703607F" H 7405 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 7410 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 7410 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 7400 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 7400 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 7400 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 7400 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 7400 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 7400 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 7400 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 7400 7000 50  0001 C CNN "Color"
F 12 "Independent" H 7400 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 7400 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 7400 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 7400 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 7400 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 7400 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 7400 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 7400 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 7405 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 7400 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 7400 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 7400 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 7400 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 7395 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 7400 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 7400 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 7400 7000 50  0001 C CNN "Base Part Number"
F 29 "VCORE" V 7700 6700 50  0000 C CNN "Label"
	1    7400 6800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_BJT:MMBT3904LT1G Q1
U 1 1 607BF18C
P 7300 7550
F 0 "Q1" H 7492 7596 50  0000 L CNN
F 1 "MMBT3904LT1G" H 7490 7550 50  0001 L BNN
F 2 "Package_TO_SOT:SOT-23" H 7300 7550 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/mmbt3904lt1-d.pdf" H 7300 7550 50  0001 C CNN
F 4 "TRANS NPN 40V 200MA SOT23-3" H 7300 7550 50  0001 C CNN "Description"
F 5 "Bipolar (BJT) Transistor NPN 40V 200mA 300MHz 300mW Surface Mount SOT-23-3 (TO-236)" H 7300 7550 50  0001 C CNN "Detailed Description"
F 6 "ON Semiconductor" H 7300 7550 50  0001 C CNN "Manufacturer"
F 7 "MMBT3904LT1G" H 7300 7550 50  0001 C CNN "Manufacturer Part Number"
F 8 "MMBT3904LT1GOSCT-ND" H 7300 7550 50  0001 C CNN "Digi-Key Part Number"
F 9 "MMBT3904" H 7492 7505 50  0000 L CNN "Base Part Number"
	1    7300 7550
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR021
U 1 1 607C0831
P 7400 7800
F 0 "#PWR021" H 7400 7600 50  0001 C CNN
F 1 "GND" H 7405 7677 50  0000 C CNN
F 2 "" H 7400 7800 50  0001 C CNN
F 3 "" H 7400 7800 50  0001 C CNN
	1    7400 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 7750 7400 7800
Wire Wire Line
	7400 6950 7400 7150
Wire Wire Line
	7400 7150 8000 7150
Wire Wire Line
	8000 7150 8000 6950
Connection ~ 7400 7150
Wire Wire Line
	7400 7150 7400 7350
Wire Wire Line
	8000 7150 8650 7150
Wire Wire Line
	8650 7150 8650 6950
Connection ~ 8000 7150
Wire Wire Line
	8650 7150 9250 7150
Wire Wire Line
	9250 7150 9250 6950
Connection ~ 8650 7150
Wire Wire Line
	11050 7150 11050 6950
$Comp
L LED:5977703607F D8
U 1 1 607563CE
P 11600 6800
F 0 "D8" H 11600 6950 50  0000 C CNN
F 1 "5977703607F" H 11605 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 11610 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 11610 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 11600 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 11600 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 11600 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 11600 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 11600 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 11600 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 11600 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 11600 7000 50  0001 C CNN "Color"
F 12 "Independent" H 11600 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 11600 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 11600 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 11600 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 11600 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 11600 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 11600 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 11600 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 11605 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 11600 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 11600 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 11600 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 11600 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 11595 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 11600 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 11600 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 11600 7000 50  0001 C CNN "Base Part Number"
F 29 "1PPS" V 11900 6700 50  0000 C CNN "Label"
	1    11600 6800
	0    -1   -1   0   
$EndComp
$Comp
L LED:5977703607F D9
U 1 1 6076BF24
P 12200 6800
F 0 "D9" H 12200 6950 50  0000 C CNN
F 1 "5977703607F" H 12205 6939 50  0001 C CNN
F 2 "LED:5977703607F" H 12210 6950 50  0001 C CNN
F 3 "http://www.dialightsignalsandcomponents.com/Assets/Brochures_And_Catalogs/Indication/SMT_selector_guide.pdf" H 12210 6950 50  0001 C CNN
F 4 "LED GREEN/RED CLEAR 1206 SMD" H 12200 7000 50  0001 C CNN "Description"
F 5 "Green, Red 571nm Green, 631nm Red LED Indication - Discrete 2V Green, 2V Red 1206 (3216 Metric)" H 12200 7000 50  0001 C CNN "Detailed Description"
F 6 "Dialight" H 12200 7000 50  0001 C CNN "Manufacturer"
F 7 "5977703607F" H 12200 7000 50  0001 C CNN "Manufacturer Part Number"
F 8 "350-2341-1-ND" H 12200 7000 50  0001 C CNN "Digi-Key Part Number"
F 9 "597" H 12200 7000 50  0001 C CNN "Series"
F 10 "Cut Tape (CT) " H 12200 7000 50  0001 C CNN "Packaging"
F 11 "Green, Red" H 12200 7000 50  0001 C CNN "Color"
F 12 "Independent" H 12200 7000 50  0001 C CNN "Configuration"
F 13 "Colorless" H 12200 7000 50  0001 C CNN "Lens Color"
F 14 "Clear" H 12200 7000 50  0001 C CNN "Lens Transparency"
F 15 "45mcd Green, 55mcd Red" H 12200 7000 50  0001 C CNN "Millicandela Rating"
F 16 "Rectangle with Flat Top" H 12200 7000 50  0001 C CNN "Lens Style"
F 17 "1.50mm x 1.60mm" H 12200 7000 50  0001 C CNN "Lens Size"
F 18 "2V Green, 2V Red" H 12200 7000 50  0001 C CNN "Voltage - Forward (Vf) (Typ)"
F 19 "20mA Green, 20mA Red" H 12200 7000 50  0001 C CNN "Current - Test"
F 20 "130°" H 12205 7000 50  0001 C CNN "Viewing Angle"
F 21 "Surface Mount, Bottom Entry" H 12200 7000 50  0001 C CNN "Mounting Type"
F 22 "571nm Green, 631nm Red" H 12200 7000 50  0001 C CNN "Wavelength - Dominant"
F 23 "574nm Green, 639nm Red" H 12200 7000 50  0001 C CNN "Wavelength - Peak"
F 24 "1206 (3216 Metric)" H 12200 7000 50  0001 C CNN "Package / Case"
F 25 "1206" H 12195 7000 50  0001 C CNN "Supplier Device Package"
F 26 "3.20mm L x 1.60mm W" H 12200 7000 50  0001 C CNN "Size / Dimension"
F 27 "1.10mm" H 12200 7000 50  0001 C CNN "Height (Max)"
F 28 "5977703" H 12200 7000 50  0001 C CNN "Base Part Number"
F 29 "10MHZ" V 12500 6700 50  0000 C CNN "Label"
	1    12200 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11050 7150 11600 7150
Wire Wire Line
	11600 7150 11600 6950
Wire Wire Line
	11600 7150 12200 7150
Wire Wire Line
	12200 7150 12200 6950
Connection ~ 11600 7150
Wire Wire Line
	2650 2650 2200 2650
Text Label 2200 2650 0    50   ~ 0
LED_PWM
$Comp
L Resistor:CRGCQ0402F1K0 R5
U 1 1 60734268
P 6900 7650
F 0 "R5" V 6593 7650 50  0000 C CNN
F 1 "CRGCQ0402F1K0" H 6850 7650 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 6900 7650 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 6900 7650 50  0001 C CNN
F 4 "CRGCQ 0402 1K0 1%" H 6900 7650 50  0001 C CNN "Description"
F 5 "1 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 6900 7650 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 6900 7650 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F1K0" H 6900 7650 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129627CT-ND" H 6900 7650 50  0001 C CNN "Digi-Key Part Number"
F 9 "1k" V 6684 7650 50  0000 C CNN "Resistance"
F 10 "CRGCQ" H 6900 7650 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 6900 7650 50  0001 C CNN "Packaging"
F 12 "±1%" H 6900 7650 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 6900 7650 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 6900 7650 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 6900 7650 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 6900 7650 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 6900 7650 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 6900 7650 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 6900 7650 50  0001 C CNN "Ratings"
F 20 "0402" H 6900 7650 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 6900 7650 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 6900 7650 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 6900 7650 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 6900 7650 50  0001 C CNN "Base Part Number"
	1    6900 7650
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 7550 7100 7550
Wire Wire Line
	6750 7550 6400 7550
Text Label 6400 7550 0    50   ~ 0
LED_PWM
$Comp
L Logic:SN74HC595BRWNR U4
U 1 1 607355EA
P 6750 4950
F 0 "U4" H 6900 5150 50  0000 L CNN
F 1 "SN74HC595BRWNR" H 6900 5050 50  0000 L BNN
F 2 "Package_DFN_QFN:X1QFN-16_EP_2.5x2.5mm" H 6750 4950 50  0001 C CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc595b" H 6750 4950 50  0001 C CNN
F 4 "IC SHIFT REGISTER 8BIT 16X1QFN" H 6750 4950 50  0001 C CNN "Description"
F 5 "Shift Shift Register 1 Element 8 Bit 16-X1QFN (2.5x2.5)" H 6750 4950 50  0001 C CNN "Detailed Description"
F 6 "Texas Instruments" H 6750 4950 50  0001 C CNN "Manufacturer"
F 7 "SN74HC595BRWNR" H 6750 4950 50  0001 C CNN "Manufacturer Part Number"
F 8 "296-44070-1-ND" H 6750 4950 50  0001 C CNN "Digi-Key Part Number"
F 9 "74HC" H 6750 4950 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 6750 4950 50  0001 C CNN "Packaging"
F 11 "Shift Register" H 6750 4950 50  0001 C CNN "Logic Type"
F 12 "Tri-State" H 6750 4950 50  0001 C CNN "Output Type"
F 13 "1" H 6750 4950 50  0001 C CNN "Number of Elements"
F 14 "8" H 6750 4950 50  0001 C CNN "Number of Bits per Element"
F 15 "Serial to Parallel" H 6750 4950 50  0001 C CNN "Function"
F 16 "2V ~ 6V" H 6750 4950 50  0001 C CNN "Voltage - Supply"
F 17 "-55°C ~ 125°C" H 6750 4950 50  0001 C CNN "Operating Temperature"
F 18 "Surface Mount" H 6750 4950 50  0001 C CNN "Mounting Type"
F 19 "16-XFQFN Exposed Pad" H 6750 4950 50  0001 C CNN "Package / Case"
F 20 "16-X1QFN (2.5x2.5)" H 6750 4950 50  0001 C CNN "Supplier Device Package"
F 21 "74HC595" H 6750 4950 50  0001 C CNN "Base Part Number"
	1    6750 4950
	1    0    0    -1  
$EndComp
$Comp
L Logic:SN74HC595BRWNR U5
U 1 1 607A2871
P 10400 4950
F 0 "U5" H 10550 5150 50  0000 L BNN
F 1 "SN74HC595BRWNR" H 10550 5050 50  0000 L BNN
F 2 "Package_DFN_QFN:X1QFN-16_EP_2.5x2.5mm" H 10400 4950 50  0001 C CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fsn74hc595b" H 10400 4950 50  0001 C CNN
F 4 "IC SHIFT REGISTER 8BIT 16X1QFN" H 10400 4950 50  0001 C CNN "Description"
F 5 "Shift Shift Register 1 Element 8 Bit 16-X1QFN (2.5x2.5)" H 10400 4950 50  0001 C CNN "Detailed Description"
F 6 "Texas Instruments" H 10400 4950 50  0001 C CNN "Manufacturer"
F 7 "SN74HC595BRWNR" H 10400 4950 50  0001 C CNN "Manufacturer Part Number"
F 8 "296-44070-1-ND" H 10400 4950 50  0001 C CNN "Digi-Key Part Number"
F 9 "74HC" H 10400 4950 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 10400 4950 50  0001 C CNN "Packaging"
F 11 "Shift Register" H 10400 4950 50  0001 C CNN "Logic Type"
F 12 "Tri-State" H 10400 4950 50  0001 C CNN "Output Type"
F 13 "1" H 10400 4950 50  0001 C CNN "Number of Elements"
F 14 "8" H 10400 4950 50  0001 C CNN "Number of Bits per Element"
F 15 "Serial to Parallel" H 10400 4950 50  0001 C CNN "Function"
F 16 "2V ~ 6V" H 10400 4950 50  0001 C CNN "Voltage - Supply"
F 17 "-55°C ~ 125°C" H 10400 4950 50  0001 C CNN "Operating Temperature"
F 18 "Surface Mount" H 10400 4950 50  0001 C CNN "Mounting Type"
F 19 "16-XFQFN Exposed Pad" H 10400 4950 50  0001 C CNN "Package / Case"
F 20 "16-X1QFN (2.5x2.5)" H 10400 4950 50  0001 C CNN "Supplier Device Package"
F 21 "74HC595" H 10400 4950 50  0001 C CNN "Base Part Number"
	1    10400 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 7150 11050 7150
Connection ~ 9250 7150
Connection ~ 11050 7150
Wire Wire Line
	9600 5950 9600 5050
Wire Wire Line
	9600 5050 9900 5050
Wire Wire Line
	6250 5550 6000 5550
Wire Wire Line
	6000 5550 6000 4550
Wire Wire Line
	9900 5250 9800 5250
Wire Wire Line
	6000 4550 9700 4550
Wire Wire Line
	9700 5550 9900 5550
Wire Wire Line
	9700 4550 9700 5550
Wire Wire Line
	9800 4450 9800 5250
Wire Wire Line
	5900 4450 5900 5250
Wire Wire Line
	5900 5250 6250 5250
Wire Wire Line
	5900 4450 9800 4450
Wire Wire Line
	5800 4650 5800 5650
Wire Wire Line
	5800 5650 6250 5650
Wire Wire Line
	9500 5650 9500 4650
Wire Wire Line
	9500 5650 9900 5650
Wire Wire Line
	9500 4650 5800 4650
Wire Wire Line
	9900 5350 9400 5350
Wire Wire Line
	9400 5350 9400 4300
$Comp
L Power:+3V3 #PWR0101
U 1 1 609480DA
P 9400 4300
F 0 "#PWR0101" H 9400 4150 50  0001 C CNN
F 1 "+3V3" H 9415 4473 50  0000 C CNN
F 2 "" H 9400 4300 50  0001 C CNN
F 3 "" H 9400 4300 50  0001 C CNN
	1    9400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5350 5700 5350
Wire Wire Line
	5700 5350 5700 4350
$Comp
L Power:+3V3 #PWR0102
U 1 1 609571ED
P 5700 4350
F 0 "#PWR0102" H 5700 4200 50  0001 C CNN
F 1 "+3V3" H 5715 4523 50  0000 C CNN
F 2 "" H 5700 4350 50  0001 C CNN
F 3 "" H 5700 4350 50  0001 C CNN
	1    5700 4350
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR0103
U 1 1 609581E2
P 10400 6200
F 0 "#PWR0103" H 10400 6000 50  0001 C CNN
F 1 "GND" H 10405 6077 50  0000 C CNN
F 2 "" H 10400 6200 50  0001 C CNN
F 3 "" H 10400 6200 50  0001 C CNN
	1    10400 6200
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR0104
U 1 1 60958A64
P 6750 6200
F 0 "#PWR0104" H 6750 6000 50  0001 C CNN
F 1 "GND" H 6755 6077 50  0000 C CNN
F 2 "" H 6750 6200 50  0001 C CNN
F 3 "" H 6750 6200 50  0001 C CNN
	1    6750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 6150 6750 6200
Wire Wire Line
	10400 6150 10400 6200
Wire Wire Line
	7250 5950 9600 5950
Wire Wire Line
	6250 5050 5150 5050
Wire Wire Line
	5900 5250 5150 5250
Connection ~ 5900 5250
Wire Wire Line
	6000 5550 5150 5550
Connection ~ 6000 5550
Wire Wire Line
	5800 5650 5150 5650
Connection ~ 5800 5650
Text Label 5150 5650 0    50   ~ 0
OE
Text Label 5150 5550 0    50   ~ 0
RCLK
Text Label 5150 5250 0    50   ~ 0
SRCLK
Text Label 5150 5050 0    50   ~ 0
SER
Wire Wire Line
	2650 1650 2050 1650
Wire Wire Line
	2650 1750 2050 1750
Wire Wire Line
	2650 1850 2050 1850
Wire Wire Line
	2650 1950 2050 1950
Text Label 2050 1650 0    50   ~ 0
SER
Text Label 2050 1950 0    50   ~ 0
SRCLK
Text Label 2050 1850 0    50   ~ 0
RCLK
Text Label 2050 1750 0    50   ~ 0
OE
Wire Wire Line
	7250 5050 9450 5050
Wire Wire Line
	9450 5050 9450 6650
Wire Wire Line
	7250 5150 9250 5150
Wire Wire Line
	9250 5150 9250 6650
Wire Wire Line
	7250 5250 8850 5250
Wire Wire Line
	8850 5250 8850 6650
Wire Wire Line
	7250 5350 8650 5350
Wire Wire Line
	8650 5350 8650 6650
Wire Wire Line
	7250 5450 8200 5450
Wire Wire Line
	8200 5450 8200 6650
Wire Wire Line
	7250 5550 8000 5550
Wire Wire Line
	8000 5550 8000 6650
Wire Wire Line
	7250 5650 7600 5650
Wire Wire Line
	7600 5650 7600 6650
Wire Wire Line
	7250 5750 7400 5750
Wire Wire Line
	7400 5750 7400 6650
Wire Wire Line
	10900 5050 12400 5050
Wire Wire Line
	12400 5050 12400 6650
Wire Wire Line
	10900 5150 12200 5150
Wire Wire Line
	12200 5150 12200 6650
Wire Wire Line
	10900 5250 11800 5250
Wire Wire Line
	11800 5250 11800 6650
Wire Wire Line
	10900 5350 11600 5350
Wire Wire Line
	11600 5350 11600 6650
Wire Wire Line
	10900 5450 11250 5450
Wire Wire Line
	11250 5450 11250 6650
Wire Wire Line
	10900 5550 11050 5550
Wire Wire Line
	11050 5550 11050 6650
$EndSCHEMATC
