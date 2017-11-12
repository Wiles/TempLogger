EESchema Schematic File Version 3
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:Connector
LIBS:dc-dc
LIBS:diode
LIBS:driver_gate
LIBS:DSP_Microchip_DSPIC33
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:Espressif
LIBS:FPGA_Actel
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:LED
LIBS:leds
LIBS:LEM
LIBS:Logic_74xgxx
LIBS:Logic_74xx
LIBS:Logic_CMOS_4000
LIBS:Logic_CMOS_IEEE
LIBS:logic_programmable
LIBS:Logic_TTL_IEEE
LIBS:logo
LIBS:maxim
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32
LIBS:MCU_Texas_MSP430
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:Motor
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:Relay
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:Sensor_Current
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:Switch
LIBS:switches
LIBS:transf
LIBS:Transformer
LIBS:Transistor
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:Valve
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:ESP8266
LIBS:temp-logger
LIBS:temp-logger-cache
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
L GND #PWR01
U 1 1 5A088733
P 2500 4150
F 0 "#PWR01" H 2500 3900 50  0001 C CNN
F 1 "GND" H 2505 3977 50  0000 C CNN
F 2 "" H 2500 4150 50  0001 C CNN
F 3 "" H 2500 4150 50  0001 C CNN
	1    2500 4150
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR02
U 1 1 5A088776
P 2500 1450
F 0 "#PWR02" H 2500 1300 50  0001 C CNN
F 1 "+3.3V" H 2515 1623 50  0000 C CNN
F 2 "" H 2500 1450 50  0001 C CNN
F 3 "" H 2500 1450 50  0001 C CNN
	1    2500 1450
	1    0    0    -1  
$EndComp
$Comp
L AP1117-33 U1
U 1 1 5A088802
P 2700 6850
F 0 "U1" H 2700 7092 50  0000 C CNN
F 1 "AP1117-33" H 2700 7001 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3Lead_TabPin2" H 2700 7050 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 2800 6600 50  0001 C CNN
	1    2700 6850
	1    0    0    -1  
$EndComp
$Comp
L ESP-12E U2
U 1 1 5A08894B
P 2500 2850
F 0 "U2" H 1800 3850 50  0000 C CNN
F 1 "ESP-12E" H 3100 3850 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 2500 3100 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/docs/aithinker_esp_12f_datasheet_en.pdf" H 2150 3150 50  0001 C CNN
	1    2500 2850
	1    0    0    -1  
$EndComp
$Comp
L HTU21D U3
U 1 1 5A088B82
P 9100 2900
F 0 "U3" H 8900 3150 60  0000 C CNN
F 1 "HTU21D" H 9300 3150 60  0000 C CNN
F 2 "Housings_DFN_QFN:DFN-6-1EP_3x3mm_Pitch0.95mm" H 9100 2900 60  0001 C CNN
F 3 "" H 9100 2900 60  0001 C CNN
	1    9100 2900
	1    0    0    -1  
$EndComp
Text GLabel 7750 2850 0    60   Input ~ 0
SDA
Text GLabel 10450 3100 2    60   Input ~ 0
SCL
$Comp
L GND #PWR03
U 1 1 5A088DD0
P 9100 3400
F 0 "#PWR03" H 9100 3150 50  0001 C CNN
F 1 "GND" H 9105 3227 50  0000 C CNN
F 2 "" H 9100 3400 50  0001 C CNN
F 3 "" H 9100 3400 50  0001 C CNN
	1    9100 3400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5A088E1D
P 10100 2550
F 0 "C3" V 9871 2550 50  0000 C CNN
F 1 "100 nF" V 9962 2550 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603" H 10100 2550 50  0001 C CNN
F 3 "" H 10100 2550 50  0001 C CNN
	1    10100 2550
	-1   0    0    1   
$EndComp
$Comp
L +3.3V #PWR04
U 1 1 5A088EDB
P 9100 2200
F 0 "#PWR04" H 9100 2050 50  0001 C CNN
F 1 "+3.3V" H 9115 2373 50  0000 C CNN
F 2 "" H 9100 2200 50  0001 C CNN
F 3 "" H 9100 2200 50  0001 C CNN
	1    9100 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A088F44
