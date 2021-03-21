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
L Microcontroller:PIC18LF2550-ISO U1
U 1 1 604E2F5D
P 4050 2100
F 0 "U1" H 4350 3050 50  0000 L BNN
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
L Capacitor_Ceramic:CBR04C409B5GAC C2
U 1 1 604E4BEB
P 1850 2550
F 0 "C2" V 1804 2685 50  0000 L CNN
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
L Power_Management:TPS563231DRLR U2
U 1 1 6058BE82
P 8650 4900
F 0 "U2" H 8650 5025 50  0000 C CNN
F 1 "TPS563231DRLR" H 8650 4934 50  0000 C CNN
F 2 "Package_TO_SOT:SOT-563" H 8650 4900 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps563231.pdf?HQS=dis-dk-null-digikeymode-dsf-pf-null-wwe&ts=1616258618453" H 8650 4900 50  0001 C CNN
F 4 "POWER MANAGEMENT" H 8650 4900 50  0001 C CNN "Description"
F 5 "Buck Switching Regulator IC Positive Adjustable 0.6V 1 Output 3A SOT-563, SOT-666" H 8650 4900 50  0001 C CNN "Detailed Description"
F 6 "Texas Instruments" H 8650 4900 50  0001 C CNN "Manufacturer"
F 7 "TPS563231DRLR" H 8650 4900 50  0001 C CNN "Manufacturer Part Number"
F 8 "296-TPS563231DRLRCT-ND" H 8650 4900 50  0001 C CNN "Digi-Key Part Number"
	1    8650 4900
	1    0    0    -1  
$EndComp
$Comp
L Capacitor_Ceramic:UMK325AB7106KM-P C4
U 1 1 60575BD8
P 7850 5200
F 0 "C4" V 7800 5350 50  0000 L BNN
F 1 "UMK325AB7106KM-P" H 7700 5300 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_1210_3225Metric" H 7700 5400 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK325AB7106KM-P%20&u=M" H 7700 5400 50  0001 C CNN
F 4 "CAP CER 10UF 50V X7R 1210" H 7850 5200 50  0001 C CNN "Description"
F 5 "10µF ±10% 50V Ceramic Capacitor X7R 1210 (3225 Metric)" H 7850 5200 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 7850 5200 50  0001 C CNN "Manufacturer"
F 7 "UMK325AB7106KM-P" H 7850 5200 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-6031-1-ND" H 7850 5200 50  0001 C CNN "Digi-Key Part Number"
F 9 "10µF" V 7900 5350 50  0000 L BNN "Capacitance"
F 10 "M" H 7850 5200 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 7850 5200 50  0001 C CNN "Packaging"
F 12 "±10%" H 7850 5200 50  0001 C CNN "Tolerance"
F 13 "50V" H 7850 5200 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 7850 5200 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 7850 5200 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 7850 5200 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 7850 5200 50  0001 C CNN "Mounting Type"
F 18 "1210 (3225 Metric)" H 7850 5200 50  0001 C CNN "Package / Case"
F 19 "0.126\" L x 0.098\" W (3.20mm x 2.50mm)" H 7850 5200 50  0001 C CNN "Size / Dimension"
F 20 "0.110\" (2.80mm)" H 7850 5200 50  0001 C CNN "Thickness (Max)"
	1    7850 5200
	0    1    1    0   
$EndComp
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C3
U 1 1 60576016
P 7350 5200
F 0 "C3" V 7304 5335 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 7200 5300 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 7200 5400 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 7200 5400 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 7350 5200 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 7350 5200 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 7350 5200 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 7350 5200 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 7350 5200 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" V 7395 5335 50  0000 L BNN "Capacitance"
F 10 "M" H 7350 5200 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 7350 5200 50  0001 C CNN "Packaging"
F 12 "±10%" H 7350 5200 50  0001 C CNN "Tolerance"
F 13 "50V" H 7350 5200 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 7350 5200 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 7350 5200 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 7350 5200 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 7350 5200 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 7350 5200 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 7350 5200 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 7350 5200 50  0001 C CNN "Thickness (Max)"
	1    7350 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4850 7350 5000
Wire Wire Line
	8300 5000 8250 5000
Connection ~ 7350 5000
Wire Wire Line
	7350 5000 7350 5050
Wire Wire Line
	7850 5050 7850 5000
Connection ~ 7850 5000
Wire Wire Line
	7850 5000 7350 5000
Wire Wire Line
	7350 5350 7350 5400
Wire Wire Line
	7850 5350 7850 5400
