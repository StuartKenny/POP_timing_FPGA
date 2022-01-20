`timescale 1 ns / 1 ns

module counter_testbench;
	
    // No inputs

    // Outputs
	wire SEDSTDBY, LOCK, CLKOP;
	
	//internal structures
	wire TenMeg_clk;

    // Instantiate the Unit Under Test (UUT)
	OSCH OSCinst0 (.STDBY(1'b0), .OSC(TenMeg_clk), .SEDSTDBY(SEDSTDBY));
	defparam OSCinst0.NOM_FREQ = "9.85";
	PLL_inst PLL (.CLKI(TenMeg_clk), .CLKOP(CLKOP), .LOCK(LOCK)); 

	initial begin
		#100000 $finish;
	end
endmodule