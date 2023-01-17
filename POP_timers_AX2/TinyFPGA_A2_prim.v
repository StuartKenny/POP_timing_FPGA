// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.1.454
// Netlist written on Tue Jan 17 11:04:50 2023
//
// Verilog Description of module TinyFPGA_A2
//

module TinyFPGA_A2 (LED_output, mode_button, pin3_sn, load_default_button, 
            pin5, tenmegclock, topleft_button, topright_button, pin9_jtgnb, 
            bottomleft_button, bottomright_button, debug_0, debug_1, 
            debug_2, pump_output, probe_output, MW_output, sample_output) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(1[8:19])
    output LED_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    input mode_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    output pin3_sn /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(5[8:15])
    input load_default_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    output pin5 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(7[8:12])
    input tenmegclock;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(8[8:19])
    input topleft_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    input topright_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    output pin9_jtgnb /* synthesis .original_dir=IN_OUT */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(11[8:18])
    input bottomleft_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    input bottomright_button;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    output debug_0;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    output debug_1;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    output debug_2;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    output pump_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    output probe_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    output MW_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    output sample_output;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    
    wire GND_net, VCC_net, LED_output_c, mode_button_c, load_default_button_c, 
        topleft_button_c, topright_button_c, bottomleft_button_c, bottomright_button_c, 
        debug_2_c, pump_output_c, probe_output_c, MW_output_c, sample_output_c, 
        slow_pulse, medium_pulse, fast_pulse, load_defaults, pieovertwo_plus, 
        freeprecess_plus, pieovertwo_minus, freeprecess_minus;
    wire [2:0]SMstate;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(38[13:20])
    
    wire mode_button_N_41, load_default_button_N_43, topleft_button_N_45, 
        topright_button_N_47, bottomleft_button_N_49, bottomright_button_N_51, 
        LED_output_N_39, n186, sample_output_N_36, LED_output_N_1, MW_output_N_29, 
        pi2started, probestarted, state_2__N_179, debug_1_c, n2876, 
        n2875, n36, n2133, n397, n2787, n435, n2888, n2886, 
        n4, n473, n4_adj_243, n1, n2808;
    
    VHI i2 (.Z(VCC_net));
    FD1S3AX load_defaults_69 (.D(load_default_button_N_43), .CK(debounce_pulse), 
            .Q(load_defaults));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam load_defaults_69.GSR = "ENABLED";
    FD1S3JX sample_output_78 (.D(sample_output_N_36), .CK(clk_2M5), .PD(n2787), 
            .Q(sample_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam sample_output_78.GSR = "ENABLED";
    FD1S3AX pieovertwo_plus_70 (.D(topleft_button_N_45), .CK(debounce_pulse), 
            .Q(pieovertwo_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam pieovertwo_plus_70.GSR = "ENABLED";
    FD1S3AX freeprecess_plus_71 (.D(topright_button_N_47), .CK(debounce_pulse), 
            .Q(freeprecess_plus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam freeprecess_plus_71.GSR = "ENABLED";
    FD1S3AX pieovertwo_minus_72 (.D(bottomleft_button_N_49), .CK(debounce_pulse), 
            .Q(pieovertwo_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam pieovertwo_minus_72.GSR = "ENABLED";
    FD1S3AX freeprecess_minus_73 (.D(bottomright_button_N_51), .CK(debounce_pulse), 
            .Q(freeprecess_minus));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam freeprecess_minus_73.GSR = "ENABLED";
    FD1S3AX LED_output_74 (.D(LED_output_N_1), .CK(clk_2M5), .Q(LED_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam LED_output_74.GSR = "ENABLED";
    FD1S3JX pump_output_75 (.D(n2808), .CK(clk_2M5), .PD(LED_output_N_39), 
            .Q(pump_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam pump_output_75.GSR = "ENABLED";
    FD1S3AX MW_output_77 (.D(MW_output_N_29), .CK(clk_2M5), .Q(MW_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam MW_output_77.GSR = "ENABLED";
    FD1S3AX sampled_modebutton_68 (.D(mode_button_N_41), .CK(debounce_pulse), 
            .Q(sampled_modebutton));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(54[8] 62[6])
    defparam sampled_modebutton_68.GSR = "ENABLED";
    OB MW_output_pad (.I(MW_output_c), .O(MW_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(26[13:22])
    OBZ pin5_pad (.I(GND_net), .T(VCC_net), .O(pin5));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(43[9:13])
    OB probe_output_pad (.I(probe_output_c), .O(probe_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(25[13:25])
    LUT4 load_default_button_I_0_1_lut (.A(load_default_button_c), .Z(load_default_button_N_43)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(57[21:41])
    defparam load_default_button_I_0_1_lut.init = 16'h5555;
    LUT4 n2886_bdd_4_lut (.A(n2886), .B(fast_pulse), .C(n2888), .D(SMstate[1]), 
         .Z(LED_output_N_1)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n2886_bdd_4_lut.init = 16'h88f0;
    LUT4 i926_2_lut_3_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), 
         .Z(LED_output_N_39)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i926_2_lut_3_lut.init = 16'h4040;
    LUT4 i46_3_lut_rep_23 (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), 
         .Z(n2875)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;
    defparam i46_3_lut_rep_23.init = 16'h9898;
    OB pump_output_pad (.I(pump_output_c), .O(pump_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(24[13:24])
    LUT4 i1_2_lut (.A(probestarted), .B(n473), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 125[7])
    defparam i1_2_lut.init = 16'h2222;
    OB debug_2_pad (.I(debug_2_c), .O(debug_2));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(23[9:16])
    OB debug_1_pad (.I(debug_1_c), .O(debug_1));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(22[9:16])
    OBZ pin3_sn_pad (.I(GND_net), .T(VCC_net), .O(pin3_sn));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(42[9:16])
    LUT4 SMstate_1__bdd_4_lut (.A(slow_pulse), .B(SMstate[2]), .C(SMstate[0]), 
         .D(fast_pulse), .Z(n2888)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam SMstate_1__bdd_4_lut.init = 16'hfab2;
    OB debug_0_pad (.I(debug_0_c), .O(debug_0));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    OB LED_output_pad (.I(LED_output_c), .O(LED_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(3[13:23])
    LUT4 topleft_button_I_0_1_lut (.A(topleft_button_c), .Z(topleft_button_N_45)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(58[23:38])
    defparam topleft_button_I_0_1_lut.init = 16'h5555;
    LUT4 i656_3_lut (.A(probestarted), .B(n2875), .C(n435), .Z(n186)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i656_3_lut.init = 16'h3b3b;
    OBZ pin9_jtgnb_pad (.I(GND_net), .T(VCC_net), .O(pin9_jtgnb));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(44[9:19])
    LUT4 i9_1_lut (.A(SMstate[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;
    defparam i9_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_adj_21 (.A(SMstate[2]), .B(SMstate[1]), .Z(state_2__N_179)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_21.init = 16'h8888;
    LUT4 i1_4_lut (.A(slow_pulse), .B(n36), .C(n4_adj_243), .D(SMstate[0]), 
         .Z(MW_output_N_29)) /* synthesis lut_function=(A (B+(C))+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut.init = 16'hecfc;
    POPtimers POPtimers (.GND_net(GND_net), .clk_2M5_N_53(clk_2M5_N_53), 
            .load_defaults(load_defaults), .n2133(n2133), .pi2started(pi2started), 
            .n397(n397), .debug_2_c(debug_2_c), .clk_2M5(clk_2M5), .n473(n473), 
            .debug_1_c(debug_1_c), .n435(n435), .probestarted(probestarted), 
            .pieovertwo_minus(pieovertwo_minus), .pieovertwo_plus(pieovertwo_plus), 
            .freeprecess_minus(freeprecess_minus), .freeprecess_plus(freeprecess_plus)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(50[12:274])
    LUT4 i1_4_lut_adj_22 (.A(n2875), .B(n397), .C(n2133), .D(pi2started), 
         .Z(n36)) /* synthesis lut_function=(!((B (C)+!B !((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_22.init = 16'h2a0a;
    FD1S3IX probe_output_76 (.D(n186), .CK(clk_2M5), .CD(n2876), .Q(probe_output_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(75[8] 126[5])
    defparam probe_output_76.GSR = "ENABLED";
    LUT4 i922_3_lut (.A(SMstate[2]), .B(SMstate[0]), .C(SMstate[1]), .Z(n2787)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(84[12:24])
    defparam i922_3_lut.init = 16'h0101;
    LUT4 i925_2_lut_rep_24 (.A(SMstate[2]), .B(SMstate[1]), .Z(n2876)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i925_2_lut_rep_24.init = 16'h4444;
    LUT4 mode_button_I_0_1_lut (.A(mode_button_c), .Z(mode_button_N_41)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(56[26:38])
    defparam mode_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomleft_button_I_0_1_lut (.A(bottomleft_button_c), .Z(bottomleft_button_N_49)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(60[24:42])
    defparam bottomleft_button_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    n_state_machine statemachine (.SMstate({SMstate}), .sampled_modebutton(sampled_modebutton), 
            .state_2__N_179(state_2__N_179), .n1(n1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(52[18:74])
    OB sample_output_pad (.I(sample_output_c), .O(sample_output));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(27[13:26])
    LUT4 i1_2_lut_adj_23 (.A(SMstate[2]), .B(SMstate[1]), .Z(n4_adj_243)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_23.init = 16'h2222;
    VLO i1 (.Z(GND_net));
    LUT4 i2_4_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), .D(n4), 
         .Z(sample_output_N_36)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(91[8] 125[7])
    defparam i2_4_lut.init = 16'hbfaf;
    LUT4 medium_pulse_bdd_4_lut_943 (.A(medium_pulse), .B(slow_pulse), .C(SMstate[2]), 
         .D(SMstate[0]), .Z(n2886)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D))) */ ;
    defparam medium_pulse_bdd_4_lut_943.init = 16'h808f;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i931_2_lut_4_lut (.A(SMstate[1]), .B(SMstate[2]), .C(SMstate[0]), 
         .D(debug_1_c), .Z(n2808)) /* synthesis lut_function=(A (B (D))+!A !(B+!(C (D)))) */ ;
    defparam i931_2_lut_4_lut.init = 16'h9800;
    slow_clock_pulse slowclocks (.clk_2M5(clk_2M5), .GND_net(GND_net), .debounce_pulse(debounce_pulse), 
            .medium_pulse(medium_pulse), .slow_pulse(slow_pulse), .fast_pulse(fast_pulse)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(51[19:157])
    LUT4 topright_button_I_0_1_lut (.A(topright_button_c), .Z(topright_button_N_47)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(59[24:40])
    defparam topright_button_I_0_1_lut.init = 16'h5555;
    LUT4 bottomright_button_I_0_1_lut (.A(bottomright_button_c), .Z(bottomright_button_N_51)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(61[25:44])
    defparam bottomright_button_I_0_1_lut.init = 16'h5555;
    clocks clocks (.GND_net(GND_net), .debug_0_c(debug_0_c), .clk_2M5_N_53(clk_2M5_N_53), 
           .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:98])
    IB mode_button_pad (.I(mode_button), .O(mode_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(4[8:19])
    IB load_default_button_pad (.I(load_default_button), .O(load_default_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(6[8:27])
    IB topleft_button_pad (.I(topleft_button), .O(topleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(9[8:22])
    IB topright_button_pad (.I(topright_button), .O(topright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(10[8:23])
    IB bottomleft_button_pad (.I(bottomleft_button), .O(bottomleft_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(12[8:25])
    IB bottomright_button_pad (.I(bottomright_button), .O(bottomright_button_c));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(13[8:26])
    
endmodule
//
// Verilog Description of module POPtimers
//

module POPtimers (GND_net, clk_2M5_N_53, load_defaults, n2133, pi2started, 
            n397, debug_2_c, clk_2M5, n473, debug_1_c, n435, probestarted, 
            pieovertwo_minus, pieovertwo_plus, freeprecess_minus, freeprecess_plus) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input clk_2M5_N_53;
    input load_defaults;
    output n2133;
    output pi2started;
    output n397;
    output debug_2_c;
    input clk_2M5;
    output n473;
    output debug_1_c;
    output n435;
    output probestarted;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input freeprecess_minus;
    input freeprecess_plus;
    
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2543;
    wire [15:0]AdjustableFreePrecession;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[48:72])
    wire [13:0]n18;
    
    wire n2544, n2561;
    wire [15:0]AdjustablePieOverTwo;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[26:46])
    wire [13:0]n2;
    
    wire n2562, n2553;
    wire [15:0]Endof1stMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[19:34])
    
    wire n2554, n2552;
    wire [13:0]n2_adj_238;
    
    wire n2618;
    wire [13:0]n2_adj_239;
    wire [13:0]n18_adj_240;
    wire [15:0]Resetandrepeat;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[19:33])
    wire [13:0]n2471;
    
    wire n2677;
    wire [15:0]gatedcount;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire [15:0]count;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(26[19:24])
    
    wire n2682;
    wire [15:0]Endofprobepulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(40[19:34])
    
    wire n2681, n2680, n2679, n2678, n2549, n2593, n2550;
    wire [15:0]Startopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(38[19:37])
    
    wire n2592, n2591, loop, counterreset;
    wire [13:0]n2_adj_241;
    wire [15:0]Endof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(36[19:34])
    
    wire n2545, n2546, n2580;
    wire [15:0]n1691;
    
    wire n2579, n2590, n2616;
    wire [15:0]Startof2ndMWpulse;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(35[19:36])
    
    wire n2615, n2589, n2614, n2547, n2649;
    wire [13:0]n2_adj_242;
    
    wire n2648, n2647, n2613, n2646, n2645, n2644, n2643, n2612, 
        n2642, n2560, n2578, n2557, n2611, n2641, n2640, n2548, 
        n2639, n2559, n2558, n2638, n2577, n2637, n2636, n2551, 
        n2576, n2575, n2563, n2556;
    wire [15:0]Endofopticalsample;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(39[19:37])
    
    wire n359, n1941, n2812, n4_adj_204, n2624, n2623, n2622, 
        n2621, n2620, n2619, n2555, n2701, n2702, n2703, n2704, 
        n2705, n2706, n2724, n2725, n2726, n2727, n2728, n2729, 
        n2730, n2731, n2732, n2733, n2734, n2735, n2736, n2737, 
        n2747, n2748, n2749, n2750, n2751, n2752, n2755, n2756, 
        n2757, n2758, n2759, n2760, n2763, n2764, n2765, n2766, 
        n2767, n2768, n8_adj_237, n2804;
    
    CCU2D add_339_add_2_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2543), .COUT(n2544), 
          .S0(n18[1]), .S1(n18[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_3.INIT0 = 16'h5555;
    defparam add_339_add_2_3.INIT1 = 16'h5555;
    defparam add_339_add_2_3.INJECT1_0 = "NO";
    defparam add_339_add_2_3.INJECT1_1 = "NO";
    CCU2D add_339_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2561), .COUT(n2562), .S0(n2[9]), 
          .S1(n2[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_11.INIT0 = 16'hfaaa;
    defparam add_339_add_1_11.INIT1 = 16'hfaaa;
    defparam add_339_add_1_11.INJECT1_0 = "NO";
    defparam add_339_add_1_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_9 (.A0(AdjustablePieOverTwo[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2553), .COUT(n2554), .S0(Endof1stMWpulse[9]), 
          .S1(Endof1stMWpulse[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_7 (.A0(AdjustablePieOverTwo[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2552), .COUT(n2553), .S0(Endof1stMWpulse[7]), 
          .S1(Endof1stMWpulse[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_7.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n2618), .S1(n2_adj_238[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_1.INJECT1_1 = "NO";
    LUT4 i861_2_lut (.A(n2_adj_239[0]), .B(n18_adj_240[0]), .Z(Resetandrepeat[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i861_2_lut.init = 16'h6666;
    CCU2D add_328_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2677), 
          .S1(Resetandrepeat[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_1.INIT0 = 16'hF000;
    defparam add_328_1.INIT1 = 16'h5555;
    defparam add_328_1.INJECT1_0 = "NO";
    defparam add_328_1.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i0 (.D(count[0]), .CK(clk_2M5_N_53), .Q(gatedcount[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i0.GSR = "ENABLED";
    CCU2D add_328_13 (.A0(n2471[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2682), .S0(Endofprobepulse[14]), .S1(Endofprobepulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_13.INIT0 = 16'h5aaa;
    defparam add_328_13.INIT1 = 16'h5aaa;
    defparam add_328_13.INJECT1_0 = "NO";
    defparam add_328_13.INJECT1_1 = "NO";
    CCU2D add_328_11 (.A0(n2471[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2681), .COUT(n2682), .S0(Endofprobepulse[12]), .S1(Endofprobepulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_11.INIT0 = 16'h5aaa;
    defparam add_328_11.INIT1 = 16'h5aaa;
    defparam add_328_11.INJECT1_0 = "NO";
    defparam add_328_11.INJECT1_1 = "NO";
    CCU2D add_328_9 (.A0(n2471[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2680), 
          .COUT(n2681), .S0(Endofprobepulse[10]), .S1(Endofprobepulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_9.INIT0 = 16'h5aaa;
    defparam add_328_9.INIT1 = 16'h5aaa;
    defparam add_328_9.INJECT1_0 = "NO";
    defparam add_328_9.INJECT1_1 = "NO";
    CCU2D add_328_7 (.A0(n2471[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2679), 
          .COUT(n2680), .S0(Endofprobepulse[8]), .S1(Endofprobepulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_7.INIT0 = 16'h5555;
    defparam add_328_7.INIT1 = 16'h5aaa;
    defparam add_328_7.INJECT1_0 = "NO";
    defparam add_328_7.INJECT1_1 = "NO";
    CCU2D add_328_5 (.A0(n2471[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2678), 
          .COUT(n2679), .S0(Endofprobepulse[6]), .S1(Endofprobepulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_5.INIT0 = 16'h5555;
    defparam add_328_5.INIT1 = 16'h5aaa;
    defparam add_328_5.INJECT1_0 = "NO";
    defparam add_328_5.INJECT1_1 = "NO";
    CCU2D add_328_3 (.A0(n2471[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2471[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2677), 
          .COUT(n2678), .S0(Resetandrepeat[4]), .S1(Resetandrepeat[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_328_3.INIT0 = 16'h5555;
    defparam add_328_3.INIT1 = 16'h5555;
    defparam add_328_3.INJECT1_0 = "NO";
    defparam add_328_3.INJECT1_1 = "NO";
    CCU2D add_339_add_2_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2549), .S0(n18[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_15.INIT0 = 16'h5aaa;
    defparam add_339_add_2_15.INIT1 = 16'h0000;
    defparam add_339_add_2_15.INJECT1_0 = "NO";
    defparam add_339_add_2_15.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_11 (.A0(Endofprobepulse[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2593), .S0(Resetandrepeat[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_11.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_11.INIT1 = 16'h0000;
    defparam Endofprobepulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2550), .S1(Endof1stMWpulse[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Startof1stMWpulse_15__I_0_1.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_1.INJECT1_1 = "NO";
    LUT4 i860_2_lut (.A(n2[0]), .B(n18[0]), .Z(Startopticalsample[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i860_2_lut.init = 16'h6666;
    CCU2D Endofprobepulse_15__I_0_9 (.A0(Endofprobepulse[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2592), .COUT(n2593), .S0(Resetandrepeat[13]), 
          .S1(Resetandrepeat[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_9.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_9.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_9.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_7 (.A0(Endofprobepulse[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2591), .COUT(n2592), .S0(Resetandrepeat[11]), 
          .S1(Resetandrepeat[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_7.INIT0 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_7.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_7.INJECT1_1 = "NO";
    LUT4 load_defaults_I_0_2_lut (.A(load_defaults), .B(loop), .Z(counterreset)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(63[24:42])
    defparam load_defaults_I_0_2_lut.init = 16'heeee;
    LUT4 i862_2_lut (.A(n2_adj_241[0]), .B(AdjustableFreePrecession[2]), 
         .Z(Endof2ndMWpulse[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i862_2_lut.init = 16'h6666;
    CCU2D add_339_add_2_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2545), .COUT(n2546), 
          .S0(n18[5]), .S1(n18[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_7.INIT0 = 16'h5aaa;
    defparam add_339_add_2_7.INIT1 = 16'h5aaa;
    defparam add_339_add_2_7.INJECT1_0 = "NO";
    defparam add_339_add_2_7.INJECT1_1 = "NO";
    CCU2D add_349_13 (.A0(AdjustableFreePrecession[14]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[15]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2580), .S0(n1691[14]), .S1(n1691[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_13.INIT0 = 16'h5aaa;
    defparam add_349_13.INIT1 = 16'h5aaa;
    defparam add_349_13.INJECT1_0 = "NO";
    defparam add_349_13.INJECT1_1 = "NO";
    CCU2D add_349_11 (.A0(AdjustableFreePrecession[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2579), .COUT(n2580), .S0(n1691[12]), 
          .S1(n1691[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_11.INIT0 = 16'h5aaa;
    defparam add_349_11.INIT1 = 16'h5aaa;
    defparam add_349_11.INJECT1_0 = "NO";
    defparam add_349_11.INJECT1_1 = "NO";
    CCU2D add_339_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2543), .S1(n18[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_1.INIT0 = 16'hF000;
    defparam add_339_add_2_1.INIT1 = 16'h5555;
    defparam add_339_add_2_1.INJECT1_0 = "NO";
    defparam add_339_add_2_1.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_5 (.A0(Endofprobepulse[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2590), .COUT(n2591), .S0(Resetandrepeat[9]), 
          .S1(Resetandrepeat[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_5.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_5.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_827_14 (.A0(n2_adj_238[12]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2616), .S0(Startof2ndMWpulse[14]), 
          .S1(Startof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_14.INIT0 = 16'h5666;
    defparam add_827_14.INIT1 = 16'h5666;
    defparam add_827_14.INJECT1_0 = "NO";
    defparam add_827_14.INJECT1_1 = "NO";
    CCU2D add_827_12 (.A0(n2_adj_238[10]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2615), .COUT(n2616), .S0(Startof2ndMWpulse[12]), 
          .S1(Startof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_12.INIT0 = 16'h5666;
    defparam add_827_12.INIT1 = 16'h5666;
    defparam add_827_12.INJECT1_0 = "NO";
    defparam add_827_12.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_3 (.A0(Endofprobepulse[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(Endofprobepulse[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2589), .COUT(n2590), .S0(Resetandrepeat[7]), 
          .S1(Resetandrepeat[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_3.INIT0 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INIT1 = 16'h5aaa;
    defparam Endofprobepulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D add_827_10 (.A0(n2_adj_238[8]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2614), .COUT(n2615), .S0(Startof2ndMWpulse[10]), 
          .S1(Startof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_10.INIT0 = 16'h5666;
    defparam add_827_10.INIT1 = 16'h5666;
    defparam add_827_10.INJECT1_0 = "NO";
    defparam add_827_10.INJECT1_1 = "NO";
    CCU2D Endofprobepulse_15__I_0_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Endofprobepulse[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2589), .S1(Resetandrepeat[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(41[36:61])
    defparam Endofprobepulse_15__I_0_1.INIT0 = 16'hF000;
    defparam Endofprobepulse_15__I_0_1.INIT1 = 16'h5555;
    defparam Endofprobepulse_15__I_0_1.INJECT1_0 = "NO";
    defparam Endofprobepulse_15__I_0_1.INJECT1_1 = "NO";
    CCU2D add_339_add_2_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2546), .COUT(n2547), 
          .S0(n18[7]), .S1(n18[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_9.INIT0 = 16'h5aaa;
    defparam add_339_add_2_9.INIT1 = 16'h5aaa;
    defparam add_339_add_2_9.INJECT1_0 = "NO";
    defparam add_339_add_2_9.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2649), .S0(n2_adj_242[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_15.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_15.INIT1 = 16'h0000;
    defparam add_335_827_add_1_15.INJECT1_0 = "NO";
    defparam add_335_827_add_1_15.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2648), .COUT(n2649), .S0(n2_adj_242[11]), 
          .S1(n2_adj_242[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_13.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_13.INIT1 = 16'hfaaa;
    defparam add_335_827_add_1_13.INJECT1_0 = "NO";
    defparam add_335_827_add_1_13.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2647), .COUT(n2648), .S0(n2_adj_242[9]), 
          .S1(n2_adj_242[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_11.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_11.INIT1 = 16'hfaaa;
    defparam add_335_827_add_1_11.INJECT1_0 = "NO";
    defparam add_335_827_add_1_11.INJECT1_1 = "NO";
    CCU2D add_827_8 (.A0(n2_adj_238[6]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2613), .COUT(n2614), .S0(Startof2ndMWpulse[8]), 
          .S1(Startof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_8.INIT0 = 16'h5666;
    defparam add_827_8.INIT1 = 16'h5666;
    defparam add_827_8.INJECT1_0 = "NO";
    defparam add_827_8.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2646), .COUT(n2647), .S0(n2_adj_242[7]), 
          .S1(n2_adj_242[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_9.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_9.INIT1 = 16'h0555;
    defparam add_335_827_add_1_9.INJECT1_0 = "NO";
    defparam add_335_827_add_1_9.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2645), .COUT(n2646), .S0(n2_adj_242[5]), 
          .S1(n2_adj_242[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_7.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_7.INIT1 = 16'hfaaa;
    defparam add_335_827_add_1_7.INJECT1_0 = "NO";
    defparam add_335_827_add_1_7.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2644), .COUT(n2645), .S0(n2_adj_242[3]), 
          .S1(n2_adj_242[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_5.INIT0 = 16'h0555;
    defparam add_335_827_add_1_5.INIT1 = 16'h0555;
    defparam add_335_827_add_1_5.INJECT1_0 = "NO";
    defparam add_335_827_add_1_5.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2643), .COUT(n2644), .S0(n2_adj_242[1]), 
          .S1(n2_adj_242[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_3.INIT0 = 16'hfaaa;
    defparam add_335_827_add_1_3.INIT1 = 16'hfaaa;
    defparam add_335_827_add_1_3.INJECT1_0 = "NO";
    defparam add_335_827_add_1_3.INJECT1_1 = "NO";
    CCU2D add_335_827_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2643), .S1(n2_adj_242[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_335_827_add_1_1.INIT0 = 16'hF000;
    defparam add_335_827_add_1_1.INIT1 = 16'h0555;
    defparam add_335_827_add_1_1.INJECT1_0 = "NO";
    defparam add_335_827_add_1_1.INJECT1_1 = "NO";
    CCU2D add_827_6 (.A0(n2_adj_238[4]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2612), .COUT(n2613), .S0(Startof2ndMWpulse[6]), 
          .S1(Startof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_6.INIT0 = 16'h5666;
    defparam add_827_6.INIT1 = 16'h5666;
    defparam add_827_6.INJECT1_0 = "NO";
    defparam add_827_6.INJECT1_1 = "NO";
    CCU2D add_336_add_2_15 (.A0(AdjustableFreePrecession[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2642), .S0(n18_adj_240[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_15.INIT0 = 16'h5aaa;
    defparam add_336_add_2_15.INIT1 = 16'h0000;
    defparam add_336_add_2_15.INJECT1_0 = "NO";
    defparam add_336_add_2_15.INJECT1_1 = "NO";
    CCU2D add_339_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2560), .COUT(n2561), .S0(n2[7]), .S1(n2[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_9.INIT0 = 16'hfaaa;
    defparam add_339_add_1_9.INIT1 = 16'h0555;
    defparam add_339_add_1_9.INJECT1_0 = "NO";
    defparam add_339_add_1_9.INJECT1_1 = "NO";
    CCU2D add_349_9 (.A0(AdjustableFreePrecession[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2578), .COUT(n2579), .S0(n1691[10]), 
          .S1(n1691[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_9.INIT0 = 16'h5aaa;
    defparam add_349_9.INIT1 = 16'h5aaa;
    defparam add_349_9.INJECT1_0 = "NO";
    defparam add_349_9.INJECT1_1 = "NO";
    CCU2D add_339_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2557), .S1(n2[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_1.INIT0 = 16'hF000;
    defparam add_339_add_1_1.INIT1 = 16'h0555;
    defparam add_339_add_1_1.INJECT1_0 = "NO";
    defparam add_339_add_1_1.INJECT1_1 = "NO";
    CCU2D add_827_4 (.A0(n2_adj_238[2]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2611), .COUT(n2612), .S0(Startof2ndMWpulse[4]), 
          .S1(Startof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_4.INIT0 = 16'h5666;
    defparam add_827_4.INIT1 = 16'h5666;
    defparam add_827_4.INJECT1_0 = "NO";
    defparam add_827_4.INJECT1_1 = "NO";
    CCU2D add_336_add_2_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2641), .COUT(n2642), 
          .S0(n18_adj_240[11]), .S1(n18_adj_240[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_13.INIT0 = 16'h5aaa;
    defparam add_336_add_2_13.INIT1 = 16'h5aaa;
    defparam add_336_add_2_13.INJECT1_0 = "NO";
    defparam add_336_add_2_13.INJECT1_1 = "NO";
    CCU2D add_827_2 (.A0(n2_adj_238[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_238[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2611), .S1(Startof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_827_2.INIT0 = 16'h7000;
    defparam add_827_2.INIT1 = 16'h5666;
    defparam add_827_2.INJECT1_0 = "NO";
    defparam add_827_2.INJECT1_1 = "NO";
    CCU2D add_336_add_2_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2640), .COUT(n2641), 
          .S0(n18_adj_240[9]), .S1(n18_adj_240[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_11.INIT0 = 16'h5aaa;
    defparam add_336_add_2_11.INIT1 = 16'h5aaa;
    defparam add_336_add_2_11.INJECT1_0 = "NO";
    defparam add_336_add_2_11.INJECT1_1 = "NO";
    CCU2D add_339_add_2_13 (.A0(AdjustableFreePrecession[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2548), .COUT(n2549), 
          .S0(n18[11]), .S1(n18[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_13.INIT0 = 16'h5aaa;
    defparam add_339_add_2_13.INIT1 = 16'h5aaa;
    defparam add_339_add_2_13.INJECT1_0 = "NO";
    defparam add_339_add_2_13.INJECT1_1 = "NO";
    CCU2D add_336_add_2_9 (.A0(AdjustableFreePrecession[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2639), .COUT(n2640), 
          .S0(n18_adj_240[7]), .S1(n18_adj_240[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_9.INIT0 = 16'h5aaa;
    defparam add_336_add_2_9.INIT1 = 16'h5aaa;
    defparam add_336_add_2_9.INJECT1_0 = "NO";
    defparam add_336_add_2_9.INJECT1_1 = "NO";
    CCU2D add_339_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2559), .COUT(n2560), .S0(n2[5]), .S1(n2[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_7.INIT0 = 16'hfaaa;
    defparam add_339_add_1_7.INIT1 = 16'hfaaa;
    defparam add_339_add_1_7.INJECT1_0 = "NO";
    defparam add_339_add_1_7.INJECT1_1 = "NO";
    CCU2D add_339_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2558), .COUT(n2559), .S0(n2[3]), .S1(n2[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_5.INIT0 = 16'h0555;
    defparam add_339_add_1_5.INIT1 = 16'h0555;
    defparam add_339_add_1_5.INJECT1_0 = "NO";
    defparam add_339_add_1_5.INJECT1_1 = "NO";
    CCU2D add_336_add_2_7 (.A0(AdjustableFreePrecession[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2638), .COUT(n2639), 
          .S0(n18_adj_240[5]), .S1(n18_adj_240[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_7.INIT0 = 16'h5aaa;
    defparam add_336_add_2_7.INIT1 = 16'h5aaa;
    defparam add_336_add_2_7.INJECT1_0 = "NO";
    defparam add_336_add_2_7.INJECT1_1 = "NO";
    CCU2D add_349_7 (.A0(AdjustableFreePrecession[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[9]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2577), .COUT(n2578), .S0(n1691[8]), 
          .S1(n1691[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_7.INIT0 = 16'h5aaa;
    defparam add_349_7.INIT1 = 16'h5aaa;
    defparam add_349_7.INJECT1_0 = "NO";
    defparam add_349_7.INJECT1_1 = "NO";
    CCU2D add_336_add_2_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2637), .COUT(n2638), 
          .S0(n18_adj_240[3]), .S1(n18_adj_240[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_5.INIT0 = 16'h5555;
    defparam add_336_add_2_5.INIT1 = 16'h5555;
    defparam add_336_add_2_5.INJECT1_0 = "NO";
    defparam add_336_add_2_5.INJECT1_1 = "NO";
    CCU2D add_336_add_2_3 (.A0(AdjustableFreePrecession[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2636), .COUT(n2637), 
          .S0(n18_adj_240[1]), .S1(n18_adj_240[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_3.INIT0 = 16'h5555;
    defparam add_336_add_2_3.INIT1 = 16'h5555;
    defparam add_336_add_2_3.INJECT1_0 = "NO";
    defparam add_336_add_2_3.INJECT1_1 = "NO";
    CCU2D add_336_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2636), .S1(n18_adj_240[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_2_1.INIT0 = 16'hF000;
    defparam add_336_add_2_1.INIT1 = 16'h5555;
    defparam add_336_add_2_1.INJECT1_0 = "NO";
    defparam add_336_add_2_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_5 (.A0(AdjustablePieOverTwo[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2551), .COUT(n2552), .S0(Endof1stMWpulse[5]), 
          .S1(Endof1stMWpulse[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_5.INJECT1_1 = "NO";
    CCU2D add_349_5 (.A0(AdjustableFreePrecession[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[7]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2576), .COUT(n2577), .S0(n1691[6]), 
          .S1(n1691[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_5.INIT0 = 16'h5555;
    defparam add_349_5.INIT1 = 16'h5555;
    defparam add_349_5.INJECT1_0 = "NO";
    defparam add_349_5.INJECT1_1 = "NO";
    CCU2D add_349_3 (.A0(AdjustableFreePrecession[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustableFreePrecession[5]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2575), .COUT(n2576), .S0(n1691[4]), 
          .S1(n1691[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_3.INIT0 = 16'h5555;
    defparam add_349_3.INIT1 = 16'h5555;
    defparam add_349_3.INJECT1_0 = "NO";
    defparam add_349_3.INJECT1_1 = "NO";
    CCU2D add_339_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2563), .S0(n2[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_15.INIT0 = 16'hfaaa;
    defparam add_339_add_1_15.INIT1 = 16'h0000;
    defparam add_339_add_1_15.INJECT1_0 = "NO";
    defparam add_339_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_15 (.A0(AdjustablePieOverTwo[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2556), .S0(Endof1stMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_15.INJECT1_1 = "NO";
    LUT4 i863_2_lut (.A(n2_adj_242[0]), .B(AdjustableFreePrecession[2]), 
         .Z(Endofopticalsample[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i863_2_lut.init = 16'h6666;
    CCU2D add_339_add_2_5 (.A0(AdjustableFreePrecession[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2544), .COUT(n2545), 
          .S0(n18[3]), .S1(n18[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_5.INIT0 = 16'h5555;
    defparam add_339_add_2_5.INIT1 = 16'h5555;
    defparam add_339_add_2_5.INJECT1_0 = "NO";
    defparam add_339_add_2_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n359), .B(n1941), .C(n2812), .D(gatedcount[10]), 
         .Z(n2133)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hafbb;
    LUT4 i903_4_lut (.A(gatedcount[8]), .B(n1941), .C(gatedcount[9]), 
         .D(n4_adj_204), .Z(n2812)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i903_4_lut.init = 16'hfffe;
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15 (.A0(AdjustablePieOverTwo[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2624), .S0(n2_adj_238[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INIT1 = 16'h0000;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_15.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13 (.A0(AdjustablePieOverTwo[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2623), .COUT(n2624), 
          .S0(n2_adj_238[11]), .S1(n2_adj_238[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11 (.A0(AdjustablePieOverTwo[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2622), .COUT(n2623), 
          .S0(n2_adj_238[9]), .S1(n2_adj_238[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_11.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9 (.A0(AdjustablePieOverTwo[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2621), .COUT(n2622), 
          .S0(n2_adj_238[7]), .S1(n2_adj_238[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_9.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7 (.A0(AdjustablePieOverTwo[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2620), .COUT(n2621), 
          .S0(n2_adj_238[5]), .S1(n2_adj_238[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_7.INJECT1_1 = "NO";
    CCU2D add_339_add_2_11 (.A0(AdjustableFreePrecession[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustableFreePrecession[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2547), .COUT(n2548), 
          .S0(n18[9]), .S1(n18[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_2_11.INIT0 = 16'h5aaa;
    defparam add_339_add_2_11.INIT1 = 16'h5aaa;
    defparam add_339_add_2_11.INJECT1_0 = "NO";
    defparam add_339_add_2_11.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i15 (.D(count[15]), .CK(clk_2M5_N_53), .Q(gatedcount[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i15.GSR = "ENABLED";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5 (.A0(AdjustablePieOverTwo[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2619), .COUT(n2620), 
          .S0(n2_adj_238[3]), .S1(n2_adj_238[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT0 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INIT1 = 16'h0555;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_5.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_3 (.A0(AdjustablePieOverTwo[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2550), .COUT(n2551), .S0(Endof1stMWpulse[3]), 
          .S1(Endof1stMWpulse[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_3.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_13 (.A0(AdjustablePieOverTwo[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2555), .COUT(n2556), .S0(Endof1stMWpulse[13]), 
          .S1(Endof1stMWpulse[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_13.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_13.INJECT1_1 = "NO";
    CCU2D add_339_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2557), .COUT(n2558), .S0(n2[1]), .S1(n2[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_3.INIT0 = 16'hfaaa;
    defparam add_339_add_1_3.INIT1 = 16'hfaaa;
    defparam add_339_add_1_3.INJECT1_0 = "NO";
    defparam add_339_add_1_3.INJECT1_1 = "NO";
    CCU2D add_349_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(AdjustableFreePrecession[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2575), .S1(n1691[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_349_1.INIT0 = 16'hF000;
    defparam add_349_1.INIT1 = 16'h5555;
    defparam add_349_1.INJECT1_0 = "NO";
    defparam add_349_1.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_11 (.A0(AdjustablePieOverTwo[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2554), .COUT(n2555), .S0(Endof1stMWpulse[11]), 
          .S1(Endof1stMWpulse[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_11.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_11.INJECT1_1 = "NO";
    CCU2D add_339_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2562), .COUT(n2563), .S0(n2[11]), 
          .S1(n2[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_339_add_1_13.INIT0 = 16'hfaaa;
    defparam add_339_add_1_13.INIT1 = 16'hfaaa;
    defparam add_339_add_1_13.INJECT1_0 = "NO";
    defparam add_339_add_1_13.INJECT1_1 = "NO";
    CCU2D Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3 (.A0(AdjustablePieOverTwo[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2618), .COUT(n2619), 
          .S0(n2_adj_238[1]), .S1(n2_adj_238[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT0 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INIT1 = 16'hfaaa;
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_0 = "NO";
    defparam Startof1stMWpulse_15__I_0_rep_10_add_1_add_1_3.INJECT1_1 = "NO";
    FD1S3AX gatedcount_i14 (.D(count[14]), .CK(clk_2M5_N_53), .Q(gatedcount[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i14.GSR = "ENABLED";
    FD1S3AX gatedcount_i13 (.D(count[13]), .CK(clk_2M5_N_53), .Q(gatedcount[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i13.GSR = "ENABLED";
    FD1S3AX gatedcount_i12 (.D(count[12]), .CK(clk_2M5_N_53), .Q(gatedcount[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i12.GSR = "ENABLED";
    FD1S3AX gatedcount_i11 (.D(count[11]), .CK(clk_2M5_N_53), .Q(gatedcount[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i11.GSR = "ENABLED";
    FD1S3AX gatedcount_i10 (.D(count[10]), .CK(clk_2M5_N_53), .Q(gatedcount[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i10.GSR = "ENABLED";
    FD1S3AX gatedcount_i9 (.D(count[9]), .CK(clk_2M5_N_53), .Q(gatedcount[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i9.GSR = "ENABLED";
    FD1S3AX gatedcount_i8 (.D(count[8]), .CK(clk_2M5_N_53), .Q(gatedcount[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i8.GSR = "ENABLED";
    FD1S3AX gatedcount_i7 (.D(count[7]), .CK(clk_2M5_N_53), .Q(gatedcount[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i7.GSR = "ENABLED";
    FD1S3AX gatedcount_i6 (.D(count[6]), .CK(clk_2M5_N_53), .Q(gatedcount[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i6.GSR = "ENABLED";
    FD1S3AX gatedcount_i5 (.D(count[5]), .CK(clk_2M5_N_53), .Q(gatedcount[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i5.GSR = "ENABLED";
    FD1S3AX gatedcount_i4 (.D(count[4]), .CK(clk_2M5_N_53), .Q(gatedcount[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i4.GSR = "ENABLED";
    FD1S3AX gatedcount_i3 (.D(count[3]), .CK(clk_2M5_N_53), .Q(gatedcount[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i3.GSR = "ENABLED";
    FD1S3AX gatedcount_i2 (.D(count[2]), .CK(clk_2M5_N_53), .Q(gatedcount[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i2.GSR = "ENABLED";
    FD1S3AX gatedcount_i1 (.D(count[1]), .CK(clk_2M5_N_53), .Q(gatedcount[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=12, LSE_RCOL=274, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(67[8] 69[5])
    defparam gatedcount_i1.GSR = "ENABLED";
    CCU2D add_828_2 (.A0(n2[0]), .B0(n18[0]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[1]), .B1(n18[1]), .C1(GND_net), .D1(GND_net), .COUT(n2701), 
          .S1(Startopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_2.INIT0 = 16'h7000;
    defparam add_828_2.INIT1 = 16'h5666;
    defparam add_828_2.INJECT1_0 = "NO";
    defparam add_828_2.INJECT1_1 = "NO";
    CCU2D add_828_4 (.A0(n2[2]), .B0(n18[2]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[3]), .B1(n18[3]), .C1(GND_net), .D1(GND_net), .CIN(n2701), 
          .COUT(n2702), .S0(Startopticalsample[4]), .S1(Startopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_4.INIT0 = 16'h5666;
    defparam add_828_4.INIT1 = 16'h5666;
    defparam add_828_4.INJECT1_0 = "NO";
    defparam add_828_4.INJECT1_1 = "NO";
    CCU2D add_828_6 (.A0(n2[4]), .B0(n18[4]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[5]), .B1(n18[5]), .C1(GND_net), .D1(GND_net), .CIN(n2702), 
          .COUT(n2703), .S0(Startopticalsample[6]), .S1(Startopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_6.INIT0 = 16'h5666;
    defparam add_828_6.INIT1 = 16'h5666;
    defparam add_828_6.INJECT1_0 = "NO";
    defparam add_828_6.INJECT1_1 = "NO";
    CCU2D add_828_8 (.A0(n2[6]), .B0(n18[6]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[7]), .B1(n18[7]), .C1(GND_net), .D1(GND_net), .CIN(n2703), 
          .COUT(n2704), .S0(Startopticalsample[8]), .S1(Startopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_8.INIT0 = 16'h5666;
    defparam add_828_8.INIT1 = 16'h5666;
    defparam add_828_8.INJECT1_0 = "NO";
    defparam add_828_8.INJECT1_1 = "NO";
    CCU2D add_828_10 (.A0(n2[8]), .B0(n18[8]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[9]), .B1(n18[9]), .C1(GND_net), .D1(GND_net), .CIN(n2704), 
          .COUT(n2705), .S0(Startopticalsample[10]), .S1(Startopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_10.INIT0 = 16'h5666;
    defparam add_828_10.INIT1 = 16'h5666;
    defparam add_828_10.INJECT1_0 = "NO";
    defparam add_828_10.INJECT1_1 = "NO";
    CCU2D add_828_12 (.A0(n2[10]), .B0(n18[10]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[11]), .B1(n18[11]), .C1(GND_net), .D1(GND_net), .CIN(n2705), 
          .COUT(n2706), .S0(Startopticalsample[12]), .S1(Startopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_12.INIT0 = 16'h5666;
    defparam add_828_12.INIT1 = 16'h5666;
    defparam add_828_12.INJECT1_0 = "NO";
    defparam add_828_12.INJECT1_1 = "NO";
    CCU2D add_828_14 (.A0(n2[12]), .B0(n18[12]), .C0(GND_net), .D0(GND_net), 
          .A1(n2[13]), .B1(n18[13]), .C1(GND_net), .D1(GND_net), .CIN(n2706), 
          .S0(Startopticalsample[14]), .S1(Startopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_828_14.INIT0 = 16'h5666;
    defparam add_828_14.INIT1 = 16'h5666;
    defparam add_828_14.INJECT1_0 = "NO";
    defparam add_828_14.INJECT1_1 = "NO";
    CCU2D add_325_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2724), .S1(n2_adj_241[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_1.INIT0 = 16'hF000;
    defparam add_325_add_1_1.INIT1 = 16'h0555;
    defparam add_325_add_1_1.INJECT1_0 = "NO";
    defparam add_325_add_1_1.INJECT1_1 = "NO";
    CCU2D add_325_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2724), .COUT(n2725), .S0(n2_adj_241[1]), 
          .S1(n2_adj_241[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_3.INIT0 = 16'hfaaa;
    defparam add_325_add_1_3.INIT1 = 16'hfaaa;
    defparam add_325_add_1_3.INJECT1_0 = "NO";
    defparam add_325_add_1_3.INJECT1_1 = "NO";
    CCU2D add_325_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2725), .COUT(n2726), .S0(n2_adj_241[3]), 
          .S1(n2_adj_241[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_5.INIT0 = 16'h0555;
    defparam add_325_add_1_5.INIT1 = 16'h0555;
    defparam add_325_add_1_5.INJECT1_0 = "NO";
    defparam add_325_add_1_5.INJECT1_1 = "NO";
    CCU2D add_325_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2726), .COUT(n2727), .S0(n2_adj_241[5]), 
          .S1(n2_adj_241[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_7.INIT0 = 16'hfaaa;
    defparam add_325_add_1_7.INIT1 = 16'hfaaa;
    defparam add_325_add_1_7.INJECT1_0 = "NO";
    defparam add_325_add_1_7.INJECT1_1 = "NO";
    CCU2D add_325_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2727), .COUT(n2728), .S0(n2_adj_241[7]), 
          .S1(n2_adj_241[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_9.INIT0 = 16'hfaaa;
    defparam add_325_add_1_9.INIT1 = 16'h0555;
    defparam add_325_add_1_9.INJECT1_0 = "NO";
    defparam add_325_add_1_9.INJECT1_1 = "NO";
    CCU2D add_325_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2728), .COUT(n2729), .S0(n2_adj_241[9]), 
          .S1(n2_adj_241[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_11.INIT0 = 16'hfaaa;
    defparam add_325_add_1_11.INIT1 = 16'hfaaa;
    defparam add_325_add_1_11.INJECT1_0 = "NO";
    defparam add_325_add_1_11.INJECT1_1 = "NO";
    CCU2D add_325_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2729), .COUT(n2730), .S0(n2_adj_241[11]), 
          .S1(n2_adj_241[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_13.INIT0 = 16'hfaaa;
    defparam add_325_add_1_13.INIT1 = 16'hfaaa;
    defparam add_325_add_1_13.INJECT1_0 = "NO";
    defparam add_325_add_1_13.INJECT1_1 = "NO";
    CCU2D add_325_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2730), .S0(n2_adj_241[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_325_add_1_15.INIT0 = 16'hfaaa;
    defparam add_325_add_1_15.INIT1 = 16'h0000;
    defparam add_325_add_1_15.INJECT1_0 = "NO";
    defparam add_325_add_1_15.INJECT1_1 = "NO";
    CCU2D add_336_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Startof2ndMWpulse[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2731), .S1(n2_adj_239[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_1.INIT0 = 16'hF000;
    defparam add_336_add_1_1.INIT1 = 16'h0555;
    defparam add_336_add_1_1.INJECT1_0 = "NO";
    defparam add_336_add_1_1.INJECT1_1 = "NO";
    CCU2D add_336_add_1_3 (.A0(AdjustablePieOverTwo[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[3]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2731), .COUT(n2732), .S0(n2_adj_239[1]), 
          .S1(n2_adj_239[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_3.INIT0 = 16'hfaaa;
    defparam add_336_add_1_3.INIT1 = 16'hfaaa;
    defparam add_336_add_1_3.INJECT1_0 = "NO";
    defparam add_336_add_1_3.INJECT1_1 = "NO";
    CCU2D add_336_add_1_5 (.A0(AdjustablePieOverTwo[4]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[5]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2732), .COUT(n2733), .S0(n2_adj_239[3]), 
          .S1(n2_adj_239[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_5.INIT0 = 16'h0555;
    defparam add_336_add_1_5.INIT1 = 16'h0555;
    defparam add_336_add_1_5.INJECT1_0 = "NO";
    defparam add_336_add_1_5.INJECT1_1 = "NO";
    CCU2D add_336_add_1_7 (.A0(AdjustablePieOverTwo[6]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[7]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2733), .COUT(n2734), .S0(n2_adj_239[5]), 
          .S1(n2_adj_239[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_7.INIT0 = 16'hfaaa;
    defparam add_336_add_1_7.INIT1 = 16'hfaaa;
    defparam add_336_add_1_7.INJECT1_0 = "NO";
    defparam add_336_add_1_7.INJECT1_1 = "NO";
    CCU2D add_336_add_1_9 (.A0(AdjustablePieOverTwo[8]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(AdjustablePieOverTwo[9]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2734), .COUT(n2735), .S0(n2_adj_239[7]), 
          .S1(n2_adj_239[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_9.INIT0 = 16'hfaaa;
    defparam add_336_add_1_9.INIT1 = 16'h0555;
    defparam add_336_add_1_9.INJECT1_0 = "NO";
    defparam add_336_add_1_9.INJECT1_1 = "NO";
    CCU2D add_336_add_1_11 (.A0(AdjustablePieOverTwo[10]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[11]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2735), .COUT(n2736), .S0(n2_adj_239[9]), 
          .S1(n2_adj_239[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_11.INIT0 = 16'hfaaa;
    defparam add_336_add_1_11.INIT1 = 16'hfaaa;
    defparam add_336_add_1_11.INJECT1_0 = "NO";
    defparam add_336_add_1_11.INJECT1_1 = "NO";
    CCU2D add_336_add_1_13 (.A0(AdjustablePieOverTwo[12]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(AdjustablePieOverTwo[13]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n2736), .COUT(n2737), .S0(n2_adj_239[11]), 
          .S1(n2_adj_239[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_13.INIT0 = 16'hfaaa;
    defparam add_336_add_1_13.INIT1 = 16'hfaaa;
    defparam add_336_add_1_13.INJECT1_0 = "NO";
    defparam add_336_add_1_13.INJECT1_1 = "NO";
    CCU2D add_336_add_1_15 (.A0(AdjustablePieOverTwo[14]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2737), .S0(n2_adj_239[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_336_add_1_15.INIT0 = 16'hfaaa;
    defparam add_336_add_1_15.INIT1 = 16'h0000;
    defparam add_336_add_1_15.INJECT1_0 = "NO";
    defparam add_336_add_1_15.INJECT1_1 = "NO";
    CCU2D add_829_2 (.A0(n2_adj_239[0]), .B0(n18_adj_240[0]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[1]), .B1(n18_adj_240[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n2747), .S1(n2471[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_2.INIT0 = 16'h7000;
    defparam add_829_2.INIT1 = 16'h5666;
    defparam add_829_2.INJECT1_0 = "NO";
    defparam add_829_2.INJECT1_1 = "NO";
    CCU2D add_829_4 (.A0(n2_adj_239[2]), .B0(n18_adj_240[2]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[3]), .B1(n18_adj_240[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2747), .COUT(n2748), .S0(n2471[2]), .S1(n2471[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_4.INIT0 = 16'h5666;
    defparam add_829_4.INIT1 = 16'h5666;
    defparam add_829_4.INJECT1_0 = "NO";
    defparam add_829_4.INJECT1_1 = "NO";
    CCU2D add_829_6 (.A0(n2_adj_239[4]), .B0(n18_adj_240[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[5]), .B1(n18_adj_240[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2748), .COUT(n2749), .S0(n2471[4]), .S1(n2471[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_6.INIT0 = 16'h5666;
    defparam add_829_6.INIT1 = 16'h5666;
    defparam add_829_6.INJECT1_0 = "NO";
    defparam add_829_6.INJECT1_1 = "NO";
    CCU2D add_829_8 (.A0(n2_adj_239[6]), .B0(n18_adj_240[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[7]), .B1(n18_adj_240[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2749), .COUT(n2750), .S0(n2471[6]), .S1(n2471[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_8.INIT0 = 16'h5666;
    defparam add_829_8.INIT1 = 16'h5666;
    defparam add_829_8.INJECT1_0 = "NO";
    defparam add_829_8.INJECT1_1 = "NO";
    CCU2D add_829_10 (.A0(n2_adj_239[8]), .B0(n18_adj_240[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[9]), .B1(n18_adj_240[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2750), .COUT(n2751), .S0(n2471[8]), .S1(n2471[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_10.INIT0 = 16'h5666;
    defparam add_829_10.INIT1 = 16'h5666;
    defparam add_829_10.INJECT1_0 = "NO";
    defparam add_829_10.INJECT1_1 = "NO";
    CCU2D add_829_12 (.A0(n2_adj_239[10]), .B0(n18_adj_240[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[11]), .B1(n18_adj_240[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2751), .COUT(n2752), .S0(n2471[10]), .S1(n2471[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_12.INIT0 = 16'h5666;
    defparam add_829_12.INIT1 = 16'h5666;
    defparam add_829_12.INJECT1_0 = "NO";
    defparam add_829_12.INJECT1_1 = "NO";
    CCU2D add_829_14 (.A0(n2_adj_239[12]), .B0(n18_adj_240[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_239[13]), .B1(n18_adj_240[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2752), .S0(n2471[12]), .S1(n2471[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_829_14.INIT0 = 16'h5666;
    defparam add_829_14.INIT1 = 16'h5666;
    defparam add_829_14.INJECT1_0 = "NO";
    defparam add_829_14.INJECT1_1 = "NO";
    CCU2D add_830_2 (.A0(n2_adj_241[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[1]), .B1(AdjustableFreePrecession[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2755), .S1(Endof2ndMWpulse[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_2.INIT0 = 16'h7000;
    defparam add_830_2.INIT1 = 16'h5666;
    defparam add_830_2.INJECT1_0 = "NO";
    defparam add_830_2.INJECT1_1 = "NO";
    CCU2D add_830_4 (.A0(n2_adj_241[2]), .B0(AdjustableFreePrecession[4]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[3]), .B1(AdjustableFreePrecession[5]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2755), .COUT(n2756), .S0(Endof2ndMWpulse[4]), 
          .S1(Endof2ndMWpulse[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_4.INIT0 = 16'h5666;
    defparam add_830_4.INIT1 = 16'h5666;
    defparam add_830_4.INJECT1_0 = "NO";
    defparam add_830_4.INJECT1_1 = "NO";
    CCU2D add_830_6 (.A0(n2_adj_241[4]), .B0(AdjustableFreePrecession[6]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[5]), .B1(AdjustableFreePrecession[7]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2756), .COUT(n2757), .S0(Endof2ndMWpulse[6]), 
          .S1(Endof2ndMWpulse[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_6.INIT0 = 16'h5666;
    defparam add_830_6.INIT1 = 16'h5666;
    defparam add_830_6.INJECT1_0 = "NO";
    defparam add_830_6.INJECT1_1 = "NO";
    CCU2D add_830_8 (.A0(n2_adj_241[6]), .B0(AdjustableFreePrecession[8]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[7]), .B1(AdjustableFreePrecession[9]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2757), .COUT(n2758), .S0(Endof2ndMWpulse[8]), 
          .S1(Endof2ndMWpulse[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_8.INIT0 = 16'h5666;
    defparam add_830_8.INIT1 = 16'h5666;
    defparam add_830_8.INJECT1_0 = "NO";
    defparam add_830_8.INJECT1_1 = "NO";
    CCU2D add_830_10 (.A0(n2_adj_241[8]), .B0(AdjustableFreePrecession[10]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[9]), .B1(AdjustableFreePrecession[11]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2758), .COUT(n2759), .S0(Endof2ndMWpulse[10]), 
          .S1(Endof2ndMWpulse[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_10.INIT0 = 16'h5666;
    defparam add_830_10.INIT1 = 16'h5666;
    defparam add_830_10.INJECT1_0 = "NO";
    defparam add_830_10.INJECT1_1 = "NO";
    CCU2D add_830_12 (.A0(n2_adj_241[10]), .B0(AdjustableFreePrecession[12]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[11]), .B1(AdjustableFreePrecession[13]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2759), .COUT(n2760), .S0(Endof2ndMWpulse[12]), 
          .S1(Endof2ndMWpulse[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_12.INIT0 = 16'h5666;
    defparam add_830_12.INIT1 = 16'h5666;
    defparam add_830_12.INJECT1_0 = "NO";
    defparam add_830_12.INJECT1_1 = "NO";
    CCU2D add_830_14 (.A0(n2_adj_241[12]), .B0(AdjustableFreePrecession[14]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_241[13]), .B1(AdjustableFreePrecession[15]), 
          .C1(GND_net), .D1(GND_net), .CIN(n2760), .S0(Endof2ndMWpulse[14]), 
          .S1(Endof2ndMWpulse[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_830_14.INIT0 = 16'h5666;
    defparam add_830_14.INIT1 = 16'h5666;
    defparam add_830_14.INJECT1_0 = "NO";
    defparam add_830_14.INJECT1_1 = "NO";
    LUT4 MW_I_0_3_lut (.A(n2133), .B(pi2started), .C(n397), .Z(debug_2_c)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(73[14:67])
    defparam MW_I_0_3_lut.init = 16'h5d5d;
    CCU2D add_831_2 (.A0(n2_adj_242[0]), .B0(AdjustableFreePrecession[2]), 
          .C0(GND_net), .D0(GND_net), .A1(n2_adj_242[1]), .B1(n1691[3]), 
          .C1(GND_net), .D1(GND_net), .COUT(n2763), .S1(Endofopticalsample[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_2.INIT0 = 16'h7000;
    defparam add_831_2.INIT1 = 16'h5666;
    defparam add_831_2.INJECT1_0 = "NO";
    defparam add_831_2.INJECT1_1 = "NO";
    CCU2D add_831_4 (.A0(n2_adj_242[2]), .B0(n1691[4]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[3]), .B1(n1691[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2763), .COUT(n2764), .S0(Endofopticalsample[4]), 
          .S1(Endofopticalsample[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_4.INIT0 = 16'h5666;
    defparam add_831_4.INIT1 = 16'h5666;
    defparam add_831_4.INJECT1_0 = "NO";
    defparam add_831_4.INJECT1_1 = "NO";
    CCU2D add_831_6 (.A0(n2_adj_242[4]), .B0(n1691[6]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[5]), .B1(n1691[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2764), .COUT(n2765), .S0(Endofopticalsample[6]), 
          .S1(Endofopticalsample[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_6.INIT0 = 16'h5666;
    defparam add_831_6.INIT1 = 16'h5666;
    defparam add_831_6.INJECT1_0 = "NO";
    defparam add_831_6.INJECT1_1 = "NO";
    CCU2D add_831_8 (.A0(n2_adj_242[6]), .B0(n1691[8]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[7]), .B1(n1691[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2765), .COUT(n2766), .S0(Endofopticalsample[8]), 
          .S1(Endofopticalsample[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_8.INIT0 = 16'h5666;
    defparam add_831_8.INIT1 = 16'h5666;
    defparam add_831_8.INJECT1_0 = "NO";
    defparam add_831_8.INJECT1_1 = "NO";
    CCU2D add_831_10 (.A0(n2_adj_242[8]), .B0(n1691[10]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[9]), .B1(n1691[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2766), .COUT(n2767), .S0(Endofopticalsample[10]), 
          .S1(Endofopticalsample[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_10.INIT0 = 16'h5666;
    defparam add_831_10.INIT1 = 16'h5666;
    defparam add_831_10.INJECT1_0 = "NO";
    defparam add_831_10.INJECT1_1 = "NO";
    CCU2D add_831_12 (.A0(n2_adj_242[10]), .B0(n1691[12]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[11]), .B1(n1691[13]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2767), .COUT(n2768), .S0(Endofopticalsample[12]), 
          .S1(Endofopticalsample[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_12.INIT0 = 16'h5666;
    defparam add_831_12.INIT1 = 16'h5666;
    defparam add_831_12.INJECT1_0 = "NO";
    defparam add_831_12.INJECT1_1 = "NO";
    CCU2D add_831_14 (.A0(n2_adj_242[12]), .B0(n1691[14]), .C0(GND_net), 
          .D0(GND_net), .A1(n2_adj_242[13]), .B1(n1691[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n2768), .S0(Endofopticalsample[14]), .S1(Endofopticalsample[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(34[37:75])
    defparam add_831_14.INIT0 = 16'h5666;
    defparam add_831_14.INIT1 = 16'h5666;
    defparam add_831_14.INJECT1_0 = "NO";
    defparam add_831_14.INJECT1_1 = "NO";
    count_n systemcounter (.count({count}), .clk_2M5(clk_2M5), .counterreset(counterreset), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(47[10:92])
    comparator sample2 (.gatedcount({gatedcount}), .\Endofopticalsample[2] (Endofopticalsample[2]), 
            .GND_net(GND_net), .\Endofopticalsample[3] (Endofopticalsample[3]), 
            .n473(n473), .\Endofopticalsample[14] (Endofopticalsample[14]), 
            .\Endofopticalsample[15] (Endofopticalsample[15]), .\Endofopticalsample[12] (Endofopticalsample[12]), 
            .\Endofopticalsample[13] (Endofopticalsample[13]), .\Endofopticalsample[10] (Endofopticalsample[10]), 
            .\Endofopticalsample[11] (Endofopticalsample[11]), .\Endofopticalsample[8] (Endofopticalsample[8]), 
            .\Endofopticalsample[9] (Endofopticalsample[9]), .\Endofopticalsample[6] (Endofopticalsample[6]), 
            .\Endofopticalsample[7] (Endofopticalsample[7]), .\Endofopticalsample[4] (Endofopticalsample[4]), 
            .\Endofopticalsample[5] (Endofopticalsample[5])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(57[13:98])
    comparator_U4 pump2 (.n1941(n1941), .\gatedcount[10] (gatedcount[10]), 
            .n8(n8_adj_237), .debug_1_c(debug_1_c), .\gatedcount[9] (gatedcount[9]), 
            .\gatedcount[8] (gatedcount[8]), .\gatedcount[5] (gatedcount[5]), 
            .\gatedcount[6] (gatedcount[6]), .n2804(n2804)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(49[13:90])
    comparator_U5 probe2 (.gatedcount({gatedcount}), .GND_net(GND_net), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .\Endofprobepulse[6] (Endofprobepulse[6]), .\Endofprobepulse[7] (Endofprobepulse[7]), 
            .\Endofprobepulse[8] (Endofprobepulse[8]), .\Endofprobepulse[9] (Endofprobepulse[9]), 
            .\Endofprobepulse[10] (Endofprobepulse[10]), .\Endofprobepulse[11] (Endofprobepulse[11]), 
            .\Endofprobepulse[12] (Endofprobepulse[12]), .\Endofprobepulse[13] (Endofprobepulse[13]), 
            .\Endofprobepulse[14] (Endofprobepulse[14]), .\Endofprobepulse[15] (Endofprobepulse[15]), 
            .n435(n435)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(55[13:93])
    comparator_U6 probe1 (.\gatedcount[8] (gatedcount[8]), .\Startopticalsample[8] (Startopticalsample[8]), 
            .GND_net(GND_net), .\gatedcount[9] (gatedcount[9]), .\Startopticalsample[9] (Startopticalsample[9]), 
            .\gatedcount[6] (gatedcount[6]), .\Startopticalsample[6] (Startopticalsample[6]), 
            .\gatedcount[7] (gatedcount[7]), .\Startopticalsample[7] (Startopticalsample[7]), 
            .\gatedcount[4] (gatedcount[4]), .\Startopticalsample[4] (Startopticalsample[4]), 
            .\gatedcount[5] (gatedcount[5]), .\Startopticalsample[5] (Startopticalsample[5]), 
            .\gatedcount[2] (gatedcount[2]), .\Startopticalsample[2] (Startopticalsample[2]), 
            .\gatedcount[3] (gatedcount[3]), .\Startopticalsample[3] (Startopticalsample[3]), 
            .\gatedcount[12] (gatedcount[12]), .\Startopticalsample[12] (Startopticalsample[12]), 
            .\gatedcount[13] (gatedcount[13]), .\Startopticalsample[13] (Startopticalsample[13]), 
            .\gatedcount[14] (gatedcount[14]), .\Startopticalsample[14] (Startopticalsample[14]), 
            .\gatedcount[15] (gatedcount[15]), .\Startopticalsample[15] (Startopticalsample[15]), 
            .\gatedcount[1] (gatedcount[1]), .probestarted(probestarted), 
            .\gatedcount[10] (gatedcount[10]), .\Startopticalsample[10] (Startopticalsample[10]), 
            .\gatedcount[11] (gatedcount[11]), .\Startopticalsample[11] (Startopticalsample[11])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(54[13:95])
    countupdownpreload piecounter (.GND_net(GND_net), .pieovertwo_minus(pieovertwo_minus), 
            .pieovertwo_plus(pieovertwo_plus), .load_defaults(load_defaults), 
            .\AdjustablePieOverTwo[15] (AdjustablePieOverTwo[15]), .\AdjustablePieOverTwo[13] (AdjustablePieOverTwo[13]), 
            .\AdjustablePieOverTwo[14] (AdjustablePieOverTwo[14]), .\AdjustablePieOverTwo[11] (AdjustablePieOverTwo[11]), 
            .\AdjustablePieOverTwo[12] (AdjustablePieOverTwo[12]), .\AdjustablePieOverTwo[9] (AdjustablePieOverTwo[9]), 
            .\AdjustablePieOverTwo[10] (AdjustablePieOverTwo[10]), .\AdjustablePieOverTwo[7] (AdjustablePieOverTwo[7]), 
            .\AdjustablePieOverTwo[8] (AdjustablePieOverTwo[8]), .\AdjustablePieOverTwo[5] (AdjustablePieOverTwo[5]), 
            .\AdjustablePieOverTwo[6] (AdjustablePieOverTwo[6]), .\AdjustablePieOverTwo[3] (AdjustablePieOverTwo[3]), 
            .\AdjustablePieOverTwo[4] (AdjustablePieOverTwo[4]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), 
            .\AdjustablePieOverTwo[2] (AdjustablePieOverTwo[2]), .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(60[21:199])
    comparator_U7 loopcounter (.gatedcount({gatedcount}), .GND_net(GND_net), 
            .\Resetandrepeat[2] (Resetandrepeat[2]), .\Resetandrepeat[3] (Resetandrepeat[3]), 
            .\Resetandrepeat[4] (Resetandrepeat[4]), .\Resetandrepeat[5] (Resetandrepeat[5]), 
            .\Resetandrepeat[6] (Resetandrepeat[6]), .\Resetandrepeat[7] (Resetandrepeat[7]), 
            .\Resetandrepeat[8] (Resetandrepeat[8]), .\Resetandrepeat[9] (Resetandrepeat[9]), 
            .\Resetandrepeat[10] (Resetandrepeat[10]), .\Resetandrepeat[11] (Resetandrepeat[11]), 
            .\Resetandrepeat[12] (Resetandrepeat[12]), .\Resetandrepeat[13] (Resetandrepeat[13]), 
            .\Resetandrepeat[14] (Resetandrepeat[14]), .\Resetandrepeat[15] (Resetandrepeat[15]), 
            .loop(loop)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(58[13:89])
    countupdownpreload_U8 freepcounter (.\AdjustableFreePrecession[12] (AdjustableFreePrecession[12]), 
            .GND_net(GND_net), .\AdjustableFreePrecession[13] (AdjustableFreePrecession[13]), 
            .freeprecess_minus(freeprecess_minus), .freeprecess_plus(freeprecess_plus), 
            .load_defaults(load_defaults), .\AdjustableFreePrecession[10] (AdjustableFreePrecession[10]), 
            .\AdjustableFreePrecession[11] (AdjustableFreePrecession[11]), 
            .\AdjustableFreePrecession[8] (AdjustableFreePrecession[8]), .\AdjustableFreePrecession[9] (AdjustableFreePrecession[9]), 
            .\AdjustableFreePrecession[6] (AdjustableFreePrecession[6]), .\AdjustableFreePrecession[7] (AdjustableFreePrecession[7]), 
            .\AdjustableFreePrecession[4] (AdjustableFreePrecession[4]), .\AdjustableFreePrecession[5] (AdjustableFreePrecession[5]), 
            .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), .\AdjustableFreePrecession[3] (AdjustableFreePrecession[3]), 
            .\AdjustableFreePrecession[15] (AdjustableFreePrecession[15]), 
            .\AdjustableFreePrecession[14] (AdjustableFreePrecession[14]), 
            .clk_2M5(clk_2M5)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(61[21:212])
    comparator_U9 MW4 (.GND_net(GND_net), .n397(n397), .gatedcount({gatedcount}), 
            .\Endof2ndMWpulse[14] (Endof2ndMWpulse[14]), .\Endof2ndMWpulse[15] (Endof2ndMWpulse[15]), 
            .\Endof2ndMWpulse[12] (Endof2ndMWpulse[12]), .\Endof2ndMWpulse[13] (Endof2ndMWpulse[13]), 
            .\Endof2ndMWpulse[10] (Endof2ndMWpulse[10]), .\Endof2ndMWpulse[11] (Endof2ndMWpulse[11]), 
            .\Endof2ndMWpulse[8] (Endof2ndMWpulse[8]), .\Endof2ndMWpulse[9] (Endof2ndMWpulse[9]), 
            .\Endof2ndMWpulse[6] (Endof2ndMWpulse[6]), .\Endof2ndMWpulse[7] (Endof2ndMWpulse[7]), 
            .\Endof2ndMWpulse[4] (Endof2ndMWpulse[4]), .\Endof2ndMWpulse[5] (Endof2ndMWpulse[5]), 
            .\Endof2ndMWpulse[2] (Endof2ndMWpulse[2]), .\Endof2ndMWpulse[3] (Endof2ndMWpulse[3])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(53[13:88])
    comparator_U10 MW3 (.gatedcount({gatedcount}), .\Startof2ndMWpulse[8] (Startof2ndMWpulse[8]), 
            .GND_net(GND_net), .\Startof2ndMWpulse[9] (Startof2ndMWpulse[9]), 
            .\Startof2ndMWpulse[10] (Startof2ndMWpulse[10]), .\Startof2ndMWpulse[11] (Startof2ndMWpulse[11]), 
            .\Startof2ndMWpulse[6] (Startof2ndMWpulse[6]), .\Startof2ndMWpulse[7] (Startof2ndMWpulse[7]), 
            .\Startof2ndMWpulse[4] (Startof2ndMWpulse[4]), .\Startof2ndMWpulse[5] (Startof2ndMWpulse[5]), 
            .n16(n2_adj_238[0]), .\AdjustableFreePrecession[2] (AdjustableFreePrecession[2]), 
            .\Startof2ndMWpulse[3] (Startof2ndMWpulse[3]), .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), 
            .\Startof2ndMWpulse[12] (Startof2ndMWpulse[12]), .\Startof2ndMWpulse[13] (Startof2ndMWpulse[13]), 
            .\Startof2ndMWpulse[14] (Startof2ndMWpulse[14]), .\Startof2ndMWpulse[15] (Startof2ndMWpulse[15]), 
            .pi2started(pi2started)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(52[13:90])
    comparator_U11 MW2 (.gatedcount({gatedcount}), .\Endof1stMWpulse[8] (Endof1stMWpulse[8]), 
            .GND_net(GND_net), .\Endof1stMWpulse[9] (Endof1stMWpulse[9]), 
            .\Endof1stMWpulse[6] (Endof1stMWpulse[6]), .\Endof1stMWpulse[7] (Endof1stMWpulse[7]), 
            .\Endof1stMWpulse[4] (Endof1stMWpulse[4]), .\Endof1stMWpulse[5] (Endof1stMWpulse[5]), 
            .\Endof1stMWpulse[2] (Endof1stMWpulse[2]), .\Endof1stMWpulse[3] (Endof1stMWpulse[3]), 
            .\Startof2ndMWpulse[1] (Startof2ndMWpulse[1]), .n359(n359), 
            .\Endof1stMWpulse[14] (Endof1stMWpulse[14]), .\Endof1stMWpulse[15] (Endof1stMWpulse[15]), 
            .\Endof1stMWpulse[12] (Endof1stMWpulse[12]), .\Endof1stMWpulse[13] (Endof1stMWpulse[13]), 
            .\Endof1stMWpulse[10] (Endof1stMWpulse[10]), .\Endof1stMWpulse[11] (Endof1stMWpulse[11])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(51[13:88])
    comparator_U12 MW1 (.\gatedcount[3] (gatedcount[3]), .\gatedcount[4] (gatedcount[4]), 
            .\gatedcount[7] (gatedcount[7]), .n2804(n2804), .n8(n8_adj_237), 
            .n4(n4_adj_204), .\gatedcount[2] (gatedcount[2]), .\gatedcount[0] (gatedcount[0]), 
            .\gatedcount[1] (gatedcount[1]), .\gatedcount[12] (gatedcount[12]), 
            .\gatedcount[11] (gatedcount[11]), .\gatedcount[14] (gatedcount[14]), 
            .n1941(n1941), .\gatedcount[15] (gatedcount[15]), .\gatedcount[13] (gatedcount[13])) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(50[13:90])
    
endmodule
//
// Verilog Description of module count_n
//

module count_n (count, clk_2M5, counterreset, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]count;
    input clk_2M5;
    input counterreset;
    input GND_net;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire [15:0]n69;
    
    wire n2738, n2739, n2740, n2741, n2742, n2743, n2744, n2745;
    
    FD1S3DX count_258__i0 (.D(n69[0]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i0.GSR = "ENABLED";
    FD1S3DX count_258__i15 (.D(n69[15]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i15.GSR = "ENABLED";
    FD1S3DX count_258__i14 (.D(n69[14]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i14.GSR = "ENABLED";
    FD1S3DX count_258__i13 (.D(n69[13]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i13.GSR = "ENABLED";
    FD1S3DX count_258__i12 (.D(n69[12]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i12.GSR = "ENABLED";
    FD1S3DX count_258__i11 (.D(n69[11]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i11.GSR = "ENABLED";
    FD1S3DX count_258__i10 (.D(n69[10]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i10.GSR = "ENABLED";
    FD1S3DX count_258__i9 (.D(n69[9]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i9.GSR = "ENABLED";
    FD1S3DX count_258__i8 (.D(n69[8]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i8.GSR = "ENABLED";
    FD1S3DX count_258__i7 (.D(n69[7]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i7.GSR = "ENABLED";
    FD1S3DX count_258__i6 (.D(n69[6]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i6.GSR = "ENABLED";
    FD1S3DX count_258__i5 (.D(n69[5]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i5.GSR = "ENABLED";
    FD1S3DX count_258__i4 (.D(n69[4]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i4.GSR = "ENABLED";
    FD1S3DX count_258__i3 (.D(n69[3]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i3.GSR = "ENABLED";
    FD1S3DX count_258__i2 (.D(n69[2]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i2.GSR = "ENABLED";
    FD1S3DX count_258__i1 (.D(n69[1]), .CK(clk_2M5), .CD(counterreset), 
            .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258__i1.GSR = "ENABLED";
    CCU2D count_258_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2738), .S1(n69[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_1.INIT0 = 16'hF000;
    defparam count_258_add_4_1.INIT1 = 16'h0555;
    defparam count_258_add_4_1.INJECT1_0 = "NO";
    defparam count_258_add_4_1.INJECT1_1 = "NO";
    CCU2D count_258_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2738), .COUT(n2739), .S0(n69[1]), .S1(n69[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_3.INIT0 = 16'hfaaa;
    defparam count_258_add_4_3.INIT1 = 16'hfaaa;
    defparam count_258_add_4_3.INJECT1_0 = "NO";
    defparam count_258_add_4_3.INJECT1_1 = "NO";
    CCU2D count_258_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2739), .COUT(n2740), .S0(n69[3]), .S1(n69[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_5.INIT0 = 16'hfaaa;
    defparam count_258_add_4_5.INIT1 = 16'hfaaa;
    defparam count_258_add_4_5.INJECT1_0 = "NO";
    defparam count_258_add_4_5.INJECT1_1 = "NO";
    CCU2D count_258_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2740), .COUT(n2741), .S0(n69[5]), .S1(n69[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_7.INIT0 = 16'hfaaa;
    defparam count_258_add_4_7.INIT1 = 16'hfaaa;
    defparam count_258_add_4_7.INJECT1_0 = "NO";
    defparam count_258_add_4_7.INJECT1_1 = "NO";
    CCU2D count_258_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2741), .COUT(n2742), .S0(n69[7]), .S1(n69[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_9.INIT0 = 16'hfaaa;
    defparam count_258_add_4_9.INIT1 = 16'hfaaa;
    defparam count_258_add_4_9.INJECT1_0 = "NO";
    defparam count_258_add_4_9.INJECT1_1 = "NO";
    CCU2D count_258_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2742), .COUT(n2743), .S0(n69[9]), .S1(n69[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_11.INIT0 = 16'hfaaa;
    defparam count_258_add_4_11.INIT1 = 16'hfaaa;
    defparam count_258_add_4_11.INJECT1_0 = "NO";
    defparam count_258_add_4_11.INJECT1_1 = "NO";
    CCU2D count_258_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2743), .COUT(n2744), .S0(n69[11]), .S1(n69[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_13.INIT0 = 16'hfaaa;
    defparam count_258_add_4_13.INIT1 = 16'hfaaa;
    defparam count_258_add_4_13.INJECT1_0 = "NO";
    defparam count_258_add_4_13.INJECT1_1 = "NO";
    CCU2D count_258_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2744), .COUT(n2745), .S0(n69[13]), .S1(n69[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_15.INIT0 = 16'hfaaa;
    defparam count_258_add_4_15.INIT1 = 16'hfaaa;
    defparam count_258_add_4_15.INJECT1_0 = "NO";
    defparam count_258_add_4_15.INJECT1_1 = "NO";
    CCU2D count_258_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2745), .S0(n69[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/count_n.v(19[27:39])
    defparam count_258_add_4_17.INIT0 = 16'hfaaa;
    defparam count_258_add_4_17.INIT1 = 16'h0000;
    defparam count_258_add_4_17.INJECT1_0 = "NO";
    defparam count_258_add_4_17.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator
//

module comparator (gatedcount, \Endofopticalsample[2] , GND_net, \Endofopticalsample[3] , 
            n473, \Endofopticalsample[14] , \Endofopticalsample[15] , 
            \Endofopticalsample[12] , \Endofopticalsample[13] , \Endofopticalsample[10] , 
            \Endofopticalsample[11] , \Endofopticalsample[8] , \Endofopticalsample[9] , 
            \Endofopticalsample[6] , \Endofopticalsample[7] , \Endofopticalsample[4] , 
            \Endofopticalsample[5] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Endofopticalsample[2] ;
    input GND_net;
    input \Endofopticalsample[3] ;
    output n473;
    input \Endofopticalsample[14] ;
    input \Endofopticalsample[15] ;
    input \Endofopticalsample[12] ;
    input \Endofopticalsample[13] ;
    input \Endofopticalsample[10] ;
    input \Endofopticalsample[11] ;
    input \Endofopticalsample[8] ;
    input \Endofopticalsample[9] ;
    input \Endofopticalsample[6] ;
    input \Endofopticalsample[7] ;
    input \Endofopticalsample[4] ;
    input \Endofopticalsample[5] ;
    
    
    wire n2594, n2595, n2601, n2600, n2599, n2598, n2597, n2596;
    
    CCU2D sub_205_add_2_4 (.A0(gatedcount[2]), .B0(\Endofopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endofopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2594), .COUT(n2595));
    defparam sub_205_add_2_4.INIT0 = 16'h5999;
    defparam sub_205_add_2_4.INIT1 = 16'h5999;
    defparam sub_205_add_2_4.INJECT1_0 = "NO";
    defparam sub_205_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2594));
    defparam sub_205_add_2_2.INIT0 = 16'h5000;
    defparam sub_205_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_205_add_2_2.INJECT1_0 = "NO";
    defparam sub_205_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2601), .S0(n473));
    defparam sub_205_add_2_cout.INIT0 = 16'h0000;
    defparam sub_205_add_2_cout.INIT1 = 16'h0000;
    defparam sub_205_add_2_cout.INJECT1_0 = "NO";
    defparam sub_205_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_16 (.A0(gatedcount[14]), .B0(\Endofopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2600), .COUT(n2601));
    defparam sub_205_add_2_16.INIT0 = 16'h5999;
    defparam sub_205_add_2_16.INIT1 = 16'h5999;
    defparam sub_205_add_2_16.INJECT1_0 = "NO";
    defparam sub_205_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_14 (.A0(gatedcount[12]), .B0(\Endofopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2599), .COUT(n2600));
    defparam sub_205_add_2_14.INIT0 = 16'h5999;
    defparam sub_205_add_2_14.INIT1 = 16'h5999;
    defparam sub_205_add_2_14.INJECT1_0 = "NO";
    defparam sub_205_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_12 (.A0(gatedcount[10]), .B0(\Endofopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2598), .COUT(n2599));
    defparam sub_205_add_2_12.INIT0 = 16'h5999;
    defparam sub_205_add_2_12.INIT1 = 16'h5999;
    defparam sub_205_add_2_12.INJECT1_0 = "NO";
    defparam sub_205_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_10 (.A0(gatedcount[8]), .B0(\Endofopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2597), .COUT(n2598));
    defparam sub_205_add_2_10.INIT0 = 16'h5999;
    defparam sub_205_add_2_10.INIT1 = 16'h5999;
    defparam sub_205_add_2_10.INJECT1_0 = "NO";
    defparam sub_205_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_8 (.A0(gatedcount[6]), .B0(\Endofopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2596), .COUT(n2597));
    defparam sub_205_add_2_8.INIT0 = 16'h5999;
    defparam sub_205_add_2_8.INIT1 = 16'h5999;
    defparam sub_205_add_2_8.INJECT1_0 = "NO";
    defparam sub_205_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_205_add_2_6 (.A0(gatedcount[4]), .B0(\Endofopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endofopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2595), .COUT(n2596));
    defparam sub_205_add_2_6.INIT0 = 16'h5999;
    defparam sub_205_add_2_6.INIT1 = 16'h5999;
    defparam sub_205_add_2_6.INJECT1_0 = "NO";
    defparam sub_205_add_2_6.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U4
//

module comparator_U4 (n1941, \gatedcount[10] , n8, debug_1_c, \gatedcount[9] , 
            \gatedcount[8] , \gatedcount[5] , \gatedcount[6] , n2804) /* synthesis syn_module_defined=1 */ ;
    input n1941;
    input \gatedcount[10] ;
    input n8;
    output debug_1_c;
    input \gatedcount[9] ;
    input \gatedcount[8] ;
    input \gatedcount[5] ;
    input \gatedcount[6] ;
    output n2804;
    
    
    wire n7;
    
    LUT4 i930_4_lut (.A(n1941), .B(\gatedcount[10] ), .C(n7), .D(n8), 
         .Z(debug_1_c)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i930_4_lut.init = 16'h0111;
    LUT4 i2_2_lut (.A(\gatedcount[9] ), .B(\gatedcount[8] ), .Z(n7)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(\gatedcount[5] ), .B(\gatedcount[6] ), .Z(n2804)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    
endmodule
//
// Verilog Description of module comparator_U5
//

module comparator_U5 (gatedcount, GND_net, \Resetandrepeat[2] , \Resetandrepeat[3] , 
            \Resetandrepeat[4] , \Resetandrepeat[5] , \Endofprobepulse[6] , 
            \Endofprobepulse[7] , \Endofprobepulse[8] , \Endofprobepulse[9] , 
            \Endofprobepulse[10] , \Endofprobepulse[11] , \Endofprobepulse[12] , 
            \Endofprobepulse[13] , \Endofprobepulse[14] , \Endofprobepulse[15] , 
            n435) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input GND_net;
    input \Resetandrepeat[2] ;
    input \Resetandrepeat[3] ;
    input \Resetandrepeat[4] ;
    input \Resetandrepeat[5] ;
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
    output n435;
    
    
    wire n2708, n2709, n2710, n2711, n2712, n2713, n2714, n2715;
    
    CCU2D sub_201_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2708));
    defparam sub_201_add_2_2.INIT0 = 16'h5000;
    defparam sub_201_add_2_2.INIT1 = 16'h5555;
    defparam sub_201_add_2_2.INJECT1_0 = "NO";
    defparam sub_201_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_4 (.A0(gatedcount[2]), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2708), .COUT(n2709));
    defparam sub_201_add_2_4.INIT0 = 16'h5999;
    defparam sub_201_add_2_4.INIT1 = 16'h5999;
    defparam sub_201_add_2_4.INJECT1_0 = "NO";
    defparam sub_201_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2709), .COUT(n2710));
    defparam sub_201_add_2_6.INIT0 = 16'h5999;
    defparam sub_201_add_2_6.INIT1 = 16'h5999;
    defparam sub_201_add_2_6.INJECT1_0 = "NO";
    defparam sub_201_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_8 (.A0(gatedcount[6]), .B0(\Endofprobepulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endofprobepulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2710), .COUT(n2711));
    defparam sub_201_add_2_8.INIT0 = 16'h5999;
    defparam sub_201_add_2_8.INIT1 = 16'h5999;
    defparam sub_201_add_2_8.INJECT1_0 = "NO";
    defparam sub_201_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_10 (.A0(gatedcount[8]), .B0(\Endofprobepulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endofprobepulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2711), .COUT(n2712));
    defparam sub_201_add_2_10.INIT0 = 16'h5999;
    defparam sub_201_add_2_10.INIT1 = 16'h5999;
    defparam sub_201_add_2_10.INJECT1_0 = "NO";
    defparam sub_201_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_12 (.A0(gatedcount[10]), .B0(\Endofprobepulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endofprobepulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2712), .COUT(n2713));
    defparam sub_201_add_2_12.INIT0 = 16'h5999;
    defparam sub_201_add_2_12.INIT1 = 16'h5999;
    defparam sub_201_add_2_12.INJECT1_0 = "NO";
    defparam sub_201_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_14 (.A0(gatedcount[12]), .B0(\Endofprobepulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endofprobepulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2713), .COUT(n2714));
    defparam sub_201_add_2_14.INIT0 = 16'h5999;
    defparam sub_201_add_2_14.INIT1 = 16'h5999;
    defparam sub_201_add_2_14.INJECT1_0 = "NO";
    defparam sub_201_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_16 (.A0(gatedcount[14]), .B0(\Endofprobepulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endofprobepulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2714), .COUT(n2715));
    defparam sub_201_add_2_16.INIT0 = 16'h5999;
    defparam sub_201_add_2_16.INIT1 = 16'h5999;
    defparam sub_201_add_2_16.INJECT1_0 = "NO";
    defparam sub_201_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_201_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2715), .S0(n435));
    defparam sub_201_add_2_cout.INIT0 = 16'h0000;
    defparam sub_201_add_2_cout.INIT1 = 16'h0000;
    defparam sub_201_add_2_cout.INJECT1_0 = "NO";
    defparam sub_201_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U6
//

module comparator_U6 (\gatedcount[8] , \Startopticalsample[8] , GND_net, 
            \gatedcount[9] , \Startopticalsample[9] , \gatedcount[6] , 
            \Startopticalsample[6] , \gatedcount[7] , \Startopticalsample[7] , 
            \gatedcount[4] , \Startopticalsample[4] , \gatedcount[5] , 
            \Startopticalsample[5] , \gatedcount[2] , \Startopticalsample[2] , 
            \gatedcount[3] , \Startopticalsample[3] , \gatedcount[12] , 
            \Startopticalsample[12] , \gatedcount[13] , \Startopticalsample[13] , 
            \gatedcount[14] , \Startopticalsample[14] , \gatedcount[15] , 
            \Startopticalsample[15] , \gatedcount[1] , probestarted, \gatedcount[10] , 
            \Startopticalsample[10] , \gatedcount[11] , \Startopticalsample[11] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[8] ;
    input \Startopticalsample[8] ;
    input GND_net;
    input \gatedcount[9] ;
    input \Startopticalsample[9] ;
    input \gatedcount[6] ;
    input \Startopticalsample[6] ;
    input \gatedcount[7] ;
    input \Startopticalsample[7] ;
    input \gatedcount[4] ;
    input \Startopticalsample[4] ;
    input \gatedcount[5] ;
    input \Startopticalsample[5] ;
    input \gatedcount[2] ;
    input \Startopticalsample[2] ;
    input \gatedcount[3] ;
    input \Startopticalsample[3] ;
    input \gatedcount[12] ;
    input \Startopticalsample[12] ;
    input \gatedcount[13] ;
    input \Startopticalsample[13] ;
    input \gatedcount[14] ;
    input \Startopticalsample[14] ;
    input \gatedcount[15] ;
    input \Startopticalsample[15] ;
    input \gatedcount[1] ;
    output probestarted;
    input \gatedcount[10] ;
    input \Startopticalsample[10] ;
    input \gatedcount[11] ;
    input \Startopticalsample[11] ;
    
    
    wire n2653, n2654, n2652, n2651, n2650, n2655, n2656, n2657;
    
    CCU2D sub_199_add_2_10 (.A0(\gatedcount[8] ), .B0(\Startopticalsample[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[9] ), .B1(\Startopticalsample[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2653), .COUT(n2654));
    defparam sub_199_add_2_10.INIT0 = 16'h5999;
    defparam sub_199_add_2_10.INIT1 = 16'h5999;
    defparam sub_199_add_2_10.INJECT1_0 = "NO";
    defparam sub_199_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_8 (.A0(\gatedcount[6] ), .B0(\Startopticalsample[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[7] ), .B1(\Startopticalsample[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2652), .COUT(n2653));
    defparam sub_199_add_2_8.INIT0 = 16'h5999;
    defparam sub_199_add_2_8.INIT1 = 16'h5999;
    defparam sub_199_add_2_8.INJECT1_0 = "NO";
    defparam sub_199_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_6 (.A0(\gatedcount[4] ), .B0(\Startopticalsample[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[5] ), .B1(\Startopticalsample[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2651), .COUT(n2652));
    defparam sub_199_add_2_6.INIT0 = 16'h5999;
    defparam sub_199_add_2_6.INIT1 = 16'h5999;
    defparam sub_199_add_2_6.INJECT1_0 = "NO";
    defparam sub_199_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_4 (.A0(\gatedcount[2] ), .B0(\Startopticalsample[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[3] ), .B1(\Startopticalsample[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2650), .COUT(n2651));
    defparam sub_199_add_2_4.INIT0 = 16'h5999;
    defparam sub_199_add_2_4.INIT1 = 16'h5999;
    defparam sub_199_add_2_4.INJECT1_0 = "NO";
    defparam sub_199_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_14 (.A0(\gatedcount[12] ), .B0(\Startopticalsample[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[13] ), .B1(\Startopticalsample[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2655), .COUT(n2656));
    defparam sub_199_add_2_14.INIT0 = 16'h5999;
    defparam sub_199_add_2_14.INIT1 = 16'h5999;
    defparam sub_199_add_2_14.INJECT1_0 = "NO";
    defparam sub_199_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_16 (.A0(\gatedcount[14] ), .B0(\Startopticalsample[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[15] ), .B1(\Startopticalsample[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2656), .COUT(n2657));
    defparam sub_199_add_2_16.INIT0 = 16'h5999;
    defparam sub_199_add_2_16.INIT1 = 16'h5999;
    defparam sub_199_add_2_16.INJECT1_0 = "NO";
    defparam sub_199_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\gatedcount[1] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2650));
    defparam sub_199_add_2_2.INIT0 = 16'h0000;
    defparam sub_199_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_199_add_2_2.INJECT1_0 = "NO";
    defparam sub_199_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2657), .S0(probestarted));
    defparam sub_199_add_2_cout.INIT0 = 16'h0000;
    defparam sub_199_add_2_cout.INIT1 = 16'h0000;
    defparam sub_199_add_2_cout.INJECT1_0 = "NO";
    defparam sub_199_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_199_add_2_12 (.A0(\gatedcount[10] ), .B0(\Startopticalsample[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(\gatedcount[11] ), .B1(\Startopticalsample[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2654), .COUT(n2655));
    defparam sub_199_add_2_12.INIT0 = 16'h5999;
    defparam sub_199_add_2_12.INIT1 = 16'h5999;
    defparam sub_199_add_2_12.INJECT1_0 = "NO";
    defparam sub_199_add_2_12.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload
//

module countupdownpreload (GND_net, pieovertwo_minus, pieovertwo_plus, 
            load_defaults, \AdjustablePieOverTwo[15] , \AdjustablePieOverTwo[13] , 
            \AdjustablePieOverTwo[14] , \AdjustablePieOverTwo[11] , \AdjustablePieOverTwo[12] , 
            \AdjustablePieOverTwo[9] , \AdjustablePieOverTwo[10] , \AdjustablePieOverTwo[7] , 
            \AdjustablePieOverTwo[8] , \AdjustablePieOverTwo[5] , \AdjustablePieOverTwo[6] , 
            \AdjustablePieOverTwo[3] , \AdjustablePieOverTwo[4] , \Startof2ndMWpulse[1] , 
            \AdjustablePieOverTwo[2] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input pieovertwo_minus;
    input pieovertwo_plus;
    input load_defaults;
    output \AdjustablePieOverTwo[15] ;
    output \AdjustablePieOverTwo[13] ;
    output \AdjustablePieOverTwo[14] ;
    output \AdjustablePieOverTwo[11] ;
    output \AdjustablePieOverTwo[12] ;
    output \AdjustablePieOverTwo[9] ;
    output \AdjustablePieOverTwo[10] ;
    output \AdjustablePieOverTwo[7] ;
    output \AdjustablePieOverTwo[8] ;
    output \AdjustablePieOverTwo[5] ;
    output \AdjustablePieOverTwo[6] ;
    output \AdjustablePieOverTwo[3] ;
    output \AdjustablePieOverTwo[4] ;
    output \Startof2ndMWpulse[1] ;
    output \AdjustablePieOverTwo[2] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2582;
    wire [14:0]n1656;
    wire [15:0]count_15__N_131;
    
    wire n2583, n4, n2588, n2587, n2586, n2635, n2634, n2633, 
        n2632, n2631, n2585, n2630, n2629, n2628, n2584;
    
    CCU2D add_348_3 (.A0(n1656[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[3]), 
          .D1(GND_net), .CIN(n2582), .COUT(n2583), .S0(count_15__N_131[3]), 
          .S1(count_15__N_131[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_3.INIT0 = 16'h5aaa;
    defparam add_348_3.INIT1 = 16'hd2d2;
    defparam add_348_3.INJECT1_0 = "NO";
    defparam add_348_3.INJECT1_1 = "NO";
    CCU2D add_348_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[1]), 
          .D1(GND_net), .COUT(n2582), .S1(count_15__N_131[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_1.INIT0 = 16'hF000;
    defparam add_348_1.INIT1 = 16'hd2d2;
    defparam add_348_1.INJECT1_0 = "NO";
    defparam add_348_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(pieovertwo_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_348_15 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[14]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2588), .S0(count_15__N_131[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_15.INIT0 = 16'hd2d2;
    defparam add_348_15.INIT1 = 16'h0000;
    defparam add_348_15.INJECT1_0 = "NO";
    defparam add_348_15.INJECT1_1 = "NO";
    CCU2D add_348_13 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[12]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[13]), 
          .D1(GND_net), .CIN(n2587), .COUT(n2588), .S0(count_15__N_131[13]), 
          .S1(count_15__N_131[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_13.INIT0 = 16'hd2d2;
    defparam add_348_13.INIT1 = 16'hd2d2;
    defparam add_348_13.INJECT1_0 = "NO";
    defparam add_348_13.INJECT1_1 = "NO";
    CCU2D add_348_11 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[10]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[11]), 
          .D1(GND_net), .CIN(n2586), .COUT(n2587), .S0(count_15__N_131[11]), 
          .S1(count_15__N_131[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_11.INIT0 = 16'hd2d2;
    defparam add_348_11.INIT1 = 16'hd2d2;
    defparam add_348_11.INJECT1_0 = "NO";
    defparam add_348_11.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_17 (.A0(\AdjustablePieOverTwo[15] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2635), .S0(n1656[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_17.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_17.INIT1 = 16'h0000;
    defparam add_250_311_add_1_17.INJECT1_0 = "NO";
    defparam add_250_311_add_1_17.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_15 (.A0(\AdjustablePieOverTwo[13] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[14] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2634), .COUT(n2635), 
          .S0(n1656[12]), .S1(n1656[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_15.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_15.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_15.INJECT1_0 = "NO";
    defparam add_250_311_add_1_15.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_13 (.A0(\AdjustablePieOverTwo[11] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[12] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2633), .COUT(n2634), 
          .S0(n1656[10]), .S1(n1656[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_13.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_13.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_13.INJECT1_0 = "NO";
    defparam add_250_311_add_1_13.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_11 (.A0(\AdjustablePieOverTwo[9] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[10] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2632), .COUT(n2633), 
          .S0(n1656[8]), .S1(n1656[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_11.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_11.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_11.INJECT1_0 = "NO";
    defparam add_250_311_add_1_11.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_9 (.A0(\AdjustablePieOverTwo[7] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[8] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2631), .COUT(n2632), 
          .S0(n1656[6]), .S1(n1656[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_9.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_9.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_9.INJECT1_0 = "NO";
    defparam add_250_311_add_1_9.INJECT1_1 = "NO";
    CCU2D add_348_9 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[8]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[9]), 
          .D1(GND_net), .CIN(n2585), .COUT(n2586), .S0(count_15__N_131[9]), 
          .S1(count_15__N_131[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_9.INIT0 = 16'hd2d2;
    defparam add_348_9.INIT1 = 16'hd2d2;
    defparam add_348_9.INJECT1_0 = "NO";
    defparam add_348_9.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_131[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    CCU2D add_250_311_add_1_7 (.A0(\AdjustablePieOverTwo[5] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[6] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2630), .COUT(n2631), 
          .S0(n1656[4]), .S1(n1656[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_7.INIT0 = 16'h5aaa;
    defparam add_250_311_add_1_7.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_7.INJECT1_0 = "NO";
    defparam add_250_311_add_1_7.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_5 (.A0(\AdjustablePieOverTwo[3] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[4] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2629), .COUT(n2630), 
          .S0(n1656[2]), .S1(n1656[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_5.INIT0 = 16'h5666;
    defparam add_250_311_add_1_5.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_5.INJECT1_0 = "NO";
    defparam add_250_311_add_1_5.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_3 (.A0(\Startof2ndMWpulse[1] ), .B0(pieovertwo_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustablePieOverTwo[2] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2628), .COUT(n2629), 
          .S0(count_15__N_131[1]), .S1(n1656[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_3.INIT0 = 16'h5666;
    defparam add_250_311_add_1_3.INIT1 = 16'h5aaa;
    defparam add_250_311_add_1_3.INJECT1_0 = "NO";
    defparam add_250_311_add_1_3.INJECT1_1 = "NO";
    CCU2D add_250_311_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(GND_net), 
          .D1(GND_net), .COUT(n2628));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_250_311_add_1_1.INIT0 = 16'hF000;
    defparam add_250_311_add_1_1.INIT1 = 16'hdddd;
    defparam add_250_311_add_1_1.INJECT1_0 = "NO";
    defparam add_250_311_add_1_1.INJECT1_1 = "NO";
    FD1S3IX count_i14 (.D(count_15__N_131[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_131[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3IX count_i12 (.D(count_15__N_131[12]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3IX count_i11 (.D(count_15__N_131[11]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3IX count_i10 (.D(count_15__N_131[10]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3JX count_i9 (.D(count_15__N_131[9]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_131[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3JX count_i7 (.D(count_15__N_131[7]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_131[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3JX count_i5 (.D(count_15__N_131[5]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_131[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_131[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustablePieOverTwo[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3IX count_i2 (.D(count_15__N_131[2]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustablePieOverTwo[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    FD1S3IX count_i1 (.D(count_15__N_131[1]), .CK(trigger), .CD(load_defaults), 
            .Q(\Startof2ndMWpulse[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=199, LSE_LLINE=60, LSE_RLINE=60 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i1.GSR = "ENABLED";
    CCU2D add_348_7 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[6]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[7]), 
          .D1(GND_net), .CIN(n2584), .COUT(n2585), .S0(count_15__N_131[7]), 
          .S1(count_15__N_131[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_7.INIT0 = 16'hd2d2;
    defparam add_348_7.INIT1 = 16'hd2d2;
    defparam add_348_7.INJECT1_0 = "NO";
    defparam add_348_7.INJECT1_1 = "NO";
    CCU2D add_348_5 (.A0(pieovertwo_minus), .B0(pieovertwo_plus), .C0(n1656[4]), 
          .D0(GND_net), .A1(pieovertwo_minus), .B1(pieovertwo_plus), .C1(n1656[5]), 
          .D1(GND_net), .CIN(n2583), .COUT(n2584), .S0(count_15__N_131[5]), 
          .S1(count_15__N_131[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_348_5.INIT0 = 16'hd2d2;
    defparam add_348_5.INIT1 = 16'hd2d2;
    defparam add_348_5.INJECT1_0 = "NO";
    defparam add_348_5.INJECT1_1 = "NO";
    single_period_pulse clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .pieovertwo_minus(pieovertwo_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse
//

module single_period_pulse (trigger, clk_2M5, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input pieovertwo_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/piecounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U0 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .pieovertwo_minus(pieovertwo_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop
//

module d_flip_flop (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U0
//

module d_flip_flop_U0 (Q0, clk_2M5, pieovertwo_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input clk_2M5;
    input pieovertwo_minus;
    input n4;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(pieovertwo_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U7
//

module comparator_U7 (gatedcount, GND_net, \Resetandrepeat[2] , \Resetandrepeat[3] , 
            \Resetandrepeat[4] , \Resetandrepeat[5] , \Resetandrepeat[6] , 
            \Resetandrepeat[7] , \Resetandrepeat[8] , \Resetandrepeat[9] , 
            \Resetandrepeat[10] , \Resetandrepeat[11] , \Resetandrepeat[12] , 
            \Resetandrepeat[13] , \Resetandrepeat[14] , \Resetandrepeat[15] , 
            loop) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input GND_net;
    input \Resetandrepeat[2] ;
    input \Resetandrepeat[3] ;
    input \Resetandrepeat[4] ;
    input \Resetandrepeat[5] ;
    input \Resetandrepeat[6] ;
    input \Resetandrepeat[7] ;
    input \Resetandrepeat[8] ;
    input \Resetandrepeat[9] ;
    input \Resetandrepeat[10] ;
    input \Resetandrepeat[11] ;
    input \Resetandrepeat[12] ;
    input \Resetandrepeat[13] ;
    input \Resetandrepeat[14] ;
    input \Resetandrepeat[15] ;
    output loop;
    
    
    wire n2716, n2717, n2718, n2719, n2720, n2721, n2722, n2723;
    
    CCU2D sub_207_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2716));
    defparam sub_207_add_2_2.INIT0 = 16'h5000;
    defparam sub_207_add_2_2.INIT1 = 16'h5555;
    defparam sub_207_add_2_2.INJECT1_0 = "NO";
    defparam sub_207_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_4 (.A0(gatedcount[2]), .B0(\Resetandrepeat[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Resetandrepeat[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2716), .COUT(n2717));
    defparam sub_207_add_2_4.INIT0 = 16'h5999;
    defparam sub_207_add_2_4.INIT1 = 16'h5999;
    defparam sub_207_add_2_4.INJECT1_0 = "NO";
    defparam sub_207_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_6 (.A0(gatedcount[4]), .B0(\Resetandrepeat[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Resetandrepeat[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2717), .COUT(n2718));
    defparam sub_207_add_2_6.INIT0 = 16'h5999;
    defparam sub_207_add_2_6.INIT1 = 16'h5999;
    defparam sub_207_add_2_6.INJECT1_0 = "NO";
    defparam sub_207_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_8 (.A0(gatedcount[6]), .B0(\Resetandrepeat[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Resetandrepeat[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2718), .COUT(n2719));
    defparam sub_207_add_2_8.INIT0 = 16'h5999;
    defparam sub_207_add_2_8.INIT1 = 16'h5999;
    defparam sub_207_add_2_8.INJECT1_0 = "NO";
    defparam sub_207_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_10 (.A0(gatedcount[8]), .B0(\Resetandrepeat[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Resetandrepeat[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2719), .COUT(n2720));
    defparam sub_207_add_2_10.INIT0 = 16'h5999;
    defparam sub_207_add_2_10.INIT1 = 16'h5999;
    defparam sub_207_add_2_10.INJECT1_0 = "NO";
    defparam sub_207_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_12 (.A0(gatedcount[10]), .B0(\Resetandrepeat[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Resetandrepeat[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2720), .COUT(n2721));
    defparam sub_207_add_2_12.INIT0 = 16'h5999;
    defparam sub_207_add_2_12.INIT1 = 16'h5999;
    defparam sub_207_add_2_12.INJECT1_0 = "NO";
    defparam sub_207_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_14 (.A0(gatedcount[12]), .B0(\Resetandrepeat[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Resetandrepeat[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2721), .COUT(n2722));
    defparam sub_207_add_2_14.INIT0 = 16'h5999;
    defparam sub_207_add_2_14.INIT1 = 16'h5999;
    defparam sub_207_add_2_14.INJECT1_0 = "NO";
    defparam sub_207_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_16 (.A0(gatedcount[14]), .B0(\Resetandrepeat[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Resetandrepeat[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2722), .COUT(n2723));
    defparam sub_207_add_2_16.INIT0 = 16'h5999;
    defparam sub_207_add_2_16.INIT1 = 16'h5999;
    defparam sub_207_add_2_16.INJECT1_0 = "NO";
    defparam sub_207_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_207_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2723), .S0(loop));
    defparam sub_207_add_2_cout.INIT0 = 16'h0000;
    defparam sub_207_add_2_cout.INIT1 = 16'h0000;
    defparam sub_207_add_2_cout.INJECT1_0 = "NO";
    defparam sub_207_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module countupdownpreload_U8
//

module countupdownpreload_U8 (\AdjustableFreePrecession[12] , GND_net, \AdjustableFreePrecession[13] , 
            freeprecess_minus, freeprecess_plus, load_defaults, \AdjustableFreePrecession[10] , 
            \AdjustableFreePrecession[11] , \AdjustableFreePrecession[8] , 
            \AdjustableFreePrecession[9] , \AdjustableFreePrecession[6] , 
            \AdjustableFreePrecession[7] , \AdjustableFreePrecession[4] , 
            \AdjustableFreePrecession[5] , \AdjustableFreePrecession[2] , 
            \AdjustableFreePrecession[3] , \AdjustableFreePrecession[15] , 
            \AdjustableFreePrecession[14] , clk_2M5) /* synthesis syn_module_defined=1 */ ;
    output \AdjustableFreePrecession[12] ;
    input GND_net;
    output \AdjustableFreePrecession[13] ;
    input freeprecess_minus;
    input freeprecess_plus;
    input load_defaults;
    output \AdjustableFreePrecession[10] ;
    output \AdjustableFreePrecession[11] ;
    output \AdjustableFreePrecession[8] ;
    output \AdjustableFreePrecession[9] ;
    output \AdjustableFreePrecession[6] ;
    output \AdjustableFreePrecession[7] ;
    output \AdjustableFreePrecession[4] ;
    output \AdjustableFreePrecession[5] ;
    output \AdjustableFreePrecession[2] ;
    output \AdjustableFreePrecession[3] ;
    output \AdjustableFreePrecession[15] ;
    output \AdjustableFreePrecession[14] ;
    input clk_2M5;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire n2572;
    wire [13:0]n1798;
    
    wire n2573, n2675;
    wire [15:0]count_15__N_131;
    
    wire n4, n2571, n2570, n2569, n2674, n2568, n2567, n2673, 
        n2672, n2671, n2670;
    
    CCU2D add_254_313_add_1_13 (.A0(\AdjustableFreePrecession[12] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[13] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2572), .COUT(n2573), 
          .S0(n1798[10]), .S1(n1798[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_13.INIT0 = 16'h5aaa;
    defparam add_254_313_add_1_13.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_13.INJECT1_0 = "NO";
    defparam add_254_313_add_1_13.INJECT1_1 = "NO";
    CCU2D add_347_13 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1798[12]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1798[13]), .D1(GND_net), .CIN(n2675), .S0(count_15__N_131[14]), 
          .S1(count_15__N_131[15]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_13.INIT0 = 16'hd2d2;
    defparam add_347_13.INIT1 = 16'hd2d2;
    defparam add_347_13.INJECT1_0 = "NO";
    defparam add_347_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(freeprecess_plus), .B(load_defaults), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[41:60])
    defparam i1_2_lut.init = 16'heeee;
    CCU2D add_254_313_add_1_11 (.A0(\AdjustableFreePrecession[10] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[11] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2571), .COUT(n2572), 
          .S0(n1798[8]), .S1(n1798[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_11.INIT0 = 16'h5aaa;
    defparam add_254_313_add_1_11.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_11.INJECT1_0 = "NO";
    defparam add_254_313_add_1_11.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_9 (.A0(\AdjustableFreePrecession[8] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[9] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2570), .COUT(n2571), 
          .S0(n1798[6]), .S1(n1798[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_9.INIT0 = 16'h5aaa;
    defparam add_254_313_add_1_9.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_9.INJECT1_0 = "NO";
    defparam add_254_313_add_1_9.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_7 (.A0(\AdjustableFreePrecession[6] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[7] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2569), .COUT(n2570), 
          .S0(n1798[4]), .S1(n1798[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_7.INIT0 = 16'h5666;
    defparam add_254_313_add_1_7.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_7.INJECT1_0 = "NO";
    defparam add_254_313_add_1_7.INJECT1_1 = "NO";
    CCU2D add_347_11 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1798[10]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1798[11]), .D1(GND_net), .CIN(n2674), .COUT(n2675), .S0(count_15__N_131[12]), 
          .S1(count_15__N_131[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_11.INIT0 = 16'hd2d2;
    defparam add_347_11.INIT1 = 16'hd2d2;
    defparam add_347_11.INJECT1_0 = "NO";
    defparam add_347_11.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_5 (.A0(\AdjustableFreePrecession[4] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[5] ), 
          .B1(freeprecess_plus), .C1(GND_net), .D1(GND_net), .CIN(n2568), 
          .COUT(n2569), .S0(n1798[2]), .S1(n1798[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_5.INIT0 = 16'h5aaa;
    defparam add_254_313_add_1_5.INIT1 = 16'h5666;
    defparam add_254_313_add_1_5.INJECT1_0 = "NO";
    defparam add_254_313_add_1_5.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_3 (.A0(\AdjustableFreePrecession[2] ), .B0(freeprecess_plus), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[3] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2567), .COUT(n2568), 
          .S0(count_15__N_131[2]), .S1(n1798[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_3.INIT0 = 16'h5666;
    defparam add_254_313_add_1_3.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_3.INJECT1_0 = "NO";
    defparam add_254_313_add_1_3.INJECT1_1 = "NO";
    CCU2D add_347_9 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1798[8]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1798[9]), .D1(GND_net), .CIN(n2673), .COUT(n2674), .S0(count_15__N_131[10]), 
          .S1(count_15__N_131[11]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_9.INIT0 = 16'hd2d2;
    defparam add_347_9.INIT1 = 16'hd2d2;
    defparam add_347_9.INJECT1_0 = "NO";
    defparam add_347_9.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(GND_net), .D1(GND_net), .COUT(n2567));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_1.INIT0 = 16'hF000;
    defparam add_254_313_add_1_1.INIT1 = 16'hdddd;
    defparam add_254_313_add_1_1.INJECT1_0 = "NO";
    defparam add_254_313_add_1_1.INJECT1_1 = "NO";
    CCU2D add_347_7 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1798[6]), 
          .D0(GND_net), .A1(freeprecess_minus), .B1(freeprecess_plus), 
          .C1(n1798[7]), .D1(GND_net), .CIN(n2672), .COUT(n2673), .S0(count_15__N_131[8]), 
          .S1(count_15__N_131[9]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_7.INIT0 = 16'hd2d2;
    defparam add_347_7.INIT1 = 16'hd2d2;
    defparam add_347_7.INJECT1_0 = "NO";
    defparam add_347_7.INJECT1_1 = "NO";
    CCU2D add_347_5 (.A0(n1798[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1798[5]), 
          .D1(GND_net), .CIN(n2671), .COUT(n2672), .S0(count_15__N_131[6]), 
          .S1(count_15__N_131[7]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_5.INIT0 = 16'h5aaa;
    defparam add_347_5.INIT1 = 16'hd2d2;
    defparam add_347_5.INJECT1_0 = "NO";
    defparam add_347_5.INJECT1_1 = "NO";
    CCU2D add_347_3 (.A0(freeprecess_minus), .B0(freeprecess_plus), .C0(n1798[2]), 
          .D0(GND_net), .A1(n1798[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2670), .COUT(n2671), .S0(count_15__N_131[4]), .S1(count_15__N_131[5]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_3.INIT0 = 16'hd2d2;
    defparam add_347_3.INIT1 = 16'h5aaa;
    defparam add_347_3.INJECT1_0 = "NO";
    defparam add_347_3.INJECT1_1 = "NO";
    FD1S3IX count_i15 (.D(count_15__N_131[15]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[15] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i15.GSR = "ENABLED";
    FD1S3IX count_i14 (.D(count_15__N_131[14]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[14] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i14.GSR = "ENABLED";
    FD1S3IX count_i13 (.D(count_15__N_131[13]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[13] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i13.GSR = "ENABLED";
    FD1S3JX count_i12 (.D(count_15__N_131[12]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[12] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i12.GSR = "ENABLED";
    FD1S3JX count_i11 (.D(count_15__N_131[11]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[11] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i11.GSR = "ENABLED";
    FD1S3JX count_i10 (.D(count_15__N_131[10]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[10] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i10.GSR = "ENABLED";
    FD1S3IX count_i9 (.D(count_15__N_131[9]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i9.GSR = "ENABLED";
    FD1S3JX count_i8 (.D(count_15__N_131[8]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i8.GSR = "ENABLED";
    FD1S3IX count_i7 (.D(count_15__N_131[7]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i7.GSR = "ENABLED";
    FD1S3JX count_i6 (.D(count_15__N_131[6]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i6.GSR = "ENABLED";
    FD1S3IX count_i5 (.D(count_15__N_131[5]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i5.GSR = "ENABLED";
    FD1S3IX count_i4 (.D(count_15__N_131[4]), .CK(trigger), .CD(load_defaults), 
            .Q(\AdjustableFreePrecession[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i4.GSR = "ENABLED";
    FD1S3JX count_i3 (.D(count_15__N_131[3]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i3.GSR = "ENABLED";
    FD1S3JX count_i2 (.D(count_15__N_131[2]), .CK(trigger), .PD(load_defaults), 
            .Q(\AdjustableFreePrecession[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=21, LSE_RCOL=212, LSE_LLINE=61, LSE_RLINE=61 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(22[8] 35[6])
    defparam count_i2.GSR = "ENABLED";
    CCU2D add_347_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(freeprecess_minus), .B1(freeprecess_plus), .C1(n1798[1]), 
          .D1(GND_net), .COUT(n2670), .S1(count_15__N_131[3]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_347_1.INIT0 = 16'hF000;
    defparam add_347_1.INIT1 = 16'hd2d2;
    defparam add_347_1.INJECT1_0 = "NO";
    defparam add_347_1.INJECT1_1 = "NO";
    CCU2D add_254_313_add_1_15 (.A0(\AdjustableFreePrecession[14] ), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(\AdjustableFreePrecession[15] ), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2573), .S0(n1798[12]), 
          .S1(n1798[13]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(31[10] 33[8])
    defparam add_254_313_add_1_15.INIT0 = 16'h5aaa;
    defparam add_254_313_add_1_15.INIT1 = 16'h5aaa;
    defparam add_254_313_add_1_15.INJECT1_0 = "NO";
    defparam add_254_313_add_1_15.INJECT1_1 = "NO";
    single_period_pulse_U3 clean_trigger (.trigger(trigger), .clk_2M5(clk_2M5), 
            .freeprecess_minus(freeprecess_minus), .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(19[22:92])
    
endmodule
//
// Verilog Description of module single_period_pulse_U3
//

module single_period_pulse_U3 (trigger, clk_2M5, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output trigger;
    input clk_2M5;
    input freeprecess_minus;
    input n4;
    
    wire trigger /* synthesis is_clock=1, SET_AS_NETWORK=\POPtimers/freepcounter/trigger */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(17[7:14])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    wire Q0, Q1;
    
    LUT4 Q0_I_0_2_lut (.A(Q0), .B(Q1), .Z(trigger)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(55[15:25])
    defparam Q0_I_0_2_lut.init = 16'h2222;
    d_flip_flop_U1 stage1_ff (.Q1(Q1), .clk_2M5(clk_2M5), .Q0(Q0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(52[14:51])
    d_flip_flop_U2 stage0_ff (.Q0(Q0), .clk_2M5(clk_2M5), .freeprecess_minus(freeprecess_minus), 
            .n4(n4)) /* synthesis syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(51[14:51])
    
endmodule
//
// Verilog Description of module d_flip_flop_U1
//

module d_flip_flop_U1 (Q1, clk_2M5, Q0) /* synthesis syn_module_defined=1 */ ;
    output Q1;
    input clk_2M5;
    input Q0;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3AX Q_5 (.D(Q0), .CK(clk_2M5), .Q(Q1)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=52, LSE_RLINE=52 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module d_flip_flop_U2
//

module d_flip_flop_U2 (Q0, clk_2M5, freeprecess_minus, n4) /* synthesis syn_module_defined=1 */ ;
    output Q0;
    input clk_2M5;
    input freeprecess_minus;
    input n4;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    FD1S3JX Q_5 (.D(n4), .CK(clk_2M5), .PD(freeprecess_minus), .Q(Q0)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=14, LSE_RCOL=51, LSE_LLINE=51, LSE_RLINE=51 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/extensions.v(69[8] 71[5])
    defparam Q_5.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module comparator_U9
//

module comparator_U9 (GND_net, n397, gatedcount, \Endof2ndMWpulse[14] , 
            \Endof2ndMWpulse[15] , \Endof2ndMWpulse[12] , \Endof2ndMWpulse[13] , 
            \Endof2ndMWpulse[10] , \Endof2ndMWpulse[11] , \Endof2ndMWpulse[8] , 
            \Endof2ndMWpulse[9] , \Endof2ndMWpulse[6] , \Endof2ndMWpulse[7] , 
            \Endof2ndMWpulse[4] , \Endof2ndMWpulse[5] , \Endof2ndMWpulse[2] , 
            \Endof2ndMWpulse[3] ) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output n397;
    input [15:0]gatedcount;
    input \Endof2ndMWpulse[14] ;
    input \Endof2ndMWpulse[15] ;
    input \Endof2ndMWpulse[12] ;
    input \Endof2ndMWpulse[13] ;
    input \Endof2ndMWpulse[10] ;
    input \Endof2ndMWpulse[11] ;
    input \Endof2ndMWpulse[8] ;
    input \Endof2ndMWpulse[9] ;
    input \Endof2ndMWpulse[6] ;
    input \Endof2ndMWpulse[7] ;
    input \Endof2ndMWpulse[4] ;
    input \Endof2ndMWpulse[5] ;
    input \Endof2ndMWpulse[2] ;
    input \Endof2ndMWpulse[3] ;
    
    
    wire n2691, n2690, n2689, n2688, n2687, n2686, n2685, n2684;
    
    CCU2D sub_197_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2691), .S0(n397));
    defparam sub_197_add_2_cout.INIT0 = 16'h0000;
    defparam sub_197_add_2_cout.INIT1 = 16'h0000;
    defparam sub_197_add_2_cout.INJECT1_0 = "NO";
    defparam sub_197_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_16 (.A0(gatedcount[14]), .B0(\Endof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2690), .COUT(n2691));
    defparam sub_197_add_2_16.INIT0 = 16'h5999;
    defparam sub_197_add_2_16.INIT1 = 16'h5999;
    defparam sub_197_add_2_16.INJECT1_0 = "NO";
    defparam sub_197_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_14 (.A0(gatedcount[12]), .B0(\Endof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2689), .COUT(n2690));
    defparam sub_197_add_2_14.INIT0 = 16'h5999;
    defparam sub_197_add_2_14.INIT1 = 16'h5999;
    defparam sub_197_add_2_14.INJECT1_0 = "NO";
    defparam sub_197_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_12 (.A0(gatedcount[10]), .B0(\Endof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2688), .COUT(n2689));
    defparam sub_197_add_2_12.INIT0 = 16'h5999;
    defparam sub_197_add_2_12.INIT1 = 16'h5999;
    defparam sub_197_add_2_12.INJECT1_0 = "NO";
    defparam sub_197_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_10 (.A0(gatedcount[8]), .B0(\Endof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2687), .COUT(n2688));
    defparam sub_197_add_2_10.INIT0 = 16'h5999;
    defparam sub_197_add_2_10.INIT1 = 16'h5999;
    defparam sub_197_add_2_10.INJECT1_0 = "NO";
    defparam sub_197_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_8 (.A0(gatedcount[6]), .B0(\Endof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2686), .COUT(n2687));
    defparam sub_197_add_2_8.INIT0 = 16'h5999;
    defparam sub_197_add_2_8.INIT1 = 16'h5999;
    defparam sub_197_add_2_8.INJECT1_0 = "NO";
    defparam sub_197_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_6 (.A0(gatedcount[4]), .B0(\Endof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2685), .COUT(n2686));
    defparam sub_197_add_2_6.INIT0 = 16'h5999;
    defparam sub_197_add_2_6.INIT1 = 16'h5999;
    defparam sub_197_add_2_6.INJECT1_0 = "NO";
    defparam sub_197_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_4 (.A0(gatedcount[2]), .B0(\Endof2ndMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2684), .COUT(n2685));
    defparam sub_197_add_2_4.INIT0 = 16'h5999;
    defparam sub_197_add_2_4.INIT1 = 16'h5999;
    defparam sub_197_add_2_4.INJECT1_0 = "NO";
    defparam sub_197_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_197_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2684));
    defparam sub_197_add_2_2.INIT0 = 16'h5000;
    defparam sub_197_add_2_2.INIT1 = 16'h5555;
    defparam sub_197_add_2_2.INJECT1_0 = "NO";
    defparam sub_197_add_2_2.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U10
//

module comparator_U10 (gatedcount, \Startof2ndMWpulse[8] , GND_net, \Startof2ndMWpulse[9] , 
            \Startof2ndMWpulse[10] , \Startof2ndMWpulse[11] , \Startof2ndMWpulse[6] , 
            \Startof2ndMWpulse[7] , \Startof2ndMWpulse[4] , \Startof2ndMWpulse[5] , 
            n16, \AdjustableFreePrecession[2] , \Startof2ndMWpulse[3] , 
            \Startof2ndMWpulse[1] , \Startof2ndMWpulse[12] , \Startof2ndMWpulse[13] , 
            \Startof2ndMWpulse[14] , \Startof2ndMWpulse[15] , pi2started) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Startof2ndMWpulse[8] ;
    input GND_net;
    input \Startof2ndMWpulse[9] ;
    input \Startof2ndMWpulse[10] ;
    input \Startof2ndMWpulse[11] ;
    input \Startof2ndMWpulse[6] ;
    input \Startof2ndMWpulse[7] ;
    input \Startof2ndMWpulse[4] ;
    input \Startof2ndMWpulse[5] ;
    input n16;
    input \AdjustableFreePrecession[2] ;
    input \Startof2ndMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    input \Startof2ndMWpulse[12] ;
    input \Startof2ndMWpulse[13] ;
    input \Startof2ndMWpulse[14] ;
    input \Startof2ndMWpulse[15] ;
    output pi2started;
    
    
    wire n2695, n2696, n2697, n2694, n2693, n2692, n2698, n2699;
    
    CCU2D sub_195_add_2_10 (.A0(gatedcount[8]), .B0(\Startof2ndMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Startof2ndMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2695), .COUT(n2696));
    defparam sub_195_add_2_10.INIT0 = 16'h5999;
    defparam sub_195_add_2_10.INIT1 = 16'h5999;
    defparam sub_195_add_2_10.INJECT1_0 = "NO";
    defparam sub_195_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_12 (.A0(gatedcount[10]), .B0(\Startof2ndMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Startof2ndMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2696), .COUT(n2697));
    defparam sub_195_add_2_12.INIT0 = 16'h5999;
    defparam sub_195_add_2_12.INIT1 = 16'h5999;
    defparam sub_195_add_2_12.INJECT1_0 = "NO";
    defparam sub_195_add_2_12.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_8 (.A0(gatedcount[6]), .B0(\Startof2ndMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Startof2ndMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2694), .COUT(n2695));
    defparam sub_195_add_2_8.INIT0 = 16'h5999;
    defparam sub_195_add_2_8.INIT1 = 16'h5999;
    defparam sub_195_add_2_8.INJECT1_0 = "NO";
    defparam sub_195_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_6 (.A0(gatedcount[4]), .B0(\Startof2ndMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Startof2ndMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2693), .COUT(n2694));
    defparam sub_195_add_2_6.INIT0 = 16'h5999;
    defparam sub_195_add_2_6.INIT1 = 16'h5999;
    defparam sub_195_add_2_6.INJECT1_0 = "NO";
    defparam sub_195_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_4 (.A0(n16), .B0(\AdjustableFreePrecession[2] ), 
          .C0(gatedcount[2]), .D0(GND_net), .A1(gatedcount[3]), .B1(\Startof2ndMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2692), .COUT(n2693));
    defparam sub_195_add_2_4.INIT0 = 16'h6969;
    defparam sub_195_add_2_4.INIT1 = 16'h5999;
    defparam sub_195_add_2_4.INJECT1_0 = "NO";
    defparam sub_195_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2692));
    defparam sub_195_add_2_2.INIT0 = 16'h5000;
    defparam sub_195_add_2_2.INIT1 = 16'h5999;
    defparam sub_195_add_2_2.INJECT1_0 = "NO";
    defparam sub_195_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_14 (.A0(gatedcount[12]), .B0(\Startof2ndMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Startof2ndMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2697), .COUT(n2698));
    defparam sub_195_add_2_14.INIT0 = 16'h5999;
    defparam sub_195_add_2_14.INIT1 = 16'h5999;
    defparam sub_195_add_2_14.INJECT1_0 = "NO";
    defparam sub_195_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_16 (.A0(gatedcount[14]), .B0(\Startof2ndMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Startof2ndMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2698), .COUT(n2699));
    defparam sub_195_add_2_16.INIT0 = 16'h5999;
    defparam sub_195_add_2_16.INIT1 = 16'h5999;
    defparam sub_195_add_2_16.INJECT1_0 = "NO";
    defparam sub_195_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_195_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2699), .S0(pi2started));
    defparam sub_195_add_2_cout.INIT0 = 16'h0000;
    defparam sub_195_add_2_cout.INIT1 = 16'h0000;
    defparam sub_195_add_2_cout.INJECT1_0 = "NO";
    defparam sub_195_add_2_cout.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U11
//

module comparator_U11 (gatedcount, \Endof1stMWpulse[8] , GND_net, \Endof1stMWpulse[9] , 
            \Endof1stMWpulse[6] , \Endof1stMWpulse[7] , \Endof1stMWpulse[4] , 
            \Endof1stMWpulse[5] , \Endof1stMWpulse[2] , \Endof1stMWpulse[3] , 
            \Startof2ndMWpulse[1] , n359, \Endof1stMWpulse[14] , \Endof1stMWpulse[15] , 
            \Endof1stMWpulse[12] , \Endof1stMWpulse[13] , \Endof1stMWpulse[10] , 
            \Endof1stMWpulse[11] ) /* synthesis syn_module_defined=1 */ ;
    input [15:0]gatedcount;
    input \Endof1stMWpulse[8] ;
    input GND_net;
    input \Endof1stMWpulse[9] ;
    input \Endof1stMWpulse[6] ;
    input \Endof1stMWpulse[7] ;
    input \Endof1stMWpulse[4] ;
    input \Endof1stMWpulse[5] ;
    input \Endof1stMWpulse[2] ;
    input \Endof1stMWpulse[3] ;
    input \Startof2ndMWpulse[1] ;
    output n359;
    input \Endof1stMWpulse[14] ;
    input \Endof1stMWpulse[15] ;
    input \Endof1stMWpulse[12] ;
    input \Endof1stMWpulse[13] ;
    input \Endof1stMWpulse[10] ;
    input \Endof1stMWpulse[11] ;
    
    
    wire n2605, n2606, n2604, n2603, n2602, n2609, n2608, n2607;
    
    CCU2D sub_193_add_2_10 (.A0(gatedcount[8]), .B0(\Endof1stMWpulse[8] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[9]), .B1(\Endof1stMWpulse[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2605), .COUT(n2606));
    defparam sub_193_add_2_10.INIT0 = 16'h5999;
    defparam sub_193_add_2_10.INIT1 = 16'h5999;
    defparam sub_193_add_2_10.INJECT1_0 = "NO";
    defparam sub_193_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_8 (.A0(gatedcount[6]), .B0(\Endof1stMWpulse[6] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[7]), .B1(\Endof1stMWpulse[7] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2604), .COUT(n2605));
    defparam sub_193_add_2_8.INIT0 = 16'h5999;
    defparam sub_193_add_2_8.INIT1 = 16'h5999;
    defparam sub_193_add_2_8.INJECT1_0 = "NO";
    defparam sub_193_add_2_8.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_6 (.A0(gatedcount[4]), .B0(\Endof1stMWpulse[4] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[5]), .B1(\Endof1stMWpulse[5] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2603), .COUT(n2604));
    defparam sub_193_add_2_6.INIT0 = 16'h5999;
    defparam sub_193_add_2_6.INIT1 = 16'h5999;
    defparam sub_193_add_2_6.INJECT1_0 = "NO";
    defparam sub_193_add_2_6.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_4 (.A0(gatedcount[2]), .B0(\Endof1stMWpulse[2] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[3]), .B1(\Endof1stMWpulse[3] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2602), .COUT(n2603));
    defparam sub_193_add_2_4.INIT0 = 16'h5999;
    defparam sub_193_add_2_4.INIT1 = 16'h5999;
    defparam sub_193_add_2_4.INJECT1_0 = "NO";
    defparam sub_193_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_2 (.A0(gatedcount[0]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(gatedcount[1]), .B1(\Startof2ndMWpulse[1] ), 
          .C1(GND_net), .D1(GND_net), .COUT(n2602));
    defparam sub_193_add_2_2.INIT0 = 16'h5000;
    defparam sub_193_add_2_2.INIT1 = 16'h5999;
    defparam sub_193_add_2_2.INJECT1_0 = "NO";
    defparam sub_193_add_2_2.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2609), .S0(n359));
    defparam sub_193_add_2_cout.INIT0 = 16'h0000;
    defparam sub_193_add_2_cout.INIT1 = 16'h0000;
    defparam sub_193_add_2_cout.INJECT1_0 = "NO";
    defparam sub_193_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_16 (.A0(gatedcount[14]), .B0(\Endof1stMWpulse[14] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[15]), .B1(\Endof1stMWpulse[15] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2608), .COUT(n2609));
    defparam sub_193_add_2_16.INIT0 = 16'h5999;
    defparam sub_193_add_2_16.INIT1 = 16'h5999;
    defparam sub_193_add_2_16.INJECT1_0 = "NO";
    defparam sub_193_add_2_16.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_14 (.A0(gatedcount[12]), .B0(\Endof1stMWpulse[12] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[13]), .B1(\Endof1stMWpulse[13] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2607), .COUT(n2608));
    defparam sub_193_add_2_14.INIT0 = 16'h5999;
    defparam sub_193_add_2_14.INIT1 = 16'h5999;
    defparam sub_193_add_2_14.INJECT1_0 = "NO";
    defparam sub_193_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_193_add_2_12 (.A0(gatedcount[10]), .B0(\Endof1stMWpulse[10] ), 
          .C0(GND_net), .D0(GND_net), .A1(gatedcount[11]), .B1(\Endof1stMWpulse[11] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n2606), .COUT(n2607));
    defparam sub_193_add_2_12.INIT0 = 16'h5999;
    defparam sub_193_add_2_12.INIT1 = 16'h5999;
    defparam sub_193_add_2_12.INJECT1_0 = "NO";
    defparam sub_193_add_2_12.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module comparator_U12
//

module comparator_U12 (\gatedcount[3] , \gatedcount[4] , \gatedcount[7] , 
            n2804, n8, n4, \gatedcount[2] , \gatedcount[0] , \gatedcount[1] , 
            \gatedcount[12] , \gatedcount[11] , \gatedcount[14] , n1941, 
            \gatedcount[15] , \gatedcount[13] ) /* synthesis syn_module_defined=1 */ ;
    input \gatedcount[3] ;
    input \gatedcount[4] ;
    input \gatedcount[7] ;
    input n2804;
    output n8;
    output n4;
    input \gatedcount[2] ;
    input \gatedcount[0] ;
    input \gatedcount[1] ;
    input \gatedcount[12] ;
    input \gatedcount[11] ;
    input \gatedcount[14] ;
    output n1941;
    input \gatedcount[15] ;
    input \gatedcount[13] ;
    
    
    wire n88, n2874, n6;
    
    LUT4 i3_3_lut_4_lut (.A(\gatedcount[3] ), .B(\gatedcount[4] ), .C(\gatedcount[7] ), 
         .D(n2804), .Z(n8)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    defparam i3_3_lut_4_lut.init = 16'he000;
    LUT4 i1_4_lut (.A(n88), .B(\gatedcount[7] ), .C(n2804), .D(n2874), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    defparam i1_4_lut.init = 16'hfcec;
    LUT4 i1_3_lut (.A(\gatedcount[2] ), .B(\gatedcount[0] ), .C(\gatedcount[1] ), 
         .Z(n88)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    defparam i1_3_lut.init = 16'ha8a8;
    LUT4 i4_4_lut (.A(\gatedcount[12] ), .B(\gatedcount[11] ), .C(\gatedcount[14] ), 
         .D(n6), .Z(n1941)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_22 (.A(\gatedcount[3] ), .B(\gatedcount[4] ), .Z(n2874)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    defparam i1_2_lut_rep_22.init = 16'heeee;
    LUT4 i1_2_lut (.A(\gatedcount[15] ), .B(\gatedcount[13] ), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/compare_n.v(14[7:12])
    defparam i1_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module n_state_machine
//

module n_state_machine (SMstate, sampled_modebutton, state_2__N_179, n1) /* synthesis syn_module_defined=1 */ ;
    output [2:0]SMstate;
    input sampled_modebutton;
    input state_2__N_179;
    input n1;
    
    wire sampled_modebutton /* synthesis SET_AS_NETWORK=sampled_modebutton, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(37[6:24])
    wire [2:0]n17;
    
    FD1S3IX state_257__i2 (.D(n17[2]), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_257__i2.GSR = "ENABLED";
    LUT4 i849_3_lut (.A(SMstate[2]), .B(SMstate[1]), .C(SMstate[0]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i849_3_lut.init = 16'h6a6a;
    FD1S3IX state_257__i1 (.D(n17[1]), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[1]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_257__i1.GSR = "ENABLED";
    FD1S3IX state_257__i0 (.D(n1), .CK(sampled_modebutton), .CD(state_2__N_179), 
            .Q(SMstate[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam state_257__i0.GSR = "ENABLED";
    LUT4 i842_2_lut (.A(SMstate[1]), .B(SMstate[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(43[18:30])
    defparam i842_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module slow_clock_pulse
//

module slow_clock_pulse (clk_2M5, GND_net, debounce_pulse, medium_pulse, 
            slow_pulse, fast_pulse) /* synthesis syn_module_defined=1 */ ;
    input clk_2M5;
    input GND_net;
    output debounce_pulse;
    output medium_pulse;
    output slow_pulse;
    output fast_pulse;
    
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debounce_pulse /* synthesis is_clock=1, SET_AS_NETWORK=debounce_pulse */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(36[7:21])
    wire [22:0]n170;
    wire [22:0]n97;
    
    wire n2664, n2665, n2666, n2667, n2658, n2659, n2660, n2661, 
        n2662, n2663, n2668;
    
    FD1S3AX count_256__i0 (.D(n97[0]), .CK(clk_2M5), .Q(n170[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i0.GSR = "ENABLED";
    CCU2D count_256_add_4_15 (.A0(n170[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2664), .COUT(n2665), .S0(n97[13]), .S1(n97[14]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_15.INIT0 = 16'hfaaa;
    defparam count_256_add_4_15.INIT1 = 16'hfaaa;
    defparam count_256_add_4_15.INJECT1_0 = "NO";
    defparam count_256_add_4_15.INJECT1_1 = "NO";
    CCU2D count_256_add_4_19 (.A0(n170[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2666), .COUT(n2667), .S0(n97[17]), .S1(n97[18]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_19.INIT0 = 16'hfaaa;
    defparam count_256_add_4_19.INIT1 = 16'hfaaa;
    defparam count_256_add_4_19.INJECT1_0 = "NO";
    defparam count_256_add_4_19.INJECT1_1 = "NO";
    FD1S3AX count_256__i2 (.D(n97[2]), .CK(clk_2M5), .Q(n170[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i2.GSR = "ENABLED";
    CCU2D count_256_add_4_17 (.A0(n170[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2665), .COUT(n2666), .S0(n97[15]), .S1(n97[16]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_17.INIT0 = 16'hfaaa;
    defparam count_256_add_4_17.INIT1 = 16'hfaaa;
    defparam count_256_add_4_17.INJECT1_0 = "NO";
    defparam count_256_add_4_17.INJECT1_1 = "NO";
    CCU2D count_256_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2658), .S1(n97[0]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_1.INIT0 = 16'hF000;
    defparam count_256_add_4_1.INIT1 = 16'h0555;
    defparam count_256_add_4_1.INJECT1_0 = "NO";
    defparam count_256_add_4_1.INJECT1_1 = "NO";
    CCU2D count_256_add_4_3 (.A0(n170[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2658), .COUT(n2659), .S0(n97[1]), .S1(n97[2]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_3.INIT0 = 16'hfaaa;
    defparam count_256_add_4_3.INIT1 = 16'hfaaa;
    defparam count_256_add_4_3.INJECT1_0 = "NO";
    defparam count_256_add_4_3.INJECT1_1 = "NO";
    CCU2D count_256_add_4_5 (.A0(n170[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2659), .COUT(n2660), .S0(n97[3]), .S1(n97[4]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_5.INIT0 = 16'hfaaa;
    defparam count_256_add_4_5.INIT1 = 16'hfaaa;
    defparam count_256_add_4_5.INJECT1_0 = "NO";
    defparam count_256_add_4_5.INJECT1_1 = "NO";
    CCU2D count_256_add_4_7 (.A0(n170[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2660), .COUT(n2661), .S0(n97[5]), .S1(n97[6]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_7.INIT0 = 16'hfaaa;
    defparam count_256_add_4_7.INIT1 = 16'hfaaa;
    defparam count_256_add_4_7.INJECT1_0 = "NO";
    defparam count_256_add_4_7.INJECT1_1 = "NO";
    CCU2D count_256_add_4_9 (.A0(debounce_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2661), .COUT(n2662), .S0(n97[7]), .S1(n97[8]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_9.INIT0 = 16'hfaaa;
    defparam count_256_add_4_9.INIT1 = 16'hfaaa;
    defparam count_256_add_4_9.INJECT1_0 = "NO";
    defparam count_256_add_4_9.INJECT1_1 = "NO";
    FD1S3AX count_256__i1 (.D(n97[1]), .CK(clk_2M5), .Q(n170[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i1.GSR = "ENABLED";
    CCU2D count_256_add_4_11 (.A0(n170[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2662), .COUT(n2663), .S0(n97[9]), .S1(n97[10]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_11.INIT0 = 16'hfaaa;
    defparam count_256_add_4_11.INIT1 = 16'hfaaa;
    defparam count_256_add_4_11.INJECT1_0 = "NO";
    defparam count_256_add_4_11.INJECT1_1 = "NO";
    CCU2D count_256_add_4_13 (.A0(n170[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2663), .COUT(n2664), .S0(n97[11]), .S1(n97[12]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_13.INIT0 = 16'hfaaa;
    defparam count_256_add_4_13.INIT1 = 16'hfaaa;
    defparam count_256_add_4_13.INJECT1_0 = "NO";
    defparam count_256_add_4_13.INJECT1_1 = "NO";
    CCU2D count_256_add_4_23 (.A0(medium_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(slow_pulse), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2668), .S0(n97[21]), .S1(n97[22]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_23.INIT0 = 16'hfaaa;
    defparam count_256_add_4_23.INIT1 = 16'hfaaa;
    defparam count_256_add_4_23.INJECT1_0 = "NO";
    defparam count_256_add_4_23.INJECT1_1 = "NO";
    CCU2D count_256_add_4_21 (.A0(fast_pulse), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n170[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2667), .COUT(n2668), .S0(n97[19]), .S1(n97[20]));   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256_add_4_21.INIT0 = 16'hfaaa;
    defparam count_256_add_4_21.INIT1 = 16'hfaaa;
    defparam count_256_add_4_21.INJECT1_0 = "NO";
    defparam count_256_add_4_21.INJECT1_1 = "NO";
    FD1S3AX count_256__i22 (.D(n97[22]), .CK(clk_2M5), .Q(slow_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i22.GSR = "ENABLED";
    FD1S3AX count_256__i21 (.D(n97[21]), .CK(clk_2M5), .Q(medium_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i21.GSR = "ENABLED";
    FD1S3AX count_256__i20 (.D(n97[20]), .CK(clk_2M5), .Q(n170[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i20.GSR = "ENABLED";
    FD1S3AX count_256__i19 (.D(n97[19]), .CK(clk_2M5), .Q(fast_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i19.GSR = "ENABLED";
    FD1S3AX count_256__i18 (.D(n97[18]), .CK(clk_2M5), .Q(n170[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i18.GSR = "ENABLED";
    FD1S3AX count_256__i17 (.D(n97[17]), .CK(clk_2M5), .Q(n170[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i17.GSR = "ENABLED";
    FD1S3AX count_256__i16 (.D(n97[16]), .CK(clk_2M5), .Q(n170[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i16.GSR = "ENABLED";
    FD1S3AX count_256__i15 (.D(n97[15]), .CK(clk_2M5), .Q(n170[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i15.GSR = "ENABLED";
    FD1S3AX count_256__i14 (.D(n97[14]), .CK(clk_2M5), .Q(n170[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i14.GSR = "ENABLED";
    FD1S3AX count_256__i13 (.D(n97[13]), .CK(clk_2M5), .Q(n170[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i13.GSR = "ENABLED";
    FD1S3AX count_256__i12 (.D(n97[12]), .CK(clk_2M5), .Q(n170[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i12.GSR = "ENABLED";
    FD1S3AX count_256__i11 (.D(n97[11]), .CK(clk_2M5), .Q(n170[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i11.GSR = "ENABLED";
    FD1S3AX count_256__i10 (.D(n97[10]), .CK(clk_2M5), .Q(n170[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i10.GSR = "ENABLED";
    FD1S3AX count_256__i9 (.D(n97[9]), .CK(clk_2M5), .Q(n170[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i9.GSR = "ENABLED";
    FD1S3AX count_256__i8 (.D(n97[8]), .CK(clk_2M5), .Q(n170[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i8.GSR = "ENABLED";
    FD1S3AX count_256__i7 (.D(n97[7]), .CK(clk_2M5), .Q(debounce_pulse)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i7.GSR = "ENABLED";
    FD1S3AX count_256__i6 (.D(n97[6]), .CK(clk_2M5), .Q(n170[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i6.GSR = "ENABLED";
    FD1S3AX count_256__i5 (.D(n97[5]), .CK(clk_2M5), .Q(n170[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i5.GSR = "ENABLED";
    FD1S3AX count_256__i4 (.D(n97[4]), .CK(clk_2M5), .Q(n170[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i4.GSR = "ENABLED";
    FD1S3AX count_256__i3 (.D(n97[3]), .CK(clk_2M5), .Q(n170[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/wrapper.v(26[12:24])
    defparam count_256__i3.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module clocks
//

module clocks (GND_net, debug_0_c, clk_2M5_N_53, clk_2M5) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output debug_0_c;
    output clk_2M5_N_53;
    output clk_2M5;
    
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    
    OSCH OSCinst0 (.STDBY(GND_net), .OSC(debug_0_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=98, LSE_LLINE=49, LSE_RLINE=49 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(49[9:98])
    defparam OSCinst0.NOM_FREQ = "9.85";
    DIV4PLL PLL (.clk_2M5_N_53(clk_2M5_N_53), .clk_2M5(clk_2M5), .debug_0_c(debug_0_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
    
endmodule
//
// Verilog Description of module DIV4PLL
//

module DIV4PLL (clk_2M5_N_53, clk_2M5, debug_0_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output clk_2M5_N_53;
    output clk_2M5;
    input debug_0_c;
    input GND_net;
    
    wire clk_2M5_N_53 /* synthesis is_inv_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/poptimers.v(27[18:28])
    wire clk_2M5 /* synthesis SET_AS_NETWORK=clk_2M5, is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(30[7:14])
    wire debug_0_c /* synthesis is_clock=1 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/tinyfpga_a2.v(21[9:16])
    
    wire CLKFB_t;
    
    INV i950 (.A(clk_2M5), .Z(clk_2M5_N_53));
    EHXPLLJ PLLInst_0 (.CLKI(debug_0_c), .CLKFB(CLKFB_t), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETC(GND_net), .RESETD(GND_net), .RESETM(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLDATI0(GND_net), .PLLDATI1(GND_net), .PLLDATI2(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI4(GND_net), .PLLDATI5(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI7(GND_net), .PLLADDR0(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR2(GND_net), .PLLADDR3(GND_net), 
            .PLLADDR4(GND_net), .CLKOP(clk_2M5), .CLKINTFB(CLKFB_t)) /* synthesis FREQUENCY_PIN_CLKOP="2.500000", FREQUENCY_PIN_CLKI="10.000000", ICP_CURRENT="10", LPF_RESISTOR="76", syn_instantiated=1, LSE_LINE_FILE_ID=10, LSE_LCOL=10, LSE_RCOL=58, LSE_LLINE=33, LSE_RLINE=33 */ ;   // c:/users/sek529/github/pop_timing_fpga/pop_timers_ax2/source/clocks.v(33[10:58])
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
