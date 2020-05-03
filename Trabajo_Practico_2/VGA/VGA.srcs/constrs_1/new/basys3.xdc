# Clock signal
#Bank = 34, Pin name = ,					Sch name = CLK100MHZ
    set_property PACKAGE_PIN W5 [get_ports clk]
    set_property IOSTANDARD LVCMOS33 [get_ports clk]
    create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

#VGA Connector
    #VGA_R3
    set_property PACKAGE_PIN N19 [get_ports {rgb[2]}]       
        set_property IOSTANDARD LVCMOS33 [get_ports {rgb[2]}]
    #VGA_G3
    set_property PACKAGE_PIN D17 [get_ports {rgb[1]}]       
        set_property IOSTANDARD LVCMOS33 [get_ports {rgb[1]}]

    #VGA_B3
    set_property PACKAGE_PIN J18 [get_ports {rgb[0]}]       
        set_property IOSTANDARD LVCMOS33 [get_ports {rgb[0]}]


    #Bank = 14, Pin name = ,				Sch name = VGA_HS
    set_property PACKAGE_PIN P19 [get_ports hsync]
        set_property IOSTANDARD LVCMOS33 [get_ports hsync]
        
    #Bank = 14, Pin name = ,				Sch name = VGA_VS
    set_property PACKAGE_PIN R19 [get_ports vsync]
        set_property IOSTANDARD LVCMOS33 [get_ports vsync]
