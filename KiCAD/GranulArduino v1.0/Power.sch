EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:+12V #PWR?
U 1 1 61FC4B78
P 4750 2025
AR Path="/61FC4B78" Ref="#PWR?"  Part="1" 
AR Path="/61FA9972/61FC4B78" Ref="#PWR023"  Part="1" 
AR Path="/61F51CE9/61FC4B78" Ref="#PWR0113"  Part="1" 
AR Path="/621D559B/61FC4B78" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 4750 1875 50  0001 C CNN
F 1 "+12V" H 4765 2198 50  0000 C CNN
F 2 "" H 4750 2025 50  0001 C CNN
F 3 "" H 4750 2025 50  0001 C CNN
	1    4750 2025
	1    0    0    -1  
$EndComp
$Comp
L power:-12V #PWR?
U 1 1 61FC4B7E
P 4750 3400
AR Path="/61FC4B7E" Ref="#PWR?"  Part="1" 
AR Path="/61FA9972/61FC4B7E" Ref="#PWR024"  Part="1" 
AR Path="/61F51CE9/61FC4B7E" Ref="#PWR0114"  Part="1" 
AR Path="/621D559B/61FC4B7E" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4750 3500 50  0001 C CNN
F 1 "-12V" H 4765 3573 50  0000 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2225 5500 2325
Wire Wire Line
	5500 2425 5500 2525
Wire Wire Line
	5500 3025 5500 3125
Wire Wire Line
	4425 2650 4750 2650
Connection ~ 4750 2650
Wire Wire Line
	4750 2525 4750 2650
Wire Wire Line
	4750 2025 4750 2100
Wire Wire Line
	4425 2550 4575 2550
Wire Wire Line
	4575 2550 4575 2150
Wire Wire Line
	4575 2150 4750 2150
Connection ~ 4750 2150
Wire Wire Line
	4750 2150 4750 2225
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FC4BAD
P 4750 3350
AR Path="/61FC4BAD" Ref="#FLG?"  Part="1" 
AR Path="/61FA9972/61FC4BAD" Ref="#FLG02"  Part="1" 
AR Path="/61F51CE9/61FC4BAD" Ref="#FLG0101"  Part="1" 
AR Path="/621D559B/61FC4BAD" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 4750 3425 50  0001 C CNN
F 1 "PWR_FLAG" V 4750 3478 50  0001 L CNN
F 2 "" H 4750 3350 50  0001 C CNN
F 3 "~" H 4750 3350 50  0001 C CNN
	1    4750 3350
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FC4BB3
P 4750 2100
AR Path="/61FC4BB3" Ref="#FLG?"  Part="1" 
AR Path="/61FA9972/61FC4BB3" Ref="#FLG01"  Part="1" 
AR Path="/61F51CE9/61FC4BB3" Ref="#FLG0102"  Part="1" 
AR Path="/621D559B/61FC4BB3" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 4750 2175 50  0001 C CNN
F 1 "PWR_FLAG" V 4750 2227 50  0001 L CNN
F 2 "" H 4750 2100 50  0001 C CNN
F 3 "~" H 4750 2100 50  0001 C CNN
	1    4750 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4425 2750 4575 2750
Wire Wire Line
	4575 2750 4575 3200
Wire Wire Line
	4575 3200 4750 3200
Wire Wire Line
	4750 3200 4750 3350
Connection ~ 4750 3200
Wire Wire Line
	4750 2650 5225 2650
Wire Wire Line
	4750 3200 5500 3200
Wire Wire Line
	5500 3200 5500 3125
Connection ~ 5500 2525
Wire Wire Line
	5500 2525 5225 2525
Wire Wire Line
	5225 2525 5225 2650
Connection ~ 5225 2650
Connection ~ 4750 3350
Wire Wire Line
	4750 3350 4750 3400
Connection ~ 4750 2100
Wire Wire Line
	4750 2100 4750 2150
