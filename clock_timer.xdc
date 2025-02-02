#Constraints file for clock_timer.v


#clock
#clock on the basys 3 is tied to package pin w5, 100Mhz
#------------------------------------------------------------
set_property PACKAGE_PIN W5 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]


#led timer
#tied to led15-(L1)
#------------------------------------------------------------
set_property PACKAGE_PIN L1 [get_ports {clock8bit}]					
set_property IOSTANDARD LVCMOS33 [get_ports {clock8bit}]


#led manual_pulse
#tied to led0-(U16)
#------------------------------------------------------------
set_property PACKAGE_PIN U16 [get_ports {manual_pulse_led}]					
set_property IOSTANDARD LVCMOS33 [get_ports {manual_pulse_led}]


#led 1hz pulse
#tied to led1-(E19)
#------------------------------------------------------------
set_property PACKAGE_PIN E19 [get_ports {one_hz_led}]					
set_property IOSTANDARD LVCMOS33 [get_ports {one_hz_led}]



#switch 15 for select switch between pulses
#------------------------------------------------------------
set_property PACKAGE_PIN R2 [get_ports {select_switch}]					
set_property IOSTANDARD LVCMOS33 [get_ports {select_switch}]


#buttons, for manual pulse
#------------------------------------------------------------
set_property PACKAGE_PIN T17 [get_ports {manual_pulse}]						
set_property IOSTANDARD LVCMOS33 [get_ports {manual_pulse}]



#hlt switch, switch to stop circuit, switch 14
#------------------------------------------------------------
set_property PACKAGE_PIN T1 [get_ports {hlt}]					
set_property IOSTANDARD LVCMOS33 [get_ports {hlt}]