P 10100 2700
F 0 "#PWR05" H 10100 2450 50  0001 C CNN
F 1 "GND" H 10105 2527 50  0000 C CNN
F 2 "" H 10100 2700 50  0001 C CNN
F 3 "" H 10100 2700 50  0001 C CNN
	1    10100 2700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5A089032
P 2300 7050
F 0 "C1" H 2392 7096 50  0000 L CNN
F 1 "10 uF" H 2392 7005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2300 7050 50  0001 C CNN
F 3 "" H 2300 7050 50  0001 C CNN
	1    2300 7050
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5A089078
P 3100 7050
F 0 "C2" H 3192 7096 50  0000 L CNN
F 1 "10 uF" H 3192 7005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 3100 7050 50  0001 C CNN
F 3 "" H 3100 7050 50  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 5A089224
P 3200 6750
F 0 "#PWR07" H 3200 6600 50  0001 C CNN
F 1 "+3.3V" H 3215 6923 50  0000 C CNN
F 2 "" H 3200 6750 50  0001 C CNN
F 3 "" H 3200 6750 50  0001 C CNN
	1    3200 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A089267
P 2700 7350
F 0 "#PWR08" H 2700 7100 50  0001 C CNN
F 1 "GND" H 2705 7177 50  0000 C CNN
F 2 "" H 2700 7350 50  0001 C CNN
F 3 "" H 2700 7350 50  0001 C CNN
	1    2700 7350
	1    0    0    -1  
$EndComp
NoConn ~ 1600 6850
NoConn ~ 1500 6850
$Comp
L GND #PWR06
U 1 1 5A0898A0
P 1100 6950
F 0 "#PWR06" H 1100 6700 50  0001 C CNN
F 1 "GND" H 1105 6777 50  0000 C CNN
F 2 "" H 1100 6950 50  0001 C CNN
F 3 "" H 1100 6950 50  0001 C CNN
	1    1100 6950
	1    0    0    -1  
$EndComp
$Comp
L R_Small R2
U 1 1 5A089DB8
P 1500 1850
F 0 "R2" H 1559 1896 50  0000 L CNN
F 1 "10k" H 1559 1805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R1
U 1 1 5A089E23
P 1350 1850
F 0 "R1" H 1150 1900 50  0000 L CNN
F 1 "10k" H 1150 1800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1350 1850 50  0001 C CNN
F 3 "" H 1350 1850 50  0001 C CNN
	1    1350 1850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R3
U 1 1 5A089F57
P 3500 1850
F 0 "R3" H 3559 1896 50  0000 L CNN
F 1 "10k" H 3559 1805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3500 1850 50  0001 C CNN
F 3 "" H 3500 1850 50  0001 C CNN
	1    3500 1850
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5A08A123
P 3900 3450
F 0 "R4" H 3959 3496 50  0000 L CNN
F 1 "10k" H 3959 3405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 3900 3450 50  0001 C CNN
F 3 "" H 3900 3450 50  0001 C CNN
	1    3900 3450
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5A08A8EC
P 4200 5050
F 0 "D1" V 4145 5128 50  0000 L CNN
F 1 "LED" V 4236 5128 50  0000 L CNN
F 2 "LEDs:LED_0603" H 4200 5050 50  0001 C CNN
F 3 "~" H 4200 5050 50  0001 C CNN
	1    4200 5050
	0    1    1    0   
$EndComp
$Comp
L LED D2
U 1 1 5A08A96D
P 4500 5050
F 0 "D2" V 4445 5128 50  0000 L CNN
F 1 "LED" V 4536 5128 50  0000 L CNN
F 2 "LEDs:LED_0603" H 4500 5050 50  0001 C CNN
F 3 "~" H 4500 5050 50  0001 C CNN
	1    4500 5050
	0    1    1    0   
$EndComp
$Comp
L R_Small R5
U 1 1 5A08AA11
P 4200 5400
F 0 "R5" H 4259 5446 50  0000 L CNN
F 1 "470" H 4259 5355 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4200 5400 50  0001 C CNN
F 3 "" H 4200 5400 50  0001 C CNN
	1    4200 5400
	1    0    0    -1  