$Comp
L Amplifier_Operational:TL072 U?
U 3 1 621F386C
P 6325 2675
AR Path="/621F386C" Ref="U?"  Part="3" 
AR Path="/621D559B/621F386C" Ref="U1"  Part="3" 
F 0 "U1" H 6275 2700 50  0000 L CNN
F 1 "TL072" H 6250 2625 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6325 2675 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6325 2675 50  0001 C CNN
	3    6325 2675
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U2
U 1 1 6288C8DB
P 5250 4450
F 0 "U2" H 5250 4692 50  0000 C CNN
F 1 "L7805" H 5250 4601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 5275 4300 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 5250 4400 50  0001 C CNN
	1    5250 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6288DD04
P 4750 4700
F 0 "C1" H 4865 4746 50  0000 L CNN
F 1 "220nF" H 4865 4655 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 4788 4550 50  0001 C CNN
F 3 "~" H 4750 4700 50  0001 C CNN
	1    4750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6288E76A
P 5750 4700
F 0 "C2" H 5865 4746 50  0000 L CNN
F 1 "100nF" H 5865 4655 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 5788 4550 50  0001 C CNN
F 3 "~" H 5750 4700 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4850 4750 4950
Wire Wire Line
	4750 4950 5250 4950
Wire Wire Line
	5750 4950 5750 4850
Wire Wire Line
	4950 4450 4750 4450
Wire Wire Line
	4750 4450 4750 4550
Wire Wire Line
	5750 4450 5750 4550
Wire Wire Line
	5250 4750 5250 4950
Connection ~ 5250 4950
Wire Wire Line
	5250 4950 5750 4950
Wire Wire Line
	5250 4950 5250 5050
$Comp
L power:+12V #PWR?
U 1 1 62898EF6
P 4750 4325
AR Path="/62898EF6" Ref="#PWR?"  Part="1" 
AR Path="/61FA9972/62898EF6" Ref="#PWR?"  Part="1" 
AR Path="/61F51CE9/62898EF6" Ref="#PWR?"  Part="1" 
AR Path="/621D559B/62898EF6" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4750 4175 50  0001 C CNN
F 1 "+12V" H 4765 4498 50  0000 C CNN
F 2 "" H 4750 4325 50  0001 C CNN
F 3 "" H 4750 4325 50  0001 C CNN
	1    4750 4325
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4325 4750 4450
Connection ~ 4750 4450
Wire Wire Line
	6225 2975 6225 3200
$Comp
L power:+5V #PWR05
U 1 1 6289F27A
P 5750 4300
F 0 "#PWR05" H 5750 4150 50  0001 C CNN
F 1 "+5V" H 5765 4473 50  0000 C CNN
F 2 "" H 5750 4300 50  0001 C CNN
F 3 "" H 5750 4300 50  0001 C CNN
	1    5750 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4300 5750 4450
Connection ~ 5750 4450
$Comp
L Device:R R?
U 1 1 624E5A03
P 6100 4450
AR Path="/624E5A03" Ref="R?"  Part="1" 
AR Path="/6254A2BB/624E5A03" Ref="R?"  Part="1" 
AR Path="/621D559B/624E5A03" Ref="R1"  Part="1" 
F 0 "R1" V 6025 4450 50  0000 C CNN
F 1 "100K" V 6100 4450 50  0000 C CNN
F 2 "benjiaomodular:Resistor_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6030 4450 50  0001 C CNN
F 3 "~" H 6100 4450 50  0001 C CNN
	1    6100 4450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 624E5A09
P 6350 4700
AR Path="/624E5A09" Ref="R?"  Part="1" 
AR Path="/6254A2BB/624E5A09" Ref="R?"  Part="1" 
AR Path="/621D559B/624E5A09" Ref="R2"  Part="1" 
F 0 "R2" V 6275 4700 50  0000 C CNN
F 1 "100K" V 6350 4700 50  0000 C CNN
F 2 "benjiaomodular:Resistor_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6280 4700 50  0001 C CNN
F 3 "~" H 6350 4700 50  0001 C CNN
	1    6350 4700
	-1   0    0    1   
$EndComp
Text GLabel 6475 4450 2    50   Output ~ 0
VREF
Wire Wire Line
	6475 4450 6350 4450
