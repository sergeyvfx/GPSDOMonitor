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
L Capacitor_Ceramic:CBR04C409B5GAC C6
U 1 1 604E4BEB
P 1850 2550
F 0 "C6" V 1804 2685 50  0000 L CNN
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
Text Notes 8740 1385 0    50   ~ 0
24
Text Notes 8740 1485 0    50   ~ 0
23
Text Notes 8740 1585 0    50   ~ 0
22
Text Notes 8740 1685 0    50   ~ 0
21
Text Notes 8740 1785 0    50   ~ 0
20
Text Notes 8740 1885 0    50   ~ 0
19
Text Notes 8740 1985 0    50   ~ 0
18
Text Notes 8740 2085 0    50   ~ 0
17
Text Notes 8740 2185 0    50   ~ 0
16
Text Notes 8740 2285 0    50   ~ 0
15
Text Notes 8740 2385 0    50   ~ 0
14
Text Notes 8740 2485 0    50   ~ 0
13
Text Notes 8740 2585 0    50   ~ 0
12
Text Notes 8740 2685 0    50   ~ 0
11
Text Notes 8740 2785 0    50   ~ 0
10
Text Notes 8740 2885 0    50   ~ 0
9
Text Notes 8740 2985 0    50   ~ 0
8
Text Notes 8740 3085 0    50   ~ 0
7
Text Notes 8740 3185 0    50   ~ 0
6
Text Notes 8740 3285 0    50   ~ 0
5
Text Notes 8740 3385 0    50   ~ 0
4
Text Notes 8740 3485 0    50   ~ 0
3
Text Notes 8740 3585 0    50   ~ 0
2
Text Notes 8740 3685 0    50   ~ 0
1
Wire Wire Line
	7950 1050 7950 1250
Text Notes 8565 1285 0    50   ~ 0
50
Text Notes 8565 1385 0    50   ~ 0
49
Text Notes 8565 1485 0    50   ~ 0
48
Text Notes 8565 1585 0    50   ~ 0
47
Text Notes 8565 1685 0    50   ~ 0
46
Text Notes 8565 1785 0    50   ~ 0
45
Text Notes 8565 1885 0    50   ~ 0
44
Text Notes 8565 1985 0    50   ~ 0
43
Text Notes 8565 2085 0    50   ~ 0
42
Text Notes 8565 2185 0    50   ~ 0
41
Text Notes 8565 2285 0    50   ~ 0
40
Text Notes 8565 2385 0    50   ~ 0
39
Text Notes 8565 2485 0    50   ~ 0
38
Text Notes 8565 2585 0    50   ~ 0
37
Text Notes 8565 2685 0    50   ~ 0
36
Text Notes 8565 2785 0    50   ~ 0
35
Text Notes 8565 2885 0    50   ~ 0
34
Text Notes 8565 2985 0    50   ~ 0
33
Text Notes 8565 3085 0    50   ~ 0
32
Text Notes 8565 3185 0    50   ~ 0
31
Text Notes 8565 3285 0    50   ~ 0
30
Text Notes 8565 3385 0    50   ~ 0
29
Text Notes 8565 3485 0    50   ~ 0
28
Text Notes 8565 3585 0    50   ~ 0
27
Text Notes 8565 3685 0    50   ~ 0
26
Wire Wire Line
	7950 1850 8300 1850
Wire Wire Line
	8300 1750 7950 1750
Connection ~ 7950 1750
Wire Wire Line
	7950 1750 7950 1850
Wire Wire Line
	8300 1650 7950 1650
Connection ~ 7950 1650
Wire Wire Line
	7950 1650 7950 1750
Wire Wire Line
	8300 1550 7950 1550
Connection ~ 7950 1550
Wire Wire Line
	7950 1550 7950 1650
Wire Wire Line
	8300 1450 7950 1450
Connection ~ 7950 1450
Wire Wire Line
	7950 1450 7950 1550
Wire Wire Line
	8300 1350 7950 1350
Connection ~ 7950 1350
Wire Wire Line
	7950 1350 7950 1450
Wire Wire Line
	8300 1250 7950 1250
Connection ~ 7950 1250
Wire Wire Line
	7950 1250 7950 1350
Text Notes 8740 1285 0    50   ~ 0
25
$Comp
L Connector_Data:F31S-1A7L1-11050 J1
U 1 1 6055EFBD
P 8700 1100
F 0 "J1" H 8700 1215 50  0000 C CNN
F 1 "F31S-1A7L1-11050" H 8700 1124 50  0000 C CNN
F 2 "Connector_Data:F31S-1A7L1-11050" H 8700 1100 50  0001 C CNN
F 3 "https://www.amphenol-icc.com/media/wysiwyg/files/documentation/datasheet/flex/ffc_fpc_050mm_f31s.pdf" H 8700 1100 50  0001 C CNN
F 4 "FLEX CONNECTOR, 0.50MM PITCH, HE" H 8700 1100 50  0001 C CNN "Description"
F 5 "50 Position FFC, FPC Connector Contacts, Vertical - 1 Sided 0.020\" (0.50mm) Surface Mount" H 8700 1100 50  0001 C CNN "Detailed Description"
F 6 "Amphenol ICC (FCI)" H 8700 1100 50  0001 C CNN "Manufacturer"
F 7 "F31S-1A7L1-11050" H 8700 1100 50  0001 C CNN "Manufacturer Part Number"
F 8 "609-F31S-1A7L1-11050CT-ND" H 8700 1100 50  0001 C CNN "Digi-Key Part Number"
F 9 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/f31s.pdf" H 8700 1100 50  0001 C CNN "Drawing"
F 10 "Black" H 8700 1100 50  0001 C CNN "Actuator Color"
F 11 "Liquid Crystal Polymer (LCP), Glass Filled" H 8700 1100 50  0001 C CNN "Actuator Material"
F 12 "F31S-1A7L1" H 8700 1100 50  0001 C CNN "Base Part Number"
F 13 "Notched or Tabbed" H 8700 1100 50  0001 C CNN "Cable End Type"
F 14 "Contacts, Vertical - 1 Sided" H 8700 1100 50  0001 C CNN "Connector/Contact Type"
F 15 "Gold" H 8700 1100 50  0001 C CNN "Contact Finish"
F 16 "1.97µin (0.050µm)" H 8700 1100 50  0001 C CNN "Contact Finish Thickness"
F 17 "Phosphor Bronze" H 8700 1100 50  0001 C CNN "Contact Material"
F 18 "0.5A" H 8700 1100 50  0001 C CNN "Current Rating (Amps)"
F 19 "0.30mm" H 8700 1100 50  0001 C CNN "FFC, FCB Thickness"
F 20 "Solder Retention, Zero Insertion Force (ZIF)" H 8700 1100 50  0001 C CNN "Features"
F 21 "FFC, FPC" H 8700 1100 50  0001 C CNN "Flat Flex Type"
F 22 "0.228\" (5.80mm)" H 8700 1100 50  0001 C CNN "Height Above Board"
F 23 "Natural" H 8700 1100 50  0001 C CNN "Housing Color"
F 24 "Liquid Crystal Polymer (LCP), Glass Filled" H 8700 1100 50  0001 C CNN "Housing Material"
F 25 "Flip Lock" H 8700 1100 50  0001 C CNN "Locking Feature"
F 26 "UL94 V-0" H 8700 1100 50  0001 C CNN "Material Flammability Rating"
F 27 "30" H 8700 1100 50  0001 C CNN "Mating Cycles"
F 28 "Surface Mount" H 8700 1100 50  0001 C CNN "Mounting Type"
F 29 "50" H 8700 1100 50  0001 C CNN "Number of Positions"
F 30 "-40°C ~ 105°C" H 8700 1100 50  0001 C CNN "Operating Temperature"
F 31 "Cut Tape (CT)" H 8700 1100 50  0001 C CNN "Packaging"
F 32 "0.020\" (0.50mm)" H 8700 1100 50  0001 C CNN "Pitch"
F 33 "Aorora F31S" H 8700 1100 50  0001 C CNN "Series"
F 34 "Solder" H 8700 1100 50  0001 C CNN "Termination"
F 35 "50V" H 8700 1100 50  0001 C CNN "Voltage Rating"
	1    8700 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2050 7950 2050
