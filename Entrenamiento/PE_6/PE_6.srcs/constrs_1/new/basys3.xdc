set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pS_IBUF]
### Entradas
    ## Switches
    #SW0
    set_property PACKAGE_PIN V17 [get_ports {pK}]					
       set_property IOSTANDARD LVCMOS33 [get_ports {pK}]
    #SW1
    set_property PACKAGE_PIN V16 [get_ports {pJ}]					
       set_property IOSTANDARD LVCMOS33 [get_ports {pJ}]
       
    #SW15
    set_property PACKAGE_PIN R2 [get_ports {pEntrada}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {pEntrada}]    
    #SW14
    set_property PACKAGE_PIN T1 [get_ports {pS}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {pS}]
    #SW13
    set_property PACKAGE_PIN U1 [get_ports {pR}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {pR}]
    ## Clock signal
    set_property PACKAGE_PIN W5 [get_ports clk]							
        set_property IOSTANDARD LVCMOS33 [get_ports clk]
        create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
        
### Salidas
    ## LEDs
    #LED0
    set_property PACKAGE_PIN U16 [get_ports {pSalida}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {pSalida}]
    #LED1    
    set_property PACKAGE_PIN E19 [get_ports {npSalida}]					
        set_property IOSTANDARD LVCMOS33 [get_ports {npSalida}]    