Wire Wire Line
	8300 5200 8250 5200
Wire Wire Line
	8250 5200 8250 5400
Wire Wire Line
	8300 5100 8250 5100
Wire Wire Line
	8250 5100 8250 5000
Connection ~ 8250 5000
Wire Wire Line
	8250 5000 7850 5000
$Comp
L Capacitor_Ceramic:UMK105B7104KV-FR C5
U 1 1 6058DCC8
P 9250 4950
F 0 "C5" H 9350 5100 50  0000 L BNN
F 1 "UMK105B7104KV-FR" H 9100 5050 50  0001 L BNN
F 2 "Capacitor_Ceramic:C_0402_1005Metric" H 9100 5150 50  0001 C CNN
F 3 "https://ds.yuden.co.jp/TYCOMPAS/ut/detail?pn=UMK105B7104KV-FR%20%20&u=M" H 9100 5150 50  0001 C CNN
F 4 "CAP CER 0.1UF 50V X7R 0402" H 9250 4950 50  0001 C CNN "Description"
F 5 "0.1µF ±10% 50V Ceramic Capacitor X7R 0402 (1005 Metric)" H 9250 4950 50  0001 C CNN "Detailed Description"
F 6 "Taiyo Yuden" H 9250 4950 50  0001 C CNN "Manufacturer"
F 7 "UMK105B7104KV-FR" H 9250 4950 50  0001 C CNN "Manufacturer Part Number"
F 8 "587-3498-1-ND" H 9250 4950 50  0001 C CNN "Digi-Key Part Number"
F 9 "0.1µF" H 9350 5000 50  0000 L BNN "Capacitance"
F 10 "M" H 9250 4950 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 9250 4950 50  0001 C CNN "Packaging"
F 12 "±10%" H 9250 4950 50  0001 C CNN "Tolerance"
F 13 "50V" H 9250 4950 50  0001 C CNN "Voltage - Rated"
F 14 "X7R" H 9250 4950 50  0001 C CNN "Temperature Coefficient"
F 15 "-55°C ~ 125°C" H 9250 4950 50  0001 C CNN "Operating Temperature"
F 16 "SMPS Filtering" H 9250 4950 50  0001 C CNN "Applications"
F 17 "Surface Mount, MLCC" H 9250 4950 50  0001 C CNN "Mounting Type"
F 18 "0402 (1005 Metric)" H 9250 4950 50  0001 C CNN "Package / Case"
F 19 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 9250 4950 50  0001 C CNN "Size / Dimension"
F 20 "0.022\" (0.55mm)" H 9250 4950 50  0001 C CNN "Thickness (Max)"
	1    9250 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5000 9100 5000
Wire Wire Line
	9000 5100 9400 5100
Wire Wire Line
	9100 4950 9100 5000
Wire Wire Line
	9400 4950 9400 5100
$Comp
L Power:+5V5 #PWR09
U 1 1 605767A4
P 7950 1050
F 0 "#PWR09" H 7950 900 50  0001 C CNN
F 1 "+5V5" H 7965 1223 50  0000 C CNN
F 2 "" H 7950 1050 50  0001 C CNN
F 3 "" H 7950 1050 50  0001 C CNN
	1    7950 1050
	1    0    0    -1  
$EndComp
$Comp
L Power:+12V #PWR06
U 1 1 60576F71
P 7350 4850
F 0 "#PWR06" H 7350 4700 50  0001 C CNN
F 1 "+12V" H 7365 5023 50  0000 C CNN
F 2 "" H 7350 4850 50  0001 C CNN
F 3 "" H 7350 4850 50  0001 C CNN
	1    7350 4850
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR07
U 1 1 6057A467
P 7350 5400
F 0 "#PWR07" H 7350 5200 50  0001 C CNN
F 1 "GND" H 7355 5277 50  0000 C CNN
F 2 "" H 7350 5400 50  0001 C CNN
F 3 "" H 7350 5400 50  0001 C CNN
	1    7350 5400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR08
U 1 1 6057696C
P 7850 5400
F 0 "#PWR08" H 7850 5200 50  0001 C CNN
F 1 "GND" H 7855 5277 50  0000 C CNN
F 2 "" H 7850 5400 50  0001 C CNN
F 3 "" H 7850 5400 50  0001 C CNN
	1    7850 5400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR011