Wire Wire Line
	7950 2050 7950 2150
Wire Wire Line
	8300 2150 7950 2150
Connection ~ 7950 2150
Wire Wire Line
	7950 2150 7950 2250
Wire Wire Line
	8300 2250 7950 2250
Connection ~ 7950 2250
Wire Wire Line
	7950 2250 7950 2450
Wire Wire Line
	8300 2450 7950 2450
Connection ~ 7950 2450
Wire Wire Line
	7950 2450 7950 2750
Wire Wire Line
	8300 2750 7950 2750
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 7950 3050
Wire Wire Line
	8300 3050 7950 3050
Connection ~ 7950 3050
Wire Wire Line
	7950 3050 7950 3250
Wire Wire Line
	8300 3250 7950 3250
Connection ~ 7950 3250
Wire Wire Line
	7950 3250 7950 3450
Wire Wire Line
	8300 3450 7950 3450
Connection ~ 7950 3450
Wire Wire Line
	7950 3450 7950 3650
Wire Wire Line
	8300 3650 7950 3650
Connection ~ 7950 3650
Wire Wire Line
	7950 3650 7950 3800
Wire Wire Line
	9500 3650 9500 3800
Wire Wire Line
	9100 3650 9500 3650
Wire Wire Line
	9100 3450 9500 3450
Wire Wire Line
	9500 3450 9500 3650
Connection ~ 9500 3650
Wire Wire Line
	9100 3250 9500 3250
Wire Wire Line
	9500 3250 9500 3450
Connection ~ 9500 3450
Wire Wire Line
	9100 3050 9500 3050
Wire Wire Line
	9500 3050 9500 3250
Connection ~ 9500 3250
Wire Wire Line
	9100 2850 9500 2850
Wire Wire Line
	9500 2850 9500 3050
Connection ~ 9500 3050
Wire Wire Line
	9100 2650 9500 2650
Wire Wire Line
	9500 2650 9500 2850
Connection ~ 9500 2850
Wire Wire Line
	9100 2050 9500 2050
Wire Wire Line
	9500 2050 9500 2650
Connection ~ 9500 2650
Wire Wire Line
	9100 1750 9500 1750
Wire Wire Line
	9500 1750 9500 2050
Connection ~ 9500 2050
Wire Wire Line
	9100 1550 9500 1550
Wire Wire Line
	9500 1550 9500 1750
Connection ~ 9500 1750
Wire Wire Line
	9100 1350 9500 1350
Wire Wire Line
	9500 1350 9500 1550
Connection ~ 9500 1550
Wire Wire Line
	9100 3550 10000 3550
Text GLabel 10000 3550 2    50   Output ~ 0
UART4_TX
Text GLabel 10000 1650 2    50   Output ~ 0
PP2S
Wire Wire Line
	9100 1650 10000 1650
Text GLabel 10000 1450 2    50   Output ~ 0
10MHz
Wire Wire Line
	9100 1450 10000 1450
Text GLabel 7650 2950 0    50   Input ~ 0
UART2_RxD_HV
Wire Wire Line
	8300 2950 7650 2950
Text GLabel 7650 2850 0    50   Output ~ 0
UART2_TxD_HV
Wire Wire Line
	8300 2850 7650 2850
Text GLabel 7650 2650 0    50   Input ~ 0
UART3_RxD
Text GLabel 7650 2550 0    50   Output ~ 0
UART3_TxD
Wire Wire Line
	7650 2550 8300 2550
Wire Wire Line
	8300 2650 7650 2650
