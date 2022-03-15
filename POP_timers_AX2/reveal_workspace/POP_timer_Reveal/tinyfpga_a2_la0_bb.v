//=============================================================================
// Verilog module generated by IPExpress    03/15/2022    13:44:26         
// Filename: tinyfpga_a2_la0_bb.v                                          
// Copyright(c) 2006 Lattice Semiconductor Corporation. All rights reserved.   
//=============================================================================

/* WARNING - Changes to this file should be performed by re-running IPexpress
or modifying the .LPC file and regenerating the core.  Other changes may lead
to inconsistent simulation and/or implemenation results */

module tinyfpga_a2_la0 (
    clk,
    reset_n,
    jtck,
    jrstn,
    jce2,
    jtdi,
    er2_tdo,
    jshift,
    jupdate,
    trigger_din_0,
    trace_din,
    trigger_en,
    ip_enable
);

// PARAMETERS DEFINED BY USER
localparam NUM_TRACE_SIGNALS   = 32;
localparam NUM_TRIGGER_SIGNALS = 1;
localparam INCLUDE_TRIG_DATA   = 0;
localparam NUM_TU_BITS_0       = 1;

input  clk;
input  reset_n;
input  jtck;
input  jrstn;
input  jce2;
input  jtdi;
output er2_tdo;
input  jshift;
input  jupdate;
input  [NUM_TU_BITS_0 -1:0] trigger_din_0;
input  [NUM_TRACE_SIGNALS + (NUM_TRIGGER_SIGNALS * INCLUDE_TRIG_DATA) -1:0] trace_din;
input  ip_enable;
input  trigger_en;

endmodule