$EndComp
$Comp
L R_Small R6
U 1 1 5A08AAAC
P 4500 5400
F 0 "R6" H 4559 5446 50  0000 L CNN
F 1 "470" H 4559 5355 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4500 5400 50  0001 C CNN
F 3 "" H 4500 5400 50  0001 C CNN
	1    4500 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR09
U 1 1 5A08AB9F
P 4350 4700
F 0 "#PWR09" H 4350 4550 50  0001 C CNN
F 1 "+3.3V" H 4365 4873 50  0000 C CNN
F 2 "" H 4350 4700 50  0001 C CNN
F 3 "" H 4350 4700 50  0001 C CNN
	1    4350 4700
	1    0    0    -1  
$EndComp
NoConn ~ 1600 2450
NoConn ~ 1600 2550
NoConn ~ 1600 2650
NoConn ~ 1600 2750
NoConn ~ 1600 2850
NoConn ~ 1600 2950
Text GLabel 3500 3150 2    60   Input ~ 0
SDA
Text GLabel 3500 3450 2    60   Input ~ 0
SCL
$Comp
L R_Small R7
U 1 1 5A08B793
P 7800 2600
F 0 "R7" H 7859 2646 50  0000 L CNN
F 1 "10l" H 7859 2555 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7800 2600 50  0001 C CNN
F 3 "" H 7800 2600 50  0001 C CNN
	1    7800 2600
	1    0    0    -1  
$EndComp
$Comp
L R_Small R8
U 1 1 5A08BB00
P 10400 2650
F 0 "R8" H 10459 2696 50  0000 L CNN
F 1 "10k" H 10459 2605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10400 2650 50  0001 C CNN
F 3 "" H 10400 2650 50  0001 C CNN
	1    10400 2650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A08C755
P 600 2150
F 0 "#PWR010" H 600 1900 50  0001 C CNN
F 1 "GND" H 605 1977 50  0000 C CNN
F 2 "" H 600 2150 50  0001 C CNN
F 3 "" H 600 2150 50  0001 C CNN
	1    600  2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A08CB85
P 4300 2150
F 0 "#PWR011" H 4300 1900 50  0001 C CNN
F 1 "GND" H 4305 1977 50  0000 C CNN
F 2 "" H 4300 2150 50  0001 C CNN
F 3 "" H 4300 2150 50  0001 C CNN
	1    4300 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A08CD0F
P 4250 3450
F 0 "#PWR012" H 4250 3200 50  0001 C CNN
F 1 "GND" H 4255 3277 50  0000 C CNN
F 2 "" H 4250 3450 50  0001 C CNN
F 3 "" H 4250 3450 50  0001 C CNN
	1    4250 3450
	-1   0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A08D200
P 900 2050
F 0 "SW1" H 900 2335 50  0000 C CNN
F 1 "SW_Push" H 900 2244 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P" H 900 2250 50  0001 C CNN
F 3 "" H 900 2250 50  0001 C CNN
	1    900  2050
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A08D24E
P 4000 2050
F 0 "SW2" H 4000 2335 50  0000 C CNN
F 1 "SW_Push" H 4000 2244 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P" H 4000 2250 50  0001 C CNN
F 3 "" H 4000 2250 50  0001 C CNN
	1    4000 2050
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP1
U 1 1 5A08D807
P 8150 2850
F 0 "JP1" H 8150 3114 50  0000 C CNN
F 1 "Jumper" H 8150 3023 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 8150 2850 50  0001 C CNN
F 3 "" H 8150 2850 50  0001 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
$Comp
L Jumper JP2
U 1 1 5A08DBA6
P 10050 3100
F 0 "JP2" H 10050 3050 50  0000 C CNN
F 1 "Jumper" H 10050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 10050 3100 50  0001 C CNN
F 3 "" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J1
U 1 1 5A08E854
P 1600 6550
F 0 "J1" V 1609 6880 50  0000 L CNN
F 1 "USB_OTG" V 1700 6880 50  0000 L CNN
F 2 "Connectors_USB:USB_Micro-B_Molex_47346-0001" H 1750 6500 50  0001 C CNN
F 3 "" H 1750 6500 50  0001 C CNN
	1    1600 6550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 J2