Text Notes 9300 1250 0    50   ~ 0
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
L Power_Management:TPS563231DRLR U1
U 1 1 6058BE82
P 2300 3900
F 0 "U1" H 2300 4025 50  0000 C CNN
F 1 "TPS563231DRLR" H 2300 3934 50  0000 C CNN
F 2 "Package_TO_SOT:SOT-563" H 2300 3900 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps563231.pdf?HQS=dis-dk-null-digikeymode-dsf-pf-null-wwe&ts=1616258618453" H 2300 3900 50  0001 C CNN
F 4 "POWER MANAGEMENT" H 2300 3900 50  0001 C CNN "Description"
F 5 "Buck Switching Regulator IC Positive Adjustable 0.6V 1 Output 3A SOT-563, SOT-666" H 2300 3900 50  0001 C CNN "Detailed Description"
F 6 "Texas Instruments" H 2300 3900 50  0001 C CNN "Manufacturer"
F 7 "TPS563231DRLR" H 2300 3900 50  0001 C CNN "Manufacturer Part Number"
F 8 "296-TPS563231DRLRCT-ND" H 2300 3900 50  0001 C CNN "Digi-Key Part Number"
	1    2300 3900
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK325AB7106KM-P C4
U 1 1 60575BD8
P 1500 4200
F 0 "C4" V 1450 4350 50  0000 L BNN
F 1 "UMK325AB7106KM-P" H 1350 4300 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_1210_3225Metric" H 1350 4400 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK325AB7106KM-P%20&u=M" H 1350 4400 50  0001 C CNN
F 4 "CAP CER 10UF 50V X7R 1210" H 1500 4200 50  0001 C CNN "Description"
F 5 "10µF ±10% 50V Ceramic Capacitor X7R 1210 (3225 Metric)" H 1500 4200 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1500 4200 50  0001 C CNN "Manufacturer"
F 7 "UMK325AB7106KM-P" H 1500 4200 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6031-1-ND" H 1500 4200 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 1550 4350 50  0000 L BNN "Capacitance"
F 10 "M" H 1500 4200 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1500 4200 50  0001 C CNN "Packaging"
F 12 "±10%" H 1500 4200 50  0001 C CNN "Tolerance"
F 13 "50V" H 1500 4200 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1500 4200 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1500 4200 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1500 4200 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1500 4200 50  0001 C CNN "Mounting Type"
F 18 "1210 (3225 Metric)" H 1500 4200 50  0001 C CNN "Package / Case"
F 19 "0.126\" L x 0.098\" W (3.20mm x 2.50mm)" H 1500 4200 50  0001 C CNN "Size / Dimension"
F 20 "0.110\" (2.80mm)" H 1500 4200 50  0001 C CNN "Thickness (Max)"
	1    1500 4200
	0    1    1    0   
$EndComp
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C2
U 1 1 60576016
P 1000 4200
F 0 "C2" V 954 4335 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 850 4300 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 850 4400 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 850 4400 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 1000 4200 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 1000 4200 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1000 4200 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 1000 4200 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 1000 4200 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 1045 4335 50  0000 L BNN "Capacitance"
F 10 "M" H 1000 4200 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1000 4200 50  0001 C CNN "Packaging"
F 12 "±10%" H 1000 4200 50  0001 C CNN "Tolerance"
F 13 "50V" H 1000 4200 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1000 4200 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1000 4200 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1000 4200 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1000 4200 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 1000 4200 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 1000 4200 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 1000 4200 50  0001 C CNN "Thickness (Max)"
	1    1000 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 3850 1000 4000
Wire Wire Line
	1950 4000 1900 4000
Connection ~ 1000 4000
Wire Wire Line
	1000 4000 1000 4050
Wire Wire Line
	1500 4050 1500 4000
Connection ~ 1500 4000
Wire Wire Line
	1500 4000 1000 4000
Wire Wire Line
	1000 4350 1000 4400
Wire Wire Line
	1500 4350 1500 4400
Wire Wire Line
	1950 4200 1900 4200
Wire Wire Line
	1900 4200 1900 4400
Wire Wire Line
	1950 4100 1900 4100
Wire Wire Line
	1900 4100 1900 4000
Connection ~ 1900 4000
Wire Wire Line
	1900 4000 1500 4000
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C7
U 1 1 6058DCC8
P 2900 3950
F 0 "C7" H 3000 4100 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 2750 4050 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 2750 4150 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 2750 4150 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 2900 3950 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 2900 3950 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 2900 3950 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 2900 3950 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 2900 3950 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" H 3000 4000 50  0000 L BNN "Capacitance"
F 10 "M" H 2900 3950 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 2900 3950 50  0001 C CNN "Packaging"
F 12 "±10%" H 2900 3950 50  0001 C CNN "Tolerance"
F 13 "50V" H 2900 3950 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 2900 3950 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 2900 3950 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 2900 3950 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 2900 3950 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 2900 3950 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 2900 3950 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 2900 3950 50  0001 C CNN "Thickness (Max)"
	1    2900 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4000 2750 4000
Wire Wire Line
	2650 4100 3050 4100
Wire Wire Line
	2750 3950 2750 4000
Wire Wire Line
	3050 3950 3050 4100
$Comp
L Power:+5V5 #PWR021
U 1 1 605767A4
P 7950 1050
F 0 "#PWR021" H 7950 900 50  0001 C CNN
F 1 "+5V5" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L Power:+12V #PWR02
U 1 1 60576F71
P 1000 3850
F 0 "#PWR02" H 1000 3700 50  0001 C CNN
F 1 "+12V" H 1015 4023 50  0000 C CNN
F 2 "" H 1000 3850 50  0001 C CNN
F 3 "" H 1000 3850 50  0001 C CNN
	1    1000 3850
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR03
U 1 1 6057A467
P 1000 4400
F 0 "#PWR03" H 1000 4200 50  0001 C CNN
F 1 "GND" H 1005 4277 50  0000 C CNN
F 2 "" H 1000 4400 50  0001 C CNN
F 3 "" H 1000 4400 50  0001 C CNN
	1    1000 4400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR06
U 1 1 6057696C
P 1500 4400
F 0 "#PWR06" H 1500 4200 50  0001 C CNN
F 1 "GND" H 1505 4277 50  0000 C CNN
F 2 "" H 1500 4400 50  0001 C CNN
F 3 "" H 1500 4400 50  0001 C CNN
	1    1500 4400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR010
U 1 1 60576EF6
P 1900 4400
F 0 "#PWR010" H 1900 4200 50  0001 C CNN
F 1 "GND" H 1905 4277 50  0000 C CNN
F 2 "" H 1900 4400 50  0001 C CNN
F 3 "" H 1900 4400 50  0001 C CNN
	1    1900 4400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR022
U 1 1 605774B0
P 7950 3800
F 0 "#PWR022" H 7950 3600 50  0001 C CNN
F 1 "GND" H 7955 3677 50  0000 C CNN
F 2 "" H 7950 3800 50  0001 C CNN
F 3 "" H 7950 3800 50  0001 C CNN
	1    7950 3800
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR023
U 1 1 60577A8A
P 9500 3800
F 0 "#PWR023" H 9500 3600 50  0001 C CNN
F 1 "GND" H 9505 3677 50  0000 C CNN
F 2 "" H 9500 3800 50  0001 C CNN
F 3 "" H 9500 3800 50  0001 C CNN
	1    9500 3800
	1    0    0    -1  
$EndComp
$Comp
L Power:+3V3 #PWR016
U 1 1 605784B5
P 4050 1100
F 0 "#PWR016" H 4050 950 50  0001 C CNN
F 1 "+3V3" H 4065 1273 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR015
U 1 1 60579084
P 4000 3100
F 0 "#PWR015" H 4000 2900 50  0001 C CNN
F 1 "GND" H 4005 2977 50  0000 C CNN
F 2 "" H 4000 3100 50  0001 C CNN
F 3 "" H 4000 3100 50  0001 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR07
U 1 1 60579C1D
P 1550 2750
F 0 "#PWR07" H 1550 2550 50  0001 C CNN
F 1 "GND" H 1555 2627 50  0000 C CNN
F 2 "" H 1550 2750 50  0001 C CNN
F 3 "" H 1550 2750 50  0001 C CNN
	1    1550 2750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR09
