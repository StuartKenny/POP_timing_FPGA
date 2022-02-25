// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Sun Feb 20 11:12:51 2022
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (LED_output, mode_button, pin3_sn, load_default_button, 
            pin5, tenmegclock, topleft_button, topright_button, pin9_jtgnb, 
            bottomleft_button, bottomright_button, debug_0, debug_1, 
            debug_2, pump_output, probe_output, MW_output, sample_output) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(1[8:19])
    output LED_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    input mode_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(5[8:15])
    input load_default_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(7[8:12])
    input tenmegclock;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    input topleft_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    input topright_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(11[8:18])
    input bottomleft_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    input bottomright_button;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    output debug_0;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    output debug_1;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    output debug_2;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    output pump_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    output probe_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    output MW_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    output sample_output;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    
    wire OscTenMegOut /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:19])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(31[7:12])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    wire clock_2_5M_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        tenmegclock_c, topleft_button_c, topright_button_c, bottomleft_button_c, 
        bottomright_button_c, debug_0_c, pump_output_c, probe_output_c, 
        MW_output_c, sample_output_c, slow_pulse, fast_pulse, load_defaults, 
        pieovertwo_plus, freeprecess_plus;
    wire [1:0]SMstate;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[13:20])
    
    wire MW, mode_button_N_18, load_default_button_N_20, topleft_button_N_22, 
        topright_button_N_24, bottomleft_button_N_26, bottomright_button_N_28, 
        LED_output_N_6, pump_output_N_8, probe_output_N_12, sample_output_N_16, 
        LED_output_N_1, probestarted;
    wire [1:0]state_1__N_244;
    
    wire n2547, n2573, n274, n2455;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_50 (.D(load_default_button_N_20), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam load_defaults_50.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_51 (.D(topleft_button_N_22), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam pieovertwo_plus_51.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_52 (.D(topright_button_N_24), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam freeprecess_plus_52.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_53 (.D(bottomleft_button_N_26), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam pieovertwo_minus_53.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_54 (.D(bottomright_button_N_28), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam freeprecess_minus_54.GSR = "ENABLED";
    FD1S3AX LED_output_55 (.D(LED_output_N_1), .CK(CLKOP), .Q(LED_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[8] 131[5])
    defparam LED_output_55.GSR = "ENABLED";
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(OscTenMegOut)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCinst0.NOM_FREQ = "9.85";
    FD1S3JX probe_output_57 (.D(probe_output_N_12), .CK(CLKOP), .PD(LED_output_N_6), 
            .Q(probe_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[8] 131[5])
    defparam probe_output_57.GSR = "ENABLED";
    FD1S3JX sample_output_59 (.D(sample_output_N_16), .CK(CLKOP), .PD(LED_output_N_6), 
            .Q(sample_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[8] 131[5])
    defparam sample_output_59.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_49 (.D(mode_button_N_18), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(83[8] 91[6])
    defparam sampled_modebutton_49.GSR = "ENABLED";
    FD1S3IX pump_output_56 (.D(pump_output_N_8), .CK(CLKOP), .CD(LED_output_N_6), 
            .Q(pump_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[8] 131[5])
    defparam pump_output_56.GSR = "ENABLED";
    LUT4 tenmegclock_I_0_2_lut (.A(tenmegclock_c), .B(n2455), .Z(debug_0_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[19:35])
    defparam tenmegclock_I_0_2_lut.init = 16'h2222;
    FD1S3IX MW_output_58 (.D(MW), .CK(CLKOP), .CD(n2547), .Q(MW_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(101[8] 131[5])
    defparam MW_output_58.GSR = "ENABLED";
    LUT4 SMstate_0__bdd_4_lut (.A(SMstate[0]), .B(slow_pulse), .C(SMstate[1]), 
         .D(fast_pulse), .Z(LED_output_N_1)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam SMstate_0__bdd_4_lut.init = 16'h5e0e;
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_22)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(87[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 i903_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(LED_output_N_6)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(103[7:19])
    defparam i903_2_lut.init = 16'h1111;
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_24)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(88[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_26)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(89[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(90[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(85[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:16])
    LUT4 i175_1_lut (.A(SMstate[0]), .Z(state_1__N_244[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(110[12:24])
    defparam i175_1_lut.init = 16'h5555;
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    quad_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton), 
            .state_1__N_244({Open_0, state_1__N_244[0]})) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(81[21:77])
    LUT4 equal_65_i3_2_lut_rep_41 (.A(SMstate[0]), .B(SMstate[1]), .Z(n2547)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(110[12:24])
    defparam equal_65_i3_2_lut_rep_41.init = 16'hdddd;
    LUT4 pump_output_I_2_3_lut_3_lut_4_lut_3_lut (.A(SMstate[0]), .B(SMstate[1]), 
         .C(n2455), .Z(pump_output_N_8)) /* synthesis lut_function=(A (B+!(C))+!A !(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(110[12:24])
    defparam pump_output_I_2_3_lut_3_lut_4_lut_3_lut.init = 16'h9b9b;
    LUT4 i2_3_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(n274), .D(probestarted), 
         .Z(probe_output_N_12)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(110[12:24])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_20)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(86[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    slow_clock_pulse slowclocks (.GND_net(GND_net), .debounce_pulse(debounce_pulse), 
            .CLKOP(CLKOP), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(80[19:126])
    VLO i1 (.Z(GND_net));
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(45[9:13])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:19])
    OB debug_0_pad (.I(debug_0_c), .O(debug_0));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    OB debug_1_pad (.I(VCC_net), .O(debug_1));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    OB debug_2_pad (.I(VCC_net), .O(debug_2));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    IB tenmegclock_pad (.I(tenmegclock), .O(tenmegclock_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    POPtimers POPtimers (.clock_2_5M_N_30(clock_2_5M_N_30), .GND_net(GND_net), 
            .MW(MW), .load_defaults(load_defaults), .VCC_net(VCC_net), 
            .CLKOP(CLKOP), .SMstate({SMstate}), .probestarted(probestarted), 
            .sample_output_N_16(sample_output_N_16), .n274(n274), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .n2573(n2573), .freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus), .n2455(n2455)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[12:275])
    LUT4 m1_lut (.Z(n2573)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    DIV4PLL PLL (.clock_2_5M_N_30(clock_2_5M_N_30), .CLKOP(CLKOP), .OscTenMegOut(OscTenMegOut), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[10:59])
    
endmodule
//
// Verilog Description of module quad_state_machine
//

module quad_state_machine (SMstate, sampled_modebutton, state_1__N_244) /* synthesis syn_module_defined=1 */ ;
    output [1:0]SMstate;
    input sampled_modebutton;
    input [1:0]state_1__N_244;
    
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    wire [1:0]state_1__N_244_c;
    
    FD1S3AX state_i0 (.D(state_1__N_244[0]), .CK(sampled_modebutton), .Q(SMstate[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i208_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(state_1__N_244_c[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(40[14:26])
    defparam i208_2_lut.init = 16'h6666;
    FD1S3AX state_i1 (.D(state_1__N_244_c[1]), .CK(sampled_modebutton), 
            .Q(SMstate[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=81, LSE_RLINE=81 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (GND_net, debounce_pulse, CLKOP, slow_pulse, 
            fast_pulse) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output debounce_pulse;
    input CLKOP;
    output slow_pulse;
    output fast_pulse;
    
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(31[7:12])
    
    wire n2177;
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n2178, n2176, n2175, n2174, n2173, n2172, n2171, n2170, 
        n2180, n2179;
    
    CCU2D count_141_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2177), .COUT(n2178), .S0(n97[15]), .S1(n97[16]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_17.INIT0 = 16'hfaaa;
    defparam count_141_add_4_17.INIT1 = 16'hfaaa;
    defparam count_141_add_4_17.INJECT1_0 = "NO";
    defparam count_141_add_4_17.INJECT1_1 = "NO";
    CCU2D count_141_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2176), .COUT(n2177), .S0(n97[13]), .S1(n97[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_15.INIT0 = 16'hfaaa;
    defparam count_141_add_4_15.INIT1 = 16'hfaaa;
    defparam count_141_add_4_15.INJECT1_0 = "NO";
    defparam count_141_add_4_15.INJECT1_1 = "NO";
    CCU2D count_141_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2175), .COUT(n2176), .S0(n97[11]), .S1(n97[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_13.INIT0 = 16'hfaaa;
    defparam count_141_add_4_13.INIT1 = 16'hfaaa;
    defparam count_141_add_4_13.INJECT1_0 = "NO";
    defparam count_141_add_4_13.INJECT1_1 = "NO";
    CCU2D count_141_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2174), .COUT(n2175), .S0(n97[9]), .S1(n97[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_11.INIT0 = 16'hfaaa;
    defparam count_141_add_4_11.INIT1 = 16'hfaaa;
    defparam count_141_add_4_11.INJECT1_0 = "NO";
    defparam count_141_add_4_11.INJECT1_1 = "NO";
    CCU2D count_141_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2173), .COUT(n2174), .S0(n97[7]), .S1(n97[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_9.INIT0 = 16'hfaaa;
    defparam count_141_add_4_9.INIT1 = 16'hfaaa;
    defparam count_141_add_4_9.INJECT1_0 = "NO";
    defparam count_141_add_4_9.INJECT1_1 = "NO";
    FD1S3AX count_141__i0 (.D(n97[0]), .CK(CLKOP), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i0.GSR = "ENABLED";
    CCU2D count_141_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2172), .COUT(n2173), .S0(n97[5]), .S1(n97[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_7.INIT0 = 16'hfaaa;
    defparam count_141_add_4_7.INIT1 = 16'hfaaa;
    defparam count_141_add_4_7.INJECT1_0 = "NO";
    defparam count_141_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_141__i22 (.D(n97[22]), .CK(CLKOP), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i22.GSR = "ENABLED";
    FD1S3AX count_141__i21 (.D(n97[21]), .CK(CLKOP), .Q(n170[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i21.GSR = "ENABLED";
    FD1S3AX count_141__i20 (.D(n97[20]), .CK(CLKOP), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i20.GSR = "ENABLED";
    FD1S3AX count_141__i19 (.D(n97[19]), .CK(CLKOP), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i19.GSR = "ENABLED";
    FD1S3AX count_141__i18 (.D(n97[18]), .CK(CLKOP), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i18.GSR = "ENABLED";
    FD1S3AX count_141__i17 (.D(n97[17]), .CK(CLKOP), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i17.GSR = "ENABLED";
    FD1S3AX count_141__i16 (.D(n97[16]), .CK(CLKOP), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i16.GSR = "ENABLED";
    FD1S3AX count_141__i15 (.D(n97[15]), .CK(CLKOP), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i15.GSR = "ENABLED";
    FD1S3AX count_141__i14 (.D(n97[14]), .CK(CLKOP), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i14.GSR = "ENABLED";
    FD1S3AX count_141__i13 (.D(n97[13]), .CK(CLKOP), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i13.GSR = "ENABLED";
    FD1S3AX count_141__i12 (.D(n97[12]), .CK(CLKOP), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i12.GSR = "ENABLED";
    FD1S3AX count_141__i11 (.D(n97[11]), .CK(CLKOP), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i11.GSR = "ENABLED";
    FD1S3AX count_141__i10 (.D(n97[10]), .CK(CLKOP), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i10.GSR = "ENABLED";
    FD1S3AX count_141__i9 (.D(n97[9]), .CK(CLKOP), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i9.GSR = "ENABLED";
    FD1S3AX count_141__i8 (.D(n97[8]), .CK(CLKOP), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i8.GSR = "ENABLED";
    FD1S3AX count_141__i7 (.D(n97[7]), .CK(CLKOP), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i7.GSR = "ENABLED";
    FD1S3AX count_141__i6 (.D(n97[6]), .CK(CLKOP), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i6.GSR = "ENABLED";
    FD1S3AX count_141__i5 (.D(n97[5]), .CK(CLKOP), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i5.GSR = "ENABLED";
    FD1S3AX count_141__i4 (.D(n97[4]), .CK(CLKOP), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i4.GSR = "ENABLED";
    FD1S3AX count_141__i3 (.D(n97[3]), .CK(CLKOP), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i3.GSR = "ENABLED";
    FD1S3AX count_141__i2 (.D(n97[2]), .CK(CLKOP), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i2.GSR = "ENABLED";
    FD1S3AX count_141__i1 (.D(n97[1]), .CK(CLKOP), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i1.GSR = "ENABLED";
    CCU2D count_141_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2171), .COUT(n2172), .S0(n97[3]), .S1(n97[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_5.INIT0 = 16'hfaaa;
    defparam count_141_add_4_5.INIT1 = 16'hfaaa;
    defparam count_141_add_4_5.INJECT1_0 = "NO";
    defparam count_141_add_4_5.INJECT1_1 = "NO";
    CCU2D count_141_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2170), .COUT(n2171), .S0(n97[1]), .S1(n97[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_3.INIT0 = 16'hfaaa;
    defparam count_141_add_4_3.INIT1 = 16'hfaaa;
    defparam count_141_add_4_3.INJECT1_0 = "NO";
    defparam count_141_add_4_3.INJECT1_1 = "NO";
    CCU2D count_141_add_4_23 (.A0(n170[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2180), .S0(n97[21]), .S1(n97[22]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_23.INIT0 = 16'hfaaa;
    defparam count_141_add_4_23.INIT1 = 16'hfaaa;
    defparam count_141_add_4_23.INJECT1_0 = "NO";
    defparam count_141_add_4_23.INJECT1_1 = "NO";
    CCU2D count_141_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2179), .COUT(n2180), .S0(n97[19]), .S1(n97[20]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_21.INIT0 = 16'hfaaa;
    defparam count_141_add_4_21.INIT1 = 16'hfaaa;
    defparam count_141_add_4_21.INJECT1_0 = "NO";
    defparam count_141_add_4_21.INJECT1_1 = "NO";
    CCU2D count_141_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2170), .S1(n97[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_1.INIT0 = 16'hF000;
    defparam count_141_add_4_1.INIT1 = 16'h0555;
    defparam count_141_add_4_1.INJECT1_0 = "NO";
    defparam count_141_add_4_1.INJECT1_1 = "NO";
    CCU2D count_141_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2178), .COUT(n2179), .S0(n97[17]), .S1(n97[18]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_19.INIT0 = 16'hfaaa;
    defparam count_141_add_4_19.INIT1 = 16'hfaaa;
    defparam count_141_add_4_19.INJECT1_0 = "NO";
    defparam count_141_add_4_19.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module POPtimers
//

module POPtimers (clock_2_5M_N_30, GND_net, MW, load_defaults, VCC_net, 
            CLKOP, SMstate, probestarted, sample_output_N_16, n274, 
            pieovertwo_minus, pieovertwo_plus, n2573, freeprecess_minus, 
            freeprecess_plus, n2455) /* synthesis syn_module_defined=1 */ ;
    input clock_2_5M_N_30;
    input GND_net;
    output MW;
    input load_defaults;
    input VCC_net;
    input CLKOP;
    input [1:0]SMstate;
    output probestarted;
    output sample_output_N_16;
    output n274;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input n2573;
    input freeprecess_minus;
    input freeprecess_plus;
    output n2455;
    
    wire clock_2_5M_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(31[7:12])
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    wire [15:0]gatedcount;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire [15:0]count;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[19:24])
    
    wire n2254;
    wire [13:0]n1288;
    wire [15:0]n1106;
    wire [15:0]Endofopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:37])
    
    wire n2255, n2221;
    wire [13:0]n1305;
    wire [15:0]n1942;
    
    wire n2222, n2184;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[26:46])
    wire [15:0]Endof1stMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:34])
    
    wire n2185, n2194;
    wire [15:0]Endofprobepulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[19:34])
    wire [15:0]Resetandrepeat;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[19:33])
    
    wire n2195, n2253, n2220, n2252, n2251, n2219;
    wire [13:0]n1238;
    
    wire n1422, n1423, n1424;
    wire [15:0]Endof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:34])
    
    wire n2250, n1414, n1415, n1416, n1752, MW_N_38, n198, n2454, 
        pi2started, n236, n2545, n2256, n2168;
    wire [13:0]n1254;
    
    wire n2169, loop, counterreset, n2202;
    wire [15:0]n2;
    wire [15:0]Startopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:37])
    
    wire n2203, n2211, n2183, n2201, n2257, n2248;
    wire [15:0]AdjustableFreePrecession;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[48:72])
    
    wire n2247, n2246, n2200, n2210, n2199, n2230, n2231, n2209, 
        n2198, n2229, n2218, n1430, n1431, n1432, n1426, n1427, 
        n1428, n2208, n2182, n2245, n2244, n2243, n2242;
    wire [15:0]count_15__N_111;
    
    wire n2217, n1438, n1439, n1440, n1434, n1435, n1436, n2228, 
        n2544, n2207, n2227, n2216, n1446, n1447, n1448, n1442, 
        n1443, n1444, n2197, n2225, n2215, n1454, n1455, n1456, 
        n1450, n1451, n1452, n2224, n2206, n2205, n2223, n2214, 
        n1462, n1463, n1464, n1458, n1459, n1460, n2193, n2192, 
        n2167, n2191, n2213, n1470, n1471, n1472, n1466, n1467, 
        n1468, n2190, n2164, n2165, n2196, n2189, n2204, n2188, 
        n2166, n2212, freeprecess_minus_enable_4, n1479, n1480, freeprecess_minus_enable_5, 
        n1475, n1476, n2163, n2187, n2186, n2233, n2232, n2344, 
        n2345, n2346, n2347, n2348, n2349, n2350, n2351;
    wire [15:0]n2_adj_246;
    
    wire n2352, n2353, n2354, n2355, n2356, n2357, n2358, n2359, 
        n2360, n2361, n2362, n2363, n2364, n2365, n2366;
    wire [15:0]n2_adj_247;
    
    wire freeprecess_minus_enable_6, n1419, n1420;
    wire [15:0]Startof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:36])
    
    wire n2367, n2368, n2369, n2370, n2371, n2372, n2373, n2374, 
        n2375, n2376, n2377, n2378, n2379, n2380, n2381, n2383, 
        n2384, n2385, n2386, n2387, n2388, n2389, n2390, n7, 
        n2472, n8;
    
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clock_2_5M_N_30), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    CCU2D add_203_11 (.A0(n1288[7]), .B0(n1106[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[8]), .B1(n1106[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2254), .COUT(n2255), .S0(Endofopticalsample[9]), .S1(Endofopticalsample[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_11.INIT0 = 16'h5666;
    defparam add_203_11.INIT1 = 16'h5666;
    defparam add_203_11.INJECT1_0 = "NO";
    defparam add_203_11.INJECT1_1 = "NO";
    CCU2D add_783_5 (.A0(n1305[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2221), 
          .COUT(n2222), .S0(n1942[6]), .S1(n1942[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_5.INIT0 = 16'h0555;
    defparam add_783_5.INIT1 = 16'hfaaa;
    defparam add_783_5.INJECT1_0 = "NO";
    defparam add_783_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2184), .COUT(n2185), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2194), .COUT(n2195), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D add_203_9 (.A0(n1288[5]), .B0(n1106[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[6]), .B1(n1106[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2253), .COUT(n2254), .S0(Endofopticalsample[7]), .S1(Endofopticalsample[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_9.INIT0 = 16'h5666;
    defparam add_203_9.INIT1 = 16'h5666;
    defparam add_203_9.INJECT1_0 = "NO";
    defparam add_203_9.INJECT1_1 = "NO";
    CCU2D add_783_3 (.A0(n1305[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2220), 
          .COUT(n2221), .S0(n1942[4]), .S1(n1942[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_3.INIT0 = 16'h0555;
    defparam add_783_3.INIT1 = 16'h0555;
    defparam add_783_3.INJECT1_0 = "NO";
    defparam add_783_3.INJECT1_1 = "NO";
    CCU2D add_783_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2220), 
          .S1(n1942[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_1.INIT0 = 16'hF000;
    defparam add_783_1.INIT1 = 16'h0555;
    defparam add_783_1.INJECT1_0 = "NO";
    defparam add_783_1.INJECT1_1 = "NO";
    CCU2D add_203_7 (.A0(n1288[3]), .B0(n1106[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[4]), .B1(n1106[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2252), .COUT(n2253), .S0(Endofopticalsample[5]), .S1(Endofopticalsample[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_7.INIT0 = 16'h5666;
    defparam add_203_7.INIT1 = 16'h5666;
    defparam add_203_7.INJECT1_0 = "NO";
    defparam add_203_7.INJECT1_1 = "NO";
    CCU2D add_203_5 (.A0(n1288[1]), .B0(n1106[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[2]), .B1(n1106[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2251), .COUT(n2252), .S0(Endofopticalsample[3]), .S1(Endofopticalsample[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_5.INIT0 = 16'h5666;
    defparam add_203_5.INIT1 = 16'h5666;
    defparam add_203_5.INJECT1_0 = "NO";
    defparam add_203_5.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clock_2_5M_N_30), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    CCU2D add_195_17 (.A0(n1238[13]), .B0(n1422), .C0(n1423), .D0(n1424), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2219), 
          .S0(Endof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_17.INIT0 = 16'h596a;
    defparam add_195_17.INIT1 = 16'h0000;
    defparam add_195_17.INJECT1_0 = "NO";
    defparam add_195_17.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clock_2_5M_N_30), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_203_3 (.A0(n1106[1]), .B0(n1414), .C0(n1415), .D0(n1416), 
          .A1(n1288[0]), .B1(n1106[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2250), .COUT(n2251), .S0(Endofopticalsample[1]), .S1(Endofopticalsample[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_3.INIT0 = 16'h596a;
    defparam add_203_3.INIT1 = 16'h5666;
    defparam add_203_3.INJECT1_0 = "NO";
    defparam add_203_3.INJECT1_1 = "NO";
    LUT4 MW_I_0_4_lut (.A(n1752), .B(MW_N_38), .C(n198), .D(n2454), 
         .Z(MW)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[9:62])
    defparam MW_I_0_4_lut.init = 16'hcfce;
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n236), .Z(MW_N_38)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[36:62])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    CCU2D add_203_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2545), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2250), 
          .S1(Endofopticalsample[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_1.INIT0 = 16'hF000;
    defparam add_203_1.INIT1 = 16'h0555;
    defparam add_203_1.INJECT1_0 = "NO";
    defparam add_203_1.INJECT1_1 = "NO";
    CCU2D add_203_13 (.A0(n1288[9]), .B0(n1106[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[10]), .B1(n1106[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2255), .COUT(n2256), .S0(Endofopticalsample[11]), .S1(Endofopticalsample[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_13.INIT0 = 16'h5666;
    defparam add_203_13.INIT1 = 16'h5666;
    defparam add_203_13.INJECT1_0 = "NO";
    defparam add_203_13.INJECT1_1 = "NO";
    CCU2D add_210_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2168), .COUT(n2169), .S0(n1254[11]), .S1(n1254[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_13.INIT0 = 16'hfaaa;
    defparam add_210_13.INIT1 = 16'hfaaa;
    defparam add_210_13.INJECT1_0 = "NO";
    defparam add_210_13.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clock_2_5M_N_30), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clock_2_5M_N_30), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(65[19:37])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D add_797_13 (.A0(n2[11]), .B0(n1254[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[12]), .B1(n1254[10]), .C1(GND_net), .D1(GND_net), .CIN(n2202), 
          .COUT(n2203), .S0(Startopticalsample[11]), .S1(Startopticalsample[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_13.INIT0 = 16'h5666;
    defparam add_797_13.INIT1 = 16'h5666;
    defparam add_797_13.INJECT1_0 = "NO";
    defparam add_797_13.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clock_2_5M_N_30), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clock_2_5M_N_30), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clock_2_5M_N_30), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clock_2_5M_N_30), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clock_2_5M_N_30), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clock_2_5M_N_30), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clock_2_5M_N_30), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clock_2_5M_N_30), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clock_2_5M_N_30), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clock_2_5M_N_30), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clock_2_5M_N_30), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=275, LSE_LLINE=79, LSE_RLINE=79 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    CCU2D add_214_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2211), .S0(n1305[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_15.INIT0 = 16'hfaaa;
    defparam add_214_15.INIT1 = 16'h0000;
    defparam add_214_15.INJECT1_0 = "NO";
    defparam add_214_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2183), .COUT(n2184), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_797_11 (.A0(n2[9]), .B0(n1254[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[10]), .B1(n1254[8]), .C1(GND_net), .D1(GND_net), .CIN(n2201), 
          .COUT(n2202), .S0(Startopticalsample[9]), .S1(Startopticalsample[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_11.INIT0 = 16'h5666;
    defparam add_797_11.INIT1 = 16'h5666;
    defparam add_797_11.INJECT1_0 = "NO";
    defparam add_797_11.INJECT1_1 = "NO";
    CCU2D add_203_17 (.A0(n1288[13]), .B0(n1106[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2257), 
          .S0(Endofopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_17.INIT0 = 16'h5666;
    defparam add_203_17.INIT1 = 16'h0000;
    defparam add_203_17.INJECT1_0 = "NO";
    defparam add_203_17.INJECT1_1 = "NO";
    CCU2D add_203_15 (.A0(n1288[11]), .B0(n1106[13]), .C0(GND_net), .D0(GND_net), 
          .A1(n1288[12]), .B1(n1106[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2256), .COUT(n2257), .S0(Endofopticalsample[13]), .S1(Endofopticalsample[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_15.INIT0 = 16'h5666;
    defparam add_203_15.INIT1 = 16'h5666;
    defparam add_203_15.INJECT1_0 = "NO";
    defparam add_203_15.INJECT1_1 = "NO";
    CCU2D add_213_15 (.A0(AdjustableFreePrecession[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2248), .S0(n1106[14]), .S1(n1106[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_15.INIT0 = 16'h5aaa;
    defparam add_213_15.INIT1 = 16'h5aaa;
    defparam add_213_15.INJECT1_0 = "NO";
    defparam add_213_15.INJECT1_1 = "NO";
    CCU2D add_213_13 (.A0(AdjustableFreePrecession[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2247), .COUT(n2248), .S0(n1106[12]), 
          .S1(n1106[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_13.INIT0 = 16'h5aaa;
    defparam add_213_13.INIT1 = 16'h5aaa;
    defparam add_213_13.INJECT1_0 = "NO";
    defparam add_213_13.INJECT1_1 = "NO";
    CCU2D add_213_11 (.A0(AdjustableFreePrecession[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2246), .COUT(n2247), .S0(n1106[10]), 
          .S1(n1106[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_11.INIT0 = 16'h5aaa;
    defparam add_213_11.INIT1 = 16'h5aaa;
    defparam add_213_11.INJECT1_0 = "NO";
    defparam add_213_11.INJECT1_1 = "NO";
    CCU2D add_797_9 (.A0(n2[7]), .B0(n1254[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[8]), .B1(n1254[6]), .C1(GND_net), .D1(GND_net), .CIN(n2200), 
          .COUT(n2201), .S0(Startopticalsample[7]), .S1(Startopticalsample[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_9.INIT0 = 16'h5666;
    defparam add_797_9.INIT1 = 16'h5666;
    defparam add_797_9.INJECT1_0 = "NO";
    defparam add_797_9.INJECT1_1 = "NO";
    CCU2D add_214_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(n1305[11]), .S1(n1305[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_13.INIT0 = 16'hfaaa;
    defparam add_214_13.INIT1 = 16'hfaaa;
    defparam add_214_13.INJECT1_0 = "NO";
    defparam add_214_13.INJECT1_1 = "NO";
    CCU2D add_797_7 (.A0(n2[5]), .B0(n1254[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[6]), .B1(n1254[4]), .C1(GND_net), .D1(GND_net), .CIN(n2199), 
          .COUT(n2200), .S0(Startopticalsample[5]), .S1(Startopticalsample[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_7.INIT0 = 16'h5666;
    defparam add_797_7.INIT1 = 16'h5666;
    defparam add_797_7.INJECT1_0 = "NO";
    defparam add_797_7.INJECT1_1 = "NO";
    CCU2D add_212_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2230), .COUT(n2231), .S0(n1288[7]), .S1(n1288[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_9.INIT0 = 16'hfaaa;
    defparam add_212_9.INIT1 = 16'h0555;
    defparam add_212_9.INJECT1_0 = "NO";
    defparam add_212_9.INJECT1_1 = "NO";
    CCU2D add_214_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2209), .COUT(n2210), .S0(n1305[9]), .S1(n1305[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_11.INIT0 = 16'hfaaa;
    defparam add_214_11.INIT1 = 16'hfaaa;
    defparam add_214_11.INJECT1_0 = "NO";
    defparam add_214_11.INJECT1_1 = "NO";
    CCU2D add_797_5 (.A0(n2[3]), .B0(n1254[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[4]), .B1(n1254[2]), .C1(GND_net), .D1(GND_net), .CIN(n2198), 
          .COUT(n2199), .S0(Startopticalsample[3]), .S1(Startopticalsample[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_5.INIT0 = 16'h5666;
    defparam add_797_5.INIT1 = 16'h5666;
    defparam add_797_5.INJECT1_0 = "NO";
    defparam add_797_5.INJECT1_1 = "NO";
    CCU2D add_212_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2229), .COUT(n2230), .S0(n1288[5]), .S1(n1288[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_7.INIT0 = 16'hfaaa;
    defparam add_212_7.INIT1 = 16'hfaaa;
    defparam add_212_7.INJECT1_0 = "NO";
    defparam add_212_7.INJECT1_1 = "NO";
    CCU2D add_195_15 (.A0(n1238[11]), .B0(n1430), .C0(n1431), .D0(n1432), 
          .A1(n1238[12]), .B1(n1426), .C1(n1427), .D1(n1428), .CIN(n2218), 
          .COUT(n2219), .S0(Endof2ndMWpulse[13]), .S1(Endof2ndMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_15.INIT0 = 16'h596a;
    defparam add_195_15.INIT1 = 16'h596a;
    defparam add_195_15.INJECT1_0 = "NO";
    defparam add_195_15.INJECT1_1 = "NO";
    CCU2D add_214_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2208), .COUT(n2209), .S0(n1305[7]), .S1(n1305[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_9.INIT0 = 16'hfaaa;
    defparam add_214_9.INIT1 = 16'h0555;
    defparam add_214_9.INJECT1_0 = "NO";
    defparam add_214_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2182), .COUT(n2183), .S0(Endof1stMWpulse[1]), 
          .S1(Endof1stMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_213_9 (.A0(AdjustableFreePrecession[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2245), .COUT(n2246), .S0(n1106[8]), 
          .S1(n1106[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_9.INIT0 = 16'h5aaa;
    defparam add_213_9.INIT1 = 16'h5aaa;
    defparam add_213_9.INJECT1_0 = "NO";
    defparam add_213_9.INJECT1_1 = "NO";
    CCU2D add_213_7 (.A0(AdjustableFreePrecession[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2244), .COUT(n2245), .S0(n1106[6]), 
          .S1(n1106[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_7.INIT0 = 16'h5555;
    defparam add_213_7.INIT1 = 16'h5555;
    defparam add_213_7.INJECT1_0 = "NO";
    defparam add_213_7.INJECT1_1 = "NO";
    CCU2D add_213_5 (.A0(AdjustableFreePrecession[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2243), .COUT(n2244), .S0(n1106[4]), 
          .S1(n1106[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_5.INIT0 = 16'h5555;
    defparam add_213_5.INIT1 = 16'h5555;
    defparam add_213_5.INJECT1_0 = "NO";
    defparam add_213_5.INJECT1_1 = "NO";
    CCU2D add_213_3 (.A0(count_15__N_111[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2242), .COUT(n2243), .S0(n1106[2]), 
          .S1(n1106[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_3.INIT0 = 16'h5aaa;
    defparam add_213_3.INIT1 = 16'h5555;
    defparam add_213_3.INJECT1_0 = "NO";
    defparam add_213_3.INJECT1_1 = "NO";
    CCU2D add_195_13 (.A0(n1238[9]), .B0(n1438), .C0(n1439), .D0(n1440), 
          .A1(n1238[10]), .B1(n1434), .C1(n1435), .D1(n1436), .CIN(n2217), 
          .COUT(n2218), .S0(Endof2ndMWpulse[11]), .S1(Endof2ndMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_13.INIT0 = 16'h596a;
    defparam add_195_13.INIT1 = 16'h596a;
    defparam add_195_13.INJECT1_0 = "NO";
    defparam add_195_13.INJECT1_1 = "NO";
    CCU2D add_212_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2228), .COUT(n2229), .S0(n1288[3]), .S1(n1288[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_5.INIT0 = 16'h0555;
    defparam add_212_5.INIT1 = 16'h0555;
    defparam add_212_5.INJECT1_0 = "NO";
    defparam add_212_5.INJECT1_1 = "NO";
    CCU2D add_213_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2544), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2242), 
          .S1(n1106[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_1.INIT0 = 16'hF000;
    defparam add_213_1.INIT1 = 16'h5555;
    defparam add_213_1.INJECT1_0 = "NO";
    defparam add_213_1.INJECT1_1 = "NO";
    CCU2D add_214_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2207), .COUT(n2208), .S0(n1305[5]), .S1(n1305[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_7.INIT0 = 16'hfaaa;
    defparam add_214_7.INIT1 = 16'hfaaa;
    defparam add_214_7.INJECT1_0 = "NO";
    defparam add_214_7.INJECT1_1 = "NO";
    CCU2D add_212_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2227), .COUT(n2228), .S0(n1288[1]), .S1(n1288[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_3.INIT0 = 16'hfaaa;
    defparam add_212_3.INIT1 = 16'hfaaa;
    defparam add_212_3.INJECT1_0 = "NO";
    defparam add_212_3.INJECT1_1 = "NO";
    CCU2D add_195_11 (.A0(n1238[7]), .B0(n1446), .C0(n1447), .D0(n1448), 
          .A1(n1238[8]), .B1(n1442), .C1(n1443), .D1(n1444), .CIN(n2216), 
          .COUT(n2217), .S0(Endof2ndMWpulse[9]), .S1(Endof2ndMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_11.INIT0 = 16'h596a;
    defparam add_195_11.INIT1 = 16'h596a;
    defparam add_195_11.INJECT1_0 = "NO";
    defparam add_195_11.INJECT1_1 = "NO";
    CCU2D add_797_3 (.A0(n2[1]), .B0(n1414), .C0(n1415), .D0(n1416), 
          .A1(n2[2]), .B1(n1254[0]), .C1(GND_net), .D1(GND_net), .CIN(n2197), 
          .COUT(n2198), .S0(Startopticalsample[1]), .S1(Startopticalsample[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_3.INIT0 = 16'h596a;
    defparam add_797_3.INIT1 = 16'h5666;
    defparam add_797_3.INJECT1_0 = "NO";
    defparam add_797_3.INJECT1_1 = "NO";
    CCU2D add_212_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2227), .S1(n1288[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_1.INIT0 = 16'hF000;
    defparam add_212_1.INIT1 = 16'h0555;
    defparam add_212_1.INJECT1_0 = "NO";
    defparam add_212_1.INJECT1_1 = "NO";
    CCU2D add_783_13 (.A0(n1305[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2225), .S0(n1942[14]), .S1(n1942[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_13.INIT0 = 16'hfaaa;
    defparam add_783_13.INIT1 = 16'hfaaa;
    defparam add_783_13.INJECT1_0 = "NO";
    defparam add_783_13.INJECT1_1 = "NO";
    CCU2D add_195_9 (.A0(n1238[5]), .B0(n1454), .C0(n1455), .D0(n1456), 
          .A1(n1238[6]), .B1(n1450), .C1(n1451), .D1(n1452), .CIN(n2215), 
          .COUT(n2216), .S0(Endof2ndMWpulse[7]), .S1(Endof2ndMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_9.INIT0 = 16'h596a;
    defparam add_195_9.INIT1 = 16'h596a;
    defparam add_195_9.INJECT1_0 = "NO";
    defparam add_195_9.INJECT1_1 = "NO";
    CCU2D add_783_11 (.A0(n1305[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2224), .COUT(n2225), .S0(n1942[12]), .S1(n1942[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_11.INIT0 = 16'hfaaa;
    defparam add_783_11.INIT1 = 16'hfaaa;
    defparam add_783_11.INJECT1_0 = "NO";
    defparam add_783_11.INJECT1_1 = "NO";
    CCU2D add_214_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2206), .COUT(n2207), .S0(n1305[3]), .S1(n1305[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_5.INIT0 = 16'h0555;
    defparam add_214_5.INIT1 = 16'h0555;
    defparam add_214_5.INJECT1_0 = "NO";
    defparam add_214_5.INJECT1_1 = "NO";
    CCU2D add_214_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2205), .COUT(n2206), .S0(n1305[1]), .S1(n1305[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_3.INIT0 = 16'hfaaa;
    defparam add_214_3.INIT1 = 16'hfaaa;
    defparam add_214_3.INJECT1_0 = "NO";
    defparam add_214_3.INJECT1_1 = "NO";
    CCU2D add_783_9 (.A0(n1305[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2223), 
          .COUT(n2224), .S0(n1942[10]), .S1(n1942[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_9.INIT0 = 16'hfaaa;
    defparam add_783_9.INIT1 = 16'hfaaa;
    defparam add_783_9.INJECT1_0 = "NO";
    defparam add_783_9.INJECT1_1 = "NO";
    CCU2D add_195_7 (.A0(n1238[3]), .B0(n1462), .C0(n1463), .D0(n1464), 
          .A1(n1238[4]), .B1(n1458), .C1(n1459), .D1(n1460), .CIN(n2214), 
          .COUT(n2215), .S0(Endof2ndMWpulse[5]), .S1(Endof2ndMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_7.INIT0 = 16'h596a;
    defparam add_195_7.INIT1 = 16'h596a;
    defparam add_195_7.INJECT1_0 = "NO";
    defparam add_195_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2193), .COUT(n2194), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2192), .COUT(n2193), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2182), .S1(Endof1stMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_797_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2197), 
          .S1(Startopticalsample[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_1.INIT0 = 16'hF000;
    defparam add_797_1.INIT1 = 16'h5555;
    defparam add_797_1.INJECT1_0 = "NO";
    defparam add_797_1.INJECT1_1 = "NO";
    CCU2D add_210_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2167), .COUT(n2168), .S0(n1254[9]), .S1(n1254[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_11.INIT0 = 16'hfaaa;
    defparam add_210_11.INIT1 = 16'hfaaa;
    defparam add_210_11.INJECT1_0 = "NO";
    defparam add_210_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2191), .COUT(n2192), .S0(Resetandrepeat[5]), 
          .S1(Resetandrepeat[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_783_7 (.A0(n1305[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1305[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2222), 
          .COUT(n2223), .S0(n1942[8]), .S1(n1942[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_783_7.INIT0 = 16'h0555;
    defparam add_783_7.INIT1 = 16'hfaaa;
    defparam add_783_7.INJECT1_0 = "NO";
    defparam add_783_7.INJECT1_1 = "NO";
    CCU2D add_195_5 (.A0(n1238[1]), .B0(n1470), .C0(n1471), .D0(n1472), 
          .A1(n1238[2]), .B1(n1466), .C1(n1467), .D1(n1468), .CIN(n2213), 
          .COUT(n2214), .S0(Endof2ndMWpulse[3]), .S1(Endof2ndMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_5.INIT0 = 16'h596a;
    defparam add_195_5.INIT1 = 16'h596a;
    defparam add_195_5.INJECT1_0 = "NO";
    defparam add_195_5.INJECT1_1 = "NO";
    CCU2D add_214_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2205), .S1(n1305[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_1.INIT0 = 16'hF000;
    defparam add_214_1.INIT1 = 16'h0555;
    defparam add_214_1.INJECT1_0 = "NO";
    defparam add_214_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2190), .COUT(n2191), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_210_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2164), .COUT(n2165), .S0(n1254[3]), .S1(n1254[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_5.INIT0 = 16'h0555;
    defparam add_210_5.INIT1 = 16'h0555;
    defparam add_210_5.INJECT1_0 = "NO";
    defparam add_210_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2190), .S1(Resetandrepeat[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_15 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2196), .S0(Resetandrepeat[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2189), .S0(Endof1stMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_17.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_17.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_17.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_17.INJECT1_1 = "NO";
    CCU2D add_797_17 (.A0(n2[15]), .B0(n1254[13]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2204), 
          .S0(Startopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_17.INIT0 = 16'h5666;
    defparam add_797_17.INIT1 = 16'h0000;
    defparam add_797_17.INJECT1_0 = "NO";
    defparam add_797_17.INJECT1_1 = "NO";
    CCU2D add_797_15 (.A0(n2[13]), .B0(n1254[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[14]), .B1(n1254[12]), .C1(GND_net), .D1(GND_net), .CIN(n2203), 
          .COUT(n2204), .S0(Startopticalsample[13]), .S1(Startopticalsample[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_797_15.INIT0 = 16'h5666;
    defparam add_797_15.INIT1 = 16'h5666;
    defparam add_797_15.INJECT1_0 = "NO";
    defparam add_797_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2188), .COUT(n2189), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D add_210_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2166), .COUT(n2167), .S0(n1254[7]), .S1(n1254[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_9.INIT0 = 16'hfaaa;
    defparam add_210_9.INIT1 = 16'h0555;
    defparam add_210_9.INJECT1_0 = "NO";
    defparam add_210_9.INJECT1_1 = "NO";
    CCU2D add_195_3 (.A0(AdjustablePieOverTwo[0]), .B0(freeprecess_minus_enable_4), 
          .C0(n1479), .D0(n1480), .A1(n1238[0]), .B1(freeprecess_minus_enable_5), 
          .C1(n1475), .D1(n1476), .CIN(n2212), .COUT(n2213), .S0(Endof2ndMWpulse[1]), 
          .S1(Endof2ndMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_3.INIT0 = 16'h596a;
    defparam add_195_3.INIT1 = 16'h596a;
    defparam add_195_3.INJECT1_0 = "NO";
    defparam add_195_3.INJECT1_1 = "NO";
    CCU2D add_210_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2163), .COUT(n2164), .S0(n1254[1]), .S1(n1254[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_3.INIT0 = 16'hfaaa;
    defparam add_210_3.INIT1 = 16'hfaaa;
    defparam add_210_3.INJECT1_0 = "NO";
    defparam add_210_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_13 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2195), .COUT(n2196), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D add_210_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2169), .S0(n1254[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_15.INIT0 = 16'hfaaa;
    defparam add_210_15.INIT1 = 16'h0000;
    defparam add_210_15.INJECT1_0 = "NO";
    defparam add_210_15.INJECT1_1 = "NO";
    CCU2D add_210_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2165), .COUT(n2166), .S0(n1254[5]), .S1(n1254[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_7.INIT0 = 16'hfaaa;
    defparam add_210_7.INIT1 = 16'hfaaa;
    defparam add_210_7.INJECT1_0 = "NO";
    defparam add_210_7.INJECT1_1 = "NO";
    CCU2D add_195_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2545), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2212), 
          .S1(Endof2ndMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_1.INIT0 = 16'hF000;
    defparam add_195_1.INIT1 = 16'h0555;
    defparam add_195_1.INJECT1_0 = "NO";
    defparam add_195_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2187), .COUT(n2188), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2186), .COUT(n2187), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D add_210_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2163), .S1(n1254[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_1.INIT0 = 16'hF000;
    defparam add_210_1.INIT1 = 16'h0555;
    defparam add_210_1.INJECT1_0 = "NO";
    defparam add_210_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2185), .COUT(n2186), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D add_212_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2233), .S0(n1288[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_15.INIT0 = 16'hfaaa;
    defparam add_212_15.INIT1 = 16'h0000;
    defparam add_212_15.INJECT1_0 = "NO";
    defparam add_212_15.INJECT1_1 = "NO";
    CCU2D add_212_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2232), .COUT(n2233), .S0(n1288[11]), .S1(n1288[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_13.INIT0 = 16'hfaaa;
    defparam add_212_13.INIT1 = 16'hfaaa;
    defparam add_212_13.INJECT1_0 = "NO";
    defparam add_212_13.INJECT1_1 = "NO";
    CCU2D add_212_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2231), .COUT(n2232), .S0(n1288[9]), .S1(n1288[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_11.INIT0 = 16'hfaaa;
    defparam add_212_11.INIT1 = 16'hfaaa;
    defparam add_212_11.INJECT1_0 = "NO";
    defparam add_212_11.INJECT1_1 = "NO";
    CCU2D add_209_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2344), .S1(n1238[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_1.INIT0 = 16'hF000;
    defparam add_209_1.INIT1 = 16'h0555;
    defparam add_209_1.INJECT1_0 = "NO";
    defparam add_209_1.INJECT1_1 = "NO";
    CCU2D add_209_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2344), .COUT(n2345), .S0(n1238[1]), .S1(n1238[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_3.INIT0 = 16'hfaaa;
    defparam add_209_3.INIT1 = 16'hfaaa;
    defparam add_209_3.INJECT1_0 = "NO";
    defparam add_209_3.INJECT1_1 = "NO";
    CCU2D add_209_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2345), .COUT(n2346), .S0(n1238[3]), .S1(n1238[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_5.INIT0 = 16'h0555;
    defparam add_209_5.INIT1 = 16'h0555;
    defparam add_209_5.INJECT1_0 = "NO";
    defparam add_209_5.INJECT1_1 = "NO";
    CCU2D add_209_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2346), .COUT(n2347), .S0(n1238[5]), .S1(n1238[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_7.INIT0 = 16'hfaaa;
    defparam add_209_7.INIT1 = 16'hfaaa;
    defparam add_209_7.INJECT1_0 = "NO";
    defparam add_209_7.INJECT1_1 = "NO";
    CCU2D add_209_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2347), .COUT(n2348), .S0(n1238[7]), .S1(n1238[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_9.INIT0 = 16'hfaaa;
    defparam add_209_9.INIT1 = 16'h0555;
    defparam add_209_9.INJECT1_0 = "NO";
    defparam add_209_9.INJECT1_1 = "NO";
    CCU2D add_209_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2348), .COUT(n2349), .S0(n1238[9]), .S1(n1238[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_11.INIT0 = 16'hfaaa;
    defparam add_209_11.INIT1 = 16'hfaaa;
    defparam add_209_11.INJECT1_0 = "NO";
    defparam add_209_11.INJECT1_1 = "NO";
    CCU2D add_209_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2349), .COUT(n2350), .S0(n1238[11]), .S1(n1238[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_13.INIT0 = 16'hfaaa;
    defparam add_209_13.INIT1 = 16'hfaaa;
    defparam add_209_13.INJECT1_0 = "NO";
    defparam add_209_13.INJECT1_1 = "NO";
    CCU2D add_209_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2350), .S0(n1238[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_15.INIT0 = 16'hfaaa;
    defparam add_209_15.INIT1 = 16'h0000;
    defparam add_209_15.INJECT1_0 = "NO";
    defparam add_209_15.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2545), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2351), .S1(Resetandrepeat[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_1.INIT0 = 16'hF000;
    defparam add_199_795_add_1_1.INIT1 = 16'h0555;
    defparam add_199_795_add_1_1.INJECT1_0 = "NO";
    defparam add_199_795_add_1_1.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_3 (.A0(n2544), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_15__N_111[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2351), .COUT(n2352), .S0(n2_adj_246[1]), 
          .S1(n2_adj_246[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_3.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_3.INIT1 = 16'h0555;
    defparam add_199_795_add_1_3.INJECT1_0 = "NO";
    defparam add_199_795_add_1_3.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_5 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2352), .COUT(n2353), 
          .S0(n2_adj_246[3]), .S1(n2_adj_246[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_5.INIT0 = 16'h0555;
    defparam add_199_795_add_1_5.INIT1 = 16'h0555;
    defparam add_199_795_add_1_5.INJECT1_0 = "NO";
    defparam add_199_795_add_1_5.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_7 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2353), .COUT(n2354), 
          .S0(n2_adj_246[5]), .S1(n2_adj_246[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_7.INIT0 = 16'h0555;
    defparam add_199_795_add_1_7.INIT1 = 16'h0555;
    defparam add_199_795_add_1_7.INJECT1_0 = "NO";
    defparam add_199_795_add_1_7.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_9 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2354), .COUT(n2355), 
          .S0(n2_adj_246[7]), .S1(n2_adj_246[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_9.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_9.INIT1 = 16'hfaaa;
    defparam add_199_795_add_1_9.INJECT1_0 = "NO";
    defparam add_199_795_add_1_9.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_11 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2355), .COUT(n2356), 
          .S0(n2_adj_246[9]), .S1(n2_adj_246[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_11.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_11.INIT1 = 16'hfaaa;
    defparam add_199_795_add_1_11.INJECT1_0 = "NO";
    defparam add_199_795_add_1_11.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_13 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2356), .COUT(n2357), 
          .S0(n2_adj_246[11]), .S1(n2_adj_246[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_13.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_13.INIT1 = 16'hfaaa;
    defparam add_199_795_add_1_13.INJECT1_0 = "NO";
    defparam add_199_795_add_1_13.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_15 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2357), .COUT(n2358), 
          .S0(n2_adj_246[13]), .S1(n2_adj_246[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_15.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_15.INIT1 = 16'hfaaa;
    defparam add_199_795_add_1_15.INJECT1_0 = "NO";
    defparam add_199_795_add_1_15.INJECT1_1 = "NO";
    CCU2D add_199_795_add_1_17 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2358), .S0(n2_adj_246[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_795_add_1_17.INIT0 = 16'hfaaa;
    defparam add_199_795_add_1_17.INIT1 = 16'h0000;
    defparam add_199_795_add_1_17.INJECT1_0 = "NO";
    defparam add_199_795_add_1_17.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2545), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2359), .S1(n2[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_1.INIT0 = 16'hF000;
    defparam add_193_793_add_1_1.INIT1 = 16'h0555;
    defparam add_193_793_add_1_1.INJECT1_0 = "NO";
    defparam add_193_793_add_1_1.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_3 (.A0(n2544), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_15__N_111[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2359), .COUT(n2360), .S0(n2[1]), .S1(n2[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_3.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_3.INIT1 = 16'h0555;
    defparam add_193_793_add_1_3.INJECT1_0 = "NO";
    defparam add_193_793_add_1_3.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_5 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2360), .COUT(n2361), 
          .S0(n2[3]), .S1(n2[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_5.INIT0 = 16'h0555;
    defparam add_193_793_add_1_5.INIT1 = 16'h0555;
    defparam add_193_793_add_1_5.INJECT1_0 = "NO";
    defparam add_193_793_add_1_5.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_7 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2361), .COUT(n2362), 
          .S0(n2[5]), .S1(n2[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_7.INIT0 = 16'h0555;
    defparam add_193_793_add_1_7.INIT1 = 16'h0555;
    defparam add_193_793_add_1_7.INJECT1_0 = "NO";
    defparam add_193_793_add_1_7.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_9 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2362), .COUT(n2363), 
          .S0(n2[7]), .S1(n2[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_9.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_9.INIT1 = 16'hfaaa;
    defparam add_193_793_add_1_9.INJECT1_0 = "NO";
    defparam add_193_793_add_1_9.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_11 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2363), .COUT(n2364), 
          .S0(n2[9]), .S1(n2[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_11.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_11.INIT1 = 16'hfaaa;
    defparam add_193_793_add_1_11.INJECT1_0 = "NO";
    defparam add_193_793_add_1_11.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_13 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2364), .COUT(n2365), 
          .S0(n2[11]), .S1(n2[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_13.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_13.INIT1 = 16'hfaaa;
    defparam add_193_793_add_1_13.INJECT1_0 = "NO";
    defparam add_193_793_add_1_13.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_15 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2365), .COUT(n2366), 
          .S0(n2[13]), .S1(n2[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_15.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_15.INIT1 = 16'hfaaa;
    defparam add_193_793_add_1_15.INJECT1_0 = "NO";
    defparam add_193_793_add_1_15.INJECT1_1 = "NO";
    CCU2D add_193_793_add_1_17 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2366), .S0(n2[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_793_add_1_17.INIT0 = 16'hfaaa;
    defparam add_193_793_add_1_17.INIT1 = 16'h0000;
    defparam add_193_793_add_1_17.INJECT1_0 = "NO";
    defparam add_193_793_add_1_17.INJECT1_1 = "NO";
    CCU2D add_798_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_247[0]), .B1(freeprecess_minus_enable_6), .C1(n1419), 
          .D1(n1420), .COUT(n2367), .S1(Startof2ndMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_1.INIT0 = 16'hF000;
    defparam add_798_1.INIT1 = 16'h596a;
    defparam add_798_1.INJECT1_0 = "NO";
    defparam add_798_1.INJECT1_1 = "NO";
    CCU2D add_798_3 (.A0(n2_adj_247[1]), .B0(freeprecess_minus_enable_4), 
          .C0(n1479), .D0(n1480), .A1(n2_adj_247[2]), .B1(freeprecess_minus_enable_5), 
          .C1(n1475), .D1(n1476), .CIN(n2367), .COUT(n2368), .S0(Startof2ndMWpulse[1]), 
          .S1(Startof2ndMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_3.INIT0 = 16'h596a;
    defparam add_798_3.INIT1 = 16'h596a;
    defparam add_798_3.INJECT1_0 = "NO";
    defparam add_798_3.INJECT1_1 = "NO";
    CCU2D add_798_5 (.A0(n2_adj_247[3]), .B0(n1470), .C0(n1471), .D0(n1472), 
          .A1(n2_adj_247[4]), .B1(n1466), .C1(n1467), .D1(n1468), .CIN(n2368), 
          .COUT(n2369), .S0(Startof2ndMWpulse[3]), .S1(Startof2ndMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_5.INIT0 = 16'h596a;
    defparam add_798_5.INIT1 = 16'h596a;
    defparam add_798_5.INJECT1_0 = "NO";
    defparam add_798_5.INJECT1_1 = "NO";
    CCU2D add_798_7 (.A0(n2_adj_247[5]), .B0(n1462), .C0(n1463), .D0(n1464), 
          .A1(n2_adj_247[6]), .B1(n1458), .C1(n1459), .D1(n1460), .CIN(n2369), 
          .COUT(n2370), .S0(Startof2ndMWpulse[5]), .S1(Startof2ndMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_7.INIT0 = 16'h596a;
    defparam add_798_7.INIT1 = 16'h596a;
    defparam add_798_7.INJECT1_0 = "NO";
    defparam add_798_7.INJECT1_1 = "NO";
    CCU2D add_798_9 (.A0(n2_adj_247[7]), .B0(n1454), .C0(n1455), .D0(n1456), 
          .A1(n2_adj_247[8]), .B1(n1450), .C1(n1451), .D1(n1452), .CIN(n2370), 
          .COUT(n2371), .S0(Startof2ndMWpulse[7]), .S1(Startof2ndMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_9.INIT0 = 16'h596a;
    defparam add_798_9.INIT1 = 16'h596a;
    defparam add_798_9.INJECT1_0 = "NO";
    defparam add_798_9.INJECT1_1 = "NO";
    CCU2D add_798_11 (.A0(n2_adj_247[9]), .B0(n1446), .C0(n1447), .D0(n1448), 
          .A1(n2_adj_247[10]), .B1(n1442), .C1(n1443), .D1(n1444), .CIN(n2371), 
          .COUT(n2372), .S0(Startof2ndMWpulse[9]), .S1(Startof2ndMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_11.INIT0 = 16'h596a;
    defparam add_798_11.INIT1 = 16'h596a;
    defparam add_798_11.INJECT1_0 = "NO";
    defparam add_798_11.INJECT1_1 = "NO";
    CCU2D add_798_13 (.A0(n2_adj_247[11]), .B0(n1438), .C0(n1439), .D0(n1440), 
          .A1(n2_adj_247[12]), .B1(n1434), .C1(n1435), .D1(n1436), .CIN(n2372), 
          .COUT(n2373), .S0(Startof2ndMWpulse[11]), .S1(Startof2ndMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_13.INIT0 = 16'h596a;
    defparam add_798_13.INIT1 = 16'h596a;
    defparam add_798_13.INJECT1_0 = "NO";
    defparam add_798_13.INJECT1_1 = "NO";
    CCU2D add_798_15 (.A0(n2_adj_247[13]), .B0(n1430), .C0(n1431), .D0(n1432), 
          .A1(n2_adj_247[14]), .B1(n1426), .C1(n1427), .D1(n1428), .CIN(n2373), 
          .COUT(n2374), .S0(Startof2ndMWpulse[13]), .S1(Startof2ndMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_15.INIT0 = 16'h596a;
    defparam add_798_15.INIT1 = 16'h596a;
    defparam add_798_15.INJECT1_0 = "NO";
    defparam add_798_15.INJECT1_1 = "NO";
    CCU2D add_798_17 (.A0(n2_adj_247[15]), .B0(n1422), .C0(n1423), .D0(n1424), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2374), 
          .S0(Startof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_798_17.INIT0 = 16'h596a;
    defparam add_798_17.INIT1 = 16'h0000;
    defparam add_798_17.INJECT1_0 = "NO";
    defparam add_798_17.INJECT1_1 = "NO";
    CCU2D add_799_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2_adj_246[1]), .B1(n1414), .C1(n1415), .D1(n1416), .COUT(n2375), 
          .S1(Resetandrepeat[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_2.INIT0 = 16'hf000;
    defparam add_799_2.INIT1 = 16'h596a;
    defparam add_799_2.INJECT1_0 = "NO";
    defparam add_799_2.INJECT1_1 = "NO";
    CCU2D add_799_4 (.A0(n2_adj_246[2]), .B0(n1305[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[3]), .B1(n1942[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2375), .COUT(n2376), .S0(Endofprobepulse[2]), 
          .S1(Endofprobepulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_4.INIT0 = 16'h5666;
    defparam add_799_4.INIT1 = 16'h5666;
    defparam add_799_4.INJECT1_0 = "NO";
    defparam add_799_4.INJECT1_1 = "NO";
    CCU2D add_799_6 (.A0(n2_adj_246[4]), .B0(n1942[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[5]), .B1(n1942[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2376), .COUT(n2377), .S0(Endofprobepulse[4]), 
          .S1(Endofprobepulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_6.INIT0 = 16'h5666;
    defparam add_799_6.INIT1 = 16'h5666;
    defparam add_799_6.INJECT1_0 = "NO";
    defparam add_799_6.INJECT1_1 = "NO";
    CCU2D add_799_8 (.A0(n2_adj_246[6]), .B0(n1942[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[7]), .B1(n1942[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2377), .COUT(n2378), .S0(Endofprobepulse[6]), 
          .S1(Endofprobepulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_8.INIT0 = 16'h5666;
    defparam add_799_8.INIT1 = 16'h5666;
    defparam add_799_8.INJECT1_0 = "NO";
    defparam add_799_8.INJECT1_1 = "NO";
    CCU2D add_799_10 (.A0(n2_adj_246[8]), .B0(n1942[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[9]), .B1(n1942[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2378), .COUT(n2379), .S0(Endofprobepulse[8]), 
          .S1(Endofprobepulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_10.INIT0 = 16'h5666;
    defparam add_799_10.INIT1 = 16'h5666;
    defparam add_799_10.INJECT1_0 = "NO";
    defparam add_799_10.INJECT1_1 = "NO";
    CCU2D add_799_12 (.A0(n2_adj_246[10]), .B0(n1942[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[11]), .B1(n1942[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2379), .COUT(n2380), .S0(Endofprobepulse[10]), 
          .S1(Endofprobepulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_12.INIT0 = 16'h5666;
    defparam add_799_12.INIT1 = 16'h5666;
    defparam add_799_12.INJECT1_0 = "NO";
    defparam add_799_12.INJECT1_1 = "NO";
    CCU2D add_799_14 (.A0(n2_adj_246[12]), .B0(n1942[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[13]), .B1(n1942[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2380), .COUT(n2381), .S0(Endofprobepulse[12]), 
          .S1(Endofprobepulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_14.INIT0 = 16'h5666;
    defparam add_799_14.INIT1 = 16'h5666;
    defparam add_799_14.INJECT1_0 = "NO";
    defparam add_799_14.INJECT1_1 = "NO";
    CCU2D add_799_16 (.A0(n2_adj_246[14]), .B0(n1942[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[15]), .B1(n1942[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2381), .S0(Endofprobepulse[14]), .S1(Endofprobepulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_799_16.INIT0 = 16'h5666;
    defparam add_799_16.INIT1 = 16'h5666;
    defparam add_799_16.INJECT1_0 = "NO";
    defparam add_799_16.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_1 (.A0(GND_net), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[0]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2383), .S1(n2_adj_247[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_3 (.A0(AdjustablePieOverTwo[1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2383), .COUT(n2384), 
          .S0(n2_adj_247[1]), .S1(n2_adj_247[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_3.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_5 (.A0(AdjustablePieOverTwo[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2384), .COUT(n2385), 
          .S0(n2_adj_247[3]), .S1(n2_adj_247[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_5.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_5.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_7 (.A0(AdjustablePieOverTwo[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2385), .COUT(n2386), 
          .S0(n2_adj_247[5]), .S1(n2_adj_247[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_7.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_7.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_9 (.A0(AdjustablePieOverTwo[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2386), .COUT(n2387), 
          .S0(n2_adj_247[7]), .S1(n2_adj_247[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_9.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_11 (.A0(AdjustablePieOverTwo[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2387), .COUT(n2388), 
          .S0(n2_adj_247[9]), .S1(n2_adj_247[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_11.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_13 (.A0(AdjustablePieOverTwo[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2388), .COUT(n2389), 
          .S0(n2_adj_247[11]), .S1(n2_adj_247[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_15 (.A0(AdjustablePieOverTwo[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2389), .COUT(n2390), 
          .S0(n2_adj_247[13]), .S1(n2_adj_247[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_15.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_17 (.A0(AdjustablePieOverTwo[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2390), .S0(n2_adj_247[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_17.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_17.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_17.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_797_add_1_17.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .CLKOP(CLKOP), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(46[10:95])
    comparator sample2 (.SMstate({SMstate}), .probestarted(probestarted), 
            .sample_output_N_16(sample_output_N_16), .GND_net(GND_net), 
            .gatedcount({gatedcount}), .Endofopticalsample({Endofopticalsample})) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(56[13:98])
    comparator_U0 pump2 (.\gatedcount[8] (gatedcount[8]), .\gatedcount[7] (gatedcount[7]), 
            .n7(n7), .n2472(n2472), .\gatedcount[3] (gatedcount[3]), .\gatedcount[9] (gatedcount[9]), 
            .\gatedcount[4] (gatedcount[4]), .n8(n8), .\gatedcount[5] (gatedcount[5]), 
            .\gatedcount[6] (gatedcount[6])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(48[13:90])
    comparator_U1 probe2 (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .\Resetandrepeat[0] (Resetandrepeat[0]), .\Resetandrepeat[1] (Resetandrepeat[1]), 
            .\Endofprobepulse[2] (Endofprobepulse[2]), .\Endofprobepulse[3] (Endofprobepulse[3]), 
            .\Endofprobepulse[4] (Endofprobepulse[4]), .\Endofprobepulse[5] (Endofprobepulse[5]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\Endofprobepulse[7] (Endofprobepulse[7]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\Endofprobepulse[9] (Endofprobepulse[9]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\Endofprobepulse[11] (Endofprobepulse[11]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\Endofprobepulse[13] (Endofprobepulse[13]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\Endofprobepulse[15] (Endofprobepulse[15]), 
            .n274(n274)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(54[13:93])
    comparator_U2 probe1 (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .Startopticalsample({Startopticalsample}), .probestarted(probestarted)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:95])
    countupdownpreload piecounter (.pieovertwo_minus(pieovertwo_minus), .AdjustablePieOverTwo({AdjustablePieOverTwo}), 
            .pieovertwo_plus(pieovertwo_plus), .load_defaults(load_defaults), 
            .n1415(n1415), .n2573(n2573), .n1414(n1414), .n1416(n1416), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[21:180])
    comparator_U3 loopcounter (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .Resetandrepeat({Resetandrepeat}), .loop(loop)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:89])
    countupdownpreload_U4 freepcounter (.n1468(n1468), .n1467(n1467), .n1466(n1466), 
            .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), .n1460(n1460), 
            .freeprecess_minus(freeprecess_minus), .n1456(n1456), .n1455(n1455), 
            .n1454(n1454), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .n1459(n1459), .n1458(n1458), .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), 
            .n1448(n1448), .n1447(n1447), .n1446(n1446), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .n1452(n1452), .n1451(n1451), .n1450(n1450), .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), 
            .n1419(n1419), .n1420(n1420), .n1475(n1475), .n1476(n1476), 
            .n1479(n1479), .n1480(n1480), .n1440(n1440), .n1439(n1439), 
            .n1438(n1438), .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .n1444(n1444), .n1443(n1443), .n1442(n1442), .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .n1432(n1432), .n1431(n1431), .n1430(n1430), .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .n1436(n1436), .n1435(n1435), .n1434(n1434), .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .n1424(n1424), .n1423(n1423), .n1422(n1422), .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .n1428(n1428), .n1427(n1427), .n1426(n1426), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .freeprecess_minus_enable_6(freeprecess_minus_enable_6), .n2573(n2573), 
            .load_defaults(load_defaults), .freeprecess_plus(freeprecess_plus), 
            .freeprecess_minus_enable_5(freeprecess_minus_enable_5), .\count_15__N_111[2] (count_15__N_111[2]), 
            .freeprecess_minus_enable_4(freeprecess_minus_enable_4), .n2544(n2544), 
            .n2545(n2545), .n1472(n1472), .n1471(n1471), .n1462(n1462), 
            .n1470(n1470), .n1464(n1464), .n1463(n1463), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[21:193])
    comparator_U5 MW4 (.GND_net(GND_net), .gatedcount({gatedcount}), .Endof2ndMWpulse({Endof2ndMWpulse}), 
            .n236(n236)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:88])
    comparator_U6 MW3 (.GND_net(GND_net), .gatedcount({gatedcount}), .Startof2ndMWpulse({Startof2ndMWpulse}), 
            .pi2started(pi2started)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:90])
    comparator_U7 MW2 (.GND_net(GND_net), .gatedcount({gatedcount}), .Endof1stMWpulse({Endof1stMWpulse}), 
            .n198(n198)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(50[13:88])
    comparator_U8 MW1 (.n2454(n2454), .n7(n7), .\gatedcount[10] (gatedcount[10]), 
            .n8(n8), .n2455(n2455), .\gatedcount[15] (gatedcount[15]), 
            .\gatedcount[12] (gatedcount[12]), .\gatedcount[14] (gatedcount[14]), 
            .\gatedcount[11] (gatedcount[11]), .\gatedcount[13] (gatedcount[13]), 
            .\gatedcount[7] (gatedcount[7]), .\gatedcount[8] (gatedcount[8]), 
            .n1752(n1752), .\gatedcount[4] (gatedcount[4]), .\gatedcount[9] (gatedcount[9]), 
            .n2472(n2472), .\gatedcount[0] (gatedcount[0]), .\gatedcount[3] (gatedcount[3]), 
            .\gatedcount[2] (gatedcount[2]), .\gatedcount[1] (gatedcount[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(49[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, CLKOP, counterreset, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input CLKOP;
    input counterreset;
    input GND_net;
    
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(31[7:12])
    wire [15:0]n69;
    
    wire n2336, n2337, n2338, n2339, n2340, n2341, n2342, n2343;
    
    FD1S3DX count_142__i0 (.D(n69[0]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i0.GSR = "ENABLED";
    FD1S3DX count_142__i15 (.D(n69[15]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i15.GSR = "ENABLED";
    FD1S3DX count_142__i14 (.D(n69[14]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i14.GSR = "ENABLED";
    FD1S3DX count_142__i13 (.D(n69[13]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i13.GSR = "ENABLED";
    FD1S3DX count_142__i12 (.D(n69[12]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i12.GSR = "ENABLED";
    FD1S3DX count_142__i11 (.D(n69[11]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i11.GSR = "ENABLED";
    FD1S3DX count_142__i10 (.D(n69[10]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i10.GSR = "ENABLED";
    FD1S3DX count_142__i9 (.D(n69[9]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i9.GSR = "ENABLED";
    FD1S3DX count_142__i8 (.D(n69[8]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i8.GSR = "ENABLED";
    FD1S3DX count_142__i7 (.D(n69[7]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i7.GSR = "ENABLED";
    FD1S3DX count_142__i6 (.D(n69[6]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i6.GSR = "ENABLED";
    FD1S3DX count_142__i5 (.D(n69[5]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i5.GSR = "ENABLED";
    FD1S3DX count_142__i4 (.D(n69[4]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i4.GSR = "ENABLED";
    FD1S3DX count_142__i3 (.D(n69[3]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i3.GSR = "ENABLED";
    FD1S3DX count_142__i2 (.D(n69[2]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i2.GSR = "ENABLED";
    FD1S3DX count_142__i1 (.D(n69[1]), .CK(CLKOP), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i1.GSR = "ENABLED";
    CCU2D count_142_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2336), .S1(n69[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_1.INIT0 = 16'hF000;
    defparam count_142_add_4_1.INIT1 = 16'h0555;
    defparam count_142_add_4_1.INJECT1_0 = "NO";
    defparam count_142_add_4_1.INJECT1_1 = "NO";
    CCU2D count_142_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2336), .COUT(n2337), .S0(n69[1]), .S1(n69[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_3.INIT0 = 16'hfaaa;
    defparam count_142_add_4_3.INIT1 = 16'hfaaa;
    defparam count_142_add_4_3.INJECT1_0 = "NO";
    defparam count_142_add_4_3.INJECT1_1 = "NO";
    CCU2D count_142_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2337), .COUT(n2338), .S0(n69[3]), .S1(n69[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_5.INIT0 = 16'hfaaa;
    defparam count_142_add_4_5.INIT1 = 16'hfaaa;
    defparam count_142_add_4_5.INJECT1_0 = "NO";
    defparam count_142_add_4_5.INJECT1_1 = "NO";
    CCU2D count_142_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2338), .COUT(n2339), .S0(n69[5]), .S1(n69[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_7.INIT0 = 16'hfaaa;
    defparam count_142_add_4_7.INIT1 = 16'hfaaa;
    defparam count_142_add_4_7.INJECT1_0 = "NO";
    defparam count_142_add_4_7.INJECT1_1 = "NO";
    CCU2D count_142_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2339), .COUT(n2340), .S0(n69[7]), .S1(n69[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_9.INIT0 = 16'hfaaa;
    defparam count_142_add_4_9.INIT1 = 16'hfaaa;
    defparam count_142_add_4_9.INJECT1_0 = "NO";
    defparam count_142_add_4_9.INJECT1_1 = "NO";
    CCU2D count_142_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2340), .COUT(n2341), .S0(n69[9]), .S1(n69[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_11.INIT0 = 16'hfaaa;
    defparam count_142_add_4_11.INIT1 = 16'hfaaa;
    defparam count_142_add_4_11.INJECT1_0 = "NO";
    defparam count_142_add_4_11.INJECT1_1 = "NO";
    CCU2D count_142_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2341), .COUT(n2342), .S0(n69[11]), .S1(n69[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_13.INIT0 = 16'hfaaa;
    defparam count_142_add_4_13.INIT1 = 16'hfaaa;
    defparam count_142_add_4_13.INJECT1_0 = "NO";
    defparam count_142_add_4_13.INJECT1_1 = "NO";
    CCU2D count_142_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2342), .COUT(n2343), .S0(n69[13]), .S1(n69[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_15.INIT0 = 16'hfaaa;
    defparam count_142_add_4_15.INIT1 = 16'hfaaa;
    defparam count_142_add_4_15.INJECT1_0 = "NO";
    defparam count_142_add_4_15.INJECT1_1 = "NO";
    CCU2D count_142_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2343), .S0(n69[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_17.INIT0 = 16'hfaaa;
    defparam count_142_add_4_17.INIT1 = 16'h0000;
    defparam count_142_add_4_17.INJECT1_0 = "NO";
    defparam count_142_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (SMstate, probestarted, sample_output_N_16, GND_net, 
            gatedcount, Endofopticalsample) /* synthesis syn_module_defined=1 */ ;
    input [1:0]SMstate;
    input probestarted;
    output sample_output_N_16;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Endofopticalsample;
    
    
    wire n312, n2266, n2267, n2268, n2269, n2270, n2271, n2272, 
        n2273;
    
    LUT4 i521_4_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(probestarted), 
         .D(n312), .Z(sample_output_N_16)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    defparam i521_4_lut_4_lut.init = 16'h4464;
    CCU2D sub_115_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endofopticalsample[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2266));
    defparam sub_115_add_2_1.INIT0 = 16'h0000;
    defparam sub_115_add_2_1.INIT1 = 16'h5999;
    defparam sub_115_add_2_1.INJECT1_0 = "NO";
    defparam sub_115_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_3 (.A0(gatedcount[1]), .B0(Endofopticalsample[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endofopticalsample[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2266), .COUT(n2267));
    defparam sub_115_add_2_3.INIT0 = 16'h5999;
    defparam sub_115_add_2_3.INIT1 = 16'h5999;
    defparam sub_115_add_2_3.INJECT1_0 = "NO";
    defparam sub_115_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_5 (.A0(gatedcount[3]), .B0(Endofopticalsample[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endofopticalsample[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2267), .COUT(n2268));
    defparam sub_115_add_2_5.INIT0 = 16'h5999;
    defparam sub_115_add_2_5.INIT1 = 16'h5999;
    defparam sub_115_add_2_5.INJECT1_0 = "NO";
    defparam sub_115_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_7 (.A0(gatedcount[5]), .B0(Endofopticalsample[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endofopticalsample[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2268), .COUT(n2269));
    defparam sub_115_add_2_7.INIT0 = 16'h5999;
    defparam sub_115_add_2_7.INIT1 = 16'h5999;
    defparam sub_115_add_2_7.INJECT1_0 = "NO";
    defparam sub_115_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_9 (.A0(gatedcount[7]), .B0(Endofopticalsample[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endofopticalsample[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2269), .COUT(n2270));
    defparam sub_115_add_2_9.INIT0 = 16'h5999;
    defparam sub_115_add_2_9.INIT1 = 16'h5999;
    defparam sub_115_add_2_9.INJECT1_0 = "NO";
    defparam sub_115_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_11 (.A0(gatedcount[9]), .B0(Endofopticalsample[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endofopticalsample[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2270), .COUT(n2271));
    defparam sub_115_add_2_11.INIT0 = 16'h5999;
    defparam sub_115_add_2_11.INIT1 = 16'h5999;
    defparam sub_115_add_2_11.INJECT1_0 = "NO";
    defparam sub_115_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_13 (.A0(gatedcount[11]), .B0(Endofopticalsample[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endofopticalsample[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2271), .COUT(n2272));
    defparam sub_115_add_2_13.INIT0 = 16'h5999;
    defparam sub_115_add_2_13.INIT1 = 16'h5999;
    defparam sub_115_add_2_13.INJECT1_0 = "NO";
    defparam sub_115_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_15 (.A0(gatedcount[13]), .B0(Endofopticalsample[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endofopticalsample[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2272), .COUT(n2273));
    defparam sub_115_add_2_15.INIT0 = 16'h5999;
    defparam sub_115_add_2_15.INIT1 = 16'h5999;
    defparam sub_115_add_2_15.INJECT1_0 = "NO";
    defparam sub_115_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_17 (.A0(gatedcount[15]), .B0(Endofopticalsample[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2273), .S1(n312));
    defparam sub_115_add_2_17.INIT0 = 16'h5999;
    defparam sub_115_add_2_17.INIT1 = 16'h0000;
    defparam sub_115_add_2_17.INJECT1_0 = "NO";
    defparam sub_115_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U0
//

module comparator_U0 (\gatedcount[8] , \gatedcount[7] , n7, n2472, \gatedcount[3] , 
            \gatedcount[9] , \gatedcount[4] , n8, \gatedcount[5] , \gatedcount[6] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[8] ;
    input \gatedcount[7] ;
    output n7;
    output n2472;
    input \gatedcount[3] ;
    input \gatedcount[9] ;
    input \gatedcount[4] ;
    output n8;
    input \gatedcount[5] ;
    input \gatedcount[6] ;
    
    
    LUT4 i2_2_lut (.A(\gatedcount[8] ), .B(\gatedcount[7] ), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n2472), .B(\gatedcount[3] ), .C(\gatedcount[9] ), 
         .D(\gatedcount[4] ), .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    LUT4 i1_2_lut (.A(\gatedcount[5] ), .B(\gatedcount[6] ), .Z(n2472)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module comparator_U1
//

module comparator_U1 (GND_net, gatedcount, \Resetandrepeat[0] , \Resetandrepeat[1] , 
            \Endofprobepulse[2] , \Endofprobepulse[3] , \Endofprobepulse[4] , 
            \Endofprobepulse[5] , \Endofprobepulse[6] , \Endofprobepulse[7] , 
            \Endofprobepulse[8] , \Endofprobepulse[9] , \Endofprobepulse[10] , 
            \Endofprobepulse[11] , \Endofprobepulse[12] , \Endofprobepulse[13] , 
            \Endofprobepulse[14] , \Endofprobepulse[15] , n274) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input \Resetandrepeat[0] ;
    input \Resetandrepeat[1] ;
    input \Endofprobepulse[2] ;
    input \Endofprobepulse[3] ;
    input \Endofprobepulse[4] ;
    input \Endofprobepulse[5] ;
    input \Endofprobepulse[6] ;
    input \Endofprobepulse[7] ;
    input \Endofprobepulse[8] ;
    input \Endofprobepulse[9] ;
    input \Endofprobepulse[10] ;
    input \Endofprobepulse[11] ;
    input \Endofprobepulse[12] ;
    input \Endofprobepulse[13] ;
    input \Endofprobepulse[14] ;
    input \Endofprobepulse[15] ;
    output n274;
    
    
    wire n2274, n2275, n2276, n2277, n2278, n2279, n2280, n2281;
    
    CCU2D sub_111_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(\Resetandrepeat[0] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n2274));
    defparam sub_111_add_2_1.INIT0 = 16'h0000;
    defparam sub_111_add_2_1.INIT1 = 16'h5999;
    defparam sub_111_add_2_1.INJECT1_0 = "NO";
    defparam sub_111_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_3 (.A0(gatedcount[1]), .B0(\Resetandrepeat[1] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(\Endofprobepulse[2] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2274), .COUT(n2275));
    defparam sub_111_add_2_3.INIT0 = 16'h5999;
    defparam sub_111_add_2_3.INIT1 = 16'h5999;
    defparam sub_111_add_2_3.INJECT1_0 = "NO";
    defparam sub_111_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_5 (.A0(gatedcount[3]), .B0(\Endofprobepulse[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(\Endofprobepulse[4] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2275), .COUT(n2276));
    defparam sub_111_add_2_5.INIT0 = 16'h5999;
    defparam sub_111_add_2_5.INIT1 = 16'h5999;
    defparam sub_111_add_2_5.INJECT1_0 = "NO";
    defparam sub_111_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_7 (.A0(gatedcount[5]), .B0(\Endofprobepulse[5] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(\Endofprobepulse[6] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2276), .COUT(n2277));
    defparam sub_111_add_2_7.INIT0 = 16'h5999;
    defparam sub_111_add_2_7.INIT1 = 16'h5999;
    defparam sub_111_add_2_7.INJECT1_0 = "NO";
    defparam sub_111_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_9 (.A0(gatedcount[7]), .B0(\Endofprobepulse[7] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(\Endofprobepulse[8] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2277), .COUT(n2278));
    defparam sub_111_add_2_9.INIT0 = 16'h5999;
    defparam sub_111_add_2_9.INIT1 = 16'h5999;
    defparam sub_111_add_2_9.INJECT1_0 = "NO";
    defparam sub_111_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_11 (.A0(gatedcount[9]), .B0(\Endofprobepulse[9] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(\Endofprobepulse[10] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2278), .COUT(n2279));
    defparam sub_111_add_2_11.INIT0 = 16'h5999;
    defparam sub_111_add_2_11.INIT1 = 16'h5999;
    defparam sub_111_add_2_11.INJECT1_0 = "NO";
    defparam sub_111_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_13 (.A0(gatedcount[11]), .B0(\Endofprobepulse[11] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(\Endofprobepulse[12] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2279), .COUT(n2280));
    defparam sub_111_add_2_13.INIT0 = 16'h5999;
    defparam sub_111_add_2_13.INIT1 = 16'h5999;
    defparam sub_111_add_2_13.INJECT1_0 = "NO";
    defparam sub_111_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_15 (.A0(gatedcount[13]), .B0(\Endofprobepulse[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(\Endofprobepulse[14] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2280), .COUT(n2281));
    defparam sub_111_add_2_15.INIT0 = 16'h5999;
    defparam sub_111_add_2_15.INIT1 = 16'h5999;
    defparam sub_111_add_2_15.INJECT1_0 = "NO";
    defparam sub_111_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_17 (.A0(gatedcount[15]), .B0(\Endofprobepulse[15] ), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2281), .S1(n274));
    defparam sub_111_add_2_17.INIT0 = 16'h5999;
    defparam sub_111_add_2_17.INIT1 = 16'h0000;
    defparam sub_111_add_2_17.INJECT1_0 = "NO";
    defparam sub_111_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U2
//

module comparator_U2 (GND_net, gatedcount, Startopticalsample, probestarted) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Startopticalsample;
    output probestarted;
    
    
    wire n2290, n2291, n2292, n2293, n2294, n2295, n2296, n2297;
    
    CCU2D sub_109_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Startopticalsample[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2290));
    defparam sub_109_add_2_1.INIT0 = 16'h0000;
    defparam sub_109_add_2_1.INIT1 = 16'h5999;
    defparam sub_109_add_2_1.INJECT1_0 = "NO";
    defparam sub_109_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_3 (.A0(gatedcount[1]), .B0(Startopticalsample[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Startopticalsample[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2290), .COUT(n2291));
    defparam sub_109_add_2_3.INIT0 = 16'h5999;
    defparam sub_109_add_2_3.INIT1 = 16'h5999;
    defparam sub_109_add_2_3.INJECT1_0 = "NO";
    defparam sub_109_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_5 (.A0(gatedcount[3]), .B0(Startopticalsample[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Startopticalsample[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2291), .COUT(n2292));
    defparam sub_109_add_2_5.INIT0 = 16'h5999;
    defparam sub_109_add_2_5.INIT1 = 16'h5999;
    defparam sub_109_add_2_5.INJECT1_0 = "NO";
    defparam sub_109_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_7 (.A0(gatedcount[5]), .B0(Startopticalsample[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Startopticalsample[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2292), .COUT(n2293));
    defparam sub_109_add_2_7.INIT0 = 16'h5999;
    defparam sub_109_add_2_7.INIT1 = 16'h5999;
    defparam sub_109_add_2_7.INJECT1_0 = "NO";
    defparam sub_109_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_9 (.A0(gatedcount[7]), .B0(Startopticalsample[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Startopticalsample[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2293), .COUT(n2294));
    defparam sub_109_add_2_9.INIT0 = 16'h5999;
    defparam sub_109_add_2_9.INIT1 = 16'h5999;
    defparam sub_109_add_2_9.INJECT1_0 = "NO";
    defparam sub_109_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_11 (.A0(gatedcount[9]), .B0(Startopticalsample[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Startopticalsample[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2294), .COUT(n2295));
    defparam sub_109_add_2_11.INIT0 = 16'h5999;
    defparam sub_109_add_2_11.INIT1 = 16'h5999;
    defparam sub_109_add_2_11.INJECT1_0 = "NO";
    defparam sub_109_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_13 (.A0(gatedcount[11]), .B0(Startopticalsample[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Startopticalsample[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2295), .COUT(n2296));
    defparam sub_109_add_2_13.INIT0 = 16'h5999;
    defparam sub_109_add_2_13.INIT1 = 16'h5999;
    defparam sub_109_add_2_13.INJECT1_0 = "NO";
    defparam sub_109_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_15 (.A0(gatedcount[13]), .B0(Startopticalsample[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Startopticalsample[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2296), .COUT(n2297));
    defparam sub_109_add_2_15.INIT0 = 16'h5999;
    defparam sub_109_add_2_15.INIT1 = 16'h5999;
    defparam sub_109_add_2_15.INJECT1_0 = "NO";
    defparam sub_109_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_17 (.A0(gatedcount[15]), .B0(Startopticalsample[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2297), .S1(probestarted));
    defparam sub_109_add_2_17.INIT0 = 16'h5999;
    defparam sub_109_add_2_17.INIT1 = 16'h0000;
    defparam sub_109_add_2_17.INJECT1_0 = "NO";
    defparam sub_109_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (pieovertwo_minus, AdjustablePieOverTwo, pieovertwo_plus, 
            load_defaults, n1415, n2573, n1414, n1416, GND_net) /* synthesis syn_module_defined=1 */ ;
    input pieovertwo_minus;
    output [15:0]AdjustablePieOverTwo;
    input pieovertwo_plus;
    input load_defaults;
    output n1415;
    input n2573;
    output n1414;
    output n1416;
    input GND_net;
    
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    
    wire n1496, count_15__N_166;
    wire [15:0]count_15__N_205;
    
    wire n1536, n1535, n1534, n1540, n1539, n1538, n1495, count_15__N_118, 
        n1516, n1515, n1514, n1500, n1499, n1498, n1504, n1503, 
        n1502, n1508, n1507, n1506, n1512, n1511, n1510, n1492, 
        count_15__N_163, n1491, count_15__N_115, n1488, count_15__N_160, 
        n1487, count_15__N_112, n1528, n1527, n1526, n1532, n1531, 
        n1530, n1486;
    wire [15:0]count_15__N_111;
    
    wire count_15__N_190, count_15__N_121, n1484, count_15__N_157, n1483, 
        count_15__N_108, count_15__N_202, n1524, n1523, n1522, count_15__N_136, 
        count_15__N_199, count_15__N_193, count_15__N_187, count_15__N_184, 
        count_15__N_181, count_15__N_178, count_15__N_175, count_15__N_151, 
        count_15__N_196, count_15__N_148, count_15__N_145, count_15__N_142, 
        count_15__N_139, n1520, n1519, count_15__N_133, count_15__N_130, 
        count_15__N_127, count_15__N_172, count_15__N_124, count_15__N_169, 
        count_15__N_154, n1494, n1490, n1518, n1482, n2241, n2240, 
        n2239, n2238, n2237, n2236, n2235, n2234, n2328, n2329, 
        n2330, n2331, n2332, n2333, n2334, n2335;
    
    FD1S3DX count_i0_i12_382_383_reset (.D(count_15__N_205[12]), .CK(pieovertwo_minus), 
            .CD(count_15__N_166), .Q(n1496)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i12_382_383_reset.GSR = "ENABLED";
    LUT4 i424_3_lut (.A(n1536), .B(n1535), .C(n1534), .Z(AdjustablePieOverTwo[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i424_3_lut.init = 16'hcaca;
    LUT4 i428_3_lut (.A(n1540), .B(n1539), .C(n1538), .Z(AdjustablePieOverTwo[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i428_3_lut.init = 16'hcaca;
    FD1S3BX count_i0_i12_382_383_set (.D(count_15__N_205[12]), .CK(pieovertwo_minus), 
            .PD(count_15__N_118), .Q(n1495)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i12_382_383_set.GSR = "ENABLED";
    LUT4 i404_3_lut (.A(n1516), .B(n1515), .C(n1514), .Z(AdjustablePieOverTwo[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i404_3_lut.init = 16'hcaca;
    LUT4 i388_3_lut (.A(n1500), .B(n1499), .C(n1498), .Z(AdjustablePieOverTwo[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i388_3_lut.init = 16'hcaca;
    LUT4 i392_3_lut (.A(n1504), .B(n1503), .C(n1502), .Z(AdjustablePieOverTwo[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i392_3_lut.init = 16'hcaca;
    LUT4 i396_3_lut (.A(n1508), .B(n1507), .C(n1506), .Z(AdjustablePieOverTwo[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i396_3_lut.init = 16'hcaca;
    LUT4 i400_3_lut (.A(n1512), .B(n1511), .C(n1510), .Z(AdjustablePieOverTwo[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i400_3_lut.init = 16'hcaca;
    FD1S3DX count_i0_i13_378_379_reset (.D(count_15__N_205[13]), .CK(pieovertwo_minus), 
            .CD(count_15__N_163), .Q(n1492)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i13_378_379_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i13_378_379_set (.D(count_15__N_205[13]), .CK(pieovertwo_minus), 
            .PD(count_15__N_115), .Q(n1491)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i13_378_379_set.GSR = "ENABLED";
    FD1S3DX count_i0_i14_374_375_reset (.D(count_15__N_205[14]), .CK(pieovertwo_minus), 
            .CD(count_15__N_160), .Q(n1488)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i14_374_375_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i14_374_375_set (.D(count_15__N_205[14]), .CK(pieovertwo_minus), 
            .PD(count_15__N_112), .Q(n1487)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i14_374_375_set.GSR = "ENABLED";
    LUT4 i416_3_lut (.A(n1528), .B(n1527), .C(n1526), .Z(AdjustablePieOverTwo[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i416_3_lut.init = 16'hcaca;
    LUT4 i420_3_lut (.A(n1532), .B(n1531), .C(n1530), .Z(AdjustablePieOverTwo[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i420_3_lut.init = 16'hcaca;
    LUT4 i376_3_lut (.A(n1488), .B(n1487), .C(n1486), .Z(AdjustablePieOverTwo[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i376_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_117_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[4]), .Z(count_15__N_190)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_117_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_94_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[11]), .Z(count_15__N_121)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_94_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S3DX count_i0_i15_370_371_reset (.D(count_15__N_205[15]), .CK(pieovertwo_minus), 
            .CD(count_15__N_157), .Q(n1484)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i15_370_371_reset.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_109_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[12]), .Z(count_15__N_166)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_109_2_lut_3_lut_3_lut.init = 16'hcece;
    FD1S3BX count_i0_i15_370_371_set (.D(count_15__N_205[15]), .CK(pieovertwo_minus), 
            .PD(count_15__N_108), .Q(n1483)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i15_370_371_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[0]), .Z(count_15__N_202)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 i412_3_lut (.A(n1524), .B(n1523), .C(n1522), .Z(AdjustablePieOverTwo[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i412_3_lut.init = 16'hcaca;
    LUT4 i600_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_136)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i600_3_lut.init = 16'heaea;
    FD1S3DX count_i0_i1_426_427_reset (.D(count_15__N_205[1]), .CK(pieovertwo_minus), 
            .CD(count_15__N_199), .Q(n1540)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i1_426_427_reset.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_193)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[5]), .Z(count_15__N_187)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[6]), .Z(count_15__N_184)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_28 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[7]), .Z(count_15__N_181)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[8]), .Z(count_15__N_178)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_30 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[9]), .Z(count_15__N_175)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_30.init = 16'h0404;
    FD1S3BX count_i0_i1_426_427_set (.D(count_15__N_205[1]), .CK(pieovertwo_minus), 
            .PD(count_15__N_151), .Q(n1539)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i1_426_427_set.GSR = "ENABLED";
    FD1S3DX count_i0_i2_422_423_reset (.D(count_15__N_205[2]), .CK(pieovertwo_minus), 
            .CD(count_15__N_196), .Q(n1536)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i2_422_423_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i2_422_423_set (.D(count_15__N_205[2]), .CK(pieovertwo_minus), 
            .PD(count_15__N_148), .Q(n1535)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i2_422_423_set.GSR = "ENABLED";
    FD1S3DX count_i0_i3_418_419_reset (.D(count_15__N_205[3]), .CK(pieovertwo_minus), 
            .CD(count_15__N_193), .Q(n1532)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i3_418_419_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i3_418_419_set (.D(count_15__N_205[3]), .CK(pieovertwo_minus), 
            .PD(count_15__N_145), .Q(n1531)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i3_418_419_set.GSR = "ENABLED";
    FD1S3DX count_i0_i4_414_415_reset (.D(count_15__N_205[4]), .CK(pieovertwo_minus), 
            .CD(count_15__N_190), .Q(n1528)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i4_414_415_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i4_414_415_set (.D(count_15__N_205[4]), .CK(pieovertwo_minus), 
            .PD(count_15__N_142), .Q(n1527)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i4_414_415_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_120_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[1]), .Z(count_15__N_199)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_120_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_91_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_112)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_91_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S3DX count_i0_i5_410_411_reset (.D(count_15__N_205[5]), .CK(pieovertwo_minus), 
            .CD(count_15__N_187), .Q(n1524)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i5_410_411_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i5_410_411_set (.D(count_15__N_205[5]), .CK(pieovertwo_minus), 
            .PD(count_15__N_139), .Q(n1523)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i5_410_411_set.GSR = "ENABLED";
    FD1S3DX count_i0_i6_406_407_reset (.D(count_15__N_205[6]), .CK(pieovertwo_minus), 
            .CD(count_15__N_184), .Q(n1520)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i6_406_407_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i6_406_407_set (.D(count_15__N_205[6]), .CK(pieovertwo_minus), 
            .PD(count_15__N_136), .Q(n1519)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i6_406_407_set.GSR = "ENABLED";
    FD1S3DX count_i0_i7_402_403_reset (.D(count_15__N_205[7]), .CK(pieovertwo_minus), 
            .CD(count_15__N_181), .Q(n1516)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i7_402_403_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i7_402_403_set (.D(count_15__N_205[7]), .CK(pieovertwo_minus), 
            .PD(count_15__N_133), .Q(n1515)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i7_402_403_set.GSR = "ENABLED";
    FD1S3DX count_i0_i8_398_399_reset (.D(count_15__N_205[8]), .CK(pieovertwo_minus), 
            .CD(count_15__N_178), .Q(n1512)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i8_398_399_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i8_398_399_set (.D(count_15__N_205[8]), .CK(pieovertwo_minus), 
            .PD(count_15__N_130), .Q(n1511)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i8_398_399_set.GSR = "ENABLED";
    FD1S3DX count_i0_i9_394_395_reset (.D(count_15__N_205[9]), .CK(pieovertwo_minus), 
            .CD(count_15__N_175), .Q(n1508)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i9_394_395_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i9_394_395_set (.D(count_15__N_205[9]), .CK(pieovertwo_minus), 
            .PD(count_15__N_127), .Q(n1507)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i9_394_395_set.GSR = "ENABLED";
    FD1S3DX count_i0_i10_390_391_reset (.D(count_15__N_205[10]), .CK(pieovertwo_minus), 
            .CD(count_15__N_172), .Q(n1504)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i10_390_391_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i10_390_391_set (.D(count_15__N_205[10]), .CK(pieovertwo_minus), 
            .PD(count_15__N_124), .Q(n1503)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i10_390_391_set.GSR = "ENABLED";
    FD1S3DX count_i0_i11_386_387_reset (.D(count_15__N_205[11]), .CK(pieovertwo_minus), 
            .CD(count_15__N_169), .Q(n1500)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i11_386_387_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i11_386_387_set (.D(count_15__N_205[11]), .CK(pieovertwo_minus), 
            .PD(count_15__N_121), .Q(n1499)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i11_386_387_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_103_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[2]), .Z(count_15__N_148)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_103_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_110_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[11]), .Z(count_15__N_169)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_110_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_119_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[2]), .Z(count_15__N_196)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_119_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_105_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[0]), .Z(count_15__N_154)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_105_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i384_3_lut (.A(n1496), .B(n1495), .C(n1494), .Z(AdjustablePieOverTwo[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i384_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_92_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_115)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_92_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S3BX count_i0_i0_302_303_set (.D(count_15__N_205[0]), .CK(pieovertwo_minus), 
            .PD(count_15__N_154), .Q(n1415)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i0_302_303_set.GSR = "ENABLED";
    LUT4 i380_3_lut (.A(n1492), .B(n1491), .C(n1490), .Z(AdjustablePieOverTwo[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i380_3_lut.init = 16'hcaca;
    LUT4 i408_3_lut (.A(n1520), .B(n1519), .C(n1518), .Z(AdjustablePieOverTwo[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i408_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_104_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[1]), .Z(count_15__N_151)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_104_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S1D i369 (.D(n2573), .CK(count_15__N_108), .CD(count_15__N_157), 
           .Q(n1482));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i369.GSR = "ENABLED";
    FD1S1D i373 (.D(n2573), .CK(count_15__N_112), .CD(count_15__N_160), 
           .Q(n1486));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i373.GSR = "ENABLED";
    FD1S1D i377 (.D(n2573), .CK(count_15__N_115), .CD(count_15__N_163), 
           .Q(n1490));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i377.GSR = "ENABLED";
    FD1S1D i381 (.D(n2573), .CK(count_15__N_118), .CD(count_15__N_166), 
           .Q(n1494));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i381.GSR = "ENABLED";
    FD1S1D i385 (.D(n2573), .CK(count_15__N_121), .CD(count_15__N_169), 
           .Q(n1498));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i385.GSR = "ENABLED";
    FD1S1D i389 (.D(n2573), .CK(count_15__N_124), .CD(count_15__N_172), 
           .Q(n1502));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i389.GSR = "ENABLED";
    FD1S1D i393 (.D(n2573), .CK(count_15__N_127), .CD(count_15__N_175), 
           .Q(n1506));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i393.GSR = "ENABLED";
    FD1S1D i397 (.D(n2573), .CK(count_15__N_130), .CD(count_15__N_178), 
           .Q(n1510));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i397.GSR = "ENABLED";
    FD1S1D i401 (.D(n2573), .CK(count_15__N_133), .CD(count_15__N_181), 
           .Q(n1514));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i401.GSR = "ENABLED";
    FD1S1D i405 (.D(n2573), .CK(count_15__N_136), .CD(count_15__N_184), 
           .Q(n1518));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i405.GSR = "ENABLED";
    FD1S1D i409 (.D(n2573), .CK(count_15__N_139), .CD(count_15__N_187), 
           .Q(n1522));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i409.GSR = "ENABLED";
    FD1S1D i413 (.D(n2573), .CK(count_15__N_142), .CD(count_15__N_190), 
           .Q(n1526));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i413.GSR = "ENABLED";
    FD1S1D i417 (.D(n2573), .CK(count_15__N_145), .CD(count_15__N_193), 
           .Q(n1530));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i417.GSR = "ENABLED";
    FD1S1D i421 (.D(n2573), .CK(count_15__N_148), .CD(count_15__N_196), 
           .Q(n1534));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i421.GSR = "ENABLED";
    FD1S1D i425 (.D(n2573), .CK(count_15__N_151), .CD(count_15__N_199), 
           .Q(n1538));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i425.GSR = "ENABLED";
    FD1S1D i301 (.D(n2573), .CK(count_15__N_154), .CD(count_15__N_202), 
           .Q(n1414));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i301.GSR = "ENABLED";
    FD1S3DX count_i0_i0_302_303_reset (.D(count_15__N_205[0]), .CK(pieovertwo_minus), 
            .CD(count_15__N_202), .Q(n1416)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i0_302_303_reset.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_111_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[10]), .Z(count_15__N_172)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_111_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_107_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_160)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_107_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 i599_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[7]), 
         .Z(count_15__N_133)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i599_3_lut.init = 16'heaea;
    LUT4 count_15__N_109_I_0_95_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[10]), .Z(count_15__N_124)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_95_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i598_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[8]), 
         .Z(count_15__N_130)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i598_3_lut.init = 16'heaea;
    LUT4 i597_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[9]), 
         .Z(count_15__N_127)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i597_3_lut.init = 16'heaea;
    LUT4 count_15__N_109_I_0_101_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[4]), .Z(count_15__N_142)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_101_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_106_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_157)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_106_2_lut_3_lut_3_lut.init = 16'hcece;
    CCU2D count_15__I_0_122_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2241), .S0(count_15__N_111[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_17.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_17.INIT1 = 16'h0000;
    defparam count_15__I_0_122_17.INJECT1_0 = "NO";
    defparam count_15__I_0_122_17.INJECT1_1 = "NO";
    LUT4 count_15__I_0_121_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_108)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__I_0_121_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_108_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_163)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_108_2_lut_3_lut_3_lut.init = 16'hcece;
    CCU2D count_15__I_0_122_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2240), .COUT(n2241), .S0(count_15__N_111[13]), 
          .S1(count_15__N_111[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_15.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_15.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_15.INJECT1_0 = "NO";
    defparam count_15__I_0_122_15.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2239), .COUT(n2240), .S0(count_15__N_111[11]), 
          .S1(count_15__N_111[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_13.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_13.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_13.INJECT1_0 = "NO";
    defparam count_15__I_0_122_13.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2238), .COUT(n2239), .S0(count_15__N_111[9]), 
          .S1(count_15__N_111[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_11.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_11.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_11.INJECT1_0 = "NO";
    defparam count_15__I_0_122_11.INJECT1_1 = "NO";
    LUT4 i304_3_lut (.A(n1416), .B(n1415), .C(n1414), .Z(AdjustablePieOverTwo[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i304_3_lut.init = 16'hcaca;
    LUT4 i372_3_lut (.A(n1484), .B(n1483), .C(n1482), .Z(AdjustablePieOverTwo[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i372_3_lut.init = 16'hcaca;
    LUT4 i602_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_145)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i602_3_lut.init = 16'heaea;
    CCU2D count_15__I_0_122_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2237), .COUT(n2238), .S0(count_15__N_111[7]), 
          .S1(count_15__N_111[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_9.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_9.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_9.INJECT1_0 = "NO";
    defparam count_15__I_0_122_9.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2236), .COUT(n2237), .S0(count_15__N_111[5]), 
          .S1(count_15__N_111[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_7.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_7.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_7.INJECT1_0 = "NO";
    defparam count_15__I_0_122_7.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2235), .COUT(n2236), .S0(count_15__N_111[3]), 
          .S1(count_15__N_111[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_5.INIT0 = 16'h5555;
    defparam count_15__I_0_122_5.INIT1 = 16'h5555;
    defparam count_15__I_0_122_5.INJECT1_0 = "NO";
    defparam count_15__I_0_122_5.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2234), .COUT(n2235), .S0(count_15__N_111[1]), 
          .S1(count_15__N_111[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_3.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_3.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_3.INJECT1_0 = "NO";
    defparam count_15__I_0_122_3.INJECT1_1 = "NO";
    LUT4 count_15__N_109_I_0_93_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[12]), .Z(count_15__N_118)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_93_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i601_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[5]), 
         .Z(count_15__N_139)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i601_3_lut.init = 16'heaea;
    CCU2D count_15__I_0_122_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2234), .S1(count_15__N_111[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_1.INIT0 = 16'hF000;
    defparam count_15__I_0_122_1.INIT1 = 16'h5555;
    defparam count_15__I_0_122_1.INJECT1_0 = "NO";
    defparam count_15__I_0_122_1.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2328), .S1(count_15__N_205[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_1.INIT0 = 16'hF000;
    defparam sub_4_add_2_1.INIT1 = 16'h5555;
    defparam sub_4_add_2_1.INJECT1_0 = "NO";
    defparam sub_4_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2328), .COUT(n2329), .S0(count_15__N_205[1]), 
          .S1(count_15__N_205[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_3.INIT0 = 16'h5555;
    defparam sub_4_add_2_3.INIT1 = 16'h5555;
    defparam sub_4_add_2_3.INJECT1_0 = "NO";
    defparam sub_4_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2329), .COUT(n2330), .S0(count_15__N_205[3]), 
          .S1(count_15__N_205[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_5.INIT0 = 16'h5aaa;
    defparam sub_4_add_2_5.INIT1 = 16'h5aaa;
    defparam sub_4_add_2_5.INJECT1_0 = "NO";
    defparam sub_4_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2330), .COUT(n2331), .S0(count_15__N_205[5]), 
          .S1(count_15__N_205[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_7.INIT0 = 16'h5555;
    defparam sub_4_add_2_7.INIT1 = 16'h5555;
    defparam sub_4_add_2_7.INJECT1_0 = "NO";
    defparam sub_4_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2331), .COUT(n2332), .S0(count_15__N_205[7]), 
          .S1(count_15__N_205[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_9.INIT0 = 16'h5555;
    defparam sub_4_add_2_9.INIT1 = 16'h5555;
    defparam sub_4_add_2_9.INJECT1_0 = "NO";
    defparam sub_4_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2332), .COUT(n2333), .S0(count_15__N_205[9]), 
          .S1(count_15__N_205[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_11.INIT0 = 16'h5555;
    defparam sub_4_add_2_11.INIT1 = 16'h5555;
    defparam sub_4_add_2_11.INJECT1_0 = "NO";
    defparam sub_4_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2333), .COUT(n2334), .S0(count_15__N_205[11]), 
          .S1(count_15__N_205[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_13.INIT0 = 16'h5555;
    defparam sub_4_add_2_13.INIT1 = 16'h5555;
    defparam sub_4_add_2_13.INJECT1_0 = "NO";
    defparam sub_4_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2334), .COUT(n2335), .S0(count_15__N_205[13]), 
          .S1(count_15__N_205[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_15.INIT0 = 16'h5555;
    defparam sub_4_add_2_15.INIT1 = 16'h5555;
    defparam sub_4_add_2_15.INJECT1_0 = "NO";
    defparam sub_4_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2335), .S0(count_15__N_205[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_17.INIT0 = 16'h5555;
    defparam sub_4_add_2_17.INIT1 = 16'h0000;
    defparam sub_4_add_2_17.INJECT1_0 = "NO";
    defparam sub_4_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U3
//

module comparator_U3 (GND_net, gatedcount, Resetandrepeat, loop) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Resetandrepeat;
    output loop;
    
    
    wire n2258, n2259, n2260, n2261, n2262, n2263, n2264, n2265;
    
    CCU2D sub_117_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Resetandrepeat[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2258));
    defparam sub_117_add_2_1.INIT0 = 16'h0000;
    defparam sub_117_add_2_1.INIT1 = 16'h5999;
    defparam sub_117_add_2_1.INJECT1_0 = "NO";
    defparam sub_117_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_3 (.A0(gatedcount[1]), .B0(Resetandrepeat[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(Resetandrepeat[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2258), .COUT(n2259));
    defparam sub_117_add_2_3.INIT0 = 16'h5999;
    defparam sub_117_add_2_3.INIT1 = 16'h5999;
    defparam sub_117_add_2_3.INJECT1_0 = "NO";
    defparam sub_117_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_5 (.A0(gatedcount[3]), .B0(Resetandrepeat[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(Resetandrepeat[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2259), .COUT(n2260));
    defparam sub_117_add_2_5.INIT0 = 16'h5999;
    defparam sub_117_add_2_5.INIT1 = 16'h5999;
    defparam sub_117_add_2_5.INJECT1_0 = "NO";
    defparam sub_117_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_7 (.A0(gatedcount[5]), .B0(Resetandrepeat[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(Resetandrepeat[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2260), .COUT(n2261));
    defparam sub_117_add_2_7.INIT0 = 16'h5999;
    defparam sub_117_add_2_7.INIT1 = 16'h5999;
    defparam sub_117_add_2_7.INJECT1_0 = "NO";
    defparam sub_117_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_9 (.A0(gatedcount[7]), .B0(Resetandrepeat[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(Resetandrepeat[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2261), .COUT(n2262));
    defparam sub_117_add_2_9.INIT0 = 16'h5999;
    defparam sub_117_add_2_9.INIT1 = 16'h5999;
    defparam sub_117_add_2_9.INJECT1_0 = "NO";
    defparam sub_117_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_11 (.A0(gatedcount[9]), .B0(Resetandrepeat[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Resetandrepeat[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2262), .COUT(n2263));
    defparam sub_117_add_2_11.INIT0 = 16'h5999;
    defparam sub_117_add_2_11.INIT1 = 16'h5999;
    defparam sub_117_add_2_11.INJECT1_0 = "NO";
    defparam sub_117_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_13 (.A0(gatedcount[11]), .B0(Resetandrepeat[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Resetandrepeat[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2263), .COUT(n2264));
    defparam sub_117_add_2_13.INIT0 = 16'h5999;
    defparam sub_117_add_2_13.INIT1 = 16'h5999;
    defparam sub_117_add_2_13.INJECT1_0 = "NO";
    defparam sub_117_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_15 (.A0(gatedcount[13]), .B0(Resetandrepeat[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Resetandrepeat[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2264), .COUT(n2265));
    defparam sub_117_add_2_15.INIT0 = 16'h5999;
    defparam sub_117_add_2_15.INIT1 = 16'h5999;
    defparam sub_117_add_2_15.INJECT1_0 = "NO";
    defparam sub_117_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_17 (.A0(gatedcount[15]), .B0(Resetandrepeat[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .S1(loop));
    defparam sub_117_add_2_17.INIT0 = 16'h5999;
    defparam sub_117_add_2_17.INIT1 = 16'h0000;
    defparam sub_117_add_2_17.INJECT1_0 = "NO";
    defparam sub_117_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U4
//

module countupdownpreload_U4 (n1468, n1467, n1466, \AdjustableFreePrecession[4] , 
            n1460, freeprecess_minus, n1456, n1455, n1454, \AdjustableFreePrecession[7] , 
            n1459, n1458, \AdjustableFreePrecession[6] , n1448, n1447, 
            n1446, \AdjustableFreePrecession[9] , n1452, n1451, n1450, 
            \AdjustableFreePrecession[8] , n1419, n1420, n1475, n1476, 
            n1479, n1480, n1440, n1439, n1438, \AdjustableFreePrecession[11] , 
            n1444, n1443, n1442, \AdjustableFreePrecession[10] , n1432, 
            n1431, n1430, \AdjustableFreePrecession[13] , n1436, n1435, 
            n1434, \AdjustableFreePrecession[12] , n1424, n1423, n1422, 
            \AdjustableFreePrecession[15] , n1428, n1427, n1426, \AdjustableFreePrecession[14] , 
            freeprecess_minus_enable_6, n2573, load_defaults, freeprecess_plus, 
            freeprecess_minus_enable_5, \count_15__N_111[2] , freeprecess_minus_enable_4, 
            n2544, n2545, n1472, n1471, n1462, n1470, n1464, n1463, 
            \AdjustableFreePrecession[3] , \AdjustableFreePrecession[5] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output n1468;
    output n1467;
    output n1466;
    output \AdjustableFreePrecession[4] ;
    output n1460;
    input freeprecess_minus;
    output n1456;
    output n1455;
    output n1454;
    output \AdjustableFreePrecession[7] ;
    output n1459;
    output n1458;
    output \AdjustableFreePrecession[6] ;
    output n1448;
    output n1447;
    output n1446;
    output \AdjustableFreePrecession[9] ;
    output n1452;
    output n1451;
    output n1450;
    output \AdjustableFreePrecession[8] ;
    output n1419;
    output n1420;
    output n1475;
    output n1476;
    output n1479;
    output n1480;
    output n1440;
    output n1439;
    output n1438;
    output \AdjustableFreePrecession[11] ;
    output n1444;
    output n1443;
    output n1442;
    output \AdjustableFreePrecession[10] ;
    output n1432;
    output n1431;
    output n1430;
    output \AdjustableFreePrecession[13] ;
    output n1436;
    output n1435;
    output n1434;
    output \AdjustableFreePrecession[12] ;
    output n1424;
    output n1423;
    output n1422;
    output \AdjustableFreePrecession[15] ;
    output n1428;
    output n1427;
    output n1426;
    output \AdjustableFreePrecession[14] ;
    output freeprecess_minus_enable_6;
    input n2573;
    input load_defaults;
    input freeprecess_plus;
    output freeprecess_minus_enable_5;
    output \count_15__N_111[2] ;
    output freeprecess_minus_enable_4;
    output n2544;
    output n2545;
    output n1472;
    output n1471;
    output n1462;
    output n1470;
    output n1464;
    output n1463;
    output \AdjustableFreePrecession[3] ;
    output \AdjustableFreePrecession[5] ;
    input GND_net;
    
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    
    wire count_15__N_184;
    wire [15:0]count_15__N_92;
    
    wire count_15__N_136, freeprecess_minus_enable_1, count_15__N_154, 
        freeprecess_minus_enable_2, count_15__N_148, freeprecess_minus_enable_3, 
        count_15__N_151, count_15__N_181, count_15__N_133, count_15__N_202;
    wire [15:0]count_15__N_111;
    
    wire count_15__N_199, count_15__N_108, count_15__N_157, count_15__N_118, 
        count_15__N_130, count_15__N_178, count_15__N_196, count_15__N_166, 
        count_15__N_172, count_15__N_193, count_15__N_169, count_15__N_142, 
        count_15__N_124, count_15__N_160, count_15__N_175, count_15__N_139, 
        count_15__N_163, count_15__N_127, count_15__N_115, count_15__N_112, 
        count_15__N_187, count_15__N_190, count_15__N_145, count_15__N_121, 
        n2298, n2299, n2300, n2301, n2302, n2303, n2321, n2322, 
        n2323, n2324, n2325, n2326;
    
    LUT4 i356_3_lut (.A(n1468), .B(n1467), .C(n1466), .Z(\AdjustableFreePrecession[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i356_3_lut.init = 16'hcaca;
    FD1S3DX count_i6_346_347_reset (.D(count_15__N_92[6]), .CK(freeprecess_minus), 
            .CD(count_15__N_184), .Q(n1460)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i6_346_347_reset.GSR = "ENABLED";
    LUT4 i344_3_lut (.A(n1456), .B(n1455), .C(n1454), .Z(\AdjustableFreePrecession[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i344_3_lut.init = 16'hcaca;
    FD1S3BX count_i6_346_347_set (.D(count_15__N_92[6]), .CK(freeprecess_minus), 
            .PD(count_15__N_136), .Q(n1459)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i6_346_347_set.GSR = "ENABLED";
    LUT4 i348_3_lut (.A(n1460), .B(n1459), .C(n1458), .Z(\AdjustableFreePrecession[6] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i348_3_lut.init = 16'hcaca;
    LUT4 i336_3_lut (.A(n1448), .B(n1447), .C(n1446), .Z(\AdjustableFreePrecession[9] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i336_3_lut.init = 16'hcaca;
    LUT4 i340_3_lut (.A(n1452), .B(n1451), .C(n1450), .Z(\AdjustableFreePrecession[8] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i340_3_lut.init = 16'hcaca;
    FD1P3BX count_i0_306_307_set (.D(n1420), .SP(freeprecess_minus_enable_1), 
            .CK(freeprecess_minus), .PD(count_15__N_154), .Q(n1419)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_306_307_set.GSR = "ENABLED";
    FD1P3BX count_i2_362_363_set (.D(n1476), .SP(freeprecess_minus_enable_2), 
            .CK(freeprecess_minus), .PD(count_15__N_148), .Q(n1475)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i2_362_363_set.GSR = "ENABLED";
    FD1P3BX count_i1_366_367_set (.D(n1480), .SP(freeprecess_minus_enable_3), 
            .CK(freeprecess_minus), .PD(count_15__N_151), .Q(n1479)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i1_366_367_set.GSR = "ENABLED";
    LUT4 i328_3_lut (.A(n1440), .B(n1439), .C(n1438), .Z(\AdjustableFreePrecession[11] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i328_3_lut.init = 16'hcaca;
    LUT4 i332_3_lut (.A(n1444), .B(n1443), .C(n1442), .Z(\AdjustableFreePrecession[10] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i332_3_lut.init = 16'hcaca;
    LUT4 i320_3_lut (.A(n1432), .B(n1431), .C(n1430), .Z(\AdjustableFreePrecession[13] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i320_3_lut.init = 16'hcaca;
    LUT4 i324_3_lut (.A(n1436), .B(n1435), .C(n1434), .Z(\AdjustableFreePrecession[12] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i324_3_lut.init = 16'hcaca;
    LUT4 i312_3_lut (.A(n1424), .B(n1423), .C(n1422), .Z(\AdjustableFreePrecession[15] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i312_3_lut.init = 16'hcaca;
    FD1S3DX count_i7_342_343_reset (.D(count_15__N_92[7]), .CK(freeprecess_minus), 
            .CD(count_15__N_181), .Q(n1456)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i7_342_343_reset.GSR = "ENABLED";
    LUT4 i316_3_lut (.A(n1428), .B(n1427), .C(n1426), .Z(\AdjustableFreePrecession[14] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i316_3_lut.init = 16'hcaca;
    FD1S3BX count_i7_342_343_set (.D(count_15__N_92[7]), .CK(freeprecess_minus), 
            .PD(count_15__N_133), .Q(n1455)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i7_342_343_set.GSR = "ENABLED";
    FD1S1D i305 (.D(n2573), .CK(count_15__N_154), .CD(count_15__N_202), 
           .Q(freeprecess_minus_enable_6));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i305.GSR = "ENABLED";
    LUT4 i607_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_136)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i607_3_lut.init = 16'heaea;
    LUT4 i431_1_lut (.A(freeprecess_minus_enable_6), .Z(freeprecess_minus_enable_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i431_1_lut.init = 16'h5555;
    LUT4 i430_1_lut (.A(freeprecess_minus_enable_5), .Z(freeprecess_minus_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i430_1_lut.init = 16'h5555;
    LUT4 i609_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(\count_15__N_111[2] ), 
         .Z(count_15__N_148)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i609_3_lut.init = 16'heaea;
    LUT4 i364_3_lut (.A(n1476), .B(n1475), .C(freeprecess_minus_enable_5), 
         .Z(\count_15__N_111[2] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i364_3_lut.init = 16'hcaca;
    LUT4 i429_1_lut (.A(freeprecess_minus_enable_4), .Z(freeprecess_minus_enable_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i429_1_lut.init = 16'h5555;
    FD1P3DX count_i1_366_367_reset (.D(n1479), .SP(freeprecess_minus_enable_4), 
            .CK(freeprecess_minus), .CD(count_15__N_199), .Q(n1480)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i1_366_367_reset.GSR = "ENABLED";
    FD1S1D i309 (.D(n2573), .CK(count_15__N_108), .CD(count_15__N_157), 
           .Q(n1422));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i309.GSR = "ENABLED";
    LUT4 i603_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[12]), 
         .Z(count_15__N_118)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i603_3_lut.init = 16'heaea;
    LUT4 i606_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[8]), 
         .Z(count_15__N_130)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i606_3_lut.init = 16'heaea;
    FD1S3DX count_i8_338_339_reset (.D(count_15__N_92[8]), .CK(freeprecess_minus), 
            .CD(count_15__N_178), .Q(n1452)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i8_338_339_reset.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_184)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_20 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[8]), .Z(count_15__N_178)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_20.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(load_defaults), .B(freeprecess_plus), 
         .C(\count_15__N_111[2] ), .Z(count_15__N_196)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_21.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[12]), .Z(count_15__N_166)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_22.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[10]), .Z(count_15__N_172)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[3]), .Z(count_15__N_193)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[11]), .Z(count_15__N_169)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h0404;
    FD1P3DX count_i2_362_363_reset (.D(n1475), .SP(freeprecess_minus_enable_5), 
            .CK(freeprecess_minus), .CD(count_15__N_196), .Q(n1476)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i2_362_363_reset.GSR = "ENABLED";
    LUT4 i368_3_lut_rep_38 (.A(n1480), .B(n1479), .C(freeprecess_minus_enable_4), 
         .Z(n2544)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i368_3_lut_rep_38.init = 16'hcaca;
    LUT4 i308_3_lut_rep_39 (.A(n1420), .B(n1419), .C(freeprecess_minus_enable_6), 
         .Z(n2545)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i308_3_lut_rep_39.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_101_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[4]), .Z(count_15__N_142)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_101_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i605_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[10]), 
         .Z(count_15__N_124)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i605_3_lut.init = 16'heaea;
    LUT4 count_15__N_109_I_0_105_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2545), .Z(count_15__N_154)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_105_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_107_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[14]), .Z(count_15__N_160)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_107_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_112_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[9]), .Z(count_15__N_175)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_112_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_100_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[5]), .Z(count_15__N_139)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_100_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_114_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[7]), .Z(count_15__N_181)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_114_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_98_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[7]), .Z(count_15__N_133)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_98_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_108_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[13]), .Z(count_15__N_163)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_108_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_120_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2544), .Z(count_15__N_199)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_120_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_96_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[9]), .Z(count_15__N_127)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_96_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(n2545), .Z(count_15__N_202)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_106_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[15]), .Z(count_15__N_157)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_106_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_92_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_115)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_92_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_91_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_112)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_91_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__I_0_121_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_108)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__I_0_121_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_116_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[5]), .Z(count_15__N_187)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_116_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_117_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[4]), .Z(count_15__N_190)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_117_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_104_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2544), .Z(count_15__N_151)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_104_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S3BX count_i8_338_339_set (.D(count_15__N_92[8]), .CK(freeprecess_minus), 
            .PD(count_15__N_130), .Q(n1451)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i8_338_339_set.GSR = "ENABLED";
    LUT4 i608_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_145)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i608_3_lut.init = 16'heaea;
    LUT4 i604_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[11]), 
         .Z(count_15__N_121)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i604_3_lut.init = 16'heaea;
    FD1S3DX count_i12_322_323_reset (.D(count_15__N_92[12]), .CK(freeprecess_minus), 
            .CD(count_15__N_166), .Q(n1436)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i12_322_323_reset.GSR = "ENABLED";
    FD1S3DX count_i15_310_311_reset (.D(count_15__N_92[15]), .CK(freeprecess_minus), 
            .CD(count_15__N_157), .Q(n1424)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i15_310_311_reset.GSR = "ENABLED";
    FD1S3DX count_i9_334_335_reset (.D(count_15__N_92[9]), .CK(freeprecess_minus), 
            .CD(count_15__N_175), .Q(n1448)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i9_334_335_reset.GSR = "ENABLED";
    FD1S3BX count_i13_318_319_set (.D(count_15__N_92[13]), .CK(freeprecess_minus), 
            .PD(count_15__N_115), .Q(n1431)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i13_318_319_set.GSR = "ENABLED";
    FD1P3DX count_i0_306_307_reset (.D(n1419), .SP(freeprecess_minus_enable_6), 
            .CK(freeprecess_minus), .CD(count_15__N_202), .Q(n1420)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_306_307_reset.GSR = "ENABLED";
    FD1S3BX count_i9_334_335_set (.D(count_15__N_92[9]), .CK(freeprecess_minus), 
            .PD(count_15__N_127), .Q(n1447)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i9_334_335_set.GSR = "ENABLED";
    FD1S3BX count_i12_322_323_set (.D(count_15__N_92[12]), .CK(freeprecess_minus), 
            .PD(count_15__N_118), .Q(n1435)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i12_322_323_set.GSR = "ENABLED";
    FD1S3DX count_i10_330_331_reset (.D(count_15__N_92[10]), .CK(freeprecess_minus), 
            .CD(count_15__N_172), .Q(n1444)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i10_330_331_reset.GSR = "ENABLED";
    FD1S3BX count_i10_330_331_set (.D(count_15__N_92[10]), .CK(freeprecess_minus), 
            .PD(count_15__N_124), .Q(n1443)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i10_330_331_set.GSR = "ENABLED";
    FD1S3DX count_i3_358_359_reset (.D(count_15__N_92[3]), .CK(freeprecess_minus), 
            .CD(count_15__N_193), .Q(n1472)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i3_358_359_reset.GSR = "ENABLED";
    FD1S3DX count_i11_326_327_reset (.D(count_15__N_92[11]), .CK(freeprecess_minus), 
            .CD(count_15__N_169), .Q(n1440)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i11_326_327_reset.GSR = "ENABLED";
    FD1S3DX count_i13_318_319_reset (.D(count_15__N_92[13]), .CK(freeprecess_minus), 
            .CD(count_15__N_163), .Q(n1432)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i13_318_319_reset.GSR = "ENABLED";
    FD1S3BX count_i3_358_359_set (.D(count_15__N_92[3]), .CK(freeprecess_minus), 
            .PD(count_15__N_145), .Q(n1471)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i3_358_359_set.GSR = "ENABLED";
    FD1S3BX count_i14_314_315_set (.D(count_15__N_92[14]), .CK(freeprecess_minus), 
            .PD(count_15__N_112), .Q(n1427)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i14_314_315_set.GSR = "ENABLED";
    FD1S3BX count_i11_326_327_set (.D(count_15__N_92[11]), .CK(freeprecess_minus), 
            .PD(count_15__N_121), .Q(n1439)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i11_326_327_set.GSR = "ENABLED";
    FD1S3BX count_i15_310_311_set (.D(count_15__N_92[15]), .CK(freeprecess_minus), 
            .PD(count_15__N_108), .Q(n1423)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i15_310_311_set.GSR = "ENABLED";
    FD1S3DX count_i4_354_355_reset (.D(count_15__N_92[4]), .CK(freeprecess_minus), 
            .CD(count_15__N_190), .Q(n1468)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i4_354_355_reset.GSR = "ENABLED";
    FD1S1D i313 (.D(n2573), .CK(count_15__N_112), .CD(count_15__N_160), 
           .Q(n1426));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i313.GSR = "ENABLED";
    FD1S1D i317 (.D(n2573), .CK(count_15__N_115), .CD(count_15__N_163), 
           .Q(n1430));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i317.GSR = "ENABLED";
    FD1S1D i321 (.D(n2573), .CK(count_15__N_118), .CD(count_15__N_166), 
           .Q(n1434));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i321.GSR = "ENABLED";
    FD1S1D i325 (.D(n2573), .CK(count_15__N_121), .CD(count_15__N_169), 
           .Q(n1438));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i325.GSR = "ENABLED";
    FD1S1D i329 (.D(n2573), .CK(count_15__N_124), .CD(count_15__N_172), 
           .Q(n1442));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i329.GSR = "ENABLED";
    FD1S1D i333 (.D(n2573), .CK(count_15__N_127), .CD(count_15__N_175), 
           .Q(n1446));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i333.GSR = "ENABLED";
    FD1S1D i337 (.D(n2573), .CK(count_15__N_130), .CD(count_15__N_178), 
           .Q(n1450));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i337.GSR = "ENABLED";
    FD1S1D i341 (.D(n2573), .CK(count_15__N_133), .CD(count_15__N_181), 
           .Q(n1454));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i341.GSR = "ENABLED";
    FD1S1D i345 (.D(n2573), .CK(count_15__N_136), .CD(count_15__N_184), 
           .Q(n1458));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i345.GSR = "ENABLED";
    FD1S1D i349 (.D(n2573), .CK(count_15__N_139), .CD(count_15__N_187), 
           .Q(n1462));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i349.GSR = "ENABLED";
    FD1S1D i353 (.D(n2573), .CK(count_15__N_142), .CD(count_15__N_190), 
           .Q(n1466));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i353.GSR = "ENABLED";
    FD1S1D i357 (.D(n2573), .CK(count_15__N_145), .CD(count_15__N_193), 
           .Q(n1470));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i357.GSR = "ENABLED";
    FD1S1D i361 (.D(n2573), .CK(count_15__N_148), .CD(count_15__N_196), 
           .Q(freeprecess_minus_enable_5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i361.GSR = "ENABLED";
    FD1S1D i365 (.D(n2573), .CK(count_15__N_151), .CD(count_15__N_199), 
           .Q(freeprecess_minus_enable_4));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i365.GSR = "ENABLED";
    FD1S3BX count_i4_354_355_set (.D(count_15__N_92[4]), .CK(freeprecess_minus), 
            .PD(count_15__N_142), .Q(n1467)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i4_354_355_set.GSR = "ENABLED";
    FD1S3DX count_i5_350_351_reset (.D(count_15__N_92[5]), .CK(freeprecess_minus), 
            .CD(count_15__N_187), .Q(n1464)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i5_350_351_reset.GSR = "ENABLED";
    FD1S3BX count_i5_350_351_set (.D(count_15__N_92[5]), .CK(freeprecess_minus), 
            .PD(count_15__N_139), .Q(n1463)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i5_350_351_set.GSR = "ENABLED";
    FD1S3DX count_i14_314_315_reset (.D(count_15__N_92[14]), .CK(freeprecess_minus), 
            .CD(count_15__N_160), .Q(n1428)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i14_314_315_reset.GSR = "ENABLED";
    LUT4 i360_3_lut (.A(n1472), .B(n1471), .C(n1470), .Z(\AdjustableFreePrecession[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i360_3_lut.init = 16'hcaca;
    LUT4 i352_3_lut (.A(n1464), .B(n1463), .C(n1462), .Z(\AdjustableFreePrecession[5] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i352_3_lut.init = 16'hcaca;
    CCU2D add_140_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\AdjustableFreePrecession[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2298), .S1(count_15__N_111[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_1.INIT0 = 16'hF000;
    defparam add_140_1.INIT1 = 16'h5555;
    defparam add_140_1.INJECT1_0 = "NO";
    defparam add_140_1.INJECT1_1 = "NO";
    CCU2D add_140_3 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2298), .COUT(n2299), .S0(count_15__N_111[4]), 
          .S1(count_15__N_111[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_3.INIT0 = 16'h5aaa;
    defparam add_140_3.INIT1 = 16'h5aaa;
    defparam add_140_3.INJECT1_0 = "NO";
    defparam add_140_3.INJECT1_1 = "NO";
    CCU2D add_140_5 (.A0(\AdjustableFreePrecession[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2299), .COUT(n2300), .S0(count_15__N_111[6]), 
          .S1(count_15__N_111[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_5.INIT0 = 16'h5555;
    defparam add_140_5.INIT1 = 16'h5555;
    defparam add_140_5.INJECT1_0 = "NO";
    defparam add_140_5.INJECT1_1 = "NO";
    CCU2D add_140_7 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2300), .COUT(n2301), .S0(count_15__N_111[8]), 
          .S1(count_15__N_111[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_7.INIT0 = 16'h5aaa;
    defparam add_140_7.INIT1 = 16'h5aaa;
    defparam add_140_7.INJECT1_0 = "NO";
    defparam add_140_7.INJECT1_1 = "NO";
    CCU2D add_140_9 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2301), .COUT(n2302), 
          .S0(count_15__N_111[10]), .S1(count_15__N_111[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_9.INIT0 = 16'h5aaa;
    defparam add_140_9.INIT1 = 16'h5aaa;
    defparam add_140_9.INJECT1_0 = "NO";
    defparam add_140_9.INJECT1_1 = "NO";
    CCU2D add_140_11 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2302), .COUT(n2303), 
          .S0(count_15__N_111[12]), .S1(count_15__N_111[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_11.INIT0 = 16'h5aaa;
    defparam add_140_11.INIT1 = 16'h5aaa;
    defparam add_140_11.INJECT1_0 = "NO";
    defparam add_140_11.INJECT1_1 = "NO";
    CCU2D add_140_13 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2303), .S0(count_15__N_111[14]), 
          .S1(count_15__N_111[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_13.INIT0 = 16'h5aaa;
    defparam add_140_13.INIT1 = 16'h5aaa;
    defparam add_140_13.INJECT1_0 = "NO";
    defparam add_140_13.INJECT1_1 = "NO";
    CCU2D add_102_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(n1470), .C1(n1471), .D1(n1472), 
          .COUT(n2321), .S1(count_15__N_92[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_1.INIT0 = 16'hF000;
    defparam add_102_1.INIT1 = 16'h596a;
    defparam add_102_1.INJECT1_0 = "NO";
    defparam add_102_1.INJECT1_1 = "NO";
    CCU2D add_102_3 (.A0(freeprecess_minus), .B0(n1466), .C0(n1467), .D0(n1468), 
          .A1(freeprecess_minus), .B1(n1462), .C1(n1463), .D1(n1464), 
          .CIN(n2321), .COUT(n2322), .S0(count_15__N_92[4]), .S1(count_15__N_92[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_3.INIT0 = 16'h596a;
    defparam add_102_3.INIT1 = 16'h596a;
    defparam add_102_3.INJECT1_0 = "NO";
    defparam add_102_3.INJECT1_1 = "NO";
    CCU2D add_102_5 (.A0(\AdjustableFreePrecession[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2322), .COUT(n2323), .S0(count_15__N_92[6]), 
          .S1(count_15__N_92[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_5.INIT0 = 16'h5aaa;
    defparam add_102_5.INIT1 = 16'h5aaa;
    defparam add_102_5.INJECT1_0 = "NO";
    defparam add_102_5.INJECT1_1 = "NO";
    CCU2D add_102_7 (.A0(freeprecess_minus), .B0(n1450), .C0(n1451), .D0(n1452), 
          .A1(freeprecess_minus), .B1(n1446), .C1(n1447), .D1(n1448), 
          .CIN(n2323), .COUT(n2324), .S0(count_15__N_92[8]), .S1(count_15__N_92[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_7.INIT0 = 16'h596a;
    defparam add_102_7.INIT1 = 16'h596a;
    defparam add_102_7.INJECT1_0 = "NO";
    defparam add_102_7.INJECT1_1 = "NO";
    CCU2D add_102_9 (.A0(freeprecess_minus), .B0(n1442), .C0(n1443), .D0(n1444), 
          .A1(freeprecess_minus), .B1(n1438), .C1(n1439), .D1(n1440), 
          .CIN(n2324), .COUT(n2325), .S0(count_15__N_92[10]), .S1(count_15__N_92[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_9.INIT0 = 16'h596a;
    defparam add_102_9.INIT1 = 16'h596a;
    defparam add_102_9.INJECT1_0 = "NO";
    defparam add_102_9.INJECT1_1 = "NO";
    CCU2D add_102_11 (.A0(freeprecess_minus), .B0(n1434), .C0(n1435), 
          .D0(n1436), .A1(freeprecess_minus), .B1(n1430), .C1(n1431), 
          .D1(n1432), .CIN(n2325), .COUT(n2326), .S0(count_15__N_92[12]), 
          .S1(count_15__N_92[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_11.INIT0 = 16'h596a;
    defparam add_102_11.INIT1 = 16'h596a;
    defparam add_102_11.INJECT1_0 = "NO";
    defparam add_102_11.INJECT1_1 = "NO";
    CCU2D add_102_13 (.A0(freeprecess_minus), .B0(n1426), .C0(n1427), 
          .D0(n1428), .A1(freeprecess_minus), .B1(n1422), .C1(n1423), 
          .D1(n1424), .CIN(n2326), .S0(count_15__N_92[14]), .S1(count_15__N_92[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_13.INIT0 = 16'h596a;
    defparam add_102_13.INIT1 = 16'h596a;
    defparam add_102_13.INJECT1_0 = "NO";
    defparam add_102_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (GND_net, gatedcount, Endof2ndMWpulse, n236) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Endof2ndMWpulse;
    output n236;
    
    
    wire n2282, n2283, n2284, n2285, n2286, n2287, n2288, n2289;
    
    CCU2D sub_107_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endof2ndMWpulse[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2282));
    defparam sub_107_add_2_1.INIT0 = 16'h0000;
    defparam sub_107_add_2_1.INIT1 = 16'h5999;
    defparam sub_107_add_2_1.INJECT1_0 = "NO";
    defparam sub_107_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_3 (.A0(gatedcount[1]), .B0(Endof2ndMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endof2ndMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2282), .COUT(n2283));
    defparam sub_107_add_2_3.INIT0 = 16'h5999;
    defparam sub_107_add_2_3.INIT1 = 16'h5999;
    defparam sub_107_add_2_3.INJECT1_0 = "NO";
    defparam sub_107_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_5 (.A0(gatedcount[3]), .B0(Endof2ndMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endof2ndMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2283), .COUT(n2284));
    defparam sub_107_add_2_5.INIT0 = 16'h5999;
    defparam sub_107_add_2_5.INIT1 = 16'h5999;
    defparam sub_107_add_2_5.INJECT1_0 = "NO";
    defparam sub_107_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_7 (.A0(gatedcount[5]), .B0(Endof2ndMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endof2ndMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2284), .COUT(n2285));
    defparam sub_107_add_2_7.INIT0 = 16'h5999;
    defparam sub_107_add_2_7.INIT1 = 16'h5999;
    defparam sub_107_add_2_7.INJECT1_0 = "NO";
    defparam sub_107_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_9 (.A0(gatedcount[7]), .B0(Endof2ndMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endof2ndMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2285), .COUT(n2286));
    defparam sub_107_add_2_9.INIT0 = 16'h5999;
    defparam sub_107_add_2_9.INIT1 = 16'h5999;
    defparam sub_107_add_2_9.INJECT1_0 = "NO";
    defparam sub_107_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_11 (.A0(gatedcount[9]), .B0(Endof2ndMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endof2ndMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2286), .COUT(n2287));
    defparam sub_107_add_2_11.INIT0 = 16'h5999;
    defparam sub_107_add_2_11.INIT1 = 16'h5999;
    defparam sub_107_add_2_11.INJECT1_0 = "NO";
    defparam sub_107_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_13 (.A0(gatedcount[11]), .B0(Endof2ndMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endof2ndMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2287), .COUT(n2288));
    defparam sub_107_add_2_13.INIT0 = 16'h5999;
    defparam sub_107_add_2_13.INIT1 = 16'h5999;
    defparam sub_107_add_2_13.INJECT1_0 = "NO";
    defparam sub_107_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_15 (.A0(gatedcount[13]), .B0(Endof2ndMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endof2ndMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2288), .COUT(n2289));
    defparam sub_107_add_2_15.INIT0 = 16'h5999;
    defparam sub_107_add_2_15.INIT1 = 16'h5999;
    defparam sub_107_add_2_15.INJECT1_0 = "NO";
    defparam sub_107_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_17 (.A0(gatedcount[15]), .B0(Endof2ndMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2289), .S1(n236));
    defparam sub_107_add_2_17.INIT0 = 16'h5999;
    defparam sub_107_add_2_17.INIT1 = 16'h0000;
    defparam sub_107_add_2_17.INJECT1_0 = "NO";
    defparam sub_107_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, gatedcount, Startof2ndMWpulse, pi2started) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Startof2ndMWpulse;
    output pi2started;
    
    
    wire n2305, n2306, n2307, n2308, n2309, n2310, n2311, n2312;
    
    CCU2D sub_105_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Startof2ndMWpulse[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2305));
    defparam sub_105_add_2_1.INIT0 = 16'h0000;
    defparam sub_105_add_2_1.INIT1 = 16'h5999;
    defparam sub_105_add_2_1.INJECT1_0 = "NO";
    defparam sub_105_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_3 (.A0(gatedcount[1]), .B0(Startof2ndMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Startof2ndMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2305), .COUT(n2306));
    defparam sub_105_add_2_3.INIT0 = 16'h5999;
    defparam sub_105_add_2_3.INIT1 = 16'h5999;
    defparam sub_105_add_2_3.INJECT1_0 = "NO";
    defparam sub_105_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_5 (.A0(gatedcount[3]), .B0(Startof2ndMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Startof2ndMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2306), .COUT(n2307));
    defparam sub_105_add_2_5.INIT0 = 16'h5999;
    defparam sub_105_add_2_5.INIT1 = 16'h5999;
    defparam sub_105_add_2_5.INJECT1_0 = "NO";
    defparam sub_105_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_7 (.A0(gatedcount[5]), .B0(Startof2ndMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Startof2ndMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2307), .COUT(n2308));
    defparam sub_105_add_2_7.INIT0 = 16'h5999;
    defparam sub_105_add_2_7.INIT1 = 16'h5999;
    defparam sub_105_add_2_7.INJECT1_0 = "NO";
    defparam sub_105_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_9 (.A0(gatedcount[7]), .B0(Startof2ndMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Startof2ndMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2308), .COUT(n2309));
    defparam sub_105_add_2_9.INIT0 = 16'h5999;
    defparam sub_105_add_2_9.INIT1 = 16'h5999;
    defparam sub_105_add_2_9.INJECT1_0 = "NO";
    defparam sub_105_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_11 (.A0(gatedcount[9]), .B0(Startof2ndMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Startof2ndMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2309), .COUT(n2310));
    defparam sub_105_add_2_11.INIT0 = 16'h5999;
    defparam sub_105_add_2_11.INIT1 = 16'h5999;
    defparam sub_105_add_2_11.INJECT1_0 = "NO";
    defparam sub_105_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_13 (.A0(gatedcount[11]), .B0(Startof2ndMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Startof2ndMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2310), .COUT(n2311));
    defparam sub_105_add_2_13.INIT0 = 16'h5999;
    defparam sub_105_add_2_13.INIT1 = 16'h5999;
    defparam sub_105_add_2_13.INJECT1_0 = "NO";
    defparam sub_105_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_15 (.A0(gatedcount[13]), .B0(Startof2ndMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Startof2ndMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2311), .COUT(n2312));
    defparam sub_105_add_2_15.INIT0 = 16'h5999;
    defparam sub_105_add_2_15.INIT1 = 16'h5999;
    defparam sub_105_add_2_15.INJECT1_0 = "NO";
    defparam sub_105_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_17 (.A0(gatedcount[15]), .B0(Startof2ndMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2312), .S1(pi2started));
    defparam sub_105_add_2_17.INIT0 = 16'h5999;
    defparam sub_105_add_2_17.INIT1 = 16'h0000;
    defparam sub_105_add_2_17.INJECT1_0 = "NO";
    defparam sub_105_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (GND_net, gatedcount, Endof1stMWpulse, n198) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Endof1stMWpulse;
    output n198;
    
    
    wire n2313, n2314, n2315, n2316, n2317, n2318, n2319, n2320;
    
    CCU2D sub_103_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endof1stMWpulse[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2313));
    defparam sub_103_add_2_1.INIT0 = 16'h0000;
    defparam sub_103_add_2_1.INIT1 = 16'h5999;
    defparam sub_103_add_2_1.INJECT1_0 = "NO";
    defparam sub_103_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_3 (.A0(gatedcount[1]), .B0(Endof1stMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endof1stMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2313), .COUT(n2314));
    defparam sub_103_add_2_3.INIT0 = 16'h5999;
    defparam sub_103_add_2_3.INIT1 = 16'h5999;
    defparam sub_103_add_2_3.INJECT1_0 = "NO";
    defparam sub_103_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_5 (.A0(gatedcount[3]), .B0(Endof1stMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endof1stMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2314), .COUT(n2315));
    defparam sub_103_add_2_5.INIT0 = 16'h5999;
    defparam sub_103_add_2_5.INIT1 = 16'h5999;
    defparam sub_103_add_2_5.INJECT1_0 = "NO";
    defparam sub_103_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_7 (.A0(gatedcount[5]), .B0(Endof1stMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endof1stMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2315), .COUT(n2316));
    defparam sub_103_add_2_7.INIT0 = 16'h5999;
    defparam sub_103_add_2_7.INIT1 = 16'h5999;
    defparam sub_103_add_2_7.INJECT1_0 = "NO";
    defparam sub_103_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_9 (.A0(gatedcount[7]), .B0(Endof1stMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endof1stMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2316), .COUT(n2317));
    defparam sub_103_add_2_9.INIT0 = 16'h5999;
    defparam sub_103_add_2_9.INIT1 = 16'h5999;
    defparam sub_103_add_2_9.INJECT1_0 = "NO";
    defparam sub_103_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_11 (.A0(gatedcount[9]), .B0(Endof1stMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endof1stMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2317), .COUT(n2318));
    defparam sub_103_add_2_11.INIT0 = 16'h5999;
    defparam sub_103_add_2_11.INIT1 = 16'h5999;
    defparam sub_103_add_2_11.INJECT1_0 = "NO";
    defparam sub_103_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_13 (.A0(gatedcount[11]), .B0(Endof1stMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endof1stMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2318), .COUT(n2319));
    defparam sub_103_add_2_13.INIT0 = 16'h5999;
    defparam sub_103_add_2_13.INIT1 = 16'h5999;
    defparam sub_103_add_2_13.INJECT1_0 = "NO";
    defparam sub_103_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_15 (.A0(gatedcount[13]), .B0(Endof1stMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endof1stMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2319), .COUT(n2320));
    defparam sub_103_add_2_15.INIT0 = 16'h5999;
    defparam sub_103_add_2_15.INIT1 = 16'h5999;
    defparam sub_103_add_2_15.INJECT1_0 = "NO";
    defparam sub_103_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_17 (.A0(gatedcount[15]), .B0(Endof1stMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2320), .S1(n198));
    defparam sub_103_add_2_17.INIT0 = 16'h5999;
    defparam sub_103_add_2_17.INIT1 = 16'h0000;
    defparam sub_103_add_2_17.INJECT1_0 = "NO";
    defparam sub_103_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U8
//

module comparator_U8 (n2454, n7, \gatedcount[10] , n8, n2455, \gatedcount[15] , 
            \gatedcount[12] , \gatedcount[14] , \gatedcount[11] , \gatedcount[13] , 
            \gatedcount[7] , \gatedcount[8] , n1752, \gatedcount[4] , 
            \gatedcount[9] , n2472, \gatedcount[0] , \gatedcount[3] , 
            \gatedcount[2] , \gatedcount[1] ) /* synthesis syn_module_defined=1 */ ;
    output n2454;
    input n7;
    input \gatedcount[10] ;
    input n8;
    output n2455;
    input \gatedcount[15] ;
    input \gatedcount[12] ;
    input \gatedcount[14] ;
    input \gatedcount[11] ;
    input \gatedcount[13] ;
    input \gatedcount[7] ;
    input \gatedcount[8] ;
    output n1752;
    input \gatedcount[4] ;
    input \gatedcount[9] ;
    input n2472;
    input \gatedcount[0] ;
    input \gatedcount[3] ;
    input \gatedcount[2] ;
    input \gatedcount[1] ;
    
    
    wire n6, n5, n4;
    
    LUT4 i2_4_lut (.A(n2454), .B(n7), .C(\gatedcount[10] ), .D(n8), 
         .Z(n2455)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i4_4_lut (.A(\gatedcount[15] ), .B(\gatedcount[12] ), .C(\gatedcount[14] ), 
         .D(n6), .Z(n2454)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(\gatedcount[11] ), .B(\gatedcount[13] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i626_4_lut (.A(n5), .B(\gatedcount[10] ), .C(\gatedcount[7] ), 
         .D(\gatedcount[8] ), .Z(n1752)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i626_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(\gatedcount[4] ), .B(\gatedcount[9] ), .C(n2472), 
         .D(n4), .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_19 (.A(\gatedcount[0] ), .B(\gatedcount[3] ), .C(\gatedcount[2] ), 
         .D(\gatedcount[1] ), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_19.init = 16'hfcec;
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clock_2_5M_N_30, CLKOP, OscTenMegOut, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clock_2_5M_N_30;
    output CLKOP;
    input OscTenMegOut;
    input GND_net;
    
    wire clock_2_5M_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire CLKOP /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(31[7:12])
    wire OscTenMegOut /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:19])
    
    wire CLKFB_t;
    
    INV i928 (.A(CLKOP), .Z(clock_2_5M_N_30));
    EHXPLLJ PLLInst_0 (.CLKI(OscTenMegOut), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(CLKOP), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=10, LSE_RCOL=59, LSE_LLINE=76, LSE_RLINE=76 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[10:59])
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