$Comp
L Amplifier_Operational:TL074 U?
U 5 1 624E5A22
P 6775 2650
AR Path="/6254A2BB/624E5A22" Ref="U?"  Part="5" 
AR Path="/621D559B/624E5A22" Ref="U3"  Part="5" 
F 0 "U3" H 6750 2650 50  0000 L CNN
F 1 "TL074" H 6725 2575 50  0000 L CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6725 2750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 6825 2850 50  0001 C CNN
	5    6775 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 6261D1A2
P 4225 2650
F 0 "J7" H 4333 2931 50  0000 C CNN
F 1 "JST_BUS" H 4333 2840 50  0000 C CNN
F 2 "" H 4225 2650 50  0001 C CNN
F 3 "~" H 4225 2650 50  0001 C CNN
	1    4225 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J8
U 1 1 6262AE19
P 5700 2625
F 0 "J8" H 5672 2599 50  0000 R CNN
F 1 "IDC_BUS" H 5672 2508 50  0000 R CNN
F 2 "" H 5700 2625 50  0001 C CNN
F 3 "~" H 5700 2625 50  0001 C CNN
	1    5700 2625
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 2825 5500 2925
Wire Wire Line
	5550 4450 5750 4450
Wire Wire Line
	5950 4450 5750 4450
Wire Wire Line
	6250 4450 6350 4450
Wire Wire Line
	6350 4450 6350 4550
Wire Wire Line
	5750 4950 6350 4950
Wire Wire Line
	6350 4950 6350 4850
Connection ~ 5750 4950
Connection ~ 6350 4450
Wire Wire Line
	5500 2150 5500 2225
Connection ~ 5500 2225
Connection ~ 5500 3125
Connection ~ 5500 2150
Wire Wire Line
	6675 2150 6675 2350
Wire Wire Line
	5500 2150 6225 2150
Connection ~ 6225 2150
Wire Wire Line
	6225 2150 6225 2375
Wire Wire Line
	6225 2150 6675 2150
Wire Wire Line
	5500 3200 6225 3200
Connection ~ 5500 3200
Connection ~ 6225 3200
Wire Wire Line
	6225 3200 6675 3200
Wire Wire Line
	6675 3200 6675 2950
Wire Wire Line
	4750 2150 5500 2150
Wire Wire Line
	4750 3100 4750 3200
Wire Wire Line
	4750 2650 4750 2800
$Comp
L Device:CP1 C?
U 1 1 61FC4B97
P 4750 2950
AR Path="/61FC4B97" Ref="C?"  Part="1" 
AR Path="/61FA9972/61FC4B97" Ref="C5"  Part="1" 
AR Path="/61F51CE9/61FC4B97" Ref="C2"  Part="1" 
AR Path="/621D559B/61FC4B97" Ref="C4"  Part="1" 
F 0 "C4" H 4900 2975 50  0000 L CNN
F 1 "100uF" H 4850 2900 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Radial_D5.0mm_P2.5mm" H 4750 2950 50  0001 C CNN
F 3 "~" H 4750 2950 50  0001 C CNN
	1    4750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5225 2750 5225 2825
Connection ~ 5225 2750
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FC4BDF
P 5225 2750
AR Path="/61FC4BDF" Ref="#FLG?"  Part="1" 
AR Path="/61FA9972/61FC4BDF" Ref="#FLG03"  Part="1" 
AR Path="/61F51CE9/61FC4BDF" Ref="#FLG0103"  Part="1" 
AR Path="/621D559B/61FC4BDF" Ref="#FLG03"  Part="1" 
F 0 "#FLG03" H 5225 2825 50  0001 C CNN
F 1 "PWR_FLAG" V 5225 2877 50  0001 L CNN
F 2 "" H 5225 2750 50  0001 C CNN
F 3 "~" H 5225 2750 50  0001 C CNN
	1    5225 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	5225 2650 5225 2750