U 1 1 6057A5D9
P 1850 2750
F 0 "#PWR09" H 1850 2550 50  0001 C CNN
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
$Comp
L Resistor:CRGCQ0402F10K R2
U 1 1 60578B8C
P 3750 4700
F 0 "R2" H 3720 4746 50  0000 L CNN
F 1 "CRGCQ0402F10K" H 3700 4700 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 3750 4700 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 3750 4700 50  0001 C CNN
F 4 "CRGCQ 0402 10K 1%" H 3750 4700 50  0001 C CNN "Description"
F 5 "10 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 3750 4700 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 3750 4700 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F10K" H 3750 4700 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129639CT-ND" H 3750 4700 50  0001 C CNN "Digi-Key Part Number"
F 9 "10k" H 3720 4655 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 3750 4700 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3750 4700 50  0001 C CNN "Packaging"
F 12 "±1%" H 3750 4700 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 3750 4700 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 3750 4700 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 3750 4700 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 3750 4700 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 3750 4700 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 3750 4700 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 3750 4700 50  0001 C CNN "Ratings"
F 20 "0402" H 3750 4700 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3750 4700 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 3750 4700 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 3750 4700 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 3750 4700 50  0001 C CNN "Base Part Number"
	1    3750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4200 3050 4200
$Comp
L Power:GND #PWR013
U 1 1 60583015
P 3650 4900
F 0 "#PWR013" H 3650 4700 50  0001 C CNN
F 1 "GND" H 3655 4777 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4850 3650 4900
Wire Wire Line
	3650 4500 3650 4550
Wire Wire Line
	3650 4100 3650 4150
Wire Wire Line
	3650 4450 3650 4500
Connection ~ 3650 4500
$Comp
L Resistor:CRGCQ0402F82K R1
U 1 1 60578B68
P 3750 4300
F 0 "R1" H 3720 4346 50  0000 L CNN
F 1 "CRGCQ0402F82K" H 3700 4300 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 3750 4300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 3750 4300 50  0001 C CNN
F 4 "CRGCQ 0402 82K 1%" H 3750 4300 50  0001 C CNN "Description"
F 5 "8.2 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 3750 4300 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 3750 4300 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F82K" H 3750 4300 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129650CT-ND" H 3750 4300 50  0001 C CNN "Digi-Key Part Number"
F 9 "82k" H 3720 4255 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 3750 4300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3750 4300 50  0001 C CNN "Packaging"
F 12 "±1%" H 3750 4300 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 3750 4300 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 3750 4300 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 3750 4300 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 3750 4300 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 3750 4300 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 3750 4300 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 3750 4300 50  0001 C CNN "Ratings"
F 20 "0402" H 3750 4300 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3750 4300 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 3750 4300 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 3750 4300 50  0001 C CNN "Number of Terminations"
	1    3750 4300
	1    0    0    -1  
$EndComp
$Comp
L Power:+5V5 #PWR017
U 1 1 6057A8A5
P 4150 3850
F 0 "#PWR017" H 4150 3700 50  0001 C CNN
F 1 "+5V5" H 4165 4023 50  0000 C CNN
F 2 "" H 4150 3850 50  0001 C CNN
F 3 "" H 4150 3850 50  0001 C CNN
	1    4150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4100 4150 4100
Wire Wire Line
	4150 4100 4150 3850
$Comp
L Capacitor_Electrolytic:A768KE686M1GLAE038 C9
U 1 1 60579AA2
P 4150 4500
F 0 "C9" V 4104 4618 50  0000 L CNN
F 1 "A768KE686M1GLAE038" H 4000 4600 50  0001 L BNN
F 2 "Capacitor_Electrolytic:CP_Elec_KEMET_8mm" H 4000 4700 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/A768KE686M1GLAE038.pdf" H 4000 4700 50  0001 C CNN
F 4 "CAP ALUM POLY 68UF 20% 40V SMD" H 4150 4500 50  0001 C CNN "Description"
F 5 "68µF 40V Aluminum - Polymer Capacitors Radial, Can - SMD 38mOhm 2000 Hrs @ 125°C" H 4150 4500 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 4150 4500 50  0001 C CNN "Manufacturer"
F 7 "A768KE686M1GLAE038" H 4150 4500 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-A768KE686M1GLAE038CT-ND" H 4150 4500 50  0001 C CNN "Digi-Key Part Number"
F 9 "A768" H 4150 4500 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 4150 4500 50  0001 C CNN "Packaging"
F 11 "Polymer" H 4150 4500 50  0001 C CNN "Type"
F 12 "68µF" V 4195 4618 50  0000 L CNN "Capacitance"
F 13 "±20%" H 4150 4500 50  0001 C CNN "Tolerance"
F 14 "40V" H 4150 4500 50  0001 C CNN "Voltage - Rated"
F 15 "38mOhm" H 4150 4500 50  0001 C CNN "ESR (Equivalent Series Resistance)"
F 16 "2000 Hrs @ 125°C" H 4150 4500 50  0001 C CNN "Lifetime @ Temp."
F 17 "-55°C ~ 125°C" H 4150 4500 50  0001 C CNN "Operating Temperature"
F 18 "General Purpose" H 4150 4500 50  0001 C CNN "Applications"
F 19 "67.5mA @ 120Hz" H 4150 4500 50  0001 C CNN "Ripple Current @ Low Frequency"
F 20 "1.35A @ 100kHz" H 4150 4500 50  0001 C CNN "Ripple Current @ High Frequency"
F 21 "0.315\" Dia (8.00mm)" H 4150 4500 50  0001 C CNN "Size / Dimension"
F 22 "0.236\" (6.00mm)" H 4150 4500 50  0001 C CNN "Height - Seated (Max)"
F 23 "0.327\" L x 0.327\" W (8.30mm x 8.30mm)" H 4150 4500 50  0001 C CNN "Surface Mount Land Size"
F 24 "Surface Mount" H 4150 4500 50  0001 C CNN "Mounting Type"
F 25 "Radial, Can - SMD" H 4150 4500 50  0001 C CNN "Package / Case"
	1    4150 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 4100 4150 4350