U 1 1 5A08EE6F
P 4550 3050
F 0 "J2" H 4468 2725 50  0000 C CNN
F 1 "CONN_01X03" H 4468 2816 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch1.00mm_SMD_Pin1Right" H 4550 3050 50  0001 C CNN
F 3 "" H 4550 3050 50  0001 C CNN
	1    4550 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	2500 3950 2500 4150
Wire Wire Line
	2500 1450 2500 1750
Wire Wire Line
	8450 2850 8650 2850
Wire Wire Line
	9550 2850 9750 2850
Wire Wire Line
	9100 3300 9100 3400
Wire Wire Line
	9100 2200 9100 2500
Wire Wire Line
	7800 2400 10400 2400
Connection ~ 9100 2400
Wire Wire Line
	1800 6850 2400 6850
Wire Wire Line
	2300 6850 2300 6950
Connection ~ 2300 6850
Wire Wire Line
	2700 7150 2700 7350
Wire Wire Line
	2300 7250 3100 7250
Wire Wire Line
	2300 7250 2300 7150
Wire Wire Line
	3100 7250 3100 7150
Connection ~ 2700 7250
Wire Wire Line
	3000 6850 3200 6850
Wire Wire Line
	3100 6850 3100 6950
Wire Wire Line
	3200 6850 3200 6750
Connection ~ 3100 6850
Connection ~ 2200 6850
Wire Wire Line
	1200 6450 1100 6450
Wire Wire Line
	1100 6450 1100 6950
Wire Wire Line
	1200 6550 1100 6550
Connection ~ 1100 6550
Wire Wire Line
	1500 1950 1500 2050
Wire Wire Line
	1100 2050 1600 2050
Wire Wire Line
	1350 1950 1350 2250
Wire Wire Line
	1350 2250 1600 2250
Wire Wire Line
	1350 1750 1350 1650
Wire Wire Line
	1350 1650 3500 1650
Connection ~ 2500 1650
Wire Wire Line
	1500 1750 1500 1650
Connection ~ 1500 1650
Wire Wire Line
	3400 2050 3800 2050
Wire Wire Line
	3500 2050 3500 1950
Wire Wire Line
	3500 1650 3500 1750
Wire Wire Line
	3400 3250 3900 3250
Wire Wire Line
	2500 4050 3900 4050
Connection ~ 2500 4050
Wire Wire Line
	4200 5200 4200 5300
Wire Wire Line
	4500 5200 4500 5300
Wire Wire Line
	4200 4900 4200 4800
Wire Wire Line
	4200 4800 4500 4800
Wire Wire Line
	4500 4800 4500 4900
Wire Wire Line
	4350 4700 4350 4800
Connection ~ 4350 4800
Wire Wire Line
	4200 5500 4200 5600
Wire Wire Line
	4500 5500 4500 5600
Connection ~ 1500 2050
Wire Wire Line
	700  2050 600  2050
Wire Wire Line
	600  2050 600  2150
Connection ~ 3500 2050
Wire Wire Line
	4200 2050 4300 2050
Wire Wire Line
	4300 2050 4300 2150
Wire Wire Line
	4250 3150 4250 3450
Wire Wire Line
	3400 2950 4350 2950
Wire Wire Line
	4350 3050 3400 3050
Wire Wire Line
	7750 2850 7850 2850
Wire Wire Line
	10100 2400 10100 2450
Wire Wire Line
	10100 2650 10100 2700
Wire Wire Line
	10450 3100 10350 3100
Wire Wire Line
	9750 2850 9750 3100
Connection ~ 7800 2850
Wire Wire Line
	7800 2700 7800 2850
Wire Wire Line
	7800 2500 7800 2400
Wire Wire Line
	10400 2400 10400 2550
Connection ~ 10100 2400
Wire Wire Line
	10400 2750 10400 3100
Connection ~ 10400 3100
Wire Wire Line
	1400 6850 1100 6850
Connection ~ 1100 6850
Wire Wire Line
	4250 3150 4350 3150
Wire Wire Line
	3900 3250 3900 3350
Wire Wire Line
	3900 4050 3900 3550
Wire Wire Line
	3400 3150 3500 3150
Wire Wire Line
	3500 3450 3400 3450
$EndSCHEMATC
