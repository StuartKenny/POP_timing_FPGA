// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Thu Mar 03 13:57:05 2022
//
// Verilog Description of module quad_state_machine
//

module quad_state_machine (clk, state) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(29[9:27])
    input clk;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(34[8:11])
    output [1:0]state;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(35[19:24])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(34[8:11])
    
    wire GND_net, VCC_net, state_c_1, state_c_0, n14, n15;
    
    VHI i2 (.Z(VCC_net));
    OB state_pad_1 (.I(state_c_1), .O(state[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(35[19:24])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB state_pad_0 (.I(state_c_0), .O(state[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(35[19:24])
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i17_1_lut (.A(state_c_0), .Z(n15)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(39[14:26])
    defparam i17_1_lut.init = 16'h5555;
    LUT4 i19_2_lut (.A(state_c_1), .B(state_c_0), .Z(n14)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(39[14:26])
    defparam i19_2_lut.init = 16'h6666;
    GSR GSR_INST (.GSR(VCC_net));
    VLO i27 (.Z(GND_net));
    FD1S3AX state_8__i2 (.D(n14), .CK(clk_c), .Q(state_c_1));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(39[14:26])
    defparam state_8__i2.GSR = "ENABLED";
    FD1S3AX state_8__i1 (.D(n15), .CK(clk_c), .Q(state_c_0));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(39[14:26])
    defparam state_8__i1.GSR = "ENABLED";
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(34[8:11])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