Connection ~ 4150 4100
$Comp
L Power:GND #PWR018
U 1 1 6057EFD1
P 4150 4900
F 0 "#PWR018" H 4150 4700 50  0001 C CNN
F 1 "GND" H 4155 4777 50  0000 C CNN
F 2 "" H 4150 4900 50  0001 C CNN
F 3 "" H 4150 4900 50  0001 C CNN
	1    4150 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4650 4150 4900
Wire Wire Line
	3050 4500 3650 4500
Wire Wire Line
	3050 4200 3050 4500
Wire Wire Line
	3050 4100 3100 4100
Connection ~ 3050 4100
Wire Wire Line
	3600 4100 3650 4100
Connection ~ 3650 4100
$Comp
L Power_Management:MCP16301T-I_CHY U2
U 1 1 6057AC98
P 2400 5700
F 0 "U2" H 2300 5750 50  0000 R BNN
F 1 "MCP16301T-I_CHY" H 2300 5650 50  0000 R BNN
F 2 "Package_TO_SOT:SOT-23-6" H 2350 5400 50  0001 C CNN
F 3 "http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en554098" H 2350 5400 50  0001 C CNN
F 4 "IC REG BUCK ADJ 600MA SOT23-6" H 2450 4800 50  0001 C CNN "Description"
F 5 "Buck Switching Regulator IC Positive Adjustable 2V 1 Output 600mA SOT-23-6" H 2450 4800 50  0001 C CNN "Detailed Description"
F 6 "Microchip Technology" H 2450 4800 50  0001 C CNN "Manufacturer"
F 7 "MCP16301T-I/CHY" H 2450 4800 50  0001 C CNN "Manufacturer Part Number"
F 8 "MCP16301T-I/CHYCT-ND" H 2450 4800 50  0001 C CNN "Digi-Key Part Number"
F 9 "Cut Tape (CT)" H 2450 4800 50  0001 C CNN "Packaging"
F 10 "Step-Down" H 2450 4800 50  0001 C CNN "Function"
F 11 "Positive" H 2450 4800 50  0001 C CNN "Output Configuration"
F 12 "Buck" H 2400 5700 50  0001 C CNN "Topology"
F 13 "Adjustable" H 2450 4800 50  0001 C CNN "Output Type"
F 14 "1" H 2400 5700 50  0001 C CNN "Number of Outputs"
F 15 "4V" H 2400 5700 50  0001 C CNN "Voltage - Input (Min)"
F 16 "30V" H 2400 5700 50  0001 C CNN "Voltage - Input (Max)"
F 17 "2V" H 2400 5700 50  0001 C CNN "Voltage - Output (Min/Fixed)"
F 18 "15V" H 2400 5700 50  0001 C CNN "Voltage - Output (Max)"
F 19 "600mA" H 2450 4800 50  0001 C CNN "Current - Output"
F 20 "500kHz" H 2450 4800 50  0001 C CNN "Frequency - Switching"
F 21 "No" H 2400 5700 50  0001 C CNN "Synchronous Rectifier"
F 22 "-40°C ~ 125°C (TJ)" H 2450 4800 50  0001 C CNN "Operating Temperature"
F 23 "Surface Mount" H 2450 4800 50  0001 C CNN "Mounting Type"
F 24 "SOT-23-6" H 2450 4800 50  0001 C CNN "Package / Case"
F 25 "SOT-23-6" H 2450 4800 50  0001 C CNN "Supplier Device Package"
F 26 "MCP1630" H 2450 4800 50  0001 C CNN "Base Part Number"
	1    2400 5700
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C3
U 1 1 605849A4
P 1050 6300
F 0 "C3" V 1004 6435 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 900 6400 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 900 6500 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 900 6500 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 1050 6300 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 1050 6300 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1050 6300 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 1050 6300 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 1050 6300 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 1095 6435 50  0000 L BNN "Capacitance"
F 10 "M" H 1050 6300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1050 6300 50  0001 C CNN "Packaging"
F 12 "±10%" H 1050 6300 50  0001 C CNN "Tolerance"
F 13 "50V" H 1050 6300 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1050 6300 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1050 6300 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1050 6300 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1050 6300 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 1050 6300 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 1050 6300 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 1050 6300 50  0001 C CNN "Thickness (Max)"
	1    1050 6300
	0    1    1    0   
$EndComp
$Comp
L Power:GND #PWR011
U 1 1 60588E80
P 2400 6600
F 0 "#PWR011" H 2400 6400 50  0001 C CNN
F 1 "GND" H 2405 6477 50  0000 C CNN
F 2 "" H 2400 6600 50  0001 C CNN
F 3 "" H 2400 6600 50  0001 C CNN
	1    2400 6600
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR08
U 1 1 60589A68
P 1600 6600
F 0 "#PWR08" H 1600 6400 50  0001 C CNN
F 1 "GND" H 1605 6477 50  0000 C CNN
F 2 "" H 1600 6600 50  0001 C CNN
F 3 "" H 1600 6600 50  0001 C CNN
	1    1600 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6550 2400 6600
Wire Wire Line
	2050 6200 1950 6200
Wire Wire Line
	1950 6200 1950 6100
Connection ~ 1950 6100
Wire Wire Line
	1950 6100 2050 6100
$Comp
L Power:+12V #PWR04
U 1 1 60596F6B
P 1050 5700
F 0 "#PWR04" H 1050 5550 50  0001 C CNN
F 1 "+12V" H 1065 5873 50  0000 C CNN
F 2 "" H 1050 5700 50  0001 C CNN
F 3 "" H 1050 5700 50  0001 C CNN
	1    1050 5700
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK325AB7106KM-P C5
U 1 1 605A0432
P 1600 6300
F 0 "C5" V 1550 6450 50  0000 L BNN
F 1 "UMK325AB7106KM-P" H 1450 6400 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_1210_3225Metric" H 1450 6500 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK325AB7106KM-P%20&u=M" H 1450 6500 50  0001 C CNN
F 4 "CAP CER 10UF 50V X7R 1210" H 1600 6300 50  0001 C CNN "Description"
F 5 "10µF ±10% 50V Ceramic Capacitor X7R 1210 (3225 Metric)" H 1600 6300 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 1600 6300 50  0001 C CNN "Manufacturer"
F 7 "UMK325AB7106KM-P" H 1600 6300 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6031-1-ND" H 1600 6300 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 1650 6450 50  0000 L BNN "Capacitance"
F 10 "M" H 1600 6300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 1600 6300 50  0001 C CNN "Packaging"
F 12 "±10%" H 1600 6300 50  0001 C CNN "Tolerance"
F 13 "50V" H 1600 6300 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 1600 6300 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 1600 6300 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 1600 6300 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 1600 6300 50  0001 C CNN "Mounting Type"
F 18 "1210 (3225 Metric)" H 1600 6300 50  0001 C CNN "Package / Case"
F 19 "0.126\" L x 0.098\" W (3.20mm x 2.50mm)" H 1600 6300 50  0001 C CNN "Size / Dimension"
F 20 "0.110\" (2.80mm)" H 1600 6300 50  0001 C CNN "Thickness (Max)"
	1    1600 6300
	0    1    1    0   