$Comp
L Device:CP1 C?
U 1 1 61FC4B9D
P 4750 2375
AR Path="/61FC4B9D" Ref="C?"  Part="1" 
AR Path="/61FA9972/61FC4B9D" Ref="C4"  Part="1" 
AR Path="/61F51CE9/61FC4B9D" Ref="C1"  Part="1" 
AR Path="/621D559B/61FC4B9D" Ref="C3"  Part="1" 
F 0 "C3" H 4900 2400 50  0000 L CNN
F 1 "100uF" H 4865 2330 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Radial_D5.0mm_P2.5mm" H 4750 2375 50  0001 C CNN
F 3 "~" H 4750 2375 50  0001 C CNN
	1    4750 2375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 626FD870
P 7100 2375
F 0 "C7" H 7215 2421 50  0000 L CNN
F 1 "100nF" H 7215 2330 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 7138 2225 50  0001 C CNN
F 3 "~" H 7100 2375 50  0001 C CNN
	1    7100 2375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 626FE802
P 7575 2375
F 0 "C9" H 7690 2421 50  0000 L CNN
F 1 "100nF" H 7690 2330 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 7613 2225 50  0001 C CNN
F 3 "~" H 7575 2375 50  0001 C CNN
	1    7575 2375
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 626FEFF6
P 7100 2950
F 0 "C8" H 7215 2996 50  0000 L CNN
F 1 "100nF" H 7215 2905 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 7138 2800 50  0001 C CNN
F 3 "~" H 7100 2950 50  0001 C CNN
	1    7100 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 626FF6FD
P 7575 2950
F 0 "C10" H 7690 2996 50  0000 L CNN
F 1 "100nF" H 7690 2905 50  0000 L CNN
F 2 "benjiaomodular:Capacitor_Rect_L7.2mm_W2.5mm_P5.00mm" H 7613 2800 50  0001 C CNN
F 3 "~" H 7575 2950 50  0001 C CNN
	1    7575 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6675 2150 7100 2150
Wire Wire Line
	7575 2150 7575 2225
Connection ~ 6675 2150
Wire Wire Line
	7100 2225 7100 2150
Connection ~ 7100 2150
Wire Wire Line
	7100 2150 7575 2150
Wire Wire Line
	6675 3200 7100 3200
Wire Wire Line
	7575 3200 7575 3100
Connection ~ 6675 3200
Wire Wire Line
	7100 3100 7100 3200
Connection ~ 7100 3200
Wire Wire Line
	7100 3200 7575 3200
Wire Wire Line
	7575 2800 7575 2675
$Comp
L power:GND #PWR035
U 1 1 6270EB6C
P 5225 2825
F 0 "#PWR035" H 5225 2575 50  0001 C CNN
F 1 "GND" H 5230 2652 50  0000 C CNN
F 2 "" H 5225 2825 50  0001 C CNN
F 3 "" H 5225 2825 50  0001 C CNN
	1    5225 2825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 62716720
P 7975 2725
F 0 "#PWR037" H 7975 2475 50  0001 C CNN
F 1 "GND" H 7980 2552 50  0000 C CNN
F 2 "" H 7975 2725 50  0001 C CNN
F 3 "" H 7975 2725 50  0001 C CNN
	1    7975 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7975 2725 7975 2675
Wire Wire Line
	7100 2525 7100 2675
Wire Wire Line
	7975 2675 7575 2675
Connection ~ 7575 2675
Wire Wire Line
	7575 2675 7575 2525
Wire Wire Line
	7575 2675 7100 2675
Connection ~ 7100 2675
Wire Wire Line
	7100 2675 7100 2800
$Comp
L power:GND #PWR036
U 1 1 627273D3
P 5250 5050
F 0 "#PWR036" H 5250 4800 50  0001 C CNN
F 1 "GND" H 5255 4877 50  0000 C CNN
F 2 "" H 5250 5050 50  0001 C CNN
F 3 "" H 5250 5050 50  0001 C CNN
	1    5250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2525 5500 2625
Connection ~ 5500 2825
Connection ~ 5500 2625
Wire Wire Line
	5500 2625 5500 2725
Connection ~ 5500 2725
Wire Wire Line
	5500 2725 5500 2825
$EndSCHEMATC
