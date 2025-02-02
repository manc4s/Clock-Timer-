
#clock
set_property PACKAGE_PIN W5 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]


#led timer
set_property PACKAGE_PIN L1 [get_ports {clock8bit}]					
set_property IOSTANDARD LVCMOS33 [get_ports {clock8bit}]


#led manual_pulse
set_property PACKAGE_PIN U16 [get_ports {manual_pulse_led}]					
set_property IOSTANDARD LVCMOS33 [get_ports {manual_pulse_led}]


#led 1hz pulse
set_property PACKAGE_PIN E19 [get_ports {one_hz_led}]					
set_property IOSTANDARD LVCMOS33 [get_ports {one_hz_led}]



#switch 15 for select switch
set_property PACKAGE_PIN R2 [get_ports {select_switch}]					
set_property IOSTANDARD LVCMOS33 [get_ports {select_switch}]


#buttons
set_property PACKAGE_PIN T17 [get_ports {manual_pulse}]						
set_property IOSTANDARD LVCMOS33 [get_ports {manual_pulse}]



#hlt switch
set_property PACKAGE_PIN T1 [get_ports {hlt}]					
set_property IOSTANDARD LVCMOS33 [get_ports {hlt}]