$EndComp
$Comp
L Power:GND #PWR05
U 1 1 605A5985
P 1050 6600
F 0 "#PWR05" H 1050 6400 50  0001 C CNN
F 1 "GND" H 1055 6477 50  0000 C CNN
F 2 "" H 1050 6600 50  0001 C CNN
F 3 "" H 1050 6600 50  0001 C CNN
	1    1050 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6450 1600 6600
Wire Wire Line
	1050 6450 1050 6600
Wire Wire Line
	1050 5700 1050 6100
Wire Wire Line
	1050 6100 1600 6100
Connection ~ 1050 6100
Wire Wire Line
	1050 6100 1050 6150
Wire Wire Line
	1600 6150 1600 6100
Connection ~ 1600 6100
Wire Wire Line
	1600 6100 1950 6100
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C8
U 1 1 605BAF12
P 2950 5900
F 0 "C8" V 2800 6050 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 2800 6000 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 2800 6100 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 2800 6100 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 2950 5900 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 2950 5900 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 2950 5900 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 2950 5900 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 2950 5900 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 2900 6050 50  0000 L BNN "Capacitance"
F 10 "M" H 2950 5900 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 2950 5900 50  0001 C CNN "Packaging"
F 12 "±10%" H 2950 5900 50  0001 C CNN "Tolerance"
F 13 "50V" H 2950 5900 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 2950 5900 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 2950 5900 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 2950 5900 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 2950 5900 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 2950 5900 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 2950 5900 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 2950 5900 50  0001 C CNN "Thickness (Max)"
	1    2950 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 6100 2950 6100
Wire Wire Line
	2950 6100 2950 6050
Wire Wire Line
	2400 5700 2400 5600
Wire Wire Line
	2400 5600 2950 5600
Wire Wire Line
	2950 5600 2950 5750
$Comp
L Resistor:CRGCQ0402F10K R4
U 1 1 605CFFBB
P 3850 6800
F 0 "R4" H 3820 6846 50  0000 L CNN
F 1 "CRGCQ0402F10K" H 3800 6800 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 3850 6800 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 3850 6800 50  0001 C CNN
F 4 "CRGCQ 0402 10K 1%" H 3850 6800 50  0001 C CNN "Description"
F 5 "10 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 3850 6800 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 3850 6800 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F10K" H 3850 6800 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129639CT-ND" H 3850 6800 50  0001 C CNN "Digi-Key Part Number"
F 9 "10k" H 3820 6755 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 3850 6800 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3850 6800 50  0001 C CNN "Packaging"
F 12 "±1%" H 3850 6800 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 3850 6800 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 3850 6800 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 3850 6800 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 3850 6800 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 3850 6800 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 3850 6800 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 3850 6800 50  0001 C CNN "Ratings"
F 20 "0402" H 3850 6800 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3850 6800 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 3850 6800 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 3850 6800 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 3850 6800 50  0001 C CNN "Base Part Number"
	1    3850 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6600 3750 6650
$Comp
L Power:GND #PWR014
U 1 1 605D7A74
P 3750 7000
F 0 "#PWR014" H 3750 6800 50  0001 C CNN
F 1 "GND" H 3755 6877 50  0000 C CNN
F 2 "" H 3750 7000 50  0001 C CNN
F 3 "" H 3750 7000 50  0001 C CNN
	1    3750 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6950 3750 7000
Wire Wire Line
	2750 6200 2950 6200
Wire Wire Line
	2950 6200 2950 6600
$Comp
L Resistor:CRGCQ0402F33K R3
U 1 1 6057CB7D
P 3850 6400
F 0 "R3" H 3820 6446 50  0000 L CNN
F 1 "CRGCQ0402F33K" H 3800 6400 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 3850 6400 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 3850 6400 50  0001 C CNN
F 4 "CRGCQ 0402 33K 1%" H 3850 6400 50  0001 C CNN "Description"
F 5 "33 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 3850 6400 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 3850 6400 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F33K" H 3850 6400 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129645CT-ND" H 3850 6400 50  0001 C CNN "Digi-Key Part Number"
F 9 "33k" H 3820 6355 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 3850 6400 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3850 6400 50  0001 C CNN "Packaging"
F 12 "±1%" H 3850 6400 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 3850 6400 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 3850 6400 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 3850 6400 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 3850 6400 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 3850 6400 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 3850 6400 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 3850 6400 50  0001 C CNN "Ratings"
F 20 "0402" H 3850 6400 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 3850 6400 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 3850 6400 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 3850 6400 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 3850 6400 50  0001 C CNN "Base Part Number"
	1    3850 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6550 3750 6600
Connection ~ 3750 6600
$Comp
L Diode:SS14HE D1
U 1 1 6057E292
P 3150 6300
F 0 "D1" V 3104 6378 50  0000 L CNN
F 1 "SS14HE" V 3195 6378 50  0000 L CNN
F 2 "Diode:SOD-323HE" H 3160 6450 50  0001 C CNN
F 3 "https://www.onsemi.com/pdf/datasheet/ss13he-d.pdf" H 3160 6450 50  0001 C CNN
F 4 "DIODE SCHOTTKY 40V 1A SOD323HE" H 3150 6300 50  0001 C CNN "Description"
F 5 "Diode Schottky 40V 1A Surface Mount SOD-323HE" H 3150 6300 50  0001 C CNN "Detailed Description"
F 6 "ON Semiconductor" H 3150 6300 50  0001 C CNN "Manufacturer"
F 7 "SS14HE" H 3150 6300 50  0001 C CNN "Manufacturer Part Number"
F 8 "SS14HECT-ND" H 3150 6300 50  0001 C CNN "Digi-Key Part Number"
F 9 "SS14" H 3150 6300 50  0001 C CNN "Base Part Number"
F 10 "Automotive, AEC-Q101" H 3150 6300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3150 6300 50  0001 C CNN "Packaging"
F 12 "Schottky" H 3150 6300 50  0001 C CNN "Diode Type"
F 13 "40V" H 3150 6300 50  0001 C CNN "Voltage - DC Reverse (Vr) (Max)"
F 14 "1A" H 3150 6300 50  0001 C CNN "Current - Average Rectified (Io)"
F 15 "550mV @ 1A" H 3150 6300 50  0001 C CNN "Voltage - Forward (Vf) (Max) @ If"
F 16 "Fast Recovery =< 500ns, > 200mA (Io)" H 3150 6300 50  0001 C CNN "Speed"
F 17 "5.6ns" H 3150 6300 50  0001 C CNN "Reverse Recovery Time (trr)"
F 18 "50µA @ 40V" H 3150 6300 50  0001 C CNN "Current - Reverse Leakage @ Vr"
F 19 "55pF @ 4V, 1MHz" H 3150 6300 50  0001 C CNN "Capacitance @ Vr, F"
F 20 "Surface Mount" H 3150 6300 50  0001 C CNN "Mounting Type"
F 21 "2-SMD, Flat Lead" H 3150 6300 50  0001 C CNN "Package / Case"
F 22 "SOD-323HE" H 3150 6300 50  0001 C CNN "Supplier Device Package"
F 23 "-55°C ~ 150°C" H 3150 6300 50  0001 C CNN "Operating Temperature - Junction"
	1    3150 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6600 3750 6600
