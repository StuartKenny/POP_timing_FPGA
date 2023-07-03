//Supplies the system and debug clocks

//Settings used here:
//2.46MHz (closest setting to 2.5MHz)
//9.85MHz (2.46MHz when fed through a divide-by-4 PLL
//38.00MHz (for high-speed debug clock - 2.5MHz within 1.3% when divided by 15)
//For all possible oscillator frequencies see Table 15 of the MachXO2 sysCLOCK PLL Design and Usage Guide

//If using JTAG debugging, the sample clock must be faster than the JTAG clock
//default JTAG (HW-USBN-2B) frequecy is 30MHz but can be divided
//Divider setting 3 gives a JTAG clock of 7.5MHz

module clocks
	(	clk_10M_ref, //10MHz external reference
		clk_2M5, //main system clock output
		clk_debug, //clock for Reveal debug circuit
		SEDSTDBY //simulation-only output
		);

	input clk_10M_ref;
	output clk_2M5, clk_debug, SEDSTDBY;
	
	//Simplest possible INTERNAL SOURCE
	//OSCH OSCinst0 (.STDBY(1'b0), .OSC(clk_2M5), .SEDSTDBY(SEDSTDBY));
	//defparam OSCinst0.NOM_FREQ = "2.46";
	//assign clk_debug = clk_2M5; //option to make 2.5MHz clock available to debug circuit
	
	//10MHz OSCILLATOR WITH PLL
	//10MHz internal oscillator feeding debug clock
	//PLL used to divide by 4 to produce 2.46MHz
	//OSCH OSCinst0 (.STDBY(1'b0), .OSC(clk_debug), .SEDSTDBY(SEDSTDBY));
	//defparam OSCinst0.NOM_FREQ = "9.85";
	//DIV4PLL PLL (.CLKI(clk_debug), .CLKOP(clk_2M5), .LOCK()); 
	
	//FAST DEBUG CLOCK - internal oscillator set to 38MHz
	//PLL used to divide by 15 to produce 2.53MHz
	//OSCH OSCinst0 (.STDBY(1'b0), .OSC(clk_debug), .SEDSTDBY(SEDSTDBY));
	//defparam OSCinst0.NOM_FREQ = "38.00";
	//DebugPLL PLL (.CLKI(clk_debug), .CLKOP(clk_2M5), .LOCK()); 

	//EXTERNAL 10MHZ REFERENCE used
	DIV4PLL PLL (.CLKI(clk_10M_ref), .CLKOP(clk_2M5), .LOCK()); 
	assign clk_debug = clk_10M_ref;

 endmodule