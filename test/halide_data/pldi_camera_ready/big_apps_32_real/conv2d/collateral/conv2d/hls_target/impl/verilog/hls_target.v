// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="hls_target,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=5.600000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.332667,HLS_SYN_LAT=2077921,HLS_SYN_TPT=2077922,HLS_SYN_MEM=8,HLS_SYN_DSP=11,HLS_SYN_FF=4208,HLS_SYN_LUT=3446}" *)

module hls_target (
        hw_input_V_value_V,
        hw_input_V_last_V,
        hw_output_V_value_V,
        hw_output_V_last_V,
        ap_clk,
        ap_rst,
        hw_input_V_value_V_ap_vld,
        hw_input_V_value_V_ap_ack,
        hw_input_V_last_V_ap_vld,
        hw_input_V_last_V_ap_ack,
        hw_output_V_value_V_ap_vld,
        hw_output_V_value_V_ap_ack,
        hw_output_V_last_V_ap_vld,
        hw_output_V_last_V_ap_ack,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input  [31:0] hw_input_V_value_V;
input  [0:0] hw_input_V_last_V;
output  [31:0] hw_output_V_value_V;
output  [0:0] hw_output_V_last_V;
input   ap_clk;
input   ap_rst;
input   hw_input_V_value_V_ap_vld;
output   hw_input_V_value_V_ap_ack;
input   hw_input_V_last_V_ap_vld;
output   hw_input_V_last_V_ap_ack;
output   hw_output_V_value_V_ap_vld;
input   hw_output_V_value_V_ap_ack;
output   hw_output_V_last_V_ap_vld;
input   hw_output_V_last_V_ap_ack;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

wire    linebuffer_1_U0_ap_start;
wire    linebuffer_1_U0_start_full_n;
wire    linebuffer_1_U0_ap_ready;
wire    linebuffer_1_U0_start_out;
wire    linebuffer_1_U0_start_write;
wire   [287:0] linebuffer_1_U0_out_stream_V_value_V_din;
wire    linebuffer_1_U0_out_stream_V_value_V_write;
wire    linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack;
wire    linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack;
wire    linebuffer_1_U0_ap_done;
wire    linebuffer_1_U0_ap_idle;
wire    linebuffer_1_U0_ap_continue;
wire    Loop_1_proc_U0_ap_start;
wire    Loop_1_proc_U0_ap_done;
wire    Loop_1_proc_U0_ap_continue;
wire    Loop_1_proc_U0_ap_idle;
wire    Loop_1_proc_U0_ap_ready;
wire    Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read;
wire   [31:0] Loop_1_proc_U0_hw_output_V_value_V;
wire    Loop_1_proc_U0_hw_output_V_value_V_ap_vld;
wire   [0:0] Loop_1_proc_U0_hw_output_V_last_V;
wire    Loop_1_proc_U0_hw_output_V_last_V_ap_vld;
wire    ap_sync_continue;
wire    p_hw_input_stencil_st_full_n;
wire   [287:0] p_hw_input_stencil_st_dout;
wire    p_hw_input_stencil_st_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire   [0:0] start_for_Loop_1_proc_U0_din;
wire    start_for_Loop_1_proc_U0_full_n;
wire   [0:0] start_for_Loop_1_proc_U0_dout;
wire    start_for_Loop_1_proc_U0_empty_n;
wire    Loop_1_proc_U0_start_full_n;
wire    Loop_1_proc_U0_start_write;

linebuffer_1 linebuffer_1_U0(
    .ap_start(linebuffer_1_U0_ap_start),
    .start_full_n(linebuffer_1_U0_start_full_n),
    .ap_ready(linebuffer_1_U0_ap_ready),
    .start_out(linebuffer_1_U0_start_out),
    .start_write(linebuffer_1_U0_start_write),
    .in_axi_stream_V_value_V(hw_input_V_value_V),
    .in_axi_stream_V_last_V(hw_input_V_last_V),
    .out_stream_V_value_V_din(linebuffer_1_U0_out_stream_V_value_V_din),
    .out_stream_V_value_V_full_n(p_hw_input_stencil_st_full_n),
    .out_stream_V_value_V_write(linebuffer_1_U0_out_stream_V_value_V_write),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .in_axi_stream_V_value_V_ap_vld(hw_input_V_value_V_ap_vld),
    .in_axi_stream_V_value_V_ap_ack(linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack),
    .in_axi_stream_V_last_V_ap_vld(hw_input_V_last_V_ap_vld),
    .in_axi_stream_V_last_V_ap_ack(linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack),
    .ap_done(linebuffer_1_U0_ap_done),
    .ap_idle(linebuffer_1_U0_ap_idle),
    .ap_continue(linebuffer_1_U0_ap_continue)
);

Loop_1_proc Loop_1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_1_proc_U0_ap_start),
    .ap_done(Loop_1_proc_U0_ap_done),
    .ap_continue(Loop_1_proc_U0_ap_continue),
    .ap_idle(Loop_1_proc_U0_ap_idle),
    .ap_ready(Loop_1_proc_U0_ap_ready),
    .p_hw_input_stencil_stream_V_value_V_dout(p_hw_input_stencil_st_dout),
    .p_hw_input_stencil_stream_V_value_V_empty_n(p_hw_input_stencil_st_empty_n),
    .p_hw_input_stencil_stream_V_value_V_read(Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read),
    .hw_output_V_value_V(Loop_1_proc_U0_hw_output_V_value_V),
    .hw_output_V_value_V_ap_vld(Loop_1_proc_U0_hw_output_V_value_V_ap_vld),
    .hw_output_V_value_V_ap_ack(hw_output_V_value_V_ap_ack),
    .hw_output_V_last_V(Loop_1_proc_U0_hw_output_V_last_V),
    .hw_output_V_last_V_ap_vld(Loop_1_proc_U0_hw_output_V_last_V_ap_vld),
    .hw_output_V_last_V_ap_ack(hw_output_V_last_V_ap_ack)
);