$Comp
L Power:GND #PWR012
U 1 1 6058F6ED
P 3150 7000
F 0 "#PWR012" H 3150 6800 50  0001 C CNN
F 1 "GND" H 3155 6877 50  0000 C CNN
F 2 "" H 3150 7000 50  0001 C CNN
F 3 "" H 3150 7000 50  0001 C CNN
	1    3150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6450 3150 7000
Wire Wire Line
	2950 6100 3150 6100
Wire Wire Line
	3150 6100 3150 6150
Connection ~ 2950 6100
$Comp
L Inductor:ASPI-7318-4R7M-T L1
U 1 1 6057DE98
P 3350 4100
F 0 "L1" H 3350 4315 50  0000 C CNN
F 1 "ASPI-7318-4R7M-T" H 3350 4050 50  0001 C CNN
F 2 "Inductor:ASPI-7318" H 3350 4100 50  0001 C CNN
F 3 "https://abracon.com/Magnetics/power/ASPI7318.pdf" H 3350 4100 50  0001 C CNN
F 4 "FIXED IND 4.7UH 6.2A 34.2 MOHM" H 3350 4100 50  0001 C CNN "Description"
F 5 "4.7µH Shielded Molded Inductor 6.2A 34.2mOhm Max Nonstandard" H 3350 4100 50  0001 C CNN "Detailed Description"
F 6 "Abracon LLC" H 3350 4100 50  0001 C CNN "Manufacturer"
F 7 "ASPI-7318-4R7M-T" H 3350 4100 50  0001 C CNN "Manufacturer Part Number"
F 8 "ASPI-7318-4R7M-TCT-ND" H 3350 4100 50  0001 C CNN "Digi-Key Part Number"
F 9 "https://abracon.com/Support/PackageDrawing/Magnetics/ASPI-7318.PDF" H 3350 4100 50  0001 C CNN "Drawing"
F 10 "ASPI-7318" H 3350 4100 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 3350 4100 50  0001 C CNN "Packaging"
F 12 "Wirewound" H 3350 4100 50  0001 C CNN "Type"
F 13 "Ferrite" H 3350 4100 50  0001 C CNN "Material - Core"
F 14 "4.7µH" H 3350 4224 50  0000 C CNN "Inductance"
F 15 "±20%" H 3350 4100 50  0001 C CNN "Tolerance"
F 16 "5A" H 3350 4100 50  0001 C CNN "Current Rating (Amps)"
F 17 "8A" H 3350 4100 50  0001 C CNN "Current - Saturation (Isat)"
F 18 "Shielded" H 3350 4100 50  0001 C CNN "Shielding"
F 19 "40mOhm Max" H 3350 4100 50  0001 C CNN "DC Resistance (DCR)"
F 20 "-55°C ~ 125°C" H 3350 4100 50  0001 C CNN "Operating Temperature"
F 21 "200kHz" H 3350 4100 50  0001 C CNN "Inductance Frequency - Test"
F 22 "Surface Mount" H 3350 4100 50  0001 C CNN "Mounting Type"
F 23 "Nonstandard" H 3350 4100 50  0001 C CNN "Package / Case"
F 24 "0.287\" L x 0.268\" W (7.30mm x 6.80mm)" H 3350 4100 50  0001 C CNN "Size / Dimension"
F 25 "0.118\" (3.00mm)" H 3350 4100 50  0001 C CNN "Height - Seated (Max)"
	1    3350 4100
	1    0    0    -1  
$EndComp
$Comp
L Inductor:NR6028T150M L2
U 1 1 6057E0BB
P 3450 6100
F 0 "L2" H 3450 6315 50  0000 C CNN
F 1 "NR6028T150M" H 3450 6050 50  0001 C CNN
F 2 "Inductor:NR6028" H 3450 6100 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=NR6028T150M%20%20&u=M" H 3450 6100 50  0001 C CNN
F 4 "FIXED IND 15UH 1.8A 123.5 MOHM" H 3450 6100 50  0001 C CNN "Description"
F 5 "15µH Shielded Wirewound Inductor 1.8A 123.5mOhm Max Nonstandard" H 3450 6100 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 3450 6100 50  0001 C CNN "Manufacturer"
F 7 "NR6028T150M" H 3450 6100 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-2630-1-ND" H 3450 6100 50  0001 C CNN "Digi-Key Part Number"
F 9 "NR" H 3450 6100 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 3450 6100 50  0001 C CNN "Packaging"
F 11 "Wirewound" H 3450 6100 50  0001 C CNN "Type"
F 12 "Ferrite" H 3450 6100 50  0001 C CNN "Material - Core"
F 13 "15µH" H 3450 6200 50  0000 C CNN "Inductance"
F 14 "±20%" H 3450 6100 50  0001 C CNN "Tolerance"
F 15 "1.8A" H 3450 6100 50  0001 C CNN "Current Rating (Amps)"
F 16 "1.6A" H 3450 6100 50  0001 C CNN "Current - Saturation (Isat)"
F 17 "Shielded" H 3450 6100 50  0001 C CNN "Shielding"
F 18 "123.5mOhm Max" H 3450 6100 50  0001 C CNN "DC Resistance (DCR)"
F 19 "17MHz" H 3450 6100 50  0001 C CNN "Frequency - Self Resonant"
F 20 "-25°C ~ 120°C" H 3450 6100 50  0001 C CNN "Operating Temperature"
F 21 "100kHz" H 3450 6100 50  0001 C CNN "Inductance Frequency - Test"
F 22 "Surface Mount" H 3450 6100 50  0001 C CNN "Mounting Type"
F 23 "Nonstandard" H 3450 6100 50  0001 C CNN "Package / Case"
F 24 "0.236\" L x 0.236\" W (6.00mm x 6.00mm)" H 3450 6100 50  0001 C CNN "Size / Dimension"
F 25 "0.110\" (2.80mm)" H 3450 6100 50  0001 C CNN "Height - Seated (Max)"
	1    3450 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6100 3200 6100