U 1 1 60576EF6
P 8250 5400
F 0 "#PWR011" H 8250 5200 50  0001 C CNN
F 1 "GND" H 8255 5277 50  0000 C CNN
F 2 "" H 8250 5400 50  0001 C CNN
F 3 "" H 8250 5400 50  0001 C CNN
	1    8250 5400
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR010
U 1 1 605774B0
P 7950 3800
F 0 "#PWR010" H 7950 3600 50  0001 C CNN
F 1 "GND" H 7955 3677 50  0000 C CNN
F 2 "" H 7950 3800 50  0001 C CNN
F 3 "" H 7950 3800 50  0001 C CNN
	1    7950 3800
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR012
U 1 1 60577A8A
P 9500 3800
F 0 "#PWR012" H 9500 3600 50  0001 C CNN
F 1 "GND" H 9505 3677 50  0000 C CNN
F 2 "" H 9500 3800 50  0001 C CNN
F 3 "" H 9500 3800 50  0001 C CNN
	1    9500 3800
	1    0    0    -1  
$EndComp
$Comp
L Power:+3V3 #PWR05
U 1 1 605784B5
P 4050 1100
F 0 "#PWR05" H 4050 950 50  0001 C CNN
F 1 "+3V3" H 4065 1273 50  0000 C CNN
F 2 "" H 4050 1100 50  0001 C CNN
F 3 "" H 4050 1100 50  0001 C CNN
	1    4050 1100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR04
U 1 1 60579084
P 4000 3100
F 0 "#PWR04" H 4000 2900 50  0001 C CNN
F 1 "GND" H 4005 2977 50  0000 C CNN
F 2 "" H 4000 3100 50  0001 C CNN
F 3 "" H 4000 3100 50  0001 C CNN
	1    4000 3100
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR02
U 1 1 60579C1D
P 1550 2750
F 0 "#PWR02" H 1550 2550 50  0001 C CNN
F 1 "GND" H 1555 2627 50  0000 C CNN
F 2 "" H 1550 2750 50  0001 C CNN
F 3 "" H 1550 2750 50  0001 C CNN
	1    1550 2750
	1    0    0    -1  
$EndComp
$Comp
L Power:GND #PWR03
U 1 1 6057A5D9
P 1850 2750
F 0 "#PWR03" H 1850 2550 50  0001 C CNN
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
P 10100 5700
F 0 "R2" H 10070 5746 50  0000 L CNN
F 1 "CRGCQ0402F10K" H 10050 5700 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 10100 5700 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 10100 5700 50  0001 C CNN
F 4 "CRGCQ 0402 10K 1%" H 10100 5700 50  0001 C CNN "Description"
F 5 "10 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 10100 5700 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 10100 5700 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F10K" H 10100 5700 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129639CT-ND" H 10100 5700 50  0001 C CNN "Digi-Key Part Number"
F 9 "10k" H 10070 5655 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 10100 5700 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 10100 5700 50  0001 C CNN "Packaging"
F 12 "±1%" H 10100 5700 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 10100 5700 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 10100 5700 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 10100 5700 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 10100 5700 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 10100 5700 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 10100 5700 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 10100 5700 50  0001 C CNN "Ratings"
F 20 "0402" H 10100 5700 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 10100 5700 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 10100 5700 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 10100 5700 50  0001 C CNN "Number of Terminations"
F 24 "CRGCQ0402" H 10100 5700 50  0001 C CNN "Base Part Number"
	1    10100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5200 9400 5200
$Comp
L Power:GND #PWR013
U 1 1 60583015
P 10000 5900
F 0 "#PWR013" H 10000 5700 50  0001 C CNN
F 1 "GND" H 10005 5777 50  0000 C CNN
F 2 "" H 10000 5900 50  0001 C CNN
F 3 "" H 10000 5900 50  0001 C CNN
	1    10000 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5850 10000 5900
Wire Wire Line
	10000 5500 10000 5550
Wire Wire Line
	10000 5100 10000 5150
Wire Wire Line
	10000 5450 10000 5500
