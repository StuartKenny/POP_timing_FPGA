[ActiveSupport PAR]
; Global primary clocks
GLOBAL_PRIMARY_USED = 3;
; Global primary clock #0
GLOBAL_PRIMARY_0_SIGNALNAME = clk_2M5;
GLOBAL_PRIMARY_0_DRIVERTYPE = PLL;
GLOBAL_PRIMARY_0_LOADNUM = 40;
; Global primary clock #1
GLOBAL_PRIMARY_1_SIGNALNAME = jtaghub16_jtck;
GLOBAL_PRIMARY_1_DRIVERTYPE = JTAG;
GLOBAL_PRIMARY_1_LOADNUM = 151;
; Global primary clock #2
GLOBAL_PRIMARY_2_SIGNALNAME = clk_debug_N;
GLOBAL_PRIMARY_2_DRIVERTYPE = CLK_PIN;
GLOBAL_PRIMARY_2_LOADNUM = 99;
; # of global secondary clocks
GLOBAL_SECONDARY_USED = 8;
; Global secondary clock #0
GLOBAL_SECONDARY_0_SIGNALNAME = load_defaults;
GLOBAL_SECONDARY_0_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_0_LOADNUM = 20;
GLOBAL_SECONDARY_0_SIGTYPE = RST;
; Global secondary clock #1
GLOBAL_SECONDARY_1_SIGNALNAME = reveal_ist_66_N;
GLOBAL_SECONDARY_1_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_1_LOADNUM = 10;
GLOBAL_SECONDARY_1_SIGTYPE = CLK;
; Global secondary clock #2
GLOBAL_SECONDARY_2_SIGNALNAME = reveal_ist_69_N;
GLOBAL_SECONDARY_2_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_2_LOADNUM = 9;
GLOBAL_SECONDARY_2_SIGTYPE = CLK;
; Global secondary clock #3
GLOBAL_SECONDARY_3_SIGNALNAME = jtaghub16_jrstn;
GLOBAL_SECONDARY_3_DRIVERTYPE = JTAG;
GLOBAL_SECONDARY_3_LOADNUM = 150;
GLOBAL_SECONDARY_3_SIGTYPE = RST;
; Global secondary clock #4
GLOBAL_SECONDARY_4_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/counters_inst_0/n9412;
GLOBAL_SECONDARY_4_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_4_LOADNUM = 91;
GLOBAL_SECONDARY_4_SIGTYPE = RST;
; Global secondary clock #5
GLOBAL_SECONDARY_5_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/counters_inst_0/jtck_N_265_enable_111;
GLOBAL_SECONDARY_5_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_5_LOADNUM = 16;
GLOBAL_SECONDARY_5_SIGTYPE = CE;
; Global secondary clock #6
GLOBAL_SECONDARY_6_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/counters_inst_0/jtag_int_u/jtck_N_265_enable_133;
GLOBAL_SECONDARY_6_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_6_LOADNUM = 18;
GLOBAL_SECONDARY_6_SIGTYPE = CE;
; Global secondary clock #7
GLOBAL_SECONDARY_7_SIGNALNAME = TinyFPGA_A2_reveal_coretop_instance/counters_inst_0/jtag_int_u/jtck_N_265_enable_167;
GLOBAL_SECONDARY_7_DRIVERTYPE = SLICE;
GLOBAL_SECONDARY_7_LOADNUM = 24;
GLOBAL_SECONDARY_7_SIGTYPE = CE;
; I/O Bank 0 Usage
BANK_0_USED = 5;
BANK_0_AVAIL = 9;
BANK_0_VCCIO = 3.3V;
BANK_0_VREF1 = NA;
; I/O Bank 1 Usage
BANK_1_USED = 2;
BANK_1_AVAIL = 2;
BANK_1_VCCIO = 3.3V;
BANK_1_VREF1 = NA;
; I/O Bank 2 Usage
BANK_2_USED = 9;
BANK_2_AVAIL = 9;
BANK_2_VCCIO = 3.3V;
BANK_2_VREF1 = NA;
; I/O Bank 3 Usage
BANK_3_USED = 2;
BANK_3_AVAIL = 2;
BANK_3_VCCIO = 3.3V;
BANK_3_VREF1 = NA;