Connection ~ 3150 6100
Wire Wire Line
	3700 6100 3750 6100
Wire Wire Line
	3750 6100 3750 6250
$Comp
L Power:+3V3 #PWR019
U 1 1 6058B85F
P 4150 5700
F 0 "#PWR019" H 4150 5550 50  0001 C CNN
F 1 "+3V3" H 4165 5873 50  0000 C CNN
F 2 "" H 4150 5700 50  0001 C CNN
F 3 "" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6100 4150 6100
Wire Wire Line
	4150 6100 4150 5700
Connection ~ 3750 6100
$Comp
L Diode:1N914BWT D2
U 1 1 6057FC51
P 3400 5600
F 0 "D2" H 3400 5815 50  0000 C CNN
F 1 "1N914BWT" H 3400 5724 50  0000 C CNN
F 2 "Diode:SOD-523" H 3410 5750 50  0001 C CNN
F 3 "https://rocelec.widen.net/view/pdf/bnxdzepaue/ONSM-S-A0003584797-1.pdf?t.download=true&u=5oefqw" H 3410 5750 50  0001 C CNN
F 4 "DIODE GEN PURP 75V 200MA SOD523F" H 3400 5600 50  0001 C CNN "Description"
F 5 "Diode Standard 75V 200mA Surface Mount SOD-523F" H 3400 5600 50  0001 C CNN "Detailed Description"
F 6 "ON Semiconductor" H 3400 5600 50  0001 C CNN "Manufacturer"
F 7 "1N914BWT" H 3400 5600 50  0001 C CNN "Manufacturer Part Number"
F 8 "1N914BWTCT-ND" H 3400 5600 50  0001 C CNN "Digi-Key Part Number"
F 9 "Cut Tape (CT) " H 3400 5600 50  0001 C CNN "Packaging"
F 10 "Standard" H 3400 5600 50  0001 C CNN "Diode Type"
F 11 "75V" H 3400 5600 50  0001 C CNN "Voltage - DC Reverse (Vr) (Max)"
F 12 "20mA" H 3400 5600 50  0001 C CNN "Current - Average Rectified (Io)"
F 13 "1V @ 100mA" H 3400 5600 50  0001 C CNN "Voltage - Forward (Vf) (Max) @ If"
F 14 "Small Signal =< 200mA (Io), Any Speed" H 3400 5600 50  0001 C CNN "Speed"
F 15 "4ns" H 3400 5600 50  0001 C CNN "Reverse Recovery Time (trr)"
F 16 "5µA @ 75V" H 3400 5600 50  0001 C CNN "Current - Reverse Leakage @ Vr"
F 17 "4pF @ 0V, 1MHz" H 3400 5600 50  0001 C CNN "Capacitance @ Vr, F"
F 18 "Surface Mount" H 3400 5600 50  0001 C CNN "Mounting Type"
F 19 "SC-79, SOD-523F" H 3400 5600 50  0001 C CNN "Package / Case"
F 20 "SOD-523F" H 3400 5600 50  0001 C CNN "Supplier Device Package"
F 21 "-55°C ~ 150°C" H 3400 5600 50  0001 C CNN "Operating Temperature - Junction"
F 22 "1N914B" H 3400 5600 50  0001 C CNN "Base Part Number"
	1    3400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5600 2950 5600
Connection ~ 2950 5600
Wire Wire Line
	3550 5600 3750 5600
Wire Wire Line
	3750 5600 3750 6100
$Comp
L Capacitor_Ceramic:EMK212BB7106KG-T C10
U 1 1 6058E3E8
P 4150 6400
F 0 "C10" V 4104 6535 50  0000 L CNN
F 1 "EMK212BB7106KG-T" H 4000 6500 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0805_2012Metric" H 4000 6600 50  0001 C CNN
F 3 "https://www.yuden.co.jp/productdata/catalog/mlcc06_e.pdf" H 4000 6600 50  0001 C CNN
F 4 "CAP CER 10UF 16V X7R 0805" H 4150 6400 50  0001 C CNN "Description"
F 5 "10µF ±10% 16V Ceramic Capacitor X7R 0805 (2012 Metric)" H 4150 6400 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 4150 6400 50  0001 C CNN "Manufacturer"
F 7 "EMK212BB7106KG-T" H 4150 6400 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6139-1-ND" H 4150 6400 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 4195 6535 50  0000 L CNN "Capacitance"
F 10 "M" H 4150 6400 50  0001 C CNN "Series"
F 11 "Cut Tape (CT) " H 4150 6400 50  0001 C CNN "Packaging"
F 12 "±10%" H 4150 6400 50  0001 C CNN "Tolerance"
F 13 "16V" H 4150 6400 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 4150 6400 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 4150 6400 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 4150 6400 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 4150 6400 50  0001 C CNN "Mounting Type"
F 18 "0805 (2012 Metric)" H 4150 6400 50  0001 C CNN "Package / Case"
F 19 "0.079\" L x 0.049\" W (2.00mm x 1.25mm)" H 4150 6400 50  0001 C CNN "Size / Dimension"
F 20 "0.053\" (1.35mm)" H 4150 6400 50  0001 C CNN "Thickness (Max)"
	1    4150 6400
	0    1    1    0   
$EndComp
$Comp
L Power:GND #PWR020
U 1 1 60591233
P 4150 7000
F 0 "#PWR020" H 4150 6800 50  0001 C CNN
F 1 "GND" H 4155 6877 50  0000 C CNN
F 2 "" H 4150 7000 50  0001 C CNN
F 3 "" H 4150 7000 50  0001 C CNN
	1    4150 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6100 4150 6250
Connection ~ 4150 6100
Wire Wire Line
	4150 6550 4150 7000
Text Notes 1950 3650 0    50   ~ 0
5.5v 3A regulator
Text Notes 1950 5400 0    50   ~ 0
3.3v regulator
$EndSCHEMATC
