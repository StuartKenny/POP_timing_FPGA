// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Mar 01 11:20:22 2022
//
// Verilog Description of module clocks
//

module clocks (clk_10M_ref, clk_2M5, clk_debug, SEDSTDBY) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(13[8:14])
    input clk_10M_ref;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(20[8:19])
    output clk_2M5;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    output clk_debug;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    output SEDSTDBY;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[29:37])
    
    
    wire GND_net, clk_debug_c, SEDSTDBY_c, VCC_net;
    
    VHI i12 (.Z(VCC_net));
    OB clk_2M5_pad (.I(clk_debug_c), .O(clk_2M5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    OSCH OSCinst0 (.STDBY(GND_net), .SEDSTDBY(SEDSTDBY_c), .OSC(clk_debug_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCinst0.NOM_FREQ = "2.46";
    OB clk_debug_pad (.I(clk_debug_c), .O(clk_debug));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    OB SEDSTDBY_pad (.I(SEDSTDBY_c), .O(SEDSTDBY));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[29:37])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

