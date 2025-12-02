## Clock signal
set_property PACKAGE_PIN W5 [get_ports {CLK100MHZ}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK100MHZ}]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}]

## Push Buttons
set_property PACKAGE_PIN U18 [get_ports {BTN[0]}]  ;# BTNU
set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

set_property PACKAGE_PIN T18 [get_ports {BTN[1]}]  ;# BTND
set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

set_property PACKAGE_PIN W19 [get_ports {BTN[2]}]  ;# BTNL
set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

set_property PACKAGE_PIN T17 [get_ports {BTN[3]}]  ;# BTNR
set_property IOSTANDARD LVCMOS33 [get_ports {BTN[3]}]


## USB-UART bridge J4
set_property PACKAGE_PIN B18 [get_ports {RsRx}]
set_property IOSTANDARD LVCMOS33 [get_ports {RsRx}]
set_property PACKAGE_PIN A18 [get_ports {RsTx}]
set_property IOSTANDARD LVCMOS33 [get_ports {RsTx}]


## 7-Segment Display (CHUẨN BASYS3)
set_property PACKAGE_PIN W7  [get_ports {CA}]
set_property PACKAGE_PIN W6  [get_ports {CB}]
set_property PACKAGE_PIN U8  [get_ports {CC}]
set_property PACKAGE_PIN V8  [get_ports {CD}]
set_property PACKAGE_PIN U5  [get_ports {CE}]
set_property PACKAGE_PIN V5  [get_ports {CF}]
set_property PACKAGE_PIN U7  [get_ports {CG}]
set_property PACKAGE_PIN V7  [get_ports {DP}]
set_property IOSTANDARD LVCMOS33 [get_ports {CA CB CC CD CE CF CG DP}]

set_property PACKAGE_PIN U2 [get_ports {AN[0]}]
set_property PACKAGE_PIN U4 [get_ports {AN[1]}]
set_property PACKAGE_PIN V4 [get_ports {AN[2]}]
set_property PACKAGE_PIN W4 [get_ports {AN[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN[*]}]


## Cấu hình chung
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