Connection ~ 10000 5500
$Comp
L Resistor:CRGCQ0402F82K R1
U 1 1 60578B68
P 10100 5300
F 0 "R1" H 10070 5346 50  0000 L CNN
F 1 "CRGCQ0402F82K" H 10050 5300 50  0001 L BNN
F 2 "Resistor:R_0402_1005Metric" H 10100 5300 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1773204-3&DocType=DS&DocLang=English" H 10100 5300 50  0001 C CNN
F 4 "CRGCQ 0402 82K 1%" H 10100 5300 50  0001 C CNN "Description"
F 5 "8.2 kOhms ±1% 0.063W, 1/16W Chip Resistor 0402 (1005 Metric) Automotive AEC-Q200, Moisture Resistant Thick Film" H 10100 5300 50  0001 C CNN "Detailed Description"
F 6 "TE Connectivity Passive Product" H 10100 5300 50  0001 C CNN "Manufacturer"
F 7 "CRGCQ0402F82K" H 10100 5300 50  0001 C CNN "Manufacturer Part Number"
F 8 "A129650CT-ND" H 10100 5300 50  0001 C CNN "Digi-Key Part Number"
F 9 "82k" H 10070 5255 50  0000 L CNN "Resistance"
F 10 "CRGCQ" H 10100 5300 50  0001 C CNN "Series"
F 11 "Cut Tape (CT)" H 10100 5300 50  0001 C CNN "Packaging"
F 12 "±1%" H 10100 5300 50  0001 C CNN "Tolerance"
F 13 "0.063W, 1/16W" H 10100 5300 50  0001 C CNN "Power (Watts)"
F 14 "Thick Film" H 10100 5300 50  0001 C CNN "Composition"
F 15 "Automotive AEC-Q200, Moisture Resistant" H 10100 5300 50  0001 C CNN "Features"
F 16 "±100ppm/°C" H 10100 5300 50  0001 C CNN "Temperature Coefficient"
F 17 "-55°C ~ 155°C" H 10100 5300 50  0001 C CNN "Operating Temperature"
F 18 "0402 (1005 Metric)" H 10100 5300 50  0001 C CNN "Package / Case"
F 19 "AEC-Q200" H 10100 5300 50  0001 C CNN "Ratings"
F 20 "0402" H 10100 5300 50  0001 C CNN "Supplier Device Package"
F 21 "0.039\" L x 0.020\" W (1.00mm x 0.50mm)" H 10100 5300 50  0001 C CNN "Size / Dimension"
F 22 "0.016\" (0.40mm)" H 10100 5300 50  0001 C CNN "Height - Seated (Max)"
F 23 "2" H 10100 5300 50  0001 C CNN "Number of Terminations"
	1    10100 5300
	1    0    0    -1  
$EndComp
$Comp
L Power:+5V5 #PWR014
U 1 1 6057A8A5
P 10500 4850
F 0 "#PWR014" H 10500 4700 50  0001 C CNN
F 1 "+5V5" H 10515 5023 50  0000 C CNN
F 2 "" H 10500 4850 50  0001 C CNN
F 3 "" H 10500 4850 50  0001 C CNN
	1    10500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 5100 10500 5100
Wire Wire Line
	10500 5100 10500 4850
$Comp
L Capacitor_Electrolytic:A768KE686M1GLAE038 C6
U 1 1 60579AA2
P 10500 5500
F 0 "C6" V 10454 5618 50  0000 L CNN
F 1 "A768KE686M1GLAE038" H 10350 5600 50  0001 L BNN
F 2 "Capacitor_Electrolytic:CP_Elec_KEMET_8mm" H 10350 5700 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/A768KE686M1GLAE038.pdf" H 10350 5700 50  0001 C CNN
F 4 "CAP ALUM POLY 68UF 20% 40V SMD" H 10500 5500 50  0001 C CNN "Description"
F 5 "68µF 40V Aluminum - Polymer Capacitors Radial, Can - SMD 38mOhm 2000 Hrs @ 125°C" H 10500 5500 50  0001 C CNN "Detailed Description"
F 6 "KEMET" H 10500 5500 50  0001 C CNN "Manufacturer"
F 7 "A768KE686M1GLAE038" H 10500 5500 50  0001 C CNN "Manufacturer Part Number"
F 8 "399-A768KE686M1GLAE038CT-ND" H 10500 5500 50  0001 C CNN "Digi-Key Part Number"
F 9 "A768" H 10500 5500 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 10500 5500 50  0001 C CNN "Packaging"
F 11 "Polymer" H 10500 5500 50  0001 C CNN "Type"
F 12 "68µF" V 10545 5618 50  0000 L CNN "Capacitance"
F 13 "±20%" H 10500 5500 50  0001 C CNN "Tolerance"
F 14 "40V" H 10500 5500 50  0001 C CNN "Voltage - Rated"
F 15 "38mOhm" H 10500 5500 50  0001 C CNN "ESR (Equivalent Series Resistance)"
F 16 "2000 Hrs @ 125°C" H 10500 5500 50  0001 C CNN "Lifetime @ Temp."
F 17 "-55°C ~ 125°C" H 10500 5500 50  0001 C CNN "Operating Temperature"
F 18 "General Purpose" H 10500 5500 50  0001 C CNN "Applications"
F 19 "67.5mA @ 120Hz" H 10500 5500 50  0001 C CNN "Ripple Current @ Low Frequency"
F 20 "1.35A @ 100kHz" H 10500 5500 50  0001 C CNN "Ripple Current @ High Frequency"
F 21 "0.315\" Dia (8.00mm)" H 10500 5500 50  0001 C CNN "Size / Dimension"
F 22 "0.236\" (6.00mm)" H 10500 5500 50  0001 C CNN "Height - Seated (Max)"
F 23 "0.327\" L x 0.327\" W (8.30mm x 8.30mm)" H 10500 5500 50  0001 C CNN "Surface Mount Land Size"
F 24 "Surface Mount" H 10500 5500 50  0001 C CNN "Mounting Type"
F 25 "Radial, Can - SMD" H 10500 5500 50  0001 C CNN "Package / Case"
	1    10500 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 5100 10500 5350
