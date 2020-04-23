###Inputs
    ## Switches
        #SW0
        set_property PACKAGE_PIN V17 [get_ports {input[0]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {input[0]}]
        #SW1
        set_property PACKAGE_PIN V16 [get_ports {input[1]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {input[1]}]
        #SW2
        set_property PACKAGE_PIN W16 [get_ports {input[2]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {input[2]}]
        #SW3	
        set_property PACKAGE_PIN W17 [get_ports {input[3]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {input[3]}]
	       
    ##Buttons
        #BTN0
        set_property PACKAGE_PIN U18 [get_ports reset]						
	       set_property IOSTANDARD LVCMOS33 [get_ports reset]
	
	## Clock signal
        set_property PACKAGE_PIN W5 [get_ports clock]							
            set_property IOSTANDARD LVCMOS33 [get_ports clock]
            create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clock]
	       
###Outputs
    ## LEDs
    #LED0
        set_property PACKAGE_PIN U16 [get_ports {output[0]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[0]}]
    #LED1
        set_property PACKAGE_PIN E19 [get_ports {output[1]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[1]}]
    #LED2            
        set_property PACKAGE_PIN U19 [get_ports {output[2]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[2]}]
    #LED3            
        set_property PACKAGE_PIN V19 [get_ports {output[3]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[3]}]
    #LED4            
        set_property PACKAGE_PIN W18 [get_ports {output[4]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[4]}]
    #LED5            
        set_property PACKAGE_PIN U15 [get_ports {output[5]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[5]}]
    #LED6            
        set_property PACKAGE_PIN U14 [get_ports {output[6]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[6]}]
    #LED7            
        set_property PACKAGE_PIN V14 [get_ports {output[7]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[7]}]
    #LED8            
        set_property PACKAGE_PIN V13 [get_ports {output[8]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[8]}]
    #LED9 
        set_property PACKAGE_PIN V3 [get_ports {output[9]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {output[9]}]
