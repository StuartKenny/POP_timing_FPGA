// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Fri Feb 25 12:26:56 2022
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
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire sampled_modebutton /* synthesis is_clock=1, SET_AS_NETWORK=sampled_modebutton */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[6:24])
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    
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
    
    wire n2552, n2578, n273, n2460;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_50 (.D(load_default_button_N_20), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam load_defaults_50.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_51 (.D(topleft_button_N_22), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam pieovertwo_plus_51.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_52 (.D(topright_button_N_24), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam freeprecess_plus_52.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_53 (.D(bottomleft_button_N_26), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam pieovertwo_minus_53.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_54 (.D(bottomright_button_N_28), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam freeprecess_minus_54.GSR = "ENABLED";
    FD1S3AX LED_output_55 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 121[5])
    defparam LED_output_55.GSR = "ENABLED";
    FD1S3JX probe_output_57 (.D(probe_output_N_12), .CK(clk_2M5), .PD(LED_output_N_6), 
            .Q(probe_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 121[5])
    defparam probe_output_57.GSR = "ENABLED";
    FD1S3JX sample_output_59 (.D(sample_output_N_16), .CK(clk_2M5), .PD(LED_output_N_6), 
            .Q(sample_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 121[5])
    defparam sample_output_59.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_49 (.D(mode_button_N_18), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(73[8] 81[6])
    defparam sampled_modebutton_49.GSR = "ENABLED";
    FD1S3IX pump_output_56 (.D(pump_output_N_8), .CK(clk_2M5), .CD(LED_output_N_6), 
            .Q(pump_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 121[5])
    defparam pump_output_56.GSR = "ENABLED";
    LUT4 tenmegclock_I_0_2_lut (.A(tenmegclock_c), .B(n2460), .Z(debug_0_c)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(63[19:35])
    defparam tenmegclock_I_0_2_lut.init = 16'h2222;
    FD1S3IX MW_output_58 (.D(MW), .CK(clk_2M5), .CD(n2552), .Q(MW_output_c));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 121[5])
    defparam MW_output_58.GSR = "ENABLED";
    LUT4 equal_65_i3_2_lut_rep_41 (.A(SMstate[0]), .B(SMstate[1]), .Z(n2552)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(100[12:24])
    defparam equal_65_i3_2_lut_rep_41.init = 16'hdddd;
    LUT4 pump_output_I_2_3_lut_3_lut_4_lut_3_lut (.A(SMstate[0]), .B(SMstate[1]), 
         .C(n2460), .Z(pump_output_N_8)) /* synthesis lut_function=(A (B+!(C))+!A !(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(100[12:24])
    defparam pump_output_I_2_3_lut_3_lut_4_lut_3_lut.init = 16'h9b9b;
    LUT4 i2_3_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(n273), .D(probestarted), 
         .Z(probe_output_N_12)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(100[12:24])
    defparam i2_3_lut_4_lut.init = 16'h0200;
    LUT4 SMstate_0__bdd_4_lut (.A(SMstate[0]), .B(slow_pulse), .C(SMstate[1]), 
         .D(fast_pulse), .Z(LED_output_N_1)) /* synthesis lut_function=(!(A (C)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam SMstate_0__bdd_4_lut.init = 16'h5e0e;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_28)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(80[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_20)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(76[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 i909_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(LED_output_N_6)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(93[7:19])
    defparam i909_2_lut.init = 16'h1111;
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_22)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(77[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_24)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(78[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:16])
    LUT4 i175_1_lut (.A(SMstate[0]), .Z(state_1__N_244[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(100[12:24])
    defparam i175_1_lut.init = 16'h5555;
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    quad_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton), 
            .state_1__N_244({Open_0, state_1__N_244[0]})) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(71[21:77])
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_26)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(79[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    slow_clock_pulse slowclocks (.GND_net(GND_net), .debounce_pulse(debounce_pulse), 
            .clk_2M5(clk_2M5), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(70[19:128])
    VLO i1 (.Z(GND_net));
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(45[9:13])
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:19])
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
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
    POPtimers POPtimers (.clk_2M5_N_30(clk_2M5_N_30), .GND_net(GND_net), 
            .MW(MW), .load_defaults(load_defaults), .VCC_net(VCC_net), 
            .clk_2M5(clk_2M5), .SMstate({SMstate}), .probestarted(probestarted), 
            .sample_output_N_16(sample_output_N_16), .n273(n273), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .n2578(n2578), .freeprecess_minus(freeprecess_minus), 
            .freeprecess_plus(freeprecess_plus), .n2460(n2460)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(69[12:274])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 m1_lut (.Z(n2578)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    clocks clocks (.GND_net(GND_net), .clk_2M5_N_30(clk_2M5_N_30), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(67[9:98])
    
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
    
    FD1S3AX state_i0 (.D(state_1__N_244[0]), .CK(sampled_modebutton), .Q(SMstate[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i0.GSR = "ENABLED";
    LUT4 i208_2_lut (.A(SMstate[0]), .B(SMstate[1]), .Z(state_1__N_244_c[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(40[14:26])
    defparam i208_2_lut.init = 16'h6666;
    FD1S3AX state_i1 (.D(state_1__N_244_c[1]), .CK(sampled_modebutton), 
            .Q(SMstate[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=77, LSE_LLINE=71, LSE_RLINE=71 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(38[9] 41[7])
    defparam state_i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (GND_net, debounce_pulse, clk_2M5, slow_pulse, 
            fast_pulse) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output debounce_pulse;
    input clk_2M5;
    output slow_pulse;
    output fast_pulse;
    
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(35[7:21])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2182;
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n2183, n2181, n2180, n2179, n2178, n2177, n2176, n2175, 
        n2185, n2184;
    
    CCU2D count_141_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2182), .COUT(n2183), .S0(n97[15]), .S1(n97[16]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_17.INIT0 = 16'hfaaa;
    defparam count_141_add_4_17.INIT1 = 16'hfaaa;
    defparam count_141_add_4_17.INJECT1_0 = "NO";
    defparam count_141_add_4_17.INJECT1_1 = "NO";
    CCU2D count_141_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2181), .COUT(n2182), .S0(n97[13]), .S1(n97[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_15.INIT0 = 16'hfaaa;
    defparam count_141_add_4_15.INIT1 = 16'hfaaa;
    defparam count_141_add_4_15.INJECT1_0 = "NO";
    defparam count_141_add_4_15.INJECT1_1 = "NO";
    CCU2D count_141_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2180), .COUT(n2181), .S0(n97[11]), .S1(n97[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_13.INIT0 = 16'hfaaa;
    defparam count_141_add_4_13.INIT1 = 16'hfaaa;
    defparam count_141_add_4_13.INJECT1_0 = "NO";
    defparam count_141_add_4_13.INJECT1_1 = "NO";
    CCU2D count_141_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2179), .COUT(n2180), .S0(n97[9]), .S1(n97[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_11.INIT0 = 16'hfaaa;
    defparam count_141_add_4_11.INIT1 = 16'hfaaa;
    defparam count_141_add_4_11.INJECT1_0 = "NO";
    defparam count_141_add_4_11.INJECT1_1 = "NO";
    CCU2D count_141_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2178), .COUT(n2179), .S0(n97[7]), .S1(n97[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_9.INIT0 = 16'hfaaa;
    defparam count_141_add_4_9.INIT1 = 16'hfaaa;
    defparam count_141_add_4_9.INJECT1_0 = "NO";
    defparam count_141_add_4_9.INJECT1_1 = "NO";
    FD1S3AX count_141__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i0.GSR = "ENABLED";
    CCU2D count_141_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2177), .COUT(n2178), .S0(n97[5]), .S1(n97[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_7.INIT0 = 16'hfaaa;
    defparam count_141_add_4_7.INIT1 = 16'hfaaa;
    defparam count_141_add_4_7.INJECT1_0 = "NO";
    defparam count_141_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_141__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i22.GSR = "ENABLED";
    FD1S3AX count_141__i21 (.D(n97[21]), .CK(clk_2M5), .Q(n170[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i21.GSR = "ENABLED";
    FD1S3AX count_141__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i20.GSR = "ENABLED";
    FD1S3AX count_141__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i19.GSR = "ENABLED";
    FD1S3AX count_141__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i18.GSR = "ENABLED";
    FD1S3AX count_141__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i17.GSR = "ENABLED";
    FD1S3AX count_141__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i16.GSR = "ENABLED";
    FD1S3AX count_141__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i15.GSR = "ENABLED";
    FD1S3AX count_141__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i14.GSR = "ENABLED";
    FD1S3AX count_141__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i13.GSR = "ENABLED";
    FD1S3AX count_141__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i12.GSR = "ENABLED";
    FD1S3AX count_141__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i11.GSR = "ENABLED";
    FD1S3AX count_141__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i10.GSR = "ENABLED";
    FD1S3AX count_141__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i9.GSR = "ENABLED";
    FD1S3AX count_141__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i8.GSR = "ENABLED";
    FD1S3AX count_141__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i7.GSR = "ENABLED";
    FD1S3AX count_141__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i6.GSR = "ENABLED";
    FD1S3AX count_141__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i5.GSR = "ENABLED";
    FD1S3AX count_141__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i4.GSR = "ENABLED";
    FD1S3AX count_141__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i3.GSR = "ENABLED";
    FD1S3AX count_141__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i2.GSR = "ENABLED";
    FD1S3AX count_141__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141__i1.GSR = "ENABLED";
    CCU2D count_141_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2176), .COUT(n2177), .S0(n97[3]), .S1(n97[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_5.INIT0 = 16'hfaaa;
    defparam count_141_add_4_5.INIT1 = 16'hfaaa;
    defparam count_141_add_4_5.INJECT1_0 = "NO";
    defparam count_141_add_4_5.INJECT1_1 = "NO";
    CCU2D count_141_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2175), .COUT(n2176), .S0(n97[1]), .S1(n97[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_3.INIT0 = 16'hfaaa;
    defparam count_141_add_4_3.INIT1 = 16'hfaaa;
    defparam count_141_add_4_3.INJECT1_0 = "NO";
    defparam count_141_add_4_3.INJECT1_1 = "NO";
    CCU2D count_141_add_4_23 (.A0(n170[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2185), .S0(n97[21]), .S1(n97[22]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_23.INIT0 = 16'hfaaa;
    defparam count_141_add_4_23.INIT1 = 16'hfaaa;
    defparam count_141_add_4_23.INJECT1_0 = "NO";
    defparam count_141_add_4_23.INJECT1_1 = "NO";
    CCU2D count_141_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2184), .COUT(n2185), .S0(n97[19]), .S1(n97[20]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_21.INIT0 = 16'hfaaa;
    defparam count_141_add_4_21.INIT1 = 16'hfaaa;
    defparam count_141_add_4_21.INJECT1_0 = "NO";
    defparam count_141_add_4_21.INJECT1_1 = "NO";
    CCU2D count_141_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2175), .S1(n97[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
    defparam count_141_add_4_1.INIT0 = 16'hF000;
    defparam count_141_add_4_1.INIT1 = 16'h0555;
    defparam count_141_add_4_1.INJECT1_0 = "NO";
    defparam count_141_add_4_1.INJECT1_1 = "NO";
    CCU2D count_141_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2183), .COUT(n2184), .S0(n97[17]), .S1(n97[18]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(24[12:24])
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
// Verilog Description of module POPtimers
//

module POPtimers (clk_2M5_N_30, GND_net, MW, load_defaults, VCC_net, 
            clk_2M5, SMstate, probestarted, sample_output_N_16, n273, 
            pieovertwo_minus, pieovertwo_plus, n2578, freeprecess_minus, 
            freeprecess_plus, n2460) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5_N_30;
    input GND_net;
    output MW;
    input load_defaults;
    input VCC_net;
    input clk_2M5;
    input [1:0]SMstate;
    output probestarted;
    output sample_output_N_16;
    output n273;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input n2578;
    input freeprecess_minus;
    input freeprecess_plus;
    output n2460;
    
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    wire [15:0]gatedcount;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire [15:0]count;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[19:24])
    
    wire n2259;
    wire [13:0]n1287;
    wire [15:0]n1105;
    wire [15:0]Endofopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(42[19:37])
    
    wire n2260, n2226;
    wire [13:0]n1304;
    wire [15:0]n1947;
    
    wire n2227, n2189;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[26:46])
    wire [15:0]Endof1stMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[19:34])
    
    wire n2190, n2199;
    wire [15:0]Endofprobepulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(43[19:34])
    wire [15:0]Resetandrepeat;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[19:33])
    
    wire n2200, n2258, n2225, n2257, n2256, n2224;
    wire [13:0]n1237;
    
    wire n1427, n1428, n1429;
    wire [15:0]Endof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:34])
    
    wire n2255, n1419, n1420, n1421, n1757, MW_N_38, n197, n2459, 
        pi2started, n235, n2551, n2261, n2173;
    wire [13:0]n1253;
    
    wire n2174, loop, counterreset, n2207;
    wire [15:0]n2;
    wire [15:0]Startopticalsample;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:37])
    
    wire n2208, n2253;
    wire [15:0]AdjustableFreePrecession;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[48:72])
    
    wire n2216, n2188, n2206, n2262, n2252, n2251, n2250, n2205, 
        n2215, n2204, n2235, n2236, n2214, n2203, n2234, n2223, 
        n1435, n1436, n1437, n1431, n1432, n1433, n2213, n2187, 
        n2249, n2248, n2247;
    wire [15:0]count_15__N_111;
    
    wire n2550, n2222, n1443, n1444, n1445, n1439, n1440, n1441, 
        n2233, n2212, n2232, n2221, n1451, n1452, n1453, n1447, 
        n1448, n1449, n2202, n2230, n2220, n1459, n1460, n1461, 
        n1455, n1456, n1457, n2229, n2211, n2210, n2228, n2219, 
        n1467, n1468, n1469, n1463, n1464, n1465, n2198, n2197, 
        n2172, n2196, n2218, n1475, n1476, n1477, n1471, n1472, 
        n1473, n2195, n2169, n2170, n2201, n2194, n2209, n2193, 
        n2171, n2217, freeprecess_minus_enable_5, n1484, n1485, freeprecess_minus_enable_6, 
        n1480, n1481, n2168, n2192, n2191, n2238, n2237, n2349, 
        n2350, n2351, n2352, n2353, n2354, n2355, n2356;
    wire [15:0]n2_adj_246;
    
    wire n2357, n2358, n2359, n2360, n2361, n2362, n2363, n2364, 
        n2365, n2366, n2367, n2368, n2369, n2370, n2371;
    wire [15:0]n2_adj_247;
    
    wire freeprecess_minus_enable_4, n1424, n1425;
    wire [15:0]Startof2ndMWpulse;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:36])
    
    wire n2372, n2373, n2374, n2375, n2376, n2377, n2378, n2379, 
        n2380, n2381, n2382, n2383, n2384, n2385, n2386, n2388, 
        n2389, n2390, n2391, n2392, n2393, n2394, n2395;
    
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_30), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    CCU2D add_203_11 (.A0(n1287[7]), .B0(n1105[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[8]), .B1(n1105[10]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2259), .COUT(n2260), .S0(Endofopticalsample[9]), .S1(Endofopticalsample[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_11.INIT0 = 16'h5666;
    defparam add_203_11.INIT1 = 16'h5666;
    defparam add_203_11.INJECT1_0 = "NO";
    defparam add_203_11.INJECT1_1 = "NO";
    CCU2D add_789_5 (.A0(n1304[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2226), 
          .COUT(n2227), .S0(n1947[6]), .S1(n1947[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_5.INIT0 = 16'h0555;
    defparam add_789_5.INIT1 = 16'hfaaa;
    defparam add_789_5.INJECT1_0 = "NO";
    defparam add_789_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2189), .COUT(n2190), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2199), .COUT(n2200), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D add_203_9 (.A0(n1287[5]), .B0(n1105[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[6]), .B1(n1105[8]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2258), .COUT(n2259), .S0(Endofopticalsample[7]), .S1(Endofopticalsample[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_9.INIT0 = 16'h5666;
    defparam add_203_9.INIT1 = 16'h5666;
    defparam add_203_9.INJECT1_0 = "NO";
    defparam add_203_9.INJECT1_1 = "NO";
    CCU2D add_789_3 (.A0(n1304[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2225), 
          .COUT(n2226), .S0(n1947[4]), .S1(n1947[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_3.INIT0 = 16'h0555;
    defparam add_789_3.INIT1 = 16'h0555;
    defparam add_789_3.INJECT1_0 = "NO";
    defparam add_789_3.INJECT1_1 = "NO";
    CCU2D add_789_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2225), 
          .S1(n1947[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_1.INIT0 = 16'hF000;
    defparam add_789_1.INIT1 = 16'h0555;
    defparam add_789_1.INJECT1_0 = "NO";
    defparam add_789_1.INJECT1_1 = "NO";
    CCU2D add_203_7 (.A0(n1287[3]), .B0(n1105[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[4]), .B1(n1105[6]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2257), .COUT(n2258), .S0(Endofopticalsample[5]), .S1(Endofopticalsample[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_7.INIT0 = 16'h5666;
    defparam add_203_7.INIT1 = 16'h5666;
    defparam add_203_7.INJECT1_0 = "NO";
    defparam add_203_7.INJECT1_1 = "NO";
    CCU2D add_203_5 (.A0(n1287[1]), .B0(n1105[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[2]), .B1(n1105[4]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2256), .COUT(n2257), .S0(Endofopticalsample[3]), .S1(Endofopticalsample[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_5.INIT0 = 16'h5666;
    defparam add_203_5.INIT1 = 16'h5666;
    defparam add_203_5.INJECT1_0 = "NO";
    defparam add_203_5.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_30), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    CCU2D add_195_17 (.A0(n1237[13]), .B0(n1427), .C0(n1428), .D0(n1429), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2224), 
          .S0(Endof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_17.INIT0 = 16'h596a;
    defparam add_195_17.INIT1 = 16'h0000;
    defparam add_195_17.INJECT1_0 = "NO";
    defparam add_195_17.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_30), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_203_3 (.A0(n1105[1]), .B0(n1419), .C0(n1420), .D0(n1421), 
          .A1(n1287[0]), .B1(n1105[2]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2255), .COUT(n2256), .S0(Endofopticalsample[1]), .S1(Endofopticalsample[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_3.INIT0 = 16'h596a;
    defparam add_203_3.INIT1 = 16'h5666;
    defparam add_203_3.INJECT1_0 = "NO";
    defparam add_203_3.INJECT1_1 = "NO";
    LUT4 MW_I_0_4_lut (.A(n1757), .B(MW_N_38), .C(n197), .D(n2459), 
         .Z(MW)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[9:62])
    defparam MW_I_0_4_lut.init = 16'hcfce;
    LUT4 pi2started_I_0_2_lut (.A(pi2started), .B(n235), .Z(MW_N_38)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(77[36:62])
    defparam pi2started_I_0_2_lut.init = 16'h2222;
    CCU2D add_203_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2551), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2255), 
          .S1(Endofopticalsample[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_1.INIT0 = 16'hF000;
    defparam add_203_1.INIT1 = 16'h0555;
    defparam add_203_1.INJECT1_0 = "NO";
    defparam add_203_1.INJECT1_1 = "NO";
    CCU2D add_203_13 (.A0(n1287[9]), .B0(n1105[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[10]), .B1(n1105[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2260), .COUT(n2261), .S0(Endofopticalsample[11]), .S1(Endofopticalsample[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_13.INIT0 = 16'h5666;
    defparam add_203_13.INIT1 = 16'h5666;
    defparam add_203_13.INJECT1_0 = "NO";
    defparam add_203_13.INJECT1_1 = "NO";
    CCU2D add_210_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2173), .COUT(n2174), .S0(n1253[11]), .S1(n1253[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_13.INIT0 = 16'hfaaa;
    defparam add_210_13.INIT1 = 16'hfaaa;
    defparam add_210_13.INJECT1_0 = "NO";
    defparam add_210_13.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_30), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_30), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(65[19:37])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    CCU2D add_803_13 (.A0(n2[11]), .B0(n1253[9]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[12]), .B1(n1253[10]), .C1(GND_net), .D1(GND_net), .CIN(n2207), 
          .COUT(n2208), .S0(Startopticalsample[11]), .S1(Startopticalsample[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_13.INIT0 = 16'h5666;
    defparam add_803_13.INIT1 = 16'h5666;
    defparam add_803_13.INJECT1_0 = "NO";
    defparam add_803_13.INJECT1_1 = "NO";
    CCU2D add_213_15 (.A0(AdjustableFreePrecession[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2253), .S0(n1105[14]), .S1(n1105[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_15.INIT0 = 16'h5aaa;
    defparam add_213_15.INIT1 = 16'h5aaa;
    defparam add_213_15.INJECT1_0 = "NO";
    defparam add_213_15.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_30), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_30), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_30), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_30), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_30), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_30), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_30), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_30), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_30), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_30), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_30), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=69, LSE_RLINE=69 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(70[8] 72[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    CCU2D add_214_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2216), .S0(n1304[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_15.INIT0 = 16'hfaaa;
    defparam add_214_15.INIT1 = 16'h0000;
    defparam add_214_15.INJECT1_0 = "NO";
    defparam add_214_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2188), .COUT(n2189), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_803_11 (.A0(n2[9]), .B0(n1253[7]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[10]), .B1(n1253[8]), .C1(GND_net), .D1(GND_net), .CIN(n2206), 
          .COUT(n2207), .S0(Startopticalsample[9]), .S1(Startopticalsample[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_11.INIT0 = 16'h5666;
    defparam add_803_11.INIT1 = 16'h5666;
    defparam add_803_11.INJECT1_0 = "NO";
    defparam add_803_11.INJECT1_1 = "NO";
    CCU2D add_203_17 (.A0(n1287[13]), .B0(n1105[15]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2262), 
          .S0(Endofopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_17.INIT0 = 16'h5666;
    defparam add_203_17.INIT1 = 16'h0000;
    defparam add_203_17.INJECT1_0 = "NO";
    defparam add_203_17.INJECT1_1 = "NO";
    CCU2D add_203_15 (.A0(n1287[11]), .B0(n1105[13]), .C0(GND_net), .D0(GND_net), 
          .A1(n1287[12]), .B1(n1105[14]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2261), .COUT(n2262), .S0(Endofopticalsample[13]), .S1(Endofopticalsample[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_203_15.INIT0 = 16'h5666;
    defparam add_203_15.INIT1 = 16'h5666;
    defparam add_203_15.INJECT1_0 = "NO";
    defparam add_203_15.INJECT1_1 = "NO";
    CCU2D add_213_13 (.A0(AdjustableFreePrecession[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2252), .COUT(n2253), .S0(n1105[12]), 
          .S1(n1105[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_13.INIT0 = 16'h5aaa;
    defparam add_213_13.INIT1 = 16'h5aaa;
    defparam add_213_13.INJECT1_0 = "NO";
    defparam add_213_13.INJECT1_1 = "NO";
    CCU2D add_213_11 (.A0(AdjustableFreePrecession[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2251), .COUT(n2252), .S0(n1105[10]), 
          .S1(n1105[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_11.INIT0 = 16'h5aaa;
    defparam add_213_11.INIT1 = 16'h5aaa;
    defparam add_213_11.INJECT1_0 = "NO";
    defparam add_213_11.INJECT1_1 = "NO";
    CCU2D add_213_9 (.A0(AdjustableFreePrecession[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2250), .COUT(n2251), .S0(n1105[8]), 
          .S1(n1105[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_9.INIT0 = 16'h5aaa;
    defparam add_213_9.INIT1 = 16'h5aaa;
    defparam add_213_9.INJECT1_0 = "NO";
    defparam add_213_9.INJECT1_1 = "NO";
    CCU2D add_803_9 (.A0(n2[7]), .B0(n1253[5]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[8]), .B1(n1253[6]), .C1(GND_net), .D1(GND_net), .CIN(n2205), 
          .COUT(n2206), .S0(Startopticalsample[7]), .S1(Startopticalsample[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_9.INIT0 = 16'h5666;
    defparam add_803_9.INIT1 = 16'h5666;
    defparam add_803_9.INJECT1_0 = "NO";
    defparam add_803_9.INJECT1_1 = "NO";
    CCU2D add_214_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2215), .COUT(n2216), .S0(n1304[11]), .S1(n1304[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_13.INIT0 = 16'hfaaa;
    defparam add_214_13.INIT1 = 16'hfaaa;
    defparam add_214_13.INJECT1_0 = "NO";
    defparam add_214_13.INJECT1_1 = "NO";
    CCU2D add_803_7 (.A0(n2[5]), .B0(n1253[3]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[6]), .B1(n1253[4]), .C1(GND_net), .D1(GND_net), .CIN(n2204), 
          .COUT(n2205), .S0(Startopticalsample[5]), .S1(Startopticalsample[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_7.INIT0 = 16'h5666;
    defparam add_803_7.INIT1 = 16'h5666;
    defparam add_803_7.INJECT1_0 = "NO";
    defparam add_803_7.INJECT1_1 = "NO";
    CCU2D add_212_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2235), .COUT(n2236), .S0(n1287[7]), .S1(n1287[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_9.INIT0 = 16'hfaaa;
    defparam add_212_9.INIT1 = 16'h0555;
    defparam add_212_9.INJECT1_0 = "NO";
    defparam add_212_9.INJECT1_1 = "NO";
    CCU2D add_214_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2214), .COUT(n2215), .S0(n1304[9]), .S1(n1304[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_11.INIT0 = 16'hfaaa;
    defparam add_214_11.INIT1 = 16'hfaaa;
    defparam add_214_11.INJECT1_0 = "NO";
    defparam add_214_11.INJECT1_1 = "NO";
    CCU2D add_803_5 (.A0(n2[3]), .B0(n1253[1]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[4]), .B1(n1253[2]), .C1(GND_net), .D1(GND_net), .CIN(n2203), 
          .COUT(n2204), .S0(Startopticalsample[3]), .S1(Startopticalsample[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_5.INIT0 = 16'h5666;
    defparam add_803_5.INIT1 = 16'h5666;
    defparam add_803_5.INJECT1_0 = "NO";
    defparam add_803_5.INJECT1_1 = "NO";
    CCU2D add_212_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2234), .COUT(n2235), .S0(n1287[5]), .S1(n1287[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_7.INIT0 = 16'hfaaa;
    defparam add_212_7.INIT1 = 16'hfaaa;
    defparam add_212_7.INJECT1_0 = "NO";
    defparam add_212_7.INJECT1_1 = "NO";
    CCU2D add_195_15 (.A0(n1237[11]), .B0(n1435), .C0(n1436), .D0(n1437), 
          .A1(n1237[12]), .B1(n1431), .C1(n1432), .D1(n1433), .CIN(n2223), 
          .COUT(n2224), .S0(Endof2ndMWpulse[13]), .S1(Endof2ndMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_15.INIT0 = 16'h596a;
    defparam add_195_15.INIT1 = 16'h596a;
    defparam add_195_15.INJECT1_0 = "NO";
    defparam add_195_15.INJECT1_1 = "NO";
    CCU2D add_214_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2213), .COUT(n2214), .S0(n1304[7]), .S1(n1304[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_9.INIT0 = 16'hfaaa;
    defparam add_214_9.INIT1 = 16'h0555;
    defparam add_214_9.INJECT1_0 = "NO";
    defparam add_214_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2187), .COUT(n2188), .S0(Endof1stMWpulse[1]), 
          .S1(Endof1stMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_213_7 (.A0(AdjustableFreePrecession[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2249), .COUT(n2250), .S0(n1105[6]), 
          .S1(n1105[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_7.INIT0 = 16'h5555;
    defparam add_213_7.INIT1 = 16'h5555;
    defparam add_213_7.INJECT1_0 = "NO";
    defparam add_213_7.INJECT1_1 = "NO";
    CCU2D add_213_5 (.A0(AdjustableFreePrecession[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2248), .COUT(n2249), .S0(n1105[4]), 
          .S1(n1105[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_5.INIT0 = 16'h5555;
    defparam add_213_5.INIT1 = 16'h5555;
    defparam add_213_5.INJECT1_0 = "NO";
    defparam add_213_5.INJECT1_1 = "NO";
    CCU2D add_213_3 (.A0(count_15__N_111[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2247), .COUT(n2248), .S0(n1105[2]), 
          .S1(n1105[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_3.INIT0 = 16'h5aaa;
    defparam add_213_3.INIT1 = 16'h5555;
    defparam add_213_3.INJECT1_0 = "NO";
    defparam add_213_3.INJECT1_1 = "NO";
    CCU2D add_213_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2550), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2247), 
          .S1(n1105[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_213_1.INIT0 = 16'hF000;
    defparam add_213_1.INIT1 = 16'h5555;
    defparam add_213_1.INJECT1_0 = "NO";
    defparam add_213_1.INJECT1_1 = "NO";
    CCU2D add_195_13 (.A0(n1237[9]), .B0(n1443), .C0(n1444), .D0(n1445), 
          .A1(n1237[10]), .B1(n1439), .C1(n1440), .D1(n1441), .CIN(n2222), 
          .COUT(n2223), .S0(Endof2ndMWpulse[11]), .S1(Endof2ndMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_13.INIT0 = 16'h596a;
    defparam add_195_13.INIT1 = 16'h596a;
    defparam add_195_13.INJECT1_0 = "NO";
    defparam add_195_13.INJECT1_1 = "NO";
    CCU2D add_212_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2233), .COUT(n2234), .S0(n1287[3]), .S1(n1287[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_5.INIT0 = 16'h0555;
    defparam add_212_5.INIT1 = 16'h0555;
    defparam add_212_5.INJECT1_0 = "NO";
    defparam add_212_5.INJECT1_1 = "NO";
    CCU2D add_214_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2212), .COUT(n2213), .S0(n1304[5]), .S1(n1304[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_7.INIT0 = 16'hfaaa;
    defparam add_214_7.INIT1 = 16'hfaaa;
    defparam add_214_7.INJECT1_0 = "NO";
    defparam add_214_7.INJECT1_1 = "NO";
    CCU2D add_212_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2232), .COUT(n2233), .S0(n1287[1]), .S1(n1287[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_3.INIT0 = 16'hfaaa;
    defparam add_212_3.INIT1 = 16'hfaaa;
    defparam add_212_3.INJECT1_0 = "NO";
    defparam add_212_3.INJECT1_1 = "NO";
    CCU2D add_195_11 (.A0(n1237[7]), .B0(n1451), .C0(n1452), .D0(n1453), 
          .A1(n1237[8]), .B1(n1447), .C1(n1448), .D1(n1449), .CIN(n2221), 
          .COUT(n2222), .S0(Endof2ndMWpulse[9]), .S1(Endof2ndMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_11.INIT0 = 16'h596a;
    defparam add_195_11.INIT1 = 16'h596a;
    defparam add_195_11.INJECT1_0 = "NO";
    defparam add_195_11.INJECT1_1 = "NO";
    CCU2D add_803_3 (.A0(n2[1]), .B0(n1419), .C0(n1420), .D0(n1421), 
          .A1(n2[2]), .B1(n1253[0]), .C1(GND_net), .D1(GND_net), .CIN(n2202), 
          .COUT(n2203), .S0(Startopticalsample[1]), .S1(Startopticalsample[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_3.INIT0 = 16'h596a;
    defparam add_803_3.INIT1 = 16'h5666;
    defparam add_803_3.INJECT1_0 = "NO";
    defparam add_803_3.INJECT1_1 = "NO";
    CCU2D add_212_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2232), .S1(n1287[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_1.INIT0 = 16'hF000;
    defparam add_212_1.INIT1 = 16'h0555;
    defparam add_212_1.INJECT1_0 = "NO";
    defparam add_212_1.INJECT1_1 = "NO";
    CCU2D add_789_13 (.A0(n1304[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2230), .S0(n1947[14]), .S1(n1947[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_13.INIT0 = 16'hfaaa;
    defparam add_789_13.INIT1 = 16'hfaaa;
    defparam add_789_13.INJECT1_0 = "NO";
    defparam add_789_13.INJECT1_1 = "NO";
    CCU2D add_195_9 (.A0(n1237[5]), .B0(n1459), .C0(n1460), .D0(n1461), 
          .A1(n1237[6]), .B1(n1455), .C1(n1456), .D1(n1457), .CIN(n2220), 
          .COUT(n2221), .S0(Endof2ndMWpulse[7]), .S1(Endof2ndMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_9.INIT0 = 16'h596a;
    defparam add_195_9.INIT1 = 16'h596a;
    defparam add_195_9.INJECT1_0 = "NO";
    defparam add_195_9.INJECT1_1 = "NO";
    CCU2D add_789_11 (.A0(n1304[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2229), .COUT(n2230), .S0(n1947[12]), .S1(n1947[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_11.INIT0 = 16'hfaaa;
    defparam add_789_11.INIT1 = 16'hfaaa;
    defparam add_789_11.INJECT1_0 = "NO";
    defparam add_789_11.INJECT1_1 = "NO";
    CCU2D add_214_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2211), .COUT(n2212), .S0(n1304[3]), .S1(n1304[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_5.INIT0 = 16'h0555;
    defparam add_214_5.INIT1 = 16'h0555;
    defparam add_214_5.INJECT1_0 = "NO";
    defparam add_214_5.INJECT1_1 = "NO";
    CCU2D add_214_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2210), .COUT(n2211), .S0(n1304[1]), .S1(n1304[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_3.INIT0 = 16'hfaaa;
    defparam add_214_3.INIT1 = 16'hfaaa;
    defparam add_214_3.INJECT1_0 = "NO";
    defparam add_214_3.INJECT1_1 = "NO";
    CCU2D add_789_9 (.A0(n1304[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2228), 
          .COUT(n2229), .S0(n1947[10]), .S1(n1947[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_9.INIT0 = 16'hfaaa;
    defparam add_789_9.INIT1 = 16'hfaaa;
    defparam add_789_9.INJECT1_0 = "NO";
    defparam add_789_9.INJECT1_1 = "NO";
    CCU2D add_195_7 (.A0(n1237[3]), .B0(n1467), .C0(n1468), .D0(n1469), 
          .A1(n1237[4]), .B1(n1463), .C1(n1464), .D1(n1465), .CIN(n2219), 
          .COUT(n2220), .S0(Endof2ndMWpulse[5]), .S1(Endof2ndMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_7.INIT0 = 16'h596a;
    defparam add_195_7.INIT1 = 16'h596a;
    defparam add_195_7.INJECT1_0 = "NO";
    defparam add_195_7.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2198), .COUT(n2199), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2197), .COUT(n2198), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2187), .S1(Endof1stMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_803_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2202), 
          .S1(Startopticalsample[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_1.INIT0 = 16'hF000;
    defparam add_803_1.INIT1 = 16'h5555;
    defparam add_803_1.INJECT1_0 = "NO";
    defparam add_803_1.INJECT1_1 = "NO";
    CCU2D add_210_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2172), .COUT(n2173), .S0(n1253[9]), .S1(n1253[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_11.INIT0 = 16'hfaaa;
    defparam add_210_11.INIT1 = 16'hfaaa;
    defparam add_210_11.INJECT1_0 = "NO";
    defparam add_210_11.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2196), .COUT(n2197), .S0(Resetandrepeat[5]), 
          .S1(Resetandrepeat[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_789_7 (.A0(n1304[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n1304[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2227), 
          .COUT(n2228), .S0(n1947[8]), .S1(n1947[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_789_7.INIT0 = 16'h0555;
    defparam add_789_7.INIT1 = 16'hfaaa;
    defparam add_789_7.INJECT1_0 = "NO";
    defparam add_789_7.INJECT1_1 = "NO";
    CCU2D add_195_5 (.A0(n1237[1]), .B0(n1475), .C0(n1476), .D0(n1477), 
          .A1(n1237[2]), .B1(n1471), .C1(n1472), .D1(n1473), .CIN(n2218), 
          .COUT(n2219), .S0(Endof2ndMWpulse[3]), .S1(Endof2ndMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_5.INIT0 = 16'h596a;
    defparam add_195_5.INIT1 = 16'h596a;
    defparam add_195_5.INJECT1_0 = "NO";
    defparam add_195_5.INJECT1_1 = "NO";
    CCU2D add_214_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2210), .S1(n1304[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_214_1.INIT0 = 16'hF000;
    defparam add_214_1.INIT1 = 16'h0555;
    defparam add_214_1.INJECT1_0 = "NO";
    defparam add_214_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2195), .COUT(n2196), .S0(Resetandrepeat[3]), 
          .S1(Resetandrepeat[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_210_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2169), .COUT(n2170), .S0(n1253[3]), .S1(n1253[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_5.INIT0 = 16'h0555;
    defparam add_210_5.INIT1 = 16'h0555;
    defparam add_210_5.INJECT1_0 = "NO";
    defparam add_210_5.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2195), .S1(Resetandrepeat[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_15 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2201), .S0(Resetandrepeat[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_15.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2194), .S0(Endof1stMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_17.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_17.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_17.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_17.INJECT1_1 = "NO";
    CCU2D add_803_17 (.A0(n2[15]), .B0(n1253[13]), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2209), 
          .S0(Startopticalsample[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_17.INIT0 = 16'h5666;
    defparam add_803_17.INIT1 = 16'h0000;
    defparam add_803_17.INJECT1_0 = "NO";
    defparam add_803_17.INJECT1_1 = "NO";
    CCU2D add_803_15 (.A0(n2[13]), .B0(n1253[11]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[14]), .B1(n1253[12]), .C1(GND_net), .D1(GND_net), .CIN(n2208), 
          .COUT(n2209), .S0(Startopticalsample[13]), .S1(Startopticalsample[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_803_15.INIT0 = 16'h5666;
    defparam add_803_15.INIT1 = 16'h5666;
    defparam add_803_15.INJECT1_0 = "NO";
    defparam add_803_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2193), .COUT(n2194), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    CCU2D add_210_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2171), .COUT(n2172), .S0(n1253[7]), .S1(n1253[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_9.INIT0 = 16'hfaaa;
    defparam add_210_9.INIT1 = 16'h0555;
    defparam add_210_9.INJECT1_0 = "NO";
    defparam add_210_9.INJECT1_1 = "NO";
    CCU2D add_195_3 (.A0(AdjustablePieOverTwo[0]), .B0(freeprecess_minus_enable_5), 
          .C0(n1484), .D0(n1485), .A1(n1237[0]), .B1(freeprecess_minus_enable_6), 
          .C1(n1480), .D1(n1481), .CIN(n2217), .COUT(n2218), .S0(Endof2ndMWpulse[1]), 
          .S1(Endof2ndMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_3.INIT0 = 16'h596a;
    defparam add_195_3.INIT1 = 16'h596a;
    defparam add_195_3.INJECT1_0 = "NO";
    defparam add_195_3.INJECT1_1 = "NO";
    CCU2D add_210_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2168), .COUT(n2169), .S0(n1253[1]), .S1(n1253[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_3.INIT0 = 16'hfaaa;
    defparam add_210_3.INIT1 = 16'hfaaa;
    defparam add_210_3.INJECT1_0 = "NO";
    defparam add_210_3.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_13 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2200), .COUT(n2201), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(44[36:61])
    defparam Endofprobepulse_15__I_0_13.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_13.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D add_210_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2174), .S0(n1253[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_15.INIT0 = 16'hfaaa;
    defparam add_210_15.INIT1 = 16'h0000;
    defparam add_210_15.INJECT1_0 = "NO";
    defparam add_210_15.INJECT1_1 = "NO";
    CCU2D add_210_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2170), .COUT(n2171), .S0(n1253[5]), .S1(n1253[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_7.INIT0 = 16'hfaaa;
    defparam add_210_7.INIT1 = 16'hfaaa;
    defparam add_210_7.INJECT1_0 = "NO";
    defparam add_210_7.INJECT1_1 = "NO";
    CCU2D add_195_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2551), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2217), 
          .S1(Endof2ndMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_195_1.INIT0 = 16'hF000;
    defparam add_195_1.INIT1 = 16'h0555;
    defparam add_195_1.INJECT1_0 = "NO";
    defparam add_195_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2192), .COUT(n2193), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2191), .COUT(n2192), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D add_210_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2168), .S1(n1253[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_210_1.INIT0 = 16'hF000;
    defparam add_210_1.INIT1 = 16'h0555;
    defparam add_210_1.INJECT1_0 = "NO";
    defparam add_210_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2190), .COUT(n2191), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D add_212_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2238), .S0(n1287[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_15.INIT0 = 16'hfaaa;
    defparam add_212_15.INIT1 = 16'h0000;
    defparam add_212_15.INJECT1_0 = "NO";
    defparam add_212_15.INJECT1_1 = "NO";
    CCU2D add_212_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2237), .COUT(n2238), .S0(n1287[11]), .S1(n1287[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_13.INIT0 = 16'hfaaa;
    defparam add_212_13.INIT1 = 16'hfaaa;
    defparam add_212_13.INJECT1_0 = "NO";
    defparam add_212_13.INJECT1_1 = "NO";
    CCU2D add_212_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2236), .COUT(n2237), .S0(n1287[9]), .S1(n1287[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_212_11.INIT0 = 16'hfaaa;
    defparam add_212_11.INIT1 = 16'hfaaa;
    defparam add_212_11.INJECT1_0 = "NO";
    defparam add_212_11.INJECT1_1 = "NO";
    CCU2D add_209_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2349), .S1(n1237[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_1.INIT0 = 16'hF000;
    defparam add_209_1.INIT1 = 16'h0555;
    defparam add_209_1.INJECT1_0 = "NO";
    defparam add_209_1.INJECT1_1 = "NO";
    CCU2D add_209_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2349), .COUT(n2350), .S0(n1237[1]), .S1(n1237[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_3.INIT0 = 16'hfaaa;
    defparam add_209_3.INIT1 = 16'hfaaa;
    defparam add_209_3.INJECT1_0 = "NO";
    defparam add_209_3.INJECT1_1 = "NO";
    CCU2D add_209_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2350), .COUT(n2351), .S0(n1237[3]), .S1(n1237[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_5.INIT0 = 16'h0555;
    defparam add_209_5.INIT1 = 16'h0555;
    defparam add_209_5.INJECT1_0 = "NO";
    defparam add_209_5.INJECT1_1 = "NO";
    CCU2D add_209_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2351), .COUT(n2352), .S0(n1237[5]), .S1(n1237[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_7.INIT0 = 16'hfaaa;
    defparam add_209_7.INIT1 = 16'hfaaa;
    defparam add_209_7.INJECT1_0 = "NO";
    defparam add_209_7.INJECT1_1 = "NO";
    CCU2D add_209_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2352), .COUT(n2353), .S0(n1237[7]), .S1(n1237[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_9.INIT0 = 16'hfaaa;
    defparam add_209_9.INIT1 = 16'h0555;
    defparam add_209_9.INJECT1_0 = "NO";
    defparam add_209_9.INJECT1_1 = "NO";
    CCU2D add_209_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2353), .COUT(n2354), .S0(n1237[9]), .S1(n1237[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_11.INIT0 = 16'hfaaa;
    defparam add_209_11.INIT1 = 16'hfaaa;
    defparam add_209_11.INJECT1_0 = "NO";
    defparam add_209_11.INJECT1_1 = "NO";
    CCU2D add_209_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2354), .COUT(n2355), .S0(n1237[11]), .S1(n1237[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_13.INIT0 = 16'hfaaa;
    defparam add_209_13.INIT1 = 16'hfaaa;
    defparam add_209_13.INJECT1_0 = "NO";
    defparam add_209_13.INJECT1_1 = "NO";
    CCU2D add_209_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2355), .S0(n1237[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_209_15.INIT0 = 16'hfaaa;
    defparam add_209_15.INIT1 = 16'h0000;
    defparam add_209_15.INJECT1_0 = "NO";
    defparam add_209_15.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2551), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2356), .S1(Resetandrepeat[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_1.INIT0 = 16'hF000;
    defparam add_199_801_add_1_1.INIT1 = 16'h0555;
    defparam add_199_801_add_1_1.INJECT1_0 = "NO";
    defparam add_199_801_add_1_1.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_3 (.A0(n2550), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_15__N_111[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2356), .COUT(n2357), .S0(n2_adj_246[1]), 
          .S1(n2_adj_246[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_3.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_3.INIT1 = 16'h0555;
    defparam add_199_801_add_1_3.INJECT1_0 = "NO";
    defparam add_199_801_add_1_3.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_5 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2357), .COUT(n2358), 
          .S0(n2_adj_246[3]), .S1(n2_adj_246[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_5.INIT0 = 16'h0555;
    defparam add_199_801_add_1_5.INIT1 = 16'h0555;
    defparam add_199_801_add_1_5.INJECT1_0 = "NO";
    defparam add_199_801_add_1_5.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_7 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2358), .COUT(n2359), 
          .S0(n2_adj_246[5]), .S1(n2_adj_246[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_7.INIT0 = 16'h0555;
    defparam add_199_801_add_1_7.INIT1 = 16'h0555;
    defparam add_199_801_add_1_7.INJECT1_0 = "NO";
    defparam add_199_801_add_1_7.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_9 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2359), .COUT(n2360), 
          .S0(n2_adj_246[7]), .S1(n2_adj_246[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_9.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_9.INIT1 = 16'hfaaa;
    defparam add_199_801_add_1_9.INJECT1_0 = "NO";
    defparam add_199_801_add_1_9.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_11 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2360), .COUT(n2361), 
          .S0(n2_adj_246[9]), .S1(n2_adj_246[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_11.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_11.INIT1 = 16'hfaaa;
    defparam add_199_801_add_1_11.INJECT1_0 = "NO";
    defparam add_199_801_add_1_11.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_13 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2361), .COUT(n2362), 
          .S0(n2_adj_246[11]), .S1(n2_adj_246[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_13.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_13.INIT1 = 16'hfaaa;
    defparam add_199_801_add_1_13.INJECT1_0 = "NO";
    defparam add_199_801_add_1_13.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_15 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2362), .COUT(n2363), 
          .S0(n2_adj_246[13]), .S1(n2_adj_246[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_15.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_15.INIT1 = 16'hfaaa;
    defparam add_199_801_add_1_15.INJECT1_0 = "NO";
    defparam add_199_801_add_1_15.INJECT1_1 = "NO";
    CCU2D add_199_801_add_1_17 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2363), .S0(n2_adj_246[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_199_801_add_1_17.INIT0 = 16'hfaaa;
    defparam add_199_801_add_1_17.INIT1 = 16'h0000;
    defparam add_199_801_add_1_17.INJECT1_0 = "NO";
    defparam add_199_801_add_1_17.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n2551), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2364), .S1(n2[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_1.INIT0 = 16'hF000;
    defparam add_193_799_add_1_1.INIT1 = 16'h0555;
    defparam add_193_799_add_1_1.INJECT1_0 = "NO";
    defparam add_193_799_add_1_1.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_3 (.A0(n2550), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count_15__N_111[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2364), .COUT(n2365), .S0(n2[1]), .S1(n2[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_3.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_3.INIT1 = 16'h0555;
    defparam add_193_799_add_1_3.INJECT1_0 = "NO";
    defparam add_193_799_add_1_3.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_5 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2365), .COUT(n2366), 
          .S0(n2[3]), .S1(n2[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_5.INIT0 = 16'h0555;
    defparam add_193_799_add_1_5.INIT1 = 16'h0555;
    defparam add_193_799_add_1_5.INJECT1_0 = "NO";
    defparam add_193_799_add_1_5.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_7 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2366), .COUT(n2367), 
          .S0(n2[5]), .S1(n2[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_7.INIT0 = 16'h0555;
    defparam add_193_799_add_1_7.INIT1 = 16'h0555;
    defparam add_193_799_add_1_7.INJECT1_0 = "NO";
    defparam add_193_799_add_1_7.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_9 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2367), .COUT(n2368), 
          .S0(n2[7]), .S1(n2[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_9.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_9.INIT1 = 16'hfaaa;
    defparam add_193_799_add_1_9.INJECT1_0 = "NO";
    defparam add_193_799_add_1_9.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_11 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2368), .COUT(n2369), 
          .S0(n2[9]), .S1(n2[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_11.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_11.INIT1 = 16'hfaaa;
    defparam add_193_799_add_1_11.INJECT1_0 = "NO";
    defparam add_193_799_add_1_11.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_13 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2369), .COUT(n2370), 
          .S0(n2[11]), .S1(n2[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_13.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_13.INIT1 = 16'hfaaa;
    defparam add_193_799_add_1_13.INJECT1_0 = "NO";
    defparam add_193_799_add_1_13.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_15 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2370), .COUT(n2371), 
          .S0(n2[13]), .S1(n2[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_15.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_15.INIT1 = 16'hfaaa;
    defparam add_193_799_add_1_15.INJECT1_0 = "NO";
    defparam add_193_799_add_1_15.INJECT1_1 = "NO";
    CCU2D add_193_799_add_1_17 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2371), .S0(n2[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_193_799_add_1_17.INIT0 = 16'hfaaa;
    defparam add_193_799_add_1_17.INIT1 = 16'h0000;
    defparam add_193_799_add_1_17.INJECT1_0 = "NO";
    defparam add_193_799_add_1_17.INJECT1_1 = "NO";
    CCU2D add_804_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2_adj_247[0]), .B1(freeprecess_minus_enable_4), .C1(n1424), 
          .D1(n1425), .COUT(n2372), .S1(Startof2ndMWpulse[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_1.INIT0 = 16'hF000;
    defparam add_804_1.INIT1 = 16'h596a;
    defparam add_804_1.INJECT1_0 = "NO";
    defparam add_804_1.INJECT1_1 = "NO";
    CCU2D add_804_3 (.A0(n2_adj_247[1]), .B0(freeprecess_minus_enable_5), 
          .C0(n1484), .D0(n1485), .A1(n2_adj_247[2]), .B1(freeprecess_minus_enable_6), 
          .C1(n1480), .D1(n1481), .CIN(n2372), .COUT(n2373), .S0(Startof2ndMWpulse[1]), 
          .S1(Startof2ndMWpulse[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_3.INIT0 = 16'h596a;
    defparam add_804_3.INIT1 = 16'h596a;
    defparam add_804_3.INJECT1_0 = "NO";
    defparam add_804_3.INJECT1_1 = "NO";
    CCU2D add_804_5 (.A0(n2_adj_247[3]), .B0(n1475), .C0(n1476), .D0(n1477), 
          .A1(n2_adj_247[4]), .B1(n1471), .C1(n1472), .D1(n1473), .CIN(n2373), 
          .COUT(n2374), .S0(Startof2ndMWpulse[3]), .S1(Startof2ndMWpulse[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_5.INIT0 = 16'h596a;
    defparam add_804_5.INIT1 = 16'h596a;
    defparam add_804_5.INJECT1_0 = "NO";
    defparam add_804_5.INJECT1_1 = "NO";
    CCU2D add_804_7 (.A0(n2_adj_247[5]), .B0(n1467), .C0(n1468), .D0(n1469), 
          .A1(n2_adj_247[6]), .B1(n1463), .C1(n1464), .D1(n1465), .CIN(n2374), 
          .COUT(n2375), .S0(Startof2ndMWpulse[5]), .S1(Startof2ndMWpulse[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_7.INIT0 = 16'h596a;
    defparam add_804_7.INIT1 = 16'h596a;
    defparam add_804_7.INJECT1_0 = "NO";
    defparam add_804_7.INJECT1_1 = "NO";
    CCU2D add_804_9 (.A0(n2_adj_247[7]), .B0(n1459), .C0(n1460), .D0(n1461), 
          .A1(n2_adj_247[8]), .B1(n1455), .C1(n1456), .D1(n1457), .CIN(n2375), 
          .COUT(n2376), .S0(Startof2ndMWpulse[7]), .S1(Startof2ndMWpulse[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_9.INIT0 = 16'h596a;
    defparam add_804_9.INIT1 = 16'h596a;
    defparam add_804_9.INJECT1_0 = "NO";
    defparam add_804_9.INJECT1_1 = "NO";
    CCU2D add_804_11 (.A0(n2_adj_247[9]), .B0(n1451), .C0(n1452), .D0(n1453), 
          .A1(n2_adj_247[10]), .B1(n1447), .C1(n1448), .D1(n1449), .CIN(n2376), 
          .COUT(n2377), .S0(Startof2ndMWpulse[9]), .S1(Startof2ndMWpulse[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_11.INIT0 = 16'h596a;
    defparam add_804_11.INIT1 = 16'h596a;
    defparam add_804_11.INJECT1_0 = "NO";
    defparam add_804_11.INJECT1_1 = "NO";
    CCU2D add_804_13 (.A0(n2_adj_247[11]), .B0(n1443), .C0(n1444), .D0(n1445), 
          .A1(n2_adj_247[12]), .B1(n1439), .C1(n1440), .D1(n1441), .CIN(n2377), 
          .COUT(n2378), .S0(Startof2ndMWpulse[11]), .S1(Startof2ndMWpulse[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_13.INIT0 = 16'h596a;
    defparam add_804_13.INIT1 = 16'h596a;
    defparam add_804_13.INJECT1_0 = "NO";
    defparam add_804_13.INJECT1_1 = "NO";
    CCU2D add_804_15 (.A0(n2_adj_247[13]), .B0(n1435), .C0(n1436), .D0(n1437), 
          .A1(n2_adj_247[14]), .B1(n1431), .C1(n1432), .D1(n1433), .CIN(n2378), 
          .COUT(n2379), .S0(Startof2ndMWpulse[13]), .S1(Startof2ndMWpulse[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_15.INIT0 = 16'h596a;
    defparam add_804_15.INIT1 = 16'h596a;
    defparam add_804_15.INJECT1_0 = "NO";
    defparam add_804_15.INJECT1_1 = "NO";
    CCU2D add_804_17 (.A0(n2_adj_247[15]), .B0(n1427), .C0(n1428), .D0(n1429), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2379), 
          .S0(Startof2ndMWpulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_804_17.INIT0 = 16'h596a;
    defparam add_804_17.INIT1 = 16'h0000;
    defparam add_804_17.INJECT1_0 = "NO";
    defparam add_804_17.INJECT1_1 = "NO";
    CCU2D add_805_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n2_adj_246[1]), .B1(n1419), .C1(n1420), .D1(n1421), .COUT(n2380), 
          .S1(Resetandrepeat[1]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_2.INIT0 = 16'hf000;
    defparam add_805_2.INIT1 = 16'h596a;
    defparam add_805_2.INJECT1_0 = "NO";
    defparam add_805_2.INJECT1_1 = "NO";
    CCU2D add_805_4 (.A0(n2_adj_246[2]), .B0(n1304[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[3]), .B1(n1947[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2380), .COUT(n2381), .S0(Endofprobepulse[2]), 
          .S1(Endofprobepulse[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_4.INIT0 = 16'h5666;
    defparam add_805_4.INIT1 = 16'h5666;
    defparam add_805_4.INJECT1_0 = "NO";
    defparam add_805_4.INJECT1_1 = "NO";
    CCU2D add_805_6 (.A0(n2_adj_246[4]), .B0(n1947[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[5]), .B1(n1947[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2381), .COUT(n2382), .S0(Endofprobepulse[4]), 
          .S1(Endofprobepulse[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_6.INIT0 = 16'h5666;
    defparam add_805_6.INIT1 = 16'h5666;
    defparam add_805_6.INJECT1_0 = "NO";
    defparam add_805_6.INJECT1_1 = "NO";
    CCU2D add_805_8 (.A0(n2_adj_246[6]), .B0(n1947[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[7]), .B1(n1947[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2382), .COUT(n2383), .S0(Endofprobepulse[6]), 
          .S1(Endofprobepulse[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_8.INIT0 = 16'h5666;
    defparam add_805_8.INIT1 = 16'h5666;
    defparam add_805_8.INJECT1_0 = "NO";
    defparam add_805_8.INJECT1_1 = "NO";
    CCU2D add_805_10 (.A0(n2_adj_246[8]), .B0(n1947[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[9]), .B1(n1947[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2383), .COUT(n2384), .S0(Endofprobepulse[8]), 
          .S1(Endofprobepulse[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_10.INIT0 = 16'h5666;
    defparam add_805_10.INIT1 = 16'h5666;
    defparam add_805_10.INJECT1_0 = "NO";
    defparam add_805_10.INJECT1_1 = "NO";
    CCU2D add_805_12 (.A0(n2_adj_246[10]), .B0(n1947[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[11]), .B1(n1947[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2384), .COUT(n2385), .S0(Endofprobepulse[10]), 
          .S1(Endofprobepulse[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_12.INIT0 = 16'h5666;
    defparam add_805_12.INIT1 = 16'h5666;
    defparam add_805_12.INJECT1_0 = "NO";
    defparam add_805_12.INJECT1_1 = "NO";
    CCU2D add_805_14 (.A0(n2_adj_246[12]), .B0(n1947[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[13]), .B1(n1947[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2385), .COUT(n2386), .S0(Endofprobepulse[12]), 
          .S1(Endofprobepulse[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_14.INIT0 = 16'h5666;
    defparam add_805_14.INIT1 = 16'h5666;
    defparam add_805_14.INJECT1_0 = "NO";
    defparam add_805_14.INJECT1_1 = "NO";
    CCU2D add_805_16 (.A0(n2_adj_246[14]), .B0(n1947[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_246[15]), .B1(n1947[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2386), .S0(Endofprobepulse[14]), .S1(Endofprobepulse[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam add_805_16.INIT0 = 16'h5666;
    defparam add_805_16.INIT1 = 16'h5666;
    defparam add_805_16.INJECT1_0 = "NO";
    defparam add_805_16.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_1 (.A0(GND_net), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[0]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2388), .S1(n2_adj_247[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_3 (.A0(AdjustablePieOverTwo[1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2388), .COUT(n2389), 
          .S0(n2_adj_247[1]), .S1(n2_adj_247[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_3.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_5 (.A0(AdjustablePieOverTwo[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2389), .COUT(n2390), 
          .S0(n2_adj_247[3]), .S1(n2_adj_247[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_5.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_5.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_7 (.A0(AdjustablePieOverTwo[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2390), .COUT(n2391), 
          .S0(n2_adj_247[5]), .S1(n2_adj_247[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_7.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_7.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_9 (.A0(AdjustablePieOverTwo[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2391), .COUT(n2392), 
          .S0(n2_adj_247[7]), .S1(n2_adj_247[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_9.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_11 (.A0(AdjustablePieOverTwo[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2392), .COUT(n2393), 
          .S0(n2_adj_247[9]), .S1(n2_adj_247[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_11.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_13 (.A0(AdjustablePieOverTwo[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2393), .COUT(n2394), 
          .S0(n2_adj_247[11]), .S1(n2_adj_247[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_15 (.A0(AdjustablePieOverTwo[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2394), .COUT(n2395), 
          .S0(n2_adj_247[13]), .S1(n2_adj_247[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_15.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_17 (.A0(AdjustablePieOverTwo[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2395), .S0(n2_adj_247[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(37[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_17.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_17.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_17.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_803_add_1_17.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .clk_2M5(clk_2M5), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(46[10:92])
    comparator sample2 (.SMstate({SMstate}), .probestarted(probestarted), 
            .sample_output_N_16(sample_output_N_16), .GND_net(GND_net), 
            .gatedcount({gatedcount}), .Endofopticalsample({Endofopticalsample})) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(56[13:98])
    comparator_U0 probe2 (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .\Resetandrepeat[0] (Resetandrepeat[0]), .\Resetandrepeat[1] (Resetandrepeat[1]), 
            .\Endofprobepulse[2] (Endofprobepulse[2]), .\Endofprobepulse[3] (Endofprobepulse[3]), 
            .\Endofprobepulse[4] (Endofprobepulse[4]), .\Endofprobepulse[5] (Endofprobepulse[5]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\Endofprobepulse[7] (Endofprobepulse[7]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\Endofprobepulse[9] (Endofprobepulse[9]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\Endofprobepulse[11] (Endofprobepulse[11]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\Endofprobepulse[13] (Endofprobepulse[13]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\Endofprobepulse[15] (Endofprobepulse[15]), 
            .n273(n273)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(54[13:93])
    comparator_U1 probe1 (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .Startopticalsample({Startopticalsample}), .probestarted(probestarted)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:95])
    countupdownpreload piecounter (.AdjustablePieOverTwo({AdjustablePieOverTwo}), 
            .pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .load_defaults(load_defaults), .n1420(n1420), .n2578(n2578), 
            .n1419(n1419), .n1421(n1421), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[21:180])
    comparator_U2 loopcounter (.GND_net(GND_net), .gatedcount({gatedcount}), 
            .Resetandrepeat({Resetandrepeat}), .loop(loop)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:89])
    countupdownpreload_U3 freepcounter (.n1473(n1473), .n1472(n1472), .n1471(n1471), 
            .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), .n1461(n1461), 
            .n1460(n1460), .n1459(n1459), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .n1469(n1469), .freeprecess_minus(freeprecess_minus), .n1465(n1465), 
            .n1464(n1464), .n1463(n1463), .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), 
            .n1468(n1468), .n1480(n1480), .n1481(n1481), .n1424(n1424), 
            .n1425(n1425), .n1484(n1484), .n1485(n1485), .n1453(n1453), 
            .n1452(n1452), .n1451(n1451), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .n1457(n1457), .n1456(n1456), .n1455(n1455), .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), 
            .n1445(n1445), .n1444(n1444), .n1443(n1443), .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .n1449(n1449), .n1448(n1448), .n1447(n1447), .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .n1437(n1437), .n1436(n1436), .n1435(n1435), .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .n1441(n1441), .n1440(n1440), .n1439(n1439), .\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .n1429(n1429), .n1428(n1428), .n1427(n1427), .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .n1433(n1433), .n1432(n1432), .n1431(n1431), .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .load_defaults(load_defaults), .freeprecess_plus(freeprecess_plus), 
            .freeprecess_minus_enable_4(freeprecess_minus_enable_4), .n2578(n2578), 
            .freeprecess_minus_enable_6(freeprecess_minus_enable_6), .\count_15__N_111[2] (count_15__N_111[2]), 
            .freeprecess_minus_enable_5(freeprecess_minus_enable_5), .n2551(n2551), 
            .n2550(n2550), .n1467(n1467), .n1475(n1475), .n1477(n1477), 
            .n1476(n1476), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(59[21:193])
    comparator_U4 MW4 (.GND_net(GND_net), .gatedcount({gatedcount}), .Endof2ndMWpulse({Endof2ndMWpulse}), 
            .n235(n235)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:88])
    comparator_U5 MW3 (.GND_net(GND_net), .gatedcount({gatedcount}), .Startof2ndMWpulse({Startof2ndMWpulse}), 
            .pi2started(pi2started)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:90])
    comparator_U6 MW2 (.GND_net(GND_net), .gatedcount({gatedcount}), .Endof1stMWpulse({Endof1stMWpulse}), 
            .n197(n197)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(50[13:88])
    comparator_U7 MW1 (.n2459(n2459), .gatedcount({gatedcount}), .n2460(n2460), 
            .n1757(n1757)) /* synthesis syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(49[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, clk_2M5, counterreset, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input clk_2M5;
    input counterreset;
    input GND_net;
    
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [15:0]n69;
    
    wire n2341, n2342, n2343, n2344, n2345, n2346, n2347, n2348;
    
    FD1S3DX count_142__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i0.GSR = "ENABLED";
    FD1S3DX count_142__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i15.GSR = "ENABLED";
    FD1S3DX count_142__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i14.GSR = "ENABLED";
    FD1S3DX count_142__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i13.GSR = "ENABLED";
    FD1S3DX count_142__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i12.GSR = "ENABLED";
    FD1S3DX count_142__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i11.GSR = "ENABLED";
    FD1S3DX count_142__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i10.GSR = "ENABLED";
    FD1S3DX count_142__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i9.GSR = "ENABLED";
    FD1S3DX count_142__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i8.GSR = "ENABLED";
    FD1S3DX count_142__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i7.GSR = "ENABLED";
    FD1S3DX count_142__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i6.GSR = "ENABLED";
    FD1S3DX count_142__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i5.GSR = "ENABLED";
    FD1S3DX count_142__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i4.GSR = "ENABLED";
    FD1S3DX count_142__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i3.GSR = "ENABLED";
    FD1S3DX count_142__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i2.GSR = "ENABLED";
    FD1S3DX count_142__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142__i1.GSR = "ENABLED";
    CCU2D count_142_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2341), .S1(n69[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_1.INIT0 = 16'hF000;
    defparam count_142_add_4_1.INIT1 = 16'h0555;
    defparam count_142_add_4_1.INJECT1_0 = "NO";
    defparam count_142_add_4_1.INJECT1_1 = "NO";
    CCU2D count_142_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2341), .COUT(n2342), .S0(n69[1]), .S1(n69[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_3.INIT0 = 16'hfaaa;
    defparam count_142_add_4_3.INIT1 = 16'hfaaa;
    defparam count_142_add_4_3.INJECT1_0 = "NO";
    defparam count_142_add_4_3.INJECT1_1 = "NO";
    CCU2D count_142_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2342), .COUT(n2343), .S0(n69[3]), .S1(n69[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_5.INIT0 = 16'hfaaa;
    defparam count_142_add_4_5.INIT1 = 16'hfaaa;
    defparam count_142_add_4_5.INJECT1_0 = "NO";
    defparam count_142_add_4_5.INJECT1_1 = "NO";
    CCU2D count_142_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2343), .COUT(n2344), .S0(n69[5]), .S1(n69[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_7.INIT0 = 16'hfaaa;
    defparam count_142_add_4_7.INIT1 = 16'hfaaa;
    defparam count_142_add_4_7.INJECT1_0 = "NO";
    defparam count_142_add_4_7.INJECT1_1 = "NO";
    CCU2D count_142_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2344), .COUT(n2345), .S0(n69[7]), .S1(n69[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_9.INIT0 = 16'hfaaa;
    defparam count_142_add_4_9.INIT1 = 16'hfaaa;
    defparam count_142_add_4_9.INJECT1_0 = "NO";
    defparam count_142_add_4_9.INJECT1_1 = "NO";
    CCU2D count_142_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2345), .COUT(n2346), .S0(n69[9]), .S1(n69[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_11.INIT0 = 16'hfaaa;
    defparam count_142_add_4_11.INIT1 = 16'hfaaa;
    defparam count_142_add_4_11.INJECT1_0 = "NO";
    defparam count_142_add_4_11.INJECT1_1 = "NO";
    CCU2D count_142_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2346), .COUT(n2347), .S0(n69[11]), .S1(n69[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_13.INIT0 = 16'hfaaa;
    defparam count_142_add_4_13.INIT1 = 16'hfaaa;
    defparam count_142_add_4_13.INJECT1_0 = "NO";
    defparam count_142_add_4_13.INJECT1_1 = "NO";
    CCU2D count_142_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2347), .COUT(n2348), .S0(n69[13]), .S1(n69[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_142_add_4_15.INIT0 = 16'hfaaa;
    defparam count_142_add_4_15.INIT1 = 16'hfaaa;
    defparam count_142_add_4_15.INJECT1_0 = "NO";
    defparam count_142_add_4_15.INJECT1_1 = "NO";
    CCU2D count_142_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2348), .S0(n69[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
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
    
    
    wire n311, n2271, n2272, n2273, n2274, n2275, n2276, n2277, 
        n2278;
    
    LUT4 i527_4_lut_4_lut (.A(SMstate[0]), .B(SMstate[1]), .C(probestarted), 
         .D(n311), .Z(sample_output_N_16)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    defparam i527_4_lut_4_lut.init = 16'h4464;
    CCU2D sub_115_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endofopticalsample[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2271));
    defparam sub_115_add_2_1.INIT0 = 16'h0000;
    defparam sub_115_add_2_1.INIT1 = 16'h5999;
    defparam sub_115_add_2_1.INJECT1_0 = "NO";
    defparam sub_115_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_3 (.A0(gatedcount[1]), .B0(Endofopticalsample[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endofopticalsample[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2271), .COUT(n2272));
    defparam sub_115_add_2_3.INIT0 = 16'h5999;
    defparam sub_115_add_2_3.INIT1 = 16'h5999;
    defparam sub_115_add_2_3.INJECT1_0 = "NO";
    defparam sub_115_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_5 (.A0(gatedcount[3]), .B0(Endofopticalsample[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endofopticalsample[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2272), .COUT(n2273));
    defparam sub_115_add_2_5.INIT0 = 16'h5999;
    defparam sub_115_add_2_5.INIT1 = 16'h5999;
    defparam sub_115_add_2_5.INJECT1_0 = "NO";
    defparam sub_115_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_7 (.A0(gatedcount[5]), .B0(Endofopticalsample[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endofopticalsample[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2273), .COUT(n2274));
    defparam sub_115_add_2_7.INIT0 = 16'h5999;
    defparam sub_115_add_2_7.INIT1 = 16'h5999;
    defparam sub_115_add_2_7.INJECT1_0 = "NO";
    defparam sub_115_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_9 (.A0(gatedcount[7]), .B0(Endofopticalsample[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endofopticalsample[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2274), .COUT(n2275));
    defparam sub_115_add_2_9.INIT0 = 16'h5999;
    defparam sub_115_add_2_9.INIT1 = 16'h5999;
    defparam sub_115_add_2_9.INJECT1_0 = "NO";
    defparam sub_115_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_11 (.A0(gatedcount[9]), .B0(Endofopticalsample[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endofopticalsample[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2275), .COUT(n2276));
    defparam sub_115_add_2_11.INIT0 = 16'h5999;
    defparam sub_115_add_2_11.INIT1 = 16'h5999;
    defparam sub_115_add_2_11.INJECT1_0 = "NO";
    defparam sub_115_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_13 (.A0(gatedcount[11]), .B0(Endofopticalsample[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endofopticalsample[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2276), .COUT(n2277));
    defparam sub_115_add_2_13.INIT0 = 16'h5999;
    defparam sub_115_add_2_13.INIT1 = 16'h5999;
    defparam sub_115_add_2_13.INJECT1_0 = "NO";
    defparam sub_115_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_15 (.A0(gatedcount[13]), .B0(Endofopticalsample[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endofopticalsample[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2277), .COUT(n2278));
    defparam sub_115_add_2_15.INIT0 = 16'h5999;
    defparam sub_115_add_2_15.INIT1 = 16'h5999;
    defparam sub_115_add_2_15.INJECT1_0 = "NO";
    defparam sub_115_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_115_add_2_17 (.A0(gatedcount[15]), .B0(Endofopticalsample[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2278), .S1(n311));
    defparam sub_115_add_2_17.INIT0 = 16'h5999;
    defparam sub_115_add_2_17.INIT1 = 16'h0000;
    defparam sub_115_add_2_17.INJECT1_0 = "NO";
    defparam sub_115_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U0
//

module comparator_U0 (GND_net, gatedcount, \Resetandrepeat[0] , \Resetandrepeat[1] , 
            \Endofprobepulse[2] , \Endofprobepulse[3] , \Endofprobepulse[4] , 
            \Endofprobepulse[5] , \Endofprobepulse[6] , \Endofprobepulse[7] , 
            \Endofprobepulse[8] , \Endofprobepulse[9] , \Endofprobepulse[10] , 
            \Endofprobepulse[11] , \Endofprobepulse[12] , \Endofprobepulse[13] , 
            \Endofprobepulse[14] , \Endofprobepulse[15] , n273) /* synthesis syn_module_defined=1 */ ;
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
    output n273;
    
    
    wire n2279, n2280, n2281, n2282, n2283, n2284, n2285, n2286;
    
    CCU2D sub_111_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(\Resetandrepeat[0] ), .C1(GND_net), 
          .D1(GND_net), .COUT(n2279));
    defparam sub_111_add_2_1.INIT0 = 16'h0000;
    defparam sub_111_add_2_1.INIT1 = 16'h5999;
    defparam sub_111_add_2_1.INJECT1_0 = "NO";
    defparam sub_111_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_3 (.A0(gatedcount[1]), .B0(\Resetandrepeat[1] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(\Endofprobepulse[2] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2279), .COUT(n2280));
    defparam sub_111_add_2_3.INIT0 = 16'h5999;
    defparam sub_111_add_2_3.INIT1 = 16'h5999;
    defparam sub_111_add_2_3.INJECT1_0 = "NO";
    defparam sub_111_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_5 (.A0(gatedcount[3]), .B0(\Endofprobepulse[3] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(\Endofprobepulse[4] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2280), .COUT(n2281));
    defparam sub_111_add_2_5.INIT0 = 16'h5999;
    defparam sub_111_add_2_5.INIT1 = 16'h5999;
    defparam sub_111_add_2_5.INJECT1_0 = "NO";
    defparam sub_111_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_7 (.A0(gatedcount[5]), .B0(\Endofprobepulse[5] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(\Endofprobepulse[6] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2281), .COUT(n2282));
    defparam sub_111_add_2_7.INIT0 = 16'h5999;
    defparam sub_111_add_2_7.INIT1 = 16'h5999;
    defparam sub_111_add_2_7.INJECT1_0 = "NO";
    defparam sub_111_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_9 (.A0(gatedcount[7]), .B0(\Endofprobepulse[7] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(\Endofprobepulse[8] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2282), .COUT(n2283));
    defparam sub_111_add_2_9.INIT0 = 16'h5999;
    defparam sub_111_add_2_9.INIT1 = 16'h5999;
    defparam sub_111_add_2_9.INJECT1_0 = "NO";
    defparam sub_111_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_11 (.A0(gatedcount[9]), .B0(\Endofprobepulse[9] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(\Endofprobepulse[10] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2283), .COUT(n2284));
    defparam sub_111_add_2_11.INIT0 = 16'h5999;
    defparam sub_111_add_2_11.INIT1 = 16'h5999;
    defparam sub_111_add_2_11.INJECT1_0 = "NO";
    defparam sub_111_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_13 (.A0(gatedcount[11]), .B0(\Endofprobepulse[11] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(\Endofprobepulse[12] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2284), .COUT(n2285));
    defparam sub_111_add_2_13.INIT0 = 16'h5999;
    defparam sub_111_add_2_13.INIT1 = 16'h5999;
    defparam sub_111_add_2_13.INJECT1_0 = "NO";
    defparam sub_111_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_15 (.A0(gatedcount[13]), .B0(\Endofprobepulse[13] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(\Endofprobepulse[14] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2285), .COUT(n2286));
    defparam sub_111_add_2_15.INIT0 = 16'h5999;
    defparam sub_111_add_2_15.INIT1 = 16'h5999;
    defparam sub_111_add_2_15.INJECT1_0 = "NO";
    defparam sub_111_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_111_add_2_17 (.A0(gatedcount[15]), .B0(\Endofprobepulse[15] ), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2286), .S1(n273));
    defparam sub_111_add_2_17.INIT0 = 16'h5999;
    defparam sub_111_add_2_17.INIT1 = 16'h0000;
    defparam sub_111_add_2_17.INJECT1_0 = "NO";
    defparam sub_111_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U1
//

module comparator_U1 (GND_net, gatedcount, Startopticalsample, probestarted) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Startopticalsample;
    output probestarted;
    
    
    wire n2295, n2296, n2297, n2298, n2299, n2300, n2301, n2302;
    
    CCU2D sub_109_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Startopticalsample[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2295));
    defparam sub_109_add_2_1.INIT0 = 16'h0000;
    defparam sub_109_add_2_1.INIT1 = 16'h5999;
    defparam sub_109_add_2_1.INJECT1_0 = "NO";
    defparam sub_109_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_3 (.A0(gatedcount[1]), .B0(Startopticalsample[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Startopticalsample[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2295), .COUT(n2296));
    defparam sub_109_add_2_3.INIT0 = 16'h5999;
    defparam sub_109_add_2_3.INIT1 = 16'h5999;
    defparam sub_109_add_2_3.INJECT1_0 = "NO";
    defparam sub_109_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_5 (.A0(gatedcount[3]), .B0(Startopticalsample[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Startopticalsample[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2296), .COUT(n2297));
    defparam sub_109_add_2_5.INIT0 = 16'h5999;
    defparam sub_109_add_2_5.INIT1 = 16'h5999;
    defparam sub_109_add_2_5.INJECT1_0 = "NO";
    defparam sub_109_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_7 (.A0(gatedcount[5]), .B0(Startopticalsample[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Startopticalsample[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2297), .COUT(n2298));
    defparam sub_109_add_2_7.INIT0 = 16'h5999;
    defparam sub_109_add_2_7.INIT1 = 16'h5999;
    defparam sub_109_add_2_7.INJECT1_0 = "NO";
    defparam sub_109_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_9 (.A0(gatedcount[7]), .B0(Startopticalsample[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Startopticalsample[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2298), .COUT(n2299));
    defparam sub_109_add_2_9.INIT0 = 16'h5999;
    defparam sub_109_add_2_9.INIT1 = 16'h5999;
    defparam sub_109_add_2_9.INJECT1_0 = "NO";
    defparam sub_109_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_11 (.A0(gatedcount[9]), .B0(Startopticalsample[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Startopticalsample[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2299), .COUT(n2300));
    defparam sub_109_add_2_11.INIT0 = 16'h5999;
    defparam sub_109_add_2_11.INIT1 = 16'h5999;
    defparam sub_109_add_2_11.INJECT1_0 = "NO";
    defparam sub_109_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_13 (.A0(gatedcount[11]), .B0(Startopticalsample[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Startopticalsample[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2300), .COUT(n2301));
    defparam sub_109_add_2_13.INIT0 = 16'h5999;
    defparam sub_109_add_2_13.INIT1 = 16'h5999;
    defparam sub_109_add_2_13.INJECT1_0 = "NO";
    defparam sub_109_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_15 (.A0(gatedcount[13]), .B0(Startopticalsample[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Startopticalsample[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2301), .COUT(n2302));
    defparam sub_109_add_2_15.INIT0 = 16'h5999;
    defparam sub_109_add_2_15.INIT1 = 16'h5999;
    defparam sub_109_add_2_15.INJECT1_0 = "NO";
    defparam sub_109_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_109_add_2_17 (.A0(gatedcount[15]), .B0(Startopticalsample[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2302), .S1(probestarted));
    defparam sub_109_add_2_17.INIT0 = 16'h5999;
    defparam sub_109_add_2_17.INIT1 = 16'h0000;
    defparam sub_109_add_2_17.INJECT1_0 = "NO";
    defparam sub_109_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (AdjustablePieOverTwo, pieovertwo_minus, pieovertwo_plus, 
            load_defaults, n1420, n2578, n1419, n1421, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]AdjustablePieOverTwo;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input load_defaults;
    output n1420;
    input n2578;
    output n1419;
    output n1421;
    input GND_net;
    
    wire pieovertwo_minus /* synthesis is_clock=1, SET_AS_NETWORK=pieovertwo_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[76:92])
    
    wire n1541, n1540, n1539, n1545, n1544, n1543, n1521, n1520, 
        n1519, n1509, count_15__N_172;
    wire [15:0]count_15__N_205;
    
    wire n1508, count_15__N_124, n1505, n1504, n1503, n1507, n1513, 
        n1512, n1511, n1517, n1516, n1515, count_15__N_169, count_15__N_121, 
        n1501, count_15__N_166, n1533, n1532, n1531, n1500, count_15__N_118, 
        n1537, n1536, n1535, n1497, count_15__N_163, n1493, n1492, 
        n1491;
    wire [15:0]count_15__N_111;
    
    wire count_15__N_202, n1496, count_15__N_115, n1529, n1528, n1527, 
        n1525, n1524, n1523, count_15__N_160, count_15__N_112, count_15__N_193, 
        count_15__N_187, count_15__N_127, count_15__N_199, count_15__N_151, 
        count_15__N_184, count_15__N_181, count_15__N_178, count_15__N_145, 
        count_15__N_175, n1489, count_15__N_157, n1488, count_15__N_108, 
        count_15__N_196, count_15__N_148, count_15__N_190, count_15__N_142, 
        count_15__N_154, count_15__N_139, count_15__N_136, count_15__N_133, 
        count_15__N_130, n1499, n1495, n1487, n2246, n2245, n2244, 
        n2243, n2242, n2241, n2240, n2239, n2333, n2334, n2335, 
        n2336, n2337, n2338, n2339, n2340;
    
    LUT4 i430_3_lut (.A(n1541), .B(n1540), .C(n1539), .Z(AdjustablePieOverTwo[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i430_3_lut.init = 16'hcaca;
    LUT4 i434_3_lut (.A(n1545), .B(n1544), .C(n1543), .Z(AdjustablePieOverTwo[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i434_3_lut.init = 16'hcaca;
    LUT4 i410_3_lut (.A(n1521), .B(n1520), .C(n1519), .Z(AdjustablePieOverTwo[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i410_3_lut.init = 16'hcaca;
    FD1S3DX count_i0_i10_396_397_reset (.D(count_15__N_205[10]), .CK(pieovertwo_minus), 
            .CD(count_15__N_172), .Q(n1509)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i10_396_397_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i10_396_397_set (.D(count_15__N_205[10]), .CK(pieovertwo_minus), 
            .PD(count_15__N_124), .Q(n1508)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i10_396_397_set.GSR = "ENABLED";
    LUT4 i394_3_lut (.A(n1505), .B(n1504), .C(n1503), .Z(AdjustablePieOverTwo[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i394_3_lut.init = 16'hcaca;
    LUT4 i398_3_lut (.A(n1509), .B(n1508), .C(n1507), .Z(AdjustablePieOverTwo[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i398_3_lut.init = 16'hcaca;
    LUT4 i402_3_lut (.A(n1513), .B(n1512), .C(n1511), .Z(AdjustablePieOverTwo[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i402_3_lut.init = 16'hcaca;
    LUT4 i406_3_lut (.A(n1517), .B(n1516), .C(n1515), .Z(AdjustablePieOverTwo[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i406_3_lut.init = 16'hcaca;
    FD1S3DX count_i0_i11_392_393_reset (.D(count_15__N_205[11]), .CK(pieovertwo_minus), 
            .CD(count_15__N_169), .Q(n1505)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i11_392_393_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i11_392_393_set (.D(count_15__N_205[11]), .CK(pieovertwo_minus), 
            .PD(count_15__N_121), .Q(n1504)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i11_392_393_set.GSR = "ENABLED";
    FD1S3DX count_i0_i12_388_389_reset (.D(count_15__N_205[12]), .CK(pieovertwo_minus), 
            .CD(count_15__N_166), .Q(n1501)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i12_388_389_reset.GSR = "ENABLED";
    LUT4 i422_3_lut (.A(n1533), .B(n1532), .C(n1531), .Z(AdjustablePieOverTwo[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i422_3_lut.init = 16'hcaca;
    FD1S3BX count_i0_i12_388_389_set (.D(count_15__N_205[12]), .CK(pieovertwo_minus), 
            .PD(count_15__N_118), .Q(n1500)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i12_388_389_set.GSR = "ENABLED";
    LUT4 i426_3_lut (.A(n1537), .B(n1536), .C(n1535), .Z(AdjustablePieOverTwo[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i426_3_lut.init = 16'hcaca;
    FD1S3DX count_i0_i13_384_385_reset (.D(count_15__N_205[13]), .CK(pieovertwo_minus), 
            .CD(count_15__N_163), .Q(n1497)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i13_384_385_reset.GSR = "ENABLED";
    LUT4 i382_3_lut (.A(n1493), .B(n1492), .C(n1491), .Z(AdjustablePieOverTwo[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i382_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[0]), .Z(count_15__N_202)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_2_lut_3_lut_3_lut.init = 16'hcece;
    FD1S3BX count_i0_i13_384_385_set (.D(count_15__N_205[13]), .CK(pieovertwo_minus), 
            .PD(count_15__N_115), .Q(n1496)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i13_384_385_set.GSR = "ENABLED";
    LUT4 i418_3_lut (.A(n1529), .B(n1528), .C(n1527), .Z(AdjustablePieOverTwo[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i418_3_lut.init = 16'hcaca;
    LUT4 i414_3_lut (.A(n1525), .B(n1524), .C(n1523), .Z(AdjustablePieOverTwo[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i414_3_lut.init = 16'hcaca;
    FD1S3DX count_i0_i14_380_381_reset (.D(count_15__N_205[14]), .CK(pieovertwo_minus), 
            .CD(count_15__N_160), .Q(n1493)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i14_380_381_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i14_380_381_set (.D(count_15__N_205[14]), .CK(pieovertwo_minus), 
            .PD(count_15__N_112), .Q(n1492)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i14_380_381_set.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_193)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_27 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[5]), .Z(count_15__N_187)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_27.init = 16'h0404;
    LUT4 i603_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[9]), 
         .Z(count_15__N_127)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i603_3_lut.init = 16'heaea;
    FD1S3DX count_i0_i1_432_433_reset (.D(count_15__N_205[1]), .CK(pieovertwo_minus), 
            .CD(count_15__N_199), .Q(n1545)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i1_432_433_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i1_432_433_set (.D(count_15__N_205[1]), .CK(pieovertwo_minus), 
            .PD(count_15__N_151), .Q(n1544)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i1_432_433_set.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_28 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[6]), .Z(count_15__N_184)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_28.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_29 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[7]), .Z(count_15__N_181)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_29.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_30 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[8]), .Z(count_15__N_178)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_30.init = 16'h0404;
    LUT4 i608_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_145)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i608_3_lut.init = 16'heaea;
    LUT4 i1_2_lut_3_lut_adj_31 (.A(load_defaults), .B(pieovertwo_plus), 
         .C(count_15__N_111[9]), .Z(count_15__N_175)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_31.init = 16'h0404;
    FD1S3DX count_i0_i15_376_377_reset (.D(count_15__N_205[15]), .CK(pieovertwo_minus), 
            .CD(count_15__N_157), .Q(n1489)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i15_376_377_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i15_376_377_set (.D(count_15__N_205[15]), .CK(pieovertwo_minus), 
            .PD(count_15__N_108), .Q(n1488)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i15_376_377_set.GSR = "ENABLED";
    FD1S3DX count_i0_i2_428_429_reset (.D(count_15__N_205[2]), .CK(pieovertwo_minus), 
            .CD(count_15__N_196), .Q(n1541)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i2_428_429_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i2_428_429_set (.D(count_15__N_205[2]), .CK(pieovertwo_minus), 
            .PD(count_15__N_148), .Q(n1540)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i2_428_429_set.GSR = "ENABLED";
    FD1S3DX count_i0_i3_424_425_reset (.D(count_15__N_205[3]), .CK(pieovertwo_minus), 
            .CD(count_15__N_193), .Q(n1537)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i3_424_425_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i3_424_425_set (.D(count_15__N_205[3]), .CK(pieovertwo_minus), 
            .PD(count_15__N_145), .Q(n1536)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i3_424_425_set.GSR = "ENABLED";
    FD1S3DX count_i0_i4_420_421_reset (.D(count_15__N_205[4]), .CK(pieovertwo_minus), 
            .CD(count_15__N_190), .Q(n1533)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i4_420_421_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i4_420_421_set (.D(count_15__N_205[4]), .CK(pieovertwo_minus), 
            .PD(count_15__N_142), .Q(n1532)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i4_420_421_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_105_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[0]), .Z(count_15__N_154)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_105_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_93_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[12]), .Z(count_15__N_118)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_93_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_104_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[1]), .Z(count_15__N_151)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_104_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_111_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[10]), .Z(count_15__N_172)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_111_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_108_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_163)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_108_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_94_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[11]), .Z(count_15__N_121)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_94_2_lut_3_lut_3_lut.init = 16'h2020;
    FD1S3DX count_i0_i5_416_417_reset (.D(count_15__N_205[5]), .CK(pieovertwo_minus), 
            .CD(count_15__N_187), .Q(n1529)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i5_416_417_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i5_416_417_set (.D(count_15__N_205[5]), .CK(pieovertwo_minus), 
            .PD(count_15__N_139), .Q(n1528)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i5_416_417_set.GSR = "ENABLED";
    FD1S3DX count_i0_i6_412_413_reset (.D(count_15__N_205[6]), .CK(pieovertwo_minus), 
            .CD(count_15__N_184), .Q(n1525)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i6_412_413_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i6_412_413_set (.D(count_15__N_205[6]), .CK(pieovertwo_minus), 
            .PD(count_15__N_136), .Q(n1524)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i6_412_413_set.GSR = "ENABLED";
    FD1S3DX count_i0_i7_408_409_reset (.D(count_15__N_205[7]), .CK(pieovertwo_minus), 
            .CD(count_15__N_181), .Q(n1521)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i7_408_409_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i7_408_409_set (.D(count_15__N_205[7]), .CK(pieovertwo_minus), 
            .PD(count_15__N_133), .Q(n1520)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i7_408_409_set.GSR = "ENABLED";
    FD1S3DX count_i0_i8_404_405_reset (.D(count_15__N_205[8]), .CK(pieovertwo_minus), 
            .CD(count_15__N_178), .Q(n1517)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i8_404_405_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i8_404_405_set (.D(count_15__N_205[8]), .CK(pieovertwo_minus), 
            .PD(count_15__N_130), .Q(n1516)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i8_404_405_set.GSR = "ENABLED";
    FD1S3DX count_i0_i9_400_401_reset (.D(count_15__N_205[9]), .CK(pieovertwo_minus), 
            .CD(count_15__N_175), .Q(n1513)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i9_400_401_reset.GSR = "ENABLED";
    FD1S3BX count_i0_i9_400_401_set (.D(count_15__N_205[9]), .CK(pieovertwo_minus), 
            .PD(count_15__N_127), .Q(n1512)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i9_400_401_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_91_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_112)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_91_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_117_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[4]), .Z(count_15__N_190)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_117_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_109_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[12]), .Z(count_15__N_166)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_109_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_95_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[10]), .Z(count_15__N_124)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_95_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i604_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[8]), 
         .Z(count_15__N_130)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i604_3_lut.init = 16'heaea;
    LUT4 i390_3_lut (.A(n1501), .B(n1500), .C(n1499), .Z(AdjustablePieOverTwo[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i390_3_lut.init = 16'hcaca;
    LUT4 i386_3_lut (.A(n1497), .B(n1496), .C(n1495), .Z(AdjustablePieOverTwo[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i386_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_110_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[11]), .Z(count_15__N_169)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_110_2_lut_3_lut_3_lut.init = 16'hcece;
    FD1S3BX count_i0_i0_308_309_set (.D(count_15__N_205[0]), .CK(pieovertwo_minus), 
            .PD(count_15__N_154), .Q(n1420)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i0_308_309_set.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_92_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_115)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_92_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_106_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_157)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_106_2_lut_3_lut_3_lut.init = 16'hcece;
    FD1S1D i375 (.D(n2578), .CK(count_15__N_108), .CD(count_15__N_157), 
           .Q(n1487));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i375.GSR = "ENABLED";
    FD1S1D i379 (.D(n2578), .CK(count_15__N_112), .CD(count_15__N_160), 
           .Q(n1491));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i379.GSR = "ENABLED";
    FD1S1D i383 (.D(n2578), .CK(count_15__N_115), .CD(count_15__N_163), 
           .Q(n1495));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i383.GSR = "ENABLED";
    FD1S1D i387 (.D(n2578), .CK(count_15__N_118), .CD(count_15__N_166), 
           .Q(n1499));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i387.GSR = "ENABLED";
    FD1S1D i391 (.D(n2578), .CK(count_15__N_121), .CD(count_15__N_169), 
           .Q(n1503));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i391.GSR = "ENABLED";
    FD1S1D i395 (.D(n2578), .CK(count_15__N_124), .CD(count_15__N_172), 
           .Q(n1507));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i395.GSR = "ENABLED";
    FD1S1D i399 (.D(n2578), .CK(count_15__N_127), .CD(count_15__N_175), 
           .Q(n1511));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i399.GSR = "ENABLED";
    FD1S1D i403 (.D(n2578), .CK(count_15__N_130), .CD(count_15__N_178), 
           .Q(n1515));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i403.GSR = "ENABLED";
    FD1S1D i407 (.D(n2578), .CK(count_15__N_133), .CD(count_15__N_181), 
           .Q(n1519));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i407.GSR = "ENABLED";
    FD1S1D i411 (.D(n2578), .CK(count_15__N_136), .CD(count_15__N_184), 
           .Q(n1523));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i411.GSR = "ENABLED";
    FD1S1D i415 (.D(n2578), .CK(count_15__N_139), .CD(count_15__N_187), 
           .Q(n1527));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i415.GSR = "ENABLED";
    FD1S1D i419 (.D(n2578), .CK(count_15__N_142), .CD(count_15__N_190), 
           .Q(n1531));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i419.GSR = "ENABLED";
    FD1S1D i423 (.D(n2578), .CK(count_15__N_145), .CD(count_15__N_193), 
           .Q(n1535));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i423.GSR = "ENABLED";
    FD1S1D i427 (.D(n2578), .CK(count_15__N_148), .CD(count_15__N_196), 
           .Q(n1539));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i427.GSR = "ENABLED";
    FD1S1D i431 (.D(n2578), .CK(count_15__N_151), .CD(count_15__N_199), 
           .Q(n1543));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i431.GSR = "ENABLED";
    FD1S1D i307 (.D(n2578), .CK(count_15__N_154), .CD(count_15__N_202), 
           .Q(n1419));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i307.GSR = "ENABLED";
    FD1S3DX count_i0_i0_308_309_reset (.D(count_15__N_205[0]), .CK(pieovertwo_minus), 
            .CD(count_15__N_202), .Q(n1421)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=180, LSE_LLINE=58, LSE_RLINE=58 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_i0_308_309_reset.GSR = "ENABLED";
    LUT4 i607_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[5]), 
         .Z(count_15__N_139)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i607_3_lut.init = 16'heaea;
    LUT4 i606_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_136)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i606_3_lut.init = 16'heaea;
    LUT4 i605_3_lut (.A(load_defaults), .B(pieovertwo_plus), .C(count_15__N_111[7]), 
         .Z(count_15__N_133)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i605_3_lut.init = 16'heaea;
    LUT4 count_15__N_109_I_0_119_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[2]), .Z(count_15__N_196)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_119_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_101_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[4]), .Z(count_15__N_142)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_101_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_120_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[1]), .Z(count_15__N_199)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_120_2_lut_3_lut_3_lut.init = 16'hcece;
    CCU2D count_15__I_0_122_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2246), .S0(count_15__N_111[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_17.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_17.INIT1 = 16'h0000;
    defparam count_15__I_0_122_17.INJECT1_0 = "NO";
    defparam count_15__I_0_122_17.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2245), .COUT(n2246), .S0(count_15__N_111[13]), 
          .S1(count_15__N_111[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_15.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_15.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_15.INJECT1_0 = "NO";
    defparam count_15__I_0_122_15.INJECT1_1 = "NO";
    LUT4 count_15__I_0_121_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_108)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__I_0_121_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_107_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_160)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_107_2_lut_3_lut_3_lut.init = 16'hcece;
    CCU2D count_15__I_0_122_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2244), .COUT(n2245), .S0(count_15__N_111[11]), 
          .S1(count_15__N_111[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_13.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_13.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_13.INJECT1_0 = "NO";
    defparam count_15__I_0_122_13.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2243), .COUT(n2244), .S0(count_15__N_111[9]), 
          .S1(count_15__N_111[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_11.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_11.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_11.INJECT1_0 = "NO";
    defparam count_15__I_0_122_11.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2242), .COUT(n2243), .S0(count_15__N_111[7]), 
          .S1(count_15__N_111[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_9.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_9.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_9.INJECT1_0 = "NO";
    defparam count_15__I_0_122_9.INJECT1_1 = "NO";
    LUT4 i310_3_lut (.A(n1421), .B(n1420), .C(n1419), .Z(AdjustablePieOverTwo[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i310_3_lut.init = 16'hcaca;
    LUT4 count_15__N_109_I_0_103_2_lut_3_lut_3_lut (.A(pieovertwo_plus), .B(load_defaults), 
         .C(count_15__N_111[2]), .Z(count_15__N_148)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_103_2_lut_3_lut_3_lut.init = 16'h2020;
    CCU2D count_15__I_0_122_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2241), .COUT(n2242), .S0(count_15__N_111[5]), 
          .S1(count_15__N_111[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_7.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_7.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_7.INJECT1_0 = "NO";
    defparam count_15__I_0_122_7.INJECT1_1 = "NO";
    LUT4 i378_3_lut (.A(n1489), .B(n1488), .C(n1487), .Z(AdjustablePieOverTwo[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i378_3_lut.init = 16'hcaca;
    CCU2D count_15__I_0_122_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2240), .COUT(n2241), .S0(count_15__N_111[3]), 
          .S1(count_15__N_111[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_5.INIT0 = 16'h5555;
    defparam count_15__I_0_122_5.INIT1 = 16'h5555;
    defparam count_15__I_0_122_5.INJECT1_0 = "NO";
    defparam count_15__I_0_122_5.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2239), .COUT(n2240), .S0(count_15__N_111[1]), 
          .S1(count_15__N_111[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_3.INIT0 = 16'h5aaa;
    defparam count_15__I_0_122_3.INIT1 = 16'h5aaa;
    defparam count_15__I_0_122_3.INJECT1_0 = "NO";
    defparam count_15__I_0_122_3.INJECT1_1 = "NO";
    CCU2D count_15__I_0_122_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2239), .S1(count_15__N_111[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam count_15__I_0_122_1.INIT0 = 16'hF000;
    defparam count_15__I_0_122_1.INIT1 = 16'h5555;
    defparam count_15__I_0_122_1.INJECT1_0 = "NO";
    defparam count_15__I_0_122_1.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustablePieOverTwo[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2333), .S1(count_15__N_205[0]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_1.INIT0 = 16'hF000;
    defparam sub_4_add_2_1.INIT1 = 16'h5555;
    defparam sub_4_add_2_1.INJECT1_0 = "NO";
    defparam sub_4_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_3 (.A0(AdjustablePieOverTwo[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2333), .COUT(n2334), .S0(count_15__N_205[1]), 
          .S1(count_15__N_205[2]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_3.INIT0 = 16'h5555;
    defparam sub_4_add_2_3.INIT1 = 16'h5555;
    defparam sub_4_add_2_3.INJECT1_0 = "NO";
    defparam sub_4_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_5 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2334), .COUT(n2335), .S0(count_15__N_205[3]), 
          .S1(count_15__N_205[4]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_5.INIT0 = 16'h5aaa;
    defparam sub_4_add_2_5.INIT1 = 16'h5aaa;
    defparam sub_4_add_2_5.INJECT1_0 = "NO";
    defparam sub_4_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_7 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2335), .COUT(n2336), .S0(count_15__N_205[5]), 
          .S1(count_15__N_205[6]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_7.INIT0 = 16'h5555;
    defparam sub_4_add_2_7.INIT1 = 16'h5555;
    defparam sub_4_add_2_7.INJECT1_0 = "NO";
    defparam sub_4_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_9 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2336), .COUT(n2337), .S0(count_15__N_205[7]), 
          .S1(count_15__N_205[8]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_9.INIT0 = 16'h5555;
    defparam sub_4_add_2_9.INIT1 = 16'h5555;
    defparam sub_4_add_2_9.INJECT1_0 = "NO";
    defparam sub_4_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_11 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2337), .COUT(n2338), .S0(count_15__N_205[9]), 
          .S1(count_15__N_205[10]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_11.INIT0 = 16'h5555;
    defparam sub_4_add_2_11.INIT1 = 16'h5555;
    defparam sub_4_add_2_11.INJECT1_0 = "NO";
    defparam sub_4_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_13 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2338), .COUT(n2339), .S0(count_15__N_205[11]), 
          .S1(count_15__N_205[12]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_13.INIT0 = 16'h5555;
    defparam sub_4_add_2_13.INIT1 = 16'h5555;
    defparam sub_4_add_2_13.INJECT1_0 = "NO";
    defparam sub_4_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_15 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2339), .COUT(n2340), .S0(count_15__N_205[13]), 
          .S1(count_15__N_205[14]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_15.INIT0 = 16'h5555;
    defparam sub_4_add_2_15.INIT1 = 16'h5555;
    defparam sub_4_add_2_15.INJECT1_0 = "NO";
    defparam sub_4_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_4_add_2_17 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2340), .S0(count_15__N_205[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(26[15:32])
    defparam sub_4_add_2_17.INIT0 = 16'h5555;
    defparam sub_4_add_2_17.INIT1 = 16'h0000;
    defparam sub_4_add_2_17.INJECT1_0 = "NO";
    defparam sub_4_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U2
//

module comparator_U2 (GND_net, gatedcount, Resetandrepeat, loop) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Resetandrepeat;
    output loop;
    
    
    wire n2263, n2264, n2265, n2266, n2267, n2268, n2269, n2270;
    
    CCU2D sub_117_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Resetandrepeat[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2263));
    defparam sub_117_add_2_1.INIT0 = 16'h0000;
    defparam sub_117_add_2_1.INIT1 = 16'h5999;
    defparam sub_117_add_2_1.INJECT1_0 = "NO";
    defparam sub_117_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_3 (.A0(gatedcount[1]), .B0(Resetandrepeat[1]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[2]), .B1(Resetandrepeat[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2263), .COUT(n2264));
    defparam sub_117_add_2_3.INIT0 = 16'h5999;
    defparam sub_117_add_2_3.INIT1 = 16'h5999;
    defparam sub_117_add_2_3.INJECT1_0 = "NO";
    defparam sub_117_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_5 (.A0(gatedcount[3]), .B0(Resetandrepeat[3]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[4]), .B1(Resetandrepeat[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2264), .COUT(n2265));
    defparam sub_117_add_2_5.INIT0 = 16'h5999;
    defparam sub_117_add_2_5.INIT1 = 16'h5999;
    defparam sub_117_add_2_5.INJECT1_0 = "NO";
    defparam sub_117_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_7 (.A0(gatedcount[5]), .B0(Resetandrepeat[5]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[6]), .B1(Resetandrepeat[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2265), .COUT(n2266));
    defparam sub_117_add_2_7.INIT0 = 16'h5999;
    defparam sub_117_add_2_7.INIT1 = 16'h5999;
    defparam sub_117_add_2_7.INJECT1_0 = "NO";
    defparam sub_117_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_9 (.A0(gatedcount[7]), .B0(Resetandrepeat[7]), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[8]), .B1(Resetandrepeat[8]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2266), .COUT(n2267));
    defparam sub_117_add_2_9.INIT0 = 16'h5999;
    defparam sub_117_add_2_9.INIT1 = 16'h5999;
    defparam sub_117_add_2_9.INJECT1_0 = "NO";
    defparam sub_117_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_11 (.A0(gatedcount[9]), .B0(Resetandrepeat[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Resetandrepeat[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2267), .COUT(n2268));
    defparam sub_117_add_2_11.INIT0 = 16'h5999;
    defparam sub_117_add_2_11.INIT1 = 16'h5999;
    defparam sub_117_add_2_11.INJECT1_0 = "NO";
    defparam sub_117_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_13 (.A0(gatedcount[11]), .B0(Resetandrepeat[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Resetandrepeat[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2268), .COUT(n2269));
    defparam sub_117_add_2_13.INIT0 = 16'h5999;
    defparam sub_117_add_2_13.INIT1 = 16'h5999;
    defparam sub_117_add_2_13.INJECT1_0 = "NO";
    defparam sub_117_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_15 (.A0(gatedcount[13]), .B0(Resetandrepeat[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Resetandrepeat[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2269), .COUT(n2270));
    defparam sub_117_add_2_15.INIT0 = 16'h5999;
    defparam sub_117_add_2_15.INIT1 = 16'h5999;
    defparam sub_117_add_2_15.INJECT1_0 = "NO";
    defparam sub_117_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_117_add_2_17 (.A0(gatedcount[15]), .B0(Resetandrepeat[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2270), .S1(loop));
    defparam sub_117_add_2_17.INIT0 = 16'h5999;
    defparam sub_117_add_2_17.INIT1 = 16'h0000;
    defparam sub_117_add_2_17.INJECT1_0 = "NO";
    defparam sub_117_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U3
//

module countupdownpreload_U3 (n1473, n1472, n1471, \AdjustableFreePrecession[4] , 
            n1461, n1460, n1459, \AdjustableFreePrecession[7] , n1469, 
            freeprecess_minus, n1465, n1464, n1463, \AdjustableFreePrecession[6] , 
            n1468, n1480, n1481, n1424, n1425, n1484, n1485, n1453, 
            n1452, n1451, \AdjustableFreePrecession[9] , n1457, n1456, 
            n1455, \AdjustableFreePrecession[8] , n1445, n1444, n1443, 
            \AdjustableFreePrecession[11] , n1449, n1448, n1447, \AdjustableFreePrecession[10] , 
            n1437, n1436, n1435, \AdjustableFreePrecession[13] , n1441, 
            n1440, n1439, \AdjustableFreePrecession[12] , n1429, n1428, 
            n1427, \AdjustableFreePrecession[15] , n1433, n1432, n1431, 
            \AdjustableFreePrecession[14] , load_defaults, freeprecess_plus, 
            freeprecess_minus_enable_4, n2578, freeprecess_minus_enable_6, 
            \count_15__N_111[2] , freeprecess_minus_enable_5, n2551, n2550, 
            n1467, n1475, n1477, n1476, \AdjustableFreePrecession[3] , 
            \AdjustableFreePrecession[5] , GND_net) /* synthesis syn_module_defined=1 */ ;
    output n1473;
    output n1472;
    output n1471;
    output \AdjustableFreePrecession[4] ;
    output n1461;
    output n1460;
    output n1459;
    output \AdjustableFreePrecession[7] ;
    output n1469;
    input freeprecess_minus;
    output n1465;
    output n1464;
    output n1463;
    output \AdjustableFreePrecession[6] ;
    output n1468;
    output n1480;
    output n1481;
    output n1424;
    output n1425;
    output n1484;
    output n1485;
    output n1453;
    output n1452;
    output n1451;
    output \AdjustableFreePrecession[9] ;
    output n1457;
    output n1456;
    output n1455;
    output \AdjustableFreePrecession[8] ;
    output n1445;
    output n1444;
    output n1443;
    output \AdjustableFreePrecession[11] ;
    output n1449;
    output n1448;
    output n1447;
    output \AdjustableFreePrecession[10] ;
    output n1437;
    output n1436;
    output n1435;
    output \AdjustableFreePrecession[13] ;
    output n1441;
    output n1440;
    output n1439;
    output \AdjustableFreePrecession[12] ;
    output n1429;
    output n1428;
    output n1427;
    output \AdjustableFreePrecession[15] ;
    output n1433;
    output n1432;
    output n1431;
    output \AdjustableFreePrecession[14] ;
    input load_defaults;
    input freeprecess_plus;
    output freeprecess_minus_enable_4;
    input n2578;
    output freeprecess_minus_enable_6;
    output \count_15__N_111[2] ;
    output freeprecess_minus_enable_5;
    output n2551;
    output n2550;
    output n1467;
    output n1475;
    output n1477;
    output n1476;
    output \AdjustableFreePrecession[3] ;
    output \AdjustableFreePrecession[5] ;
    input GND_net;
    
    wire freeprecess_minus /* synthesis is_clock=1, SET_AS_NETWORK=freeprecess_minus */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[94:111])
    
    wire count_15__N_187;
    wire [15:0]count_15__N_92;
    
    wire count_15__N_139, freeprecess_minus_enable_1, count_15__N_148, 
        freeprecess_minus_enable_2, count_15__N_154, freeprecess_minus_enable_3, 
        count_15__N_151;
    wire [15:0]count_15__N_111;
    
    wire count_15__N_121, count_15__N_130, count_15__N_184, count_15__N_202, 
        count_15__N_136, count_15__N_108, count_15__N_157, count_15__N_175, 
        count_15__N_181, count_15__N_199, count_15__N_127, count_15__N_163, 
        count_15__N_142, count_15__N_118, count_15__N_115, count_15__N_133, 
        count_15__N_112, count_15__N_160, count_15__N_190, count_15__N_169, 
        count_15__N_178, count_15__N_166, count_15__N_172, count_15__N_196, 
        count_15__N_193, count_15__N_124, count_15__N_145, n2303, n2304, 
        n2305, n2306, n2307, n2308, n2326, n2327, n2328, n2329, 
        n2330, n2331;
    
    LUT4 i362_3_lut (.A(n1473), .B(n1472), .C(n1471), .Z(\AdjustableFreePrecession[4] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i362_3_lut.init = 16'hcaca;
    LUT4 i350_3_lut (.A(n1461), .B(n1460), .C(n1459), .Z(\AdjustableFreePrecession[7] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i350_3_lut.init = 16'hcaca;
    FD1S3DX count_i5_356_357_reset (.D(count_15__N_92[5]), .CK(freeprecess_minus), 
            .CD(count_15__N_187), .Q(n1469)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i5_356_357_reset.GSR = "ENABLED";
    LUT4 i354_3_lut (.A(n1465), .B(n1464), .C(n1463), .Z(\AdjustableFreePrecession[6] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i354_3_lut.init = 16'hcaca;
    FD1S3BX count_i5_356_357_set (.D(count_15__N_92[5]), .CK(freeprecess_minus), 
            .PD(count_15__N_139), .Q(n1468)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i5_356_357_set.GSR = "ENABLED";
    FD1P3BX count_i2_368_369_set (.D(n1481), .SP(freeprecess_minus_enable_1), 
            .CK(freeprecess_minus), .PD(count_15__N_148), .Q(n1480)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i2_368_369_set.GSR = "ENABLED";
    FD1P3BX count_i0_312_313_set (.D(n1425), .SP(freeprecess_minus_enable_2), 
            .CK(freeprecess_minus), .PD(count_15__N_154), .Q(n1424)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_312_313_set.GSR = "ENABLED";
    FD1P3BX count_i1_372_373_set (.D(n1485), .SP(freeprecess_minus_enable_3), 
            .CK(freeprecess_minus), .PD(count_15__N_151), .Q(n1484)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i1_372_373_set.GSR = "ENABLED";
    LUT4 i342_3_lut (.A(n1453), .B(n1452), .C(n1451), .Z(\AdjustableFreePrecession[9] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i342_3_lut.init = 16'hcaca;
    LUT4 i346_3_lut (.A(n1457), .B(n1456), .C(n1455), .Z(\AdjustableFreePrecession[8] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i346_3_lut.init = 16'hcaca;
    LUT4 i334_3_lut (.A(n1445), .B(n1444), .C(n1443), .Z(\AdjustableFreePrecession[11] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i334_3_lut.init = 16'hcaca;
    LUT4 i338_3_lut (.A(n1449), .B(n1448), .C(n1447), .Z(\AdjustableFreePrecession[10] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i338_3_lut.init = 16'hcaca;
    LUT4 i326_3_lut (.A(n1437), .B(n1436), .C(n1435), .Z(\AdjustableFreePrecession[13] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i326_3_lut.init = 16'hcaca;
    LUT4 i330_3_lut (.A(n1441), .B(n1440), .C(n1439), .Z(\AdjustableFreePrecession[12] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i330_3_lut.init = 16'hcaca;
    LUT4 i318_3_lut (.A(n1429), .B(n1428), .C(n1427), .Z(\AdjustableFreePrecession[15] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i318_3_lut.init = 16'hcaca;
    LUT4 i322_3_lut (.A(n1433), .B(n1432), .C(n1431), .Z(\AdjustableFreePrecession[14] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i322_3_lut.init = 16'hcaca;
    LUT4 i610_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[11]), 
         .Z(count_15__N_121)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i610_3_lut.init = 16'heaea;
    LUT4 i612_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[8]), 
         .Z(count_15__N_130)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i612_3_lut.init = 16'heaea;
    FD1S3DX count_i6_352_353_reset (.D(count_15__N_92[6]), .CK(freeprecess_minus), 
            .CD(count_15__N_184), .Q(n1465)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i6_352_353_reset.GSR = "ENABLED";
    FD1S1D i311 (.D(n2578), .CK(count_15__N_154), .CD(count_15__N_202), 
           .Q(freeprecess_minus_enable_4));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i311.GSR = "ENABLED";
    LUT4 i437_1_lut (.A(freeprecess_minus_enable_6), .Z(freeprecess_minus_enable_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i437_1_lut.init = 16'h5555;
    LUT4 i615_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(\count_15__N_111[2] ), 
         .Z(count_15__N_148)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i615_3_lut.init = 16'heaea;
    LUT4 i370_3_lut (.A(n1481), .B(n1480), .C(freeprecess_minus_enable_6), 
         .Z(\count_15__N_111[2] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i370_3_lut.init = 16'hcaca;
    LUT4 i436_1_lut (.A(freeprecess_minus_enable_4), .Z(freeprecess_minus_enable_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i436_1_lut.init = 16'h5555;
    LUT4 i435_1_lut (.A(freeprecess_minus_enable_5), .Z(freeprecess_minus_enable_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i435_1_lut.init = 16'h5555;
    FD1S3BX count_i6_352_353_set (.D(count_15__N_92[6]), .CK(freeprecess_minus), 
            .PD(count_15__N_136), .Q(n1464)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i6_352_353_set.GSR = "ENABLED";
    FD1S1D i315 (.D(n2578), .CK(count_15__N_108), .CD(count_15__N_157), 
           .Q(n1427));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i315.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_112_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[9]), .Z(count_15__N_175)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_112_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_106_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[15]), .Z(count_15__N_157)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_106_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_105_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2551), .Z(count_15__N_154)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_105_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_114_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[7]), .Z(count_15__N_181)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_114_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_120_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2550), .Z(count_15__N_199)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_120_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_96_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[9]), .Z(count_15__N_127)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_96_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(n2551), .Z(count_15__N_202)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_2_lut_3_lut_3_lut.init = 16'hcece;
    FD1S3DX count_i7_348_349_reset (.D(count_15__N_92[7]), .CK(freeprecess_minus), 
            .CD(count_15__N_181), .Q(n1461)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i7_348_349_reset.GSR = "ENABLED";
    LUT4 count_15__N_109_I_0_108_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[13]), .Z(count_15__N_163)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_108_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_104_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(n2550), .Z(count_15__N_151)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_104_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_101_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[4]), .Z(count_15__N_142)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_101_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 i609_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[12]), 
         .Z(count_15__N_118)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i609_3_lut.init = 16'heaea;
    LUT4 count_15__N_109_I_0_100_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[5]), .Z(count_15__N_139)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_100_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_92_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[13]), .Z(count_15__N_115)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_92_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_98_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[7]), .Z(count_15__N_133)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_98_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_91_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[14]), .Z(count_15__N_112)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_91_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_107_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[14]), .Z(count_15__N_160)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_107_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__I_0_121_2_lut_3_lut_3_lut (.A(freeprecess_plus), .B(load_defaults), 
         .C(count_15__N_111[15]), .Z(count_15__N_108)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__I_0_121_2_lut_3_lut_3_lut.init = 16'h2020;
    LUT4 count_15__N_109_I_0_117_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[4]), .Z(count_15__N_190)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_117_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 count_15__N_109_I_0_116_2_lut_3_lut_3_lut (.A(freeprecess_plus), 
         .B(load_defaults), .C(count_15__N_111[5]), .Z(count_15__N_187)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(21[9] 28[7])
    defparam count_15__N_109_I_0_116_2_lut_3_lut_3_lut.init = 16'hcece;
    LUT4 i1_2_lut_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_184)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_21 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[11]), .Z(count_15__N_169)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_21.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_22 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[8]), .Z(count_15__N_178)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_22.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_23 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[12]), .Z(count_15__N_166)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_23.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_24 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[10]), .Z(count_15__N_172)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_24.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_25 (.A(load_defaults), .B(freeprecess_plus), 
         .C(\count_15__N_111[2] ), .Z(count_15__N_196)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_25.init = 16'h0404;
    LUT4 i1_2_lut_3_lut_adj_26 (.A(load_defaults), .B(freeprecess_plus), 
         .C(count_15__N_111[3]), .Z(count_15__N_193)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_2_lut_3_lut_adj_26.init = 16'h0404;
    LUT4 i374_3_lut_rep_39 (.A(n1485), .B(n1484), .C(freeprecess_minus_enable_5), 
         .Z(n2550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i374_3_lut_rep_39.init = 16'hcaca;
    LUT4 i314_3_lut_rep_40 (.A(n1425), .B(n1424), .C(freeprecess_minus_enable_4), 
         .Z(n2551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i314_3_lut_rep_40.init = 16'hcaca;
    LUT4 i613_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[6]), 
         .Z(count_15__N_136)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i613_3_lut.init = 16'heaea;
    FD1S3BX count_i7_348_349_set (.D(count_15__N_92[7]), .CK(freeprecess_minus), 
            .PD(count_15__N_133), .Q(n1460)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i7_348_349_set.GSR = "ENABLED";
    FD1S3DX count_i11_332_333_reset (.D(count_15__N_92[11]), .CK(freeprecess_minus), 
            .CD(count_15__N_169), .Q(n1445)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i11_332_333_reset.GSR = "ENABLED";
    FD1S3BX count_i11_332_333_set (.D(count_15__N_92[11]), .CK(freeprecess_minus), 
            .PD(count_15__N_121), .Q(n1444)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i11_332_333_set.GSR = "ENABLED";
    FD1S3DX count_i8_344_345_reset (.D(count_15__N_92[8]), .CK(freeprecess_minus), 
            .CD(count_15__N_178), .Q(n1457)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i8_344_345_reset.GSR = "ENABLED";
    FD1S3DX count_i15_316_317_reset (.D(count_15__N_92[15]), .CK(freeprecess_minus), 
            .CD(count_15__N_157), .Q(n1429)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i15_316_317_reset.GSR = "ENABLED";
    LUT4 i611_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[10]), 
         .Z(count_15__N_124)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i611_3_lut.init = 16'heaea;
    FD1S3BX count_i8_344_345_set (.D(count_15__N_92[8]), .CK(freeprecess_minus), 
            .PD(count_15__N_130), .Q(n1456)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i8_344_345_set.GSR = "ENABLED";
    FD1S3BX count_i13_324_325_set (.D(count_15__N_92[13]), .CK(freeprecess_minus), 
            .PD(count_15__N_115), .Q(n1436)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i13_324_325_set.GSR = "ENABLED";
    FD1P3DX count_i0_312_313_reset (.D(n1424), .SP(freeprecess_minus_enable_4), 
            .CK(freeprecess_minus), .CD(count_15__N_202), .Q(n1425)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i0_312_313_reset.GSR = "ENABLED";
    FD1S3DX count_i9_340_341_reset (.D(count_15__N_92[9]), .CK(freeprecess_minus), 
            .CD(count_15__N_175), .Q(n1453)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i9_340_341_reset.GSR = "ENABLED";
    FD1S3BX count_i9_340_341_set (.D(count_15__N_92[9]), .CK(freeprecess_minus), 
            .PD(count_15__N_127), .Q(n1452)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i9_340_341_set.GSR = "ENABLED";
    FD1S3DX count_i12_328_329_reset (.D(count_15__N_92[12]), .CK(freeprecess_minus), 
            .CD(count_15__N_166), .Q(n1441)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i12_328_329_reset.GSR = "ENABLED";
    FD1P3DX count_i1_372_373_reset (.D(n1484), .SP(freeprecess_minus_enable_5), 
            .CK(freeprecess_minus), .CD(count_15__N_199), .Q(n1485)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i1_372_373_reset.GSR = "ENABLED";
    FD1S3BX count_i12_328_329_set (.D(count_15__N_92[12]), .CK(freeprecess_minus), 
            .PD(count_15__N_118), .Q(n1440)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i12_328_329_set.GSR = "ENABLED";
    FD1S3DX count_i10_336_337_reset (.D(count_15__N_92[10]), .CK(freeprecess_minus), 
            .CD(count_15__N_172), .Q(n1449)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i10_336_337_reset.GSR = "ENABLED";
    FD1P3DX count_i2_368_369_reset (.D(n1480), .SP(freeprecess_minus_enable_6), 
            .CK(freeprecess_minus), .CD(count_15__N_196), .Q(n1481)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i2_368_369_reset.GSR = "ENABLED";
    FD1S3BX count_i10_336_337_set (.D(count_15__N_92[10]), .CK(freeprecess_minus), 
            .PD(count_15__N_124), .Q(n1448)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i10_336_337_set.GSR = "ENABLED";
    FD1S3DX count_i13_324_325_reset (.D(count_15__N_92[13]), .CK(freeprecess_minus), 
            .CD(count_15__N_163), .Q(n1437)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i13_324_325_reset.GSR = "ENABLED";
    FD1S3BX count_i14_320_321_set (.D(count_15__N_92[14]), .CK(freeprecess_minus), 
            .PD(count_15__N_112), .Q(n1432)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i14_320_321_set.GSR = "ENABLED";
    FD1S3BX count_i15_316_317_set (.D(count_15__N_92[15]), .CK(freeprecess_minus), 
            .PD(count_15__N_108), .Q(n1428)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i15_316_317_set.GSR = "ENABLED";
    FD1S1D i319 (.D(n2578), .CK(count_15__N_112), .CD(count_15__N_160), 
           .Q(n1431));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i319.GSR = "ENABLED";
    FD1S1D i323 (.D(n2578), .CK(count_15__N_115), .CD(count_15__N_163), 
           .Q(n1435));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i323.GSR = "ENABLED";
    FD1S1D i327 (.D(n2578), .CK(count_15__N_118), .CD(count_15__N_166), 
           .Q(n1439));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i327.GSR = "ENABLED";
    FD1S1D i331 (.D(n2578), .CK(count_15__N_121), .CD(count_15__N_169), 
           .Q(n1443));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i331.GSR = "ENABLED";
    FD1S1D i335 (.D(n2578), .CK(count_15__N_124), .CD(count_15__N_172), 
           .Q(n1447));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i335.GSR = "ENABLED";
    FD1S1D i339 (.D(n2578), .CK(count_15__N_127), .CD(count_15__N_175), 
           .Q(n1451));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i339.GSR = "ENABLED";
    FD1S1D i343 (.D(n2578), .CK(count_15__N_130), .CD(count_15__N_178), 
           .Q(n1455));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i343.GSR = "ENABLED";
    FD1S1D i347 (.D(n2578), .CK(count_15__N_133), .CD(count_15__N_181), 
           .Q(n1459));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i347.GSR = "ENABLED";
    FD1S1D i351 (.D(n2578), .CK(count_15__N_136), .CD(count_15__N_184), 
           .Q(n1463));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i351.GSR = "ENABLED";
    FD1S1D i355 (.D(n2578), .CK(count_15__N_139), .CD(count_15__N_187), 
           .Q(n1467));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i355.GSR = "ENABLED";
    FD1S1D i359 (.D(n2578), .CK(count_15__N_142), .CD(count_15__N_190), 
           .Q(n1471));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i359.GSR = "ENABLED";
    FD1S1D i363 (.D(n2578), .CK(count_15__N_145), .CD(count_15__N_193), 
           .Q(n1475));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i363.GSR = "ENABLED";
    FD1S1D i367 (.D(n2578), .CK(count_15__N_148), .CD(count_15__N_196), 
           .Q(freeprecess_minus_enable_6));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i367.GSR = "ENABLED";
    FD1S1D i371 (.D(n2578), .CK(count_15__N_151), .CD(count_15__N_199), 
           .Q(freeprecess_minus_enable_5));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i371.GSR = "ENABLED";
    FD1S3DX count_i3_364_365_reset (.D(count_15__N_92[3]), .CK(freeprecess_minus), 
            .CD(count_15__N_193), .Q(n1477)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i3_364_365_reset.GSR = "ENABLED";
    FD1S3BX count_i3_364_365_set (.D(count_15__N_92[3]), .CK(freeprecess_minus), 
            .PD(count_15__N_145), .Q(n1476)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i3_364_365_set.GSR = "ENABLED";
    FD1S3DX count_i4_360_361_reset (.D(count_15__N_92[4]), .CK(freeprecess_minus), 
            .CD(count_15__N_190), .Q(n1473)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i4_360_361_reset.GSR = "ENABLED";
    FD1S3DX count_i14_320_321_reset (.D(count_15__N_92[14]), .CK(freeprecess_minus), 
            .CD(count_15__N_160), .Q(n1433)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i14_320_321_reset.GSR = "ENABLED";
    FD1S3BX count_i4_360_361_set (.D(count_15__N_92[4]), .CK(freeprecess_minus), 
            .PD(count_15__N_142), .Q(n1472)) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=193, LSE_LLINE=59, LSE_RLINE=59 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam count_i4_360_361_set.GSR = "ENABLED";
    LUT4 i614_3_lut (.A(load_defaults), .B(freeprecess_plus), .C(count_15__N_111[3]), 
         .Z(count_15__N_145)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i614_3_lut.init = 16'heaea;
    LUT4 i366_3_lut (.A(n1477), .B(n1476), .C(n1475), .Z(\AdjustableFreePrecession[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i366_3_lut.init = 16'hcaca;
    LUT4 i358_3_lut (.A(n1469), .B(n1468), .C(n1467), .Z(\AdjustableFreePrecession[5] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam i358_3_lut.init = 16'hcaca;
    CCU2D add_140_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\AdjustableFreePrecession[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2303), .S1(count_15__N_111[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_1.INIT0 = 16'hF000;
    defparam add_140_1.INIT1 = 16'h5555;
    defparam add_140_1.INJECT1_0 = "NO";
    defparam add_140_1.INJECT1_1 = "NO";
    CCU2D add_140_3 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2303), .COUT(n2304), .S0(count_15__N_111[4]), 
          .S1(count_15__N_111[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_3.INIT0 = 16'h5aaa;
    defparam add_140_3.INIT1 = 16'h5aaa;
    defparam add_140_3.INJECT1_0 = "NO";
    defparam add_140_3.INJECT1_1 = "NO";
    CCU2D add_140_5 (.A0(\AdjustableFreePrecession[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2304), .COUT(n2305), .S0(count_15__N_111[6]), 
          .S1(count_15__N_111[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_5.INIT0 = 16'h5555;
    defparam add_140_5.INIT1 = 16'h5555;
    defparam add_140_5.INJECT1_0 = "NO";
    defparam add_140_5.INJECT1_1 = "NO";
    CCU2D add_140_7 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2305), .COUT(n2306), .S0(count_15__N_111[8]), 
          .S1(count_15__N_111[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_7.INIT0 = 16'h5aaa;
    defparam add_140_7.INIT1 = 16'h5aaa;
    defparam add_140_7.INJECT1_0 = "NO";
    defparam add_140_7.INJECT1_1 = "NO";
    CCU2D add_140_9 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2306), .COUT(n2307), 
          .S0(count_15__N_111[10]), .S1(count_15__N_111[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_9.INIT0 = 16'h5aaa;
    defparam add_140_9.INIT1 = 16'h5aaa;
    defparam add_140_9.INJECT1_0 = "NO";
    defparam add_140_9.INJECT1_1 = "NO";
    CCU2D add_140_11 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2307), .COUT(n2308), 
          .S0(count_15__N_111[12]), .S1(count_15__N_111[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_11.INIT0 = 16'h5aaa;
    defparam add_140_11.INIT1 = 16'h5aaa;
    defparam add_140_11.INJECT1_0 = "NO";
    defparam add_140_11.INJECT1_1 = "NO";
    CCU2D add_140_13 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2308), .S0(count_15__N_111[14]), 
          .S1(count_15__N_111[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(23[15:32])
    defparam add_140_13.INIT0 = 16'h5aaa;
    defparam add_140_13.INIT1 = 16'h5aaa;
    defparam add_140_13.INJECT1_0 = "NO";
    defparam add_140_13.INJECT1_1 = "NO";
    CCU2D add_102_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(n1475), .C1(n1476), .D1(n1477), 
          .COUT(n2326), .S1(count_15__N_92[3]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_1.INIT0 = 16'hF000;
    defparam add_102_1.INIT1 = 16'h596a;
    defparam add_102_1.INJECT1_0 = "NO";
    defparam add_102_1.INJECT1_1 = "NO";
    CCU2D add_102_3 (.A0(freeprecess_minus), .B0(n1471), .C0(n1472), .D0(n1473), 
          .A1(freeprecess_minus), .B1(n1467), .C1(n1468), .D1(n1469), 
          .CIN(n2326), .COUT(n2327), .S0(count_15__N_92[4]), .S1(count_15__N_92[5]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_3.INIT0 = 16'h596a;
    defparam add_102_3.INIT1 = 16'h596a;
    defparam add_102_3.INJECT1_0 = "NO";
    defparam add_102_3.INJECT1_1 = "NO";
    CCU2D add_102_5 (.A0(\AdjustableFreePrecession[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2327), .COUT(n2328), .S0(count_15__N_92[6]), 
          .S1(count_15__N_92[7]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_5.INIT0 = 16'h5aaa;
    defparam add_102_5.INIT1 = 16'h5aaa;
    defparam add_102_5.INJECT1_0 = "NO";
    defparam add_102_5.INJECT1_1 = "NO";
    CCU2D add_102_7 (.A0(freeprecess_minus), .B0(n1455), .C0(n1456), .D0(n1457), 
          .A1(freeprecess_minus), .B1(n1451), .C1(n1452), .D1(n1453), 
          .CIN(n2328), .COUT(n2329), .S0(count_15__N_92[8]), .S1(count_15__N_92[9]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_7.INIT0 = 16'h596a;
    defparam add_102_7.INIT1 = 16'h596a;
    defparam add_102_7.INJECT1_0 = "NO";
    defparam add_102_7.INJECT1_1 = "NO";
    CCU2D add_102_9 (.A0(freeprecess_minus), .B0(n1447), .C0(n1448), .D0(n1449), 
          .A1(freeprecess_minus), .B1(n1443), .C1(n1444), .D1(n1445), 
          .CIN(n2329), .COUT(n2330), .S0(count_15__N_92[10]), .S1(count_15__N_92[11]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_9.INIT0 = 16'h596a;
    defparam add_102_9.INIT1 = 16'h596a;
    defparam add_102_9.INJECT1_0 = "NO";
    defparam add_102_9.INJECT1_1 = "NO";
    CCU2D add_102_11 (.A0(freeprecess_minus), .B0(n1439), .C0(n1440), 
          .D0(n1441), .A1(freeprecess_minus), .B1(n1435), .C1(n1436), 
          .D1(n1437), .CIN(n2330), .COUT(n2331), .S0(count_15__N_92[12]), 
          .S1(count_15__N_92[13]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_11.INIT0 = 16'h596a;
    defparam add_102_11.INIT1 = 16'h596a;
    defparam add_102_11.INJECT1_0 = "NO";
    defparam add_102_11.INJECT1_1 = "NO";
    CCU2D add_102_13 (.A0(freeprecess_minus), .B0(n1431), .C0(n1432), 
          .D0(n1433), .A1(freeprecess_minus), .B1(n1427), .C1(n1428), 
          .D1(n1429), .CIN(n2331), .S0(count_15__N_92[14]), .S1(count_15__N_92[15]));   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(25[10] 27[8])
    defparam add_102_13.INIT0 = 16'h596a;
    defparam add_102_13.INIT1 = 16'h596a;
    defparam add_102_13.INJECT1_0 = "NO";
    defparam add_102_13.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (GND_net, gatedcount, Endof2ndMWpulse, n235) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Endof2ndMWpulse;
    output n235;
    
    
    wire n2287, n2288, n2289, n2290, n2291, n2292, n2293, n2294;
    
    CCU2D sub_107_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endof2ndMWpulse[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2287));
    defparam sub_107_add_2_1.INIT0 = 16'h0000;
    defparam sub_107_add_2_1.INIT1 = 16'h5999;
    defparam sub_107_add_2_1.INJECT1_0 = "NO";
    defparam sub_107_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_3 (.A0(gatedcount[1]), .B0(Endof2ndMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endof2ndMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2287), .COUT(n2288));
    defparam sub_107_add_2_3.INIT0 = 16'h5999;
    defparam sub_107_add_2_3.INIT1 = 16'h5999;
    defparam sub_107_add_2_3.INJECT1_0 = "NO";
    defparam sub_107_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_5 (.A0(gatedcount[3]), .B0(Endof2ndMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endof2ndMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2288), .COUT(n2289));
    defparam sub_107_add_2_5.INIT0 = 16'h5999;
    defparam sub_107_add_2_5.INIT1 = 16'h5999;
    defparam sub_107_add_2_5.INJECT1_0 = "NO";
    defparam sub_107_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_7 (.A0(gatedcount[5]), .B0(Endof2ndMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endof2ndMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2289), .COUT(n2290));
    defparam sub_107_add_2_7.INIT0 = 16'h5999;
    defparam sub_107_add_2_7.INIT1 = 16'h5999;
    defparam sub_107_add_2_7.INJECT1_0 = "NO";
    defparam sub_107_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_9 (.A0(gatedcount[7]), .B0(Endof2ndMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endof2ndMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2290), .COUT(n2291));
    defparam sub_107_add_2_9.INIT0 = 16'h5999;
    defparam sub_107_add_2_9.INIT1 = 16'h5999;
    defparam sub_107_add_2_9.INJECT1_0 = "NO";
    defparam sub_107_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_11 (.A0(gatedcount[9]), .B0(Endof2ndMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endof2ndMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2291), .COUT(n2292));
    defparam sub_107_add_2_11.INIT0 = 16'h5999;
    defparam sub_107_add_2_11.INIT1 = 16'h5999;
    defparam sub_107_add_2_11.INJECT1_0 = "NO";
    defparam sub_107_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_13 (.A0(gatedcount[11]), .B0(Endof2ndMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endof2ndMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2292), .COUT(n2293));
    defparam sub_107_add_2_13.INIT0 = 16'h5999;
    defparam sub_107_add_2_13.INIT1 = 16'h5999;
    defparam sub_107_add_2_13.INJECT1_0 = "NO";
    defparam sub_107_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_15 (.A0(gatedcount[13]), .B0(Endof2ndMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endof2ndMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2293), .COUT(n2294));
    defparam sub_107_add_2_15.INIT0 = 16'h5999;
    defparam sub_107_add_2_15.INIT1 = 16'h5999;
    defparam sub_107_add_2_15.INJECT1_0 = "NO";
    defparam sub_107_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_107_add_2_17 (.A0(gatedcount[15]), .B0(Endof2ndMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2294), .S1(n235));
    defparam sub_107_add_2_17.INIT0 = 16'h5999;
    defparam sub_107_add_2_17.INIT1 = 16'h0000;
    defparam sub_107_add_2_17.INJECT1_0 = "NO";
    defparam sub_107_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (GND_net, gatedcount, Startof2ndMWpulse, pi2started) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Startof2ndMWpulse;
    output pi2started;
    
    
    wire n2310, n2311, n2312, n2313, n2314, n2315, n2316, n2317;
    
    CCU2D sub_105_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Startof2ndMWpulse[0]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2310));
    defparam sub_105_add_2_1.INIT0 = 16'h0000;
    defparam sub_105_add_2_1.INIT1 = 16'h5999;
    defparam sub_105_add_2_1.INJECT1_0 = "NO";
    defparam sub_105_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_3 (.A0(gatedcount[1]), .B0(Startof2ndMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Startof2ndMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2310), .COUT(n2311));
    defparam sub_105_add_2_3.INIT0 = 16'h5999;
    defparam sub_105_add_2_3.INIT1 = 16'h5999;
    defparam sub_105_add_2_3.INJECT1_0 = "NO";
    defparam sub_105_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_5 (.A0(gatedcount[3]), .B0(Startof2ndMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Startof2ndMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2311), .COUT(n2312));
    defparam sub_105_add_2_5.INIT0 = 16'h5999;
    defparam sub_105_add_2_5.INIT1 = 16'h5999;
    defparam sub_105_add_2_5.INJECT1_0 = "NO";
    defparam sub_105_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_7 (.A0(gatedcount[5]), .B0(Startof2ndMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Startof2ndMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2312), .COUT(n2313));
    defparam sub_105_add_2_7.INIT0 = 16'h5999;
    defparam sub_105_add_2_7.INIT1 = 16'h5999;
    defparam sub_105_add_2_7.INJECT1_0 = "NO";
    defparam sub_105_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_9 (.A0(gatedcount[7]), .B0(Startof2ndMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Startof2ndMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2313), .COUT(n2314));
    defparam sub_105_add_2_9.INIT0 = 16'h5999;
    defparam sub_105_add_2_9.INIT1 = 16'h5999;
    defparam sub_105_add_2_9.INJECT1_0 = "NO";
    defparam sub_105_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_11 (.A0(gatedcount[9]), .B0(Startof2ndMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Startof2ndMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2314), .COUT(n2315));
    defparam sub_105_add_2_11.INIT0 = 16'h5999;
    defparam sub_105_add_2_11.INIT1 = 16'h5999;
    defparam sub_105_add_2_11.INJECT1_0 = "NO";
    defparam sub_105_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_13 (.A0(gatedcount[11]), .B0(Startof2ndMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Startof2ndMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2315), .COUT(n2316));
    defparam sub_105_add_2_13.INIT0 = 16'h5999;
    defparam sub_105_add_2_13.INIT1 = 16'h5999;
    defparam sub_105_add_2_13.INJECT1_0 = "NO";
    defparam sub_105_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_15 (.A0(gatedcount[13]), .B0(Startof2ndMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Startof2ndMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2316), .COUT(n2317));
    defparam sub_105_add_2_15.INIT0 = 16'h5999;
    defparam sub_105_add_2_15.INIT1 = 16'h5999;
    defparam sub_105_add_2_15.INJECT1_0 = "NO";
    defparam sub_105_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_105_add_2_17 (.A0(gatedcount[15]), .B0(Startof2ndMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2317), .S1(pi2started));
    defparam sub_105_add_2_17.INIT0 = 16'h5999;
    defparam sub_105_add_2_17.INIT1 = 16'h0000;
    defparam sub_105_add_2_17.INJECT1_0 = "NO";
    defparam sub_105_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (GND_net, gatedcount, Endof1stMWpulse, n197) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input [15:0]gatedcount;
    input [15:0]Endof1stMWpulse;
    output n197;
    
    
    wire n2318, n2319, n2320, n2321, n2322, n2323, n2324, n2325;
    
    CCU2D sub_103_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(gatedcount[0]), .B1(Endof1stMWpulse[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n2318));
    defparam sub_103_add_2_1.INIT0 = 16'h0000;
    defparam sub_103_add_2_1.INIT1 = 16'h5999;
    defparam sub_103_add_2_1.INJECT1_0 = "NO";
    defparam sub_103_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_3 (.A0(gatedcount[1]), .B0(Endof1stMWpulse[1]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[2]), .B1(Endof1stMWpulse[2]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2318), .COUT(n2319));
    defparam sub_103_add_2_3.INIT0 = 16'h5999;
    defparam sub_103_add_2_3.INIT1 = 16'h5999;
    defparam sub_103_add_2_3.INJECT1_0 = "NO";
    defparam sub_103_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_5 (.A0(gatedcount[3]), .B0(Endof1stMWpulse[3]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[4]), .B1(Endof1stMWpulse[4]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2319), .COUT(n2320));
    defparam sub_103_add_2_5.INIT0 = 16'h5999;
    defparam sub_103_add_2_5.INIT1 = 16'h5999;
    defparam sub_103_add_2_5.INJECT1_0 = "NO";
    defparam sub_103_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_7 (.A0(gatedcount[5]), .B0(Endof1stMWpulse[5]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[6]), .B1(Endof1stMWpulse[6]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2320), .COUT(n2321));
    defparam sub_103_add_2_7.INIT0 = 16'h5999;
    defparam sub_103_add_2_7.INIT1 = 16'h5999;
    defparam sub_103_add_2_7.INJECT1_0 = "NO";
    defparam sub_103_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_9 (.A0(gatedcount[7]), .B0(Endof1stMWpulse[7]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[8]), .B1(Endof1stMWpulse[8]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2321), .COUT(n2322));
    defparam sub_103_add_2_9.INIT0 = 16'h5999;
    defparam sub_103_add_2_9.INIT1 = 16'h5999;
    defparam sub_103_add_2_9.INJECT1_0 = "NO";
    defparam sub_103_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_11 (.A0(gatedcount[9]), .B0(Endof1stMWpulse[9]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[10]), .B1(Endof1stMWpulse[10]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2322), .COUT(n2323));
    defparam sub_103_add_2_11.INIT0 = 16'h5999;
    defparam sub_103_add_2_11.INIT1 = 16'h5999;
    defparam sub_103_add_2_11.INJECT1_0 = "NO";
    defparam sub_103_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_13 (.A0(gatedcount[11]), .B0(Endof1stMWpulse[11]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[12]), .B1(Endof1stMWpulse[12]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2323), .COUT(n2324));
    defparam sub_103_add_2_13.INIT0 = 16'h5999;
    defparam sub_103_add_2_13.INIT1 = 16'h5999;
    defparam sub_103_add_2_13.INJECT1_0 = "NO";
    defparam sub_103_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_15 (.A0(gatedcount[13]), .B0(Endof1stMWpulse[13]), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[14]), .B1(Endof1stMWpulse[14]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2324), .COUT(n2325));
    defparam sub_103_add_2_15.INIT0 = 16'h5999;
    defparam sub_103_add_2_15.INIT1 = 16'h5999;
    defparam sub_103_add_2_15.INJECT1_0 = "NO";
    defparam sub_103_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_103_add_2_17 (.A0(gatedcount[15]), .B0(Endof1stMWpulse[15]), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2325), .S1(n197));
    defparam sub_103_add_2_17.INIT0 = 16'h5999;
    defparam sub_103_add_2_17.INIT1 = 16'h0000;
    defparam sub_103_add_2_17.INJECT1_0 = "NO";
    defparam sub_103_add_2_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (n2459, gatedcount, n2460, n1757) /* synthesis syn_module_defined=1 */ ;
    output n2459;
    input [15:0]gatedcount;
    output n2460;
    output n1757;
    
    
    wire n7, n8, n2477, n6, n5, n4;
    
    LUT4 i2_4_lut (.A(n2459), .B(n7), .C(gatedcount[10]), .D(n8), .Z(n2460)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i2_2_lut (.A(gatedcount[8]), .B(gatedcount[7]), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i3_4_lut (.A(n2477), .B(gatedcount[3]), .C(gatedcount[9]), .D(gatedcount[4]), 
         .Z(n8)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'ha080;
    LUT4 i1_2_lut (.A(gatedcount[5]), .B(gatedcount[6]), .Z(n2477)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i4_4_lut (.A(gatedcount[15]), .B(gatedcount[12]), .C(gatedcount[14]), 
         .D(n6), .Z(n2459)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_19 (.A(gatedcount[11]), .B(gatedcount[13]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut_adj_19.init = 16'heeee;
    LUT4 i632_4_lut (.A(n5), .B(gatedcount[10]), .C(gatedcount[7]), .D(gatedcount[8]), 
         .Z(n1757)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i632_4_lut.init = 16'hccc8;
    LUT4 i1_4_lut (.A(gatedcount[4]), .B(gatedcount[9]), .C(n2477), .D(n4), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_20 (.A(gatedcount[0]), .B(gatedcount[3]), .C(gatedcount[2]), 
         .D(gatedcount[1]), .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_20.init = 16'hfcec;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clocks
//

module clocks (GND_net, clk_2M5_N_30, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output clk_2M5_N_30;
    output clk_2M5;
    
    wire clk_debug /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(clk_debug)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=98, LSE_LLINE=67, LSE_RLINE=67 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(67[9:98])
    defparam OSCinst0.NOM_FREQ = "38.00";
    DebugPLL PLL (.clk_2M5_N_30(clk_2M5_N_30), .clk_2M5(clk_2M5), .clk_debug(clk_debug), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(39[11:59])
    
endmodule
//
// Verilog Description of module DebugPLL
//

module DebugPLL (clk_2M5_N_30, clk_2M5, clk_debug, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_30;
    output clk_2M5;
    input clk_debug;
    input GND_net;
    
    wire clk_2M5_N_30 /* synthesis is_inv_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire clk_debug /* synthesis is_clock=1 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(21[18:27])
    
    wire CLKFB_t;
    
    INV i934 (.A(clk_2M5), .Z(clk_2M5_N_30));
    EHXPLLJ PLLInst_0 (.CLKI(clk_debug), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_2M5), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.533333", FREQUENCY_PIN_CLKI="38.000000", ICP_CURRENT="7", LPF_RESISTOR="68", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=11, LSE_RCOL=59, LSE_LLINE=39, LSE_RLINE=39 */ ;   // c:/users/shift/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(39[11:59])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 15;
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
    defparam PLLInst_0.CLKOP_CPHASE = 14;
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
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:10:56 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 40 -num_rows 256 -rdata_width 40 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr40825640825611ac8150 -pmi -lang verilog  */
/* Fri Feb 25 16:10:56 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr40825640825611ac8150 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [39:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [39:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(scuba_vlo), 
        .DI4(scuba_vlo), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(scuba_vlo), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(), .DO13(), .DO12(Q[39]), 
        .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), .DO8(), .DO7(), .DO6(), 
        .DO5(), .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2 MEM_LPC_FILE pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_0_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_1_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr40825640825611ac8150__PMIP__256__40__40B
    // exemplar attribute pmi_ram_dpXbnonesadr40825640825611ac8150_0_2_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:12:45 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 8 -num_rows 256 -rdata_width 8 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr88256882561188b9d5 -pmi -lang verilog  */
/* Fri Feb 25 16:12:45 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr88256882561188b9d5 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [7:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(WrAddress[7]), .ADA9(WrAddress[6]), 
        .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), .ADA5(WrAddress[2]), 
        .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr88256882561188b9d5__PMIP__256__8__8B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr88256882561188b9d5__PMIP__256__8__8B
    // exemplar attribute pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:14:52 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 8 -num_rows 256 -rdata_width 8 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr88256882561188b9d5 -pmi -lang verilog  */
/* Fri Feb 25 16:14:52 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr88256882561188b9d5 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [7:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [7:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0.DATA_WIDTH_A = 9 ;
    DP8KC pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(WrAddress[7]), .ADA9(WrAddress[6]), 
        .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), .ADA5(WrAddress[2]), 
        .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), .ADA1(scuba_vlo), 
        .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr88256882561188b9d5__PMIP__256__8__8B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr88256882561188b9d5__PMIP__256__8__8B
    // exemplar attribute pmi_ram_dpXbnonesadr88256882561188b9d5_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:31:55 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 24 -num_rows 256 -rdata_width 24 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr24825624825611ac929f -pmi -lang verilog  */
/* Fri Feb 25 16:31:55 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr24825624825611ac929f (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [7:0] WrAddress;
    input wire [7:0] RdAddress;
    input wire [23:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [23:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr24825624825611ac929f__PMIP__256__24__24B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(Q[23]), .DO13(Q[22]), 
        .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), .DO8(), .DO7(), 
        .DO6(), .DO5(), .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr24825624825611ac929f__PMIP__256__24__24B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr24825624825611ac929f__PMIP__256__24__24B
    // exemplar attribute pmi_ram_dpXbnonesadr24825624825611ac929f_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr24825624825611ac929f__PMIP__256__24__24B
    // exemplar attribute pmi_ram_dpXbnonesadr24825624825611ac929f_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:32:15 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 24 -num_rows 128 -rdata_width 24 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr24712824712811ac785e -pmi -lang verilog  */
/* Fri Feb 25 16:32:15 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr24712824712811ac785e (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [6:0] WrAddress;
    input wire [6:0] RdAddress;
    input wire [23:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [23:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(scuba_vlo), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), 
        .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), 
        .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), 
        .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), .CSR2(scuba_vlo), 
        .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), .DO17(Q[8]), .DO16(Q[7]), 
        .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), .DO11(Q[2]), 
        .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), .DO7(Q[16]), .DO6(Q[15]), 
        .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), .DO1(Q[10]), 
        .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr24712824712811ac785e__PMIP__128__24__24B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(scuba_vlo), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(scuba_vlo), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(Q[23]), .DO13(Q[22]), 
        .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), .DO8(), .DO7(), 
        .DO6(), .DO5(), .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr24712824712811ac785e__PMIP__128__24__24B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr24712824712811ac785e__PMIP__128__24__24B
    // exemplar attribute pmi_ram_dpXbnonesadr24712824712811ac785e_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr24712824712811ac785e__PMIP__128__24__24B
    // exemplar attribute pmi_ram_dpXbnonesadr24712824712811ac785e_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:32:40 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 20 -num_rows 128 -rdata_width 20 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr20712820712811ac5a67 -pmi -lang verilog  */
/* Fri Feb 25 16:32:40 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr20712820712811ac5a67 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [6:0] WrAddress;
    input wire [6:0] RdAddress;
    input wire [19:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [19:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(scuba_vlo), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), 
        .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), 
        .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), 
        .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), .CSR2(scuba_vlo), 
        .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), .DO17(Q[8]), .DO16(Q[7]), 
        .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), .DO11(Q[2]), 
        .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), .DO7(Q[16]), .DO6(Q[15]), 
        .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), .DO1(Q[10]), 
        .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr20712820712811ac5a67__PMIP__128__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(scuba_vlo), 
        .DI4(scuba_vlo), .DI3(scuba_vlo), .DI2(scuba_vlo), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(scuba_vlo), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(scuba_vlo), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(), .DO13(), .DO12(), 
        .DO11(), .DO10(Q[19]), .DO9(Q[18]), .DO8(), .DO7(), .DO6(), .DO5(), 
        .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr20712820712811ac5a67__PMIP__128__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr20712820712811ac5a67__PMIP__128__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr20712820712811ac5a67_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr20712820712811ac5a67__PMIP__128__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr20712820712811ac5a67_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:33:01 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 20 -num_rows 64 -rdata_width 20 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr206642066411885e40 -pmi -lang verilog  */
/* Fri Feb 25 16:33:01 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr206642066411885e40 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [5:0] WrAddress;
    input wire [5:0] RdAddress;
    input wire [19:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [19:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr206642066411885e40_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(scuba_vlo), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(scuba_vlo), .ADR10(scuba_vlo), .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), 
        .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), 
        .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), 
        .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), .CSR2(scuba_vlo), 
        .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), .DO17(Q[8]), .DO16(Q[7]), 
        .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), .DO11(Q[2]), 
        .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), .DO7(Q[16]), .DO6(Q[15]), 
        .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), .DO1(Q[10]), 
        .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr206642066411885e40__PMIP__64__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr206642066411885e40_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr206642066411885e40_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(scuba_vlo), 
        .DI4(scuba_vlo), .DI3(scuba_vlo), .DI2(scuba_vlo), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(scuba_vlo), .ADW6(scuba_vlo), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(scuba_vlo), .ADR10(scuba_vlo), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(), .DO13(), .DO12(), 
        .DO11(), .DO10(Q[19]), .DO9(Q[18]), .DO8(), .DO7(), .DO6(), .DO5(), 
        .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr206642066411885e40__PMIP__64__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr206642066411885e40_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr206642066411885e40__PMIP__64__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr206642066411885e40_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr206642066411885e40_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr206642066411885e40__PMIP__64__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr206642066411885e40_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 16 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr141614161164462a -pmi -lang verilog  */
/* Fri Feb 25 16:39:23 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr141614161164462a (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [3:0] WrAddress;
    input wire [3:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpXbnonesadr141614161164462a_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KC pmi_ram_dpXbnonesadr141614161164462a_0_0_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), 
        .DIA3(scuba_vlo), .DIA2(scuba_vlo), .DIA1(Data[0]), .DIA0(scuba_vlo), 
        .ADA12(scuba_vlo), .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), 
        .ADA8(scuba_vlo), .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), 
        .ADA4(scuba_vlo), .ADA3(WrAddress[3]), .ADA2(WrAddress[2]), .ADA1(WrAddress[1]), 
        .ADA0(WrAddress[0]), .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), 
        .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(scuba_vlo), .ADB11(scuba_vlo), 
        .ADB10(scuba_vlo), .ADB9(scuba_vlo), .ADB8(scuba_vlo), .ADB7(scuba_vlo), 
        .ADB6(scuba_vlo), .ADB5(scuba_vlo), .ADB4(scuba_vlo), .ADB3(RdAddress[3]), 
        .ADB2(RdAddress[2]), .ADB1(RdAddress[1]), .ADB0(RdAddress[0]), .CEB(RdClockEn), 
        .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), .CSB2(scuba_vlo), 
        .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), .DOA8(), .DOA7(), 
        .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), .DOA0(), .DOB8(), 
        .DOB7(), .DOB6(), .DOB5(), .DOB4(), .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr141614161164462a__PMIP__16__1__1B
    // exemplar attribute pmi_ram_dpXbnonesadr141614161164462a_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.1.454 */
/* Module Version: 6.5 */
/* C:/Program Files/Lattice/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch xo2c00 -type bram -wp 10 -rp 0011 -data_width 20 -num_rows 32 -rdata_width 20 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpXbnonesadr205322053211882ef7 -pmi -lang verilog  */
/* Fri Feb 25 16:39:22 2022 */


`timescale 1 ns / 1 ps
module pmi_ram_dpXbnonesadr205322053211882ef7 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [4:0] WrAddress;
    input wire [4:0] RdAddress;
    input wire [19:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [19:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(scuba_vlo), 
        .ADW7(scuba_vlo), .ADW6(scuba_vlo), .ADW5(scuba_vlo), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(scuba_vlo), 
        .ADR11(scuba_vlo), .ADR10(scuba_vlo), .ADR9(scuba_vlo), .ADR8(RdAddress[4]), 
        .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), 
        .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), .ADR0(scuba_vlo), 
        .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), .CSR2(scuba_vlo), 
        .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), .DO17(Q[8]), .DO16(Q[7]), 
        .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), .DO12(Q[3]), .DO11(Q[2]), 
        .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), .DO7(Q[16]), .DO6(Q[15]), 
        .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), .DO2(Q[11]), .DO1(Q[10]), 
        .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr205322053211882ef7__PMIP__32__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0.DATA_WIDTH_W = 18 ;
    PDPW8KC pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(scuba_vlo), 
        .DI8(scuba_vlo), .DI7(scuba_vlo), .DI6(scuba_vlo), .DI5(scuba_vlo), 
        .DI4(scuba_vlo), .DI3(scuba_vlo), .DI2(scuba_vlo), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(scuba_vlo), .ADW7(scuba_vlo), .ADW6(scuba_vlo), 
        .ADW5(scuba_vlo), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(scuba_vlo), .ADR11(scuba_vlo), .ADR10(scuba_vlo), 
        .ADR9(scuba_vlo), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(), .DO16(), .DO15(), .DO14(), .DO13(), .DO12(), 
        .DO11(), .DO10(Q[19]), .DO9(Q[18]), .DO8(), .DO7(), .DO6(), .DO5(), 
        .DO4(), .DO3(), .DO2(), .DO1(), .DO0())
             /* synthesis MEM_LPC_FILE="pmi_ram_dpXbnonesadr205322053211882ef7__PMIP__32__20__20B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1 MEM_LPC_FILE pmi_ram_dpXbnonesadr205322053211882ef7__PMIP__32__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr205322053211882ef7_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0 MEM_LPC_FILE pmi_ram_dpXbnonesadr205322053211882ef7__PMIP__32__20__20B
    // exemplar attribute pmi_ram_dpXbnonesadr205322053211882ef7_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
