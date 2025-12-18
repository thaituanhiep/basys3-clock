############################################################
## CLOCK
############################################################
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

############################################################
## BUTTONS (CASIO STYLE)
############################################################
set_property PACKAGE_PIN T18 [get_ports IO_BTN_U]
set_property IOSTANDARD LVCMOS33 [get_ports IO_BTN_U]

set_property PACKAGE_PIN U17 [get_ports IO_BTN_D]
set_property IOSTANDARD LVCMOS33 [get_ports IO_BTN_D]

set_property PACKAGE_PIN U18 [get_ports IO_BTN_C]
set_property IOSTANDARD LVCMOS33 [get_ports IO_BTN_C]

set_property PACKAGE_PIN W19 [get_ports IO_BTN_L]
set_property IOSTANDARD LVCMOS33 [get_ports IO_BTN_L]

set_property PACKAGE_PIN T17 [get_ports IO_BTN_R]
set_property IOSTANDARD LVCMOS33 [get_ports IO_BTN_R]

############################################################
## 7-SEGMENT DISPLAY (COMMON ANODE - ACTIVE LOW)
############################################################
set_property PACKAGE_PIN W7 [get_ports IO_SSEG[0]]  ;# a
set_property PACKAGE_PIN W6 [get_ports IO_SSEG[1]]  ;# b
set_property PACKAGE_PIN U8 [get_ports IO_SSEG[2]]  ;# c
set_property PACKAGE_PIN V8 [get_ports IO_SSEG[3]]  ;# d
set_property PACKAGE_PIN U5 [get_ports IO_SSEG[4]]  ;# e
set_property PACKAGE_PIN V5 [get_ports IO_SSEG[5]]  ;# f
set_property PACKAGE_PIN U7 [get_ports IO_SSEG[6]]  ;# g
set_property IOSTANDARD LVCMOS33 [get_ports IO_SSEG]

set_property PACKAGE_PIN U2 [get_ports IO_SSEG_SEL[0]]
set_property PACKAGE_PIN U4 [get_ports IO_SSEG_SEL[1]]
set_property PACKAGE_PIN V4 [get_ports IO_SSEG_SEL[2]]
set_property PACKAGE_PIN W4 [get_ports IO_SSEG_SEL[3]]
set_property IOSTANDARD LVCMOS33 [get_ports IO_SSEG_SEL]

############################################################
## LEDs
############################################################
set_property PACKAGE_PIN U16 [get_ports {LD[0]}]
set_property PACKAGE_PIN E19 [get_ports {LD[1]}]
set_property PACKAGE_PIN U19 [get_ports {LD[2]}]
set_property PACKAGE_PIN V19 [get_ports {LD[3]}]
set_property PACKAGE_PIN W18 [get_ports {LD[4]}]
set_property PACKAGE_PIN U15 [get_ports {LD[5]}]
set_property PACKAGE_PIN U14 [get_ports {LD[6]}]
set_property PACKAGE_PIN V14 [get_ports {LD[7]}]
set_property PACKAGE_PIN V13 [get_ports {LD[8]}]
set_property PACKAGE_PIN V3  [get_ports {LD[9]}]
set_property PACKAGE_PIN W3  [get_ports {LD[10]}]
set_property PACKAGE_PIN U3  [get_ports {LD[11]}]
set_property PACKAGE_PIN P3  [get_ports {LD[12]}]
set_property PACKAGE_PIN N3  [get_ports {LD[13]}]
set_property PACKAGE_PIN P1  [get_ports {LD[14]}]
set_property PACKAGE_PIN L1  [get_ports {LD[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {LD[*]}]

set_property PACKAGE_PIN J1 [get_ports {uart_rx_pin}]
set_property IOSTANDARD LVCMOS33 [get_ports {uart_rx_pin}]
