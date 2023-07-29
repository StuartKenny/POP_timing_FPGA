// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Jul 18 13:19:15 2023
//
// Verilog Description of module clocks
//

module clocks (clk_10M_ref, clk_2M5, clk_debug, SEDSTDBY) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(13[8:14])
    input clk_10M_ref;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(20[8:19])
    output clk_2M5;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    output clk_debug;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    output SEDSTDBY;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[29:37])
    
    wire clk_10M_ref_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(20[8:19])
    wire clk_2M5_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    
    wire GND_net, VCC_net;
    
    IB clk_10M_ref_pad (.I(clk_10M_ref), .O(clk_10M_ref_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(20[8:19])
    VHI i44 (.Z(VCC_net));
    OB SEDSTDBY_pad (.I(GND_net), .O(SEDSTDBY));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[29:37])
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    OB clk_debug_pad (.I(clk_10M_ref_c), .O(clk_debug));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    DIV4PLL PLL (.clk_10M_ref_c(clk_10M_ref_c), .clk_2M5_c(clk_2M5_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
    OB clk_2M5_pad (.I(clk_2M5_c), .O(clk_2M5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_10M_ref_c, clk_2M5_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_10M_ref_c;
    output clk_2M5_c;
    input GND_net;
    
    wire clk_10M_ref_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(20[8:19])
    wire clk_2M5_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[9:16])
    
    wire CLKFB_t;
    
    EHXPLLJ PLLInst_0 (.CLKI(clk_10M_ref_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_2M5_c), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=7, LSE_LCOL=10, LSE_RCOL=60, LSE_LLINE=42, LSE_RLINE=42 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(42[10:60])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 4;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_A0 = "ENABLED";
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 3;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "INT_DIVA";
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

