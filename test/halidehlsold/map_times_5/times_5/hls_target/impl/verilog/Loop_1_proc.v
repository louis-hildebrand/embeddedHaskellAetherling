// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_1_proc (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_ready,
        ap_done,
        ap_continue,
        ap_idle,
        start_out,
        start_write,
        hw_input_V_value_V,
        hw_input_V_value_V_ap_vld,
        hw_input_V_value_V_ap_ack,
        hw_input_V_last_V,
        hw_input_V_last_V_ap_vld,
        hw_input_V_last_V_ap_ack,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_din,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_full_n,
        p_hw_input_stencil_stream_to_hw_output_V_value_V_write,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_din,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_full_n,
        p_hw_input_stencil_stream_to_hw_output_V_last_V_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_ready;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   start_out;
output   start_write;
input  [63:0] hw_input_V_value_V;
input   hw_input_V_value_V_ap_vld;
output   hw_input_V_value_V_ap_ack;
input  [0:0] hw_input_V_last_V;
input   hw_input_V_last_V_ap_vld;
output   hw_input_V_last_V_ap_ack;
output  [63:0] p_hw_input_stencil_stream_to_hw_output_V_value_V_din;
input   p_hw_input_stencil_stream_to_hw_output_V_value_V_full_n;
output   p_hw_input_stencil_stream_to_hw_output_V_value_V_write;
output  [0:0] p_hw_input_stencil_stream_to_hw_output_V_last_V_din;
input   p_hw_input_stencil_stream_to_hw_output_V_last_V_full_n;
output   p_hw_input_stencil_stream_to_hw_output_V_last_V_write;

reg ap_done;
reg ap_idle;
reg hw_input_V_value_V_ap_ack;
reg hw_input_V_last_V_ap_ack;

reg    real_start;
reg    real_start_status_reg;
reg    internal_ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    start_once_reg;
reg    start_control_reg;
reg    hw_input_V_value_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0_flag00000000;
wire   [0:0] exitcond_flatten_fu_82_p2;
reg    hw_input_V_last_V_blk_n;
reg    p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg   [0:0] exitcond_flatten_reg_98;
reg    p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n;
reg   [7:0] indvar_flatten_reg_71;
reg    ap_block_state2_pp0_stage0_iter0;
wire    p_hw_input_stencil_stream_to_hw_output_V_last_V1_status;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_flag00011001;
wire   [7:0] indvar_flatten_next_fu_88_p2;
reg   [63:0] tmp_value_V_reg_107;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    p_hw_input_stencil_stream_to_hw_output_V_last_V1_update;
reg    ap_block_pp0_stage0_flag00001001;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 real_start_status_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 start_once_reg = 1'b0;
#0 start_control_reg = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
        end else if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        real_start_status_reg <= 1'b0;
    end else begin
        if ((start_full_n == 1'b1)) begin
            real_start_status_reg <= 1'b0;
        end else if (((1'b0 == start_full_n) & (1'b1 == internal_ap_ready))) begin
            real_start_status_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_control_reg <= 1'b0;
    end else begin
        if (((1'b1 == real_start) & ((1'b1 == internal_ap_ready) | (1'b0 == start_once_reg)))) begin
            start_control_reg <= 1'b1;
        end else if ((1'b1 == start_control_reg)) begin
            start_control_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if ((1'b1 == real_start)) begin
            start_once_reg <= 1'b1;
        end else if ((1'b0 == ap_start)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        indvar_flatten_reg_71 <= indvar_flatten_next_fu_88_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_reg_71 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        exitcond_flatten_reg_98 <= exitcond_flatten_fu_82_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        tmp_value_V_reg_107 <= hw_input_V_value_V;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_82_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == real_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        hw_input_V_last_V_ap_ack = 1'b1;
    end else begin
        hw_input_V_last_V_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (exitcond_flatten_fu_82_p2 == 1'd0))) begin
        hw_input_V_last_V_blk_n = hw_input_V_last_V_ap_vld;
    end else begin
        hw_input_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        hw_input_V_value_V_ap_ack = 1'b1;
    end else begin
        hw_input_V_value_V_ap_ack = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (exitcond_flatten_fu_82_p2 == 1'd0))) begin
        hw_input_V_value_V_blk_n = hw_input_V_value_V_ap_vld;
    end else begin
        hw_input_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V1_update = 1'b1;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V1_update = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98))) begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n = p_hw_input_stencil_stream_to_hw_output_V_last_V_full_n;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98))) begin
        p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n = p_hw_input_stencil_stream_to_hw_output_V_value_V_full_n;
    end else begin
        p_hw_input_stencil_stream_to_hw_output_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == real_start_status_reg)) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_82_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_82_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00001001 = (((1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (1'b0 == hw_input_V_value_V_ap_vld)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98) & (1'b0 == p_hw_input_stencil_stream_to_hw_output_V_last_V1_status)));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = (((1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (1'b0 == hw_input_V_value_V_ap_vld)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98) & (1'b0 == p_hw_input_stencil_stream_to_hw_output_V_last_V1_status)));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_82_p2 == 1'd0) & (1'b0 == hw_input_V_value_V_ap_vld)) | ((1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_flatten_reg_98) & (1'b0 == p_hw_input_stencil_stream_to_hw_output_V_last_V1_status)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == real_start) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((exitcond_flatten_fu_82_p2 == 1'd0) & (1'b0 == hw_input_V_value_V_ap_vld));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((1'd0 == exitcond_flatten_reg_98) & (1'b0 == p_hw_input_stencil_stream_to_hw_output_V_last_V1_status));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign exitcond_flatten_fu_82_p2 = ((indvar_flatten_reg_71 == 8'd128) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_88_p2 = (indvar_flatten_reg_71 + 8'd1);

assign p_hw_input_stencil_stream_to_hw_output_V_last_V1_status = (p_hw_input_stencil_stream_to_hw_output_V_value_V_full_n & p_hw_input_stencil_stream_to_hw_output_V_last_V_full_n);

assign p_hw_input_stencil_stream_to_hw_output_V_last_V_din = 1'd0;

assign p_hw_input_stencil_stream_to_hw_output_V_last_V_write = p_hw_input_stencil_stream_to_hw_output_V_last_V1_update;

assign p_hw_input_stencil_stream_to_hw_output_V_value_V_din = tmp_value_V_reg_107;

assign p_hw_input_stencil_stream_to_hw_output_V_value_V_write = p_hw_input_stencil_stream_to_hw_output_V_last_V1_update;

assign start_out = real_start;

assign start_write = (ap_start & start_control_reg);

endmodule //Loop_1_proc
