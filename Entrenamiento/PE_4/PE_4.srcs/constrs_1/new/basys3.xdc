###Inputs
    ## Switches
        #SW0
        set_property PACKAGE_PIN V17 [get_ports {pInput[0]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {pInput[0]}]
        #SW1
        set_property PACKAGE_PIN V16 [get_ports {pInput[1]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {pInput[1]}]
        #SW2
        set_property PACKAGE_PIN W16 [get_ports {pInput[2]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {pInput[2]}]
        #SW3	
        set_property PACKAGE_PIN W17 [get_ports {pInput[3]}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {pInput[3]}]
	    #SW15   
        set_property PACKAGE_PIN R2 [get_ports {CE}]					
	       set_property IOSTANDARD LVCMOS33 [get_ports {CE}]	       
	       
    ##Buttons
        #BTN0
        set_property PACKAGE_PIN U18 [get_ports pReset]						
	       set_property IOSTANDARD LVCMOS33 [get_ports pReset]
	
	## Clock signal
        set_property PACKAGE_PIN W5 [get_ports clk]							
            set_property IOSTANDARD LVCMOS33 [get_ports clk]
            create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	       
###Outputs
    ## LEDs
    #LED0
        set_property PACKAGE_PIN U16 [get_ports {pOutput[0]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {pOutput[0]}]
    #LED1
        set_property PACKAGE_PIN E19 [get_ports {pOutput[1]}]					
            set_property IOSTANDARD LVCMOS33 [get_ports {pOutput[1]}]