Connection ~ 10500 5100
$Comp
L Power:GND #PWR015
U 1 1 6057EFD1
P 10500 5900
F 0 "#PWR015" H 10500 5700 50  0001 C CNN
F 1 "GND" H 10505 5777 50  0000 C CNN
F 2 "" H 10500 5900 50  0001 C CNN
F 3 "" H 10500 5900 50  0001 C CNN
	1    10500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 5650 10500 5900
Wire Wire Line
	9400 5500 10000 5500
Wire Wire Line
	9400 5200 9400 5500
$Comp
L Inductor:74437356047 L1
U 1 1 60583F5B
P 9700 5100
F 0 "L1" H 9700 5315 50  0000 C CNN
F 1 "74437356047" H 9700 5050 50  0001 C CNN
F 2 "Inductor:74437356047" H 9700 5100 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/74437356047.pdf" H 9700 5100 50  0001 C CNN
F 4 "FIXED IND 4.7UH 6.2A 34.2 MOHM" H 9700 5100 50  0001 C CNN "Description"
F 5 "4.7µH Shielded Molded Inductor 6.2A 34.2mOhm Max Nonstandard" H 9700 5100 50  0001 C CNN "Detailed Description"
F 6 "Würth Elektronik" H 9700 5100 50  0001 C CNN "Manufacturer"
F 7 "74437356047" H 9700 5100 50  0001 C CNN "Manufacturer Part Number"
F 8 "732-7203-1-ND" H 9700 5100 50  0001 C CNN "Digi-Key Part Number"
F 9 "WE-LHMI" H 9700 5100 50  0001 C CNN "Series"
F 10 "Cut Tape (CT)" H 9700 5100 50  0001 C CNN "Packaging"
F 11 "Molded" H 9700 5100 50  0001 C CNN "Type"
F 12 "Iron Powder" H 9700 5100 50  0001 C CNN "Material - Core"
F 13 "4.7µH" H 9700 5224 50  0000 C CNN "Inductance"
F 14 "±20%" H 9700 5100 50  0001 C CNN "Tolerance"
F 15 "6.2A" H 9700 5100 50  0001 C CNN "Current Rating (Amps)"
F 16 "11A" H 9700 5100 50  0001 C CNN "Current - Saturation (Isat)"
F 17 "Shielded" H 9700 5100 50  0001 C CNN "Shielding"
F 18 "34.2mOhm Max" H 9700 5100 50  0001 C CNN "DC Resistance (DCR)"
F 19 "16MHz" H 9700 5100 50  0001 C CNN "Frequency - Self Resonant"
F 20 "-40°C ~ 125°C" H 9700 5100 50  0001 C CNN "Operating Temperature"
F 21 "100kHz" H 9700 5100 50  0001 C CNN "Inductance Frequency - Test"
F 22 "Surface Mount" H 9700 5100 50  0001 C CNN "Mounting Type"
F 23 "Nonstandard" H 9700 5100 50  0001 C CNN "Package / Case"
F 24 "0.362\" L x 0.335\" W (9.20mm x 8.50mm)" H 9700 5100 50  0001 C CNN "Size / Dimension"
F 25 "0.118\" (3.00mm)" H 9700 5100 50  0001 C CNN "Height - Seated (Max)"
F 26 "8030" H 9700 5100 50  0001 C CNN "Supplier Device Package"
	1    9700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5100 9450 5100
Connection ~ 9400 5100
Wire Wire Line
	9950 5100 10000 5100
Connection ~ 10000 5100
$EndSCHEMATC