fifo_w288_d1_S p_hw_input_stencil_st_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(linebuffer_1_U0_out_stream_V_value_V_din),
    .if_full_n(p_hw_input_stencil_st_full_n),
    .if_write(linebuffer_1_U0_out_stream_V_value_V_write),
    .if_dout(p_hw_input_stencil_st_dout),
    .if_empty_n(p_hw_input_stencil_st_empty_n),
    .if_read(Loop_1_proc_U0_p_hw_input_stencil_stream_V_value_V_read)
);

start_for_Loop_1_ibs start_for_Loop_1_ibs_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_1_proc_U0_din),
    .if_full_n(start_for_Loop_1_proc_U0_full_n),
    .if_write(linebuffer_1_U0_start_write),
    .if_dout(start_for_Loop_1_proc_U0_dout),
    .if_empty_n(start_for_Loop_1_proc_U0_empty_n),
    .if_read(Loop_1_proc_U0_ap_ready)
);

assign Loop_1_proc_U0_ap_continue = 1'b1;

assign Loop_1_proc_U0_ap_start = start_for_Loop_1_proc_U0_empty_n;

assign Loop_1_proc_U0_start_full_n = 1'b0;

assign Loop_1_proc_U0_start_write = 1'b0;

assign ap_done = Loop_1_proc_U0_ap_done;

assign ap_idle = (linebuffer_1_U0_ap_idle & Loop_1_proc_U0_ap_idle);

assign ap_ready = linebuffer_1_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Loop_1_proc_U0_ap_done;

assign ap_sync_ready = linebuffer_1_U0_ap_ready;

assign hw_input_V_last_V_ap_ack = linebuffer_1_U0_in_axi_stream_V_last_V_ap_ack;

assign hw_input_V_value_V_ap_ack = linebuffer_1_U0_in_axi_stream_V_value_V_ap_ack;

assign hw_output_V_last_V = Loop_1_proc_U0_hw_output_V_last_V;

assign hw_output_V_last_V_ap_vld = Loop_1_proc_U0_hw_output_V_last_V_ap_vld;

assign hw_output_V_value_V = Loop_1_proc_U0_hw_output_V_value_V;

assign hw_output_V_value_V_ap_vld = Loop_1_proc_U0_hw_output_V_value_V_ap_vld;

assign linebuffer_1_U0_ap_continue = 1'b1;

assign linebuffer_1_U0_ap_start = ap_start;

assign linebuffer_1_U0_start_full_n = (start_for_Loop_1_proc_U0_full_n | 1'b0);

assign start_for_Loop_1_proc_U0_din = 1'b1;

endmodule //hls_target
