// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_3_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_p2_mul1_stencil_stream_V_value_V_dout,
        p_p2_mul1_stencil_stream_V_value_V_empty_n,
        p_p2_mul1_stencil_stream_V_value_V_read,
        hw_output_V_value_V,
        hw_output_V_value_V_ap_vld,
        hw_output_V_value_V_ap_ack,
        hw_output_V_last_V,
        hw_output_V_last_V_ap_vld,
        hw_output_V_last_V_ap_ack
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state26 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] p_p2_mul1_stencil_stream_V_value_V_dout;
input   p_p2_mul1_stencil_stream_V_value_V_empty_n;
output   p_p2_mul1_stencil_stream_V_value_V_read;
output  [31:0] hw_output_V_value_V;
output   hw_output_V_value_V_ap_vld;
input   hw_output_V_value_V_ap_ack;
output  [0:0] hw_output_V_last_V;
output   hw_output_V_last_V_ap_vld;
input   hw_output_V_last_V_ap_ack;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_p2_mul1_stencil_stream_V_value_V_read;
reg hw_output_V_value_V_ap_vld;
reg hw_output_V_last_V_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_p2_mul1_stencil_stream_V_value_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_flag00000000;
reg   [0:0] exitcond_flatten_reg_338;
reg    hw_output_V_value_V_blk_n;
reg    ap_enable_reg_pp0_iter23;
reg   [0:0] ap_reg_pp0_iter22_exitcond_flatten_reg_338;
reg    hw_output_V_last_V_blk_n;
reg   [20:0] indvar_flatten_reg_104;
reg   [10:0] p_hw_output_y_scan_1_reg_115;
reg   [10:0] p_hw_output_x_scan_2_reg_127;
wire   [0:0] exitcond_flatten_fu_149_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_state11_pp0_stage0_iter9;
wire    ap_block_state12_pp0_stage0_iter10;
wire    ap_block_state13_pp0_stage0_iter11;
wire    ap_block_state14_pp0_stage0_iter12;
wire    ap_block_state15_pp0_stage0_iter13;
wire    ap_block_state16_pp0_stage0_iter14;
wire    ap_block_state17_pp0_stage0_iter15;
wire    ap_block_state18_pp0_stage0_iter16;
wire    ap_block_state19_pp0_stage0_iter17;
wire    ap_block_state20_pp0_stage0_iter18;
wire    ap_block_state21_pp0_stage0_iter19;
wire    ap_block_state22_pp0_stage0_iter20;
wire    ap_block_state23_pp0_stage0_iter21;
wire    ap_block_state24_pp0_stage0_iter22;
wire    ap_block_state25_pp0_stage0_iter23;
reg    ap_sig_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_block_state25_io;
reg    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter2_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter3_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter4_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter5_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter6_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter7_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter8_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter9_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter10_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter11_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter12_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter13_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter14_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter15_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter16_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter17_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter18_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter19_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter20_exitcond_flatten_reg_338;
reg   [0:0] ap_reg_pp0_iter21_exitcond_flatten_reg_338;
wire   [20:0] indvar_flatten_next_fu_155_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] exitcond7_fu_161_p2;
reg   [0:0] exitcond7_reg_347;
reg   [0:0] ap_reg_pp0_iter1_exitcond7_reg_347;
reg   [0:0] ap_reg_pp0_iter2_exitcond7_reg_347;
wire   [10:0] p_hw_output_x_scan_s_fu_167_p3;
reg   [10:0] p_hw_output_x_scan_s_reg_353;
wire   [10:0] p_hw_output_x_scan_1_fu_175_p2;
wire   [10:0] p_hw_output_y_scan_2_fu_181_p2;
reg   [10:0] p_hw_output_y_scan_2_reg_363;
wire   [0:0] tmp_s_fu_187_p2;
reg   [0:0] tmp_s_reg_368;
reg   [0:0] ap_reg_pp0_iter2_tmp_s_reg_368;
wire   [10:0] p_hw_output_y_scan_s_fu_193_p3;
reg   [10:0] p_hw_output_y_scan_s_reg_373;
reg   [31:0] tmp_value_V_5_reg_378;
wire   [0:0] tmp_2_fu_200_p2;
reg   [0:0] tmp_2_reg_383;
reg   [0:0] ap_reg_pp0_iter2_tmp_2_reg_383;
wire   [0:0] tmp_7_mid1_fu_205_p2;
reg   [0:0] tmp_7_mid1_reg_388;
wire   [0:0] tmp_last_V_fu_215_p2;
reg   [0:0] tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter4_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter5_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter6_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter7_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter8_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter9_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter10_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter11_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter12_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter13_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter14_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter15_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter16_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter17_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter18_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter19_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter20_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter21_tmp_last_V_reg_393;
reg   [0:0] ap_reg_pp0_iter22_tmp_last_V_reg_393;
wire   [31:0] grp_fu_138_p1;
reg   [31:0] p_417_reg_398;
wire   [63:0] grp_fu_141_p1;
reg   [63:0] p_418_reg_403;
reg   [10:0] loc_V_reg_408;
wire   [51:0] loc_V_1_fu_234_p1;
reg   [51:0] loc_V_1_reg_414;
reg   [51:0] ap_reg_pp0_iter22_loc_V_1_reg_414;
wire   [0:0] isNeg_fu_247_p3;
reg   [0:0] isNeg_reg_419;
wire   [11:0] sh_assign_1_fu_264_p3;
reg   [11:0] sh_assign_1_reg_424;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg   [10:0] p_hw_output_y_scan_1_phi_fu_119_p4;
reg    ap_block_pp0_stage0_flag00001001;
reg    ap_reg_ioackin_hw_output_V_value_V_ap_ack;
reg    ap_reg_ioackin_hw_output_V_last_V_ap_ack;
wire   [0:0] tmp_7_mid2_fu_210_p3;
wire   [63:0] grp_fu_144_p2;
wire   [63:0] p_Val2_s_fu_220_p1;
wire   [11:0] tmp_i_i_cast_i_fu_238_p1;
wire   [11:0] sh_assign_fu_241_p2;
wire   [10:0] tmp_1_i_i_fu_255_p2;
wire  signed [11:0] tmp_1_i_cast_i_fu_260_p1;
wire   [53:0] tmp_i_i_fu_272_p4;
wire  signed [31:0] sh_assign_1_i_cast_i_fu_285_p1;
wire   [53:0] tmp_2_i_cast_i_fu_292_p1;
wire   [136:0] tmp_i_cast_i_fu_281_p1;
wire   [136:0] tmp_2_i_i_fu_288_p1;
wire   [53:0] tmp_3_i_i_fu_296_p2;
wire   [0:0] tmp_fu_308_p3;
wire   [136:0] tmp_4_i_i_fu_302_p2;
wire   [31:0] tmp_1_fu_316_p1;
wire   [31:0] tmp_4_fu_320_p4;
reg    grp_fu_138_ce;
reg    grp_fu_141_ce;
reg    grp_fu_144_ce;
wire    ap_CS_fsm_state26;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_reg_ioackin_hw_output_V_value_V_ap_ack = 1'b0;
#0 ap_reg_ioackin_hw_output_V_last_V_ap_ack = 1'b0;
end

hls_target_sitofphbi #(
    .ID( 1 ),
    .NUM_STAGE( 8 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
hls_target_sitofphbi_x_U44(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(tmp_value_V_5_reg_378),
    .ce(grp_fu_138_ce),
    .dout(grp_fu_138_p1)
);

hls_target_fpext_ibs #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
hls_target_fpext_ibs_x_U45(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_417_reg_398),
    .ce(grp_fu_141_ce),
    .dout(grp_fu_141_p1)
);

hls_target_dmul_6jbC #(
    .ID( 1 ),
    .NUM_STAGE( 10 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 64 ),
    .dout_WIDTH( 64 ))
hls_target_dmul_6jbC_x_U46(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_418_reg_403),
    .din1(64'd4593671619917905920),
    .ce(grp_fu_144_ce),
    .dout(grp_fu_144_p2)
);

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
        end else if ((1'b1 == ap_CS_fsm_state26)) begin
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
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter23 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
    end else begin
        if (((1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338))) begin
            if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b0;
            end else if (((ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b1 == hw_output_V_last_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_last_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
    end else begin
        if (((1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338))) begin
            if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b0;
            end else if (((ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b1 == hw_output_V_value_V_ap_ack))) begin
                ap_reg_ioackin_hw_output_V_value_V_ap_ack <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_flatten_fu_149_p2))) begin
        indvar_flatten_reg_104 <= indvar_flatten_next_fu_155_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_reg_104 <= 21'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_flatten_fu_149_p2))) begin
        p_hw_output_x_scan_2_reg_127 <= p_hw_output_x_scan_1_fu_175_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        p_hw_output_x_scan_2_reg_127 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_338) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        p_hw_output_y_scan_1_reg_115 <= p_hw_output_y_scan_s_reg_373;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        p_hw_output_y_scan_1_reg_115 <= 11'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
        ap_reg_pp0_iter10_exitcond_flatten_reg_338 <= ap_reg_pp0_iter9_exitcond_flatten_reg_338;
        ap_reg_pp0_iter10_tmp_last_V_reg_393 <= ap_reg_pp0_iter9_tmp_last_V_reg_393;
        ap_reg_pp0_iter11_exitcond_flatten_reg_338 <= ap_reg_pp0_iter10_exitcond_flatten_reg_338;
        ap_reg_pp0_iter11_tmp_last_V_reg_393 <= ap_reg_pp0_iter10_tmp_last_V_reg_393;
        ap_reg_pp0_iter12_exitcond_flatten_reg_338 <= ap_reg_pp0_iter11_exitcond_flatten_reg_338;
        ap_reg_pp0_iter12_tmp_last_V_reg_393 <= ap_reg_pp0_iter11_tmp_last_V_reg_393;
        ap_reg_pp0_iter13_exitcond_flatten_reg_338 <= ap_reg_pp0_iter12_exitcond_flatten_reg_338;
        ap_reg_pp0_iter13_tmp_last_V_reg_393 <= ap_reg_pp0_iter12_tmp_last_V_reg_393;
        ap_reg_pp0_iter14_exitcond_flatten_reg_338 <= ap_reg_pp0_iter13_exitcond_flatten_reg_338;
        ap_reg_pp0_iter14_tmp_last_V_reg_393 <= ap_reg_pp0_iter13_tmp_last_V_reg_393;
        ap_reg_pp0_iter15_exitcond_flatten_reg_338 <= ap_reg_pp0_iter14_exitcond_flatten_reg_338;
        ap_reg_pp0_iter15_tmp_last_V_reg_393 <= ap_reg_pp0_iter14_tmp_last_V_reg_393;
        ap_reg_pp0_iter16_exitcond_flatten_reg_338 <= ap_reg_pp0_iter15_exitcond_flatten_reg_338;
        ap_reg_pp0_iter16_tmp_last_V_reg_393 <= ap_reg_pp0_iter15_tmp_last_V_reg_393;
        ap_reg_pp0_iter17_exitcond_flatten_reg_338 <= ap_reg_pp0_iter16_exitcond_flatten_reg_338;
        ap_reg_pp0_iter17_tmp_last_V_reg_393 <= ap_reg_pp0_iter16_tmp_last_V_reg_393;
        ap_reg_pp0_iter18_exitcond_flatten_reg_338 <= ap_reg_pp0_iter17_exitcond_flatten_reg_338;
        ap_reg_pp0_iter18_tmp_last_V_reg_393 <= ap_reg_pp0_iter17_tmp_last_V_reg_393;
        ap_reg_pp0_iter19_exitcond_flatten_reg_338 <= ap_reg_pp0_iter18_exitcond_flatten_reg_338;
        ap_reg_pp0_iter19_tmp_last_V_reg_393 <= ap_reg_pp0_iter18_tmp_last_V_reg_393;
        ap_reg_pp0_iter20_exitcond_flatten_reg_338 <= ap_reg_pp0_iter19_exitcond_flatten_reg_338;
        ap_reg_pp0_iter20_tmp_last_V_reg_393 <= ap_reg_pp0_iter19_tmp_last_V_reg_393;
        ap_reg_pp0_iter21_exitcond_flatten_reg_338 <= ap_reg_pp0_iter20_exitcond_flatten_reg_338;
        ap_reg_pp0_iter21_tmp_last_V_reg_393 <= ap_reg_pp0_iter20_tmp_last_V_reg_393;
        ap_reg_pp0_iter22_exitcond_flatten_reg_338 <= ap_reg_pp0_iter21_exitcond_flatten_reg_338;
        ap_reg_pp0_iter22_loc_V_1_reg_414 <= loc_V_1_reg_414;
        ap_reg_pp0_iter22_tmp_last_V_reg_393 <= ap_reg_pp0_iter21_tmp_last_V_reg_393;
        ap_reg_pp0_iter2_exitcond7_reg_347 <= ap_reg_pp0_iter1_exitcond7_reg_347;
        ap_reg_pp0_iter2_exitcond_flatten_reg_338 <= ap_reg_pp0_iter1_exitcond_flatten_reg_338;
        ap_reg_pp0_iter2_tmp_2_reg_383 <= tmp_2_reg_383;
        ap_reg_pp0_iter2_tmp_s_reg_368 <= tmp_s_reg_368;
        ap_reg_pp0_iter3_exitcond_flatten_reg_338 <= ap_reg_pp0_iter2_exitcond_flatten_reg_338;
        ap_reg_pp0_iter4_exitcond_flatten_reg_338 <= ap_reg_pp0_iter3_exitcond_flatten_reg_338;
        ap_reg_pp0_iter4_tmp_last_V_reg_393 <= tmp_last_V_reg_393;
        ap_reg_pp0_iter5_exitcond_flatten_reg_338 <= ap_reg_pp0_iter4_exitcond_flatten_reg_338;
        ap_reg_pp0_iter5_tmp_last_V_reg_393 <= ap_reg_pp0_iter4_tmp_last_V_reg_393;
        ap_reg_pp0_iter6_exitcond_flatten_reg_338 <= ap_reg_pp0_iter5_exitcond_flatten_reg_338;
        ap_reg_pp0_iter6_tmp_last_V_reg_393 <= ap_reg_pp0_iter5_tmp_last_V_reg_393;
        ap_reg_pp0_iter7_exitcond_flatten_reg_338 <= ap_reg_pp0_iter6_exitcond_flatten_reg_338;
        ap_reg_pp0_iter7_tmp_last_V_reg_393 <= ap_reg_pp0_iter6_tmp_last_V_reg_393;
        ap_reg_pp0_iter8_exitcond_flatten_reg_338 <= ap_reg_pp0_iter7_exitcond_flatten_reg_338;
        ap_reg_pp0_iter8_tmp_last_V_reg_393 <= ap_reg_pp0_iter7_tmp_last_V_reg_393;
        ap_reg_pp0_iter9_exitcond_flatten_reg_338 <= ap_reg_pp0_iter8_exitcond_flatten_reg_338;
        ap_reg_pp0_iter9_tmp_last_V_reg_393 <= ap_reg_pp0_iter8_tmp_last_V_reg_393;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond7_reg_347 <= exitcond7_reg_347;
        ap_reg_pp0_iter1_exitcond_flatten_reg_338 <= exitcond_flatten_reg_338;
        exitcond_flatten_reg_338 <= exitcond_flatten_fu_149_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond_flatten_fu_149_p2))) begin
        exitcond7_reg_347 <= exitcond7_fu_161_p2;
        p_hw_output_x_scan_s_reg_353 <= p_hw_output_x_scan_s_fu_167_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter21_exitcond_flatten_reg_338))) begin
        isNeg_reg_419 <= sh_assign_fu_241_p2[32'd11];
        sh_assign_1_reg_424 <= sh_assign_1_fu_264_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter20_exitcond_flatten_reg_338))) begin
        loc_V_1_reg_414 <= loc_V_1_fu_234_p1;
        loc_V_reg_408 <= {{p_Val2_s_fu_220_p1[62:52]}};
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter8_exitcond_flatten_reg_338))) begin
        p_417_reg_398 <= grp_fu_138_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter10_exitcond_flatten_reg_338))) begin
        p_418_reg_403 <= grp_fu_141_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_338 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_hw_output_y_scan_2_reg_363 <= p_hw_output_y_scan_2_fu_181_p2;
        tmp_2_reg_383 <= tmp_2_fu_200_p2;
        tmp_value_V_5_reg_378 <= p_p2_mul1_stencil_stream_V_value_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_338 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_hw_output_y_scan_s_reg_373 <= p_hw_output_y_scan_s_fu_193_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_338) & (ap_reg_pp0_iter1_exitcond7_reg_347 == 1'd1))) begin
        tmp_7_mid1_reg_388 <= tmp_7_mid1_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter2_exitcond_flatten_reg_338))) begin
        tmp_last_V_reg_393 <= tmp_last_V_fu_215_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_338 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond7_reg_347))) begin
        tmp_s_reg_368 <= tmp_s_fu_187_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_149_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3) & (1'b0 == ap_enable_reg_pp0_iter4) & (1'b0 == ap_enable_reg_pp0_iter5) & (1'b0 == ap_enable_reg_pp0_iter6) & (1'b0 == ap_enable_reg_pp0_iter7) & (1'b0 == ap_enable_reg_pp0_iter8) & (1'b0 == ap_enable_reg_pp0_iter9) & (1'b0 == ap_enable_reg_pp0_iter10) & (1'b0 == ap_enable_reg_pp0_iter11) & (1'b0 == ap_enable_reg_pp0_iter12) & (1'b0 == ap_enable_reg_pp0_iter13) & (1'b0 == ap_enable_reg_pp0_iter14) & (1'b0 == ap_enable_reg_pp0_iter15) & (1'b0 == ap_enable_reg_pp0_iter16) & (1'b0 == ap_enable_reg_pp0_iter17) & (1'b0 == ap_enable_reg_pp0_iter18) & (1'b0 == ap_enable_reg_pp0_iter19) & (1'b0 == ap_enable_reg_pp0_iter20) & (1'b0 == ap_enable_reg_pp0_iter21) & (1'b0 == ap_enable_reg_pp0_iter22) & (1'b0 == ap_enable_reg_pp0_iter23))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b0 == ap_reg_ioackin_hw_output_V_value_V_ap_ack)) begin
        ap_sig_ioackin_hw_output_V_value_V_ap_ack = hw_output_V_value_V_ap_ack;
    end else begin
        ap_sig_ioackin_hw_output_V_value_V_ap_ack = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        grp_fu_138_ce = 1'b1;
    end else begin
        grp_fu_138_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        grp_fu_141_ce = 1'b1;
    end else begin
        grp_fu_141_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        grp_fu_144_ce = 1'b1;
    end else begin
        grp_fu_144_ce = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338) & (ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b0 == ap_reg_ioackin_hw_output_V_last_V_ap_ack))) begin
        hw_output_V_last_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_last_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338))) begin
        hw_output_V_last_V_blk_n = hw_output_V_last_V_ap_ack;
    end else begin
        hw_output_V_last_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338) & (ap_block_pp0_stage0_flag00001001 == 1'b0) & (1'b0 == ap_reg_ioackin_hw_output_V_value_V_ap_ack))) begin
        hw_output_V_value_V_ap_vld = 1'b1;
    end else begin
        hw_output_V_value_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter23) & (1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338))) begin
        hw_output_V_value_V_blk_n = hw_output_V_value_V_ap_ack;
    end else begin
        hw_output_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_exitcond_flatten_reg_338) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        p_hw_output_y_scan_1_phi_fu_119_p4 = p_hw_output_y_scan_s_reg_373;
    end else begin
        p_hw_output_y_scan_1_phi_fu_119_p4 = p_hw_output_y_scan_1_reg_115;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (exitcond_flatten_reg_338 == 1'd0))) begin
        p_p2_mul1_stencil_stream_V_value_V_blk_n = p_p2_mul1_stencil_stream_V_value_V_empty_n;
    end else begin
        p_p2_mul1_stencil_stream_V_value_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_338 == 1'd0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        p_p2_mul1_stencil_stream_V_value_V_read = 1'b1;
    end else begin
        p_p2_mul1_stencil_stream_V_value_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_enable_reg_pp0_iter23) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_149_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_enable_reg_pp0_iter23) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_149_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state26 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00001001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_338 == 1'd0) & (1'b0 == p_p2_mul1_stencil_stream_V_value_V_empty_n));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = (((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_338 == 1'd0) & (1'b0 == p_p2_mul1_stencil_stream_V_value_V_empty_n)) | ((1'b1 == ap_enable_reg_pp0_iter23) & (1'b1 == ap_block_state25_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_flatten_reg_338 == 1'd0) & (1'b0 == p_p2_mul1_stencil_stream_V_value_V_empty_n)) | ((1'b1 == ap_enable_reg_pp0_iter23) & (1'b1 == ap_block_state25_io)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state18_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state19_pp0_stage0_iter17 = ~(1'b1 == 1'b1);

assign ap_block_state20_pp0_stage0_iter18 = ~(1'b1 == 1'b1);

assign ap_block_state21_pp0_stage0_iter19 = ~(1'b1 == 1'b1);

assign ap_block_state22_pp0_stage0_iter20 = ~(1'b1 == 1'b1);

assign ap_block_state23_pp0_stage0_iter21 = ~(1'b1 == 1'b1);

assign ap_block_state24_pp0_stage0_iter22 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state25_io = ((1'd0 == ap_reg_pp0_iter22_exitcond_flatten_reg_338) & (1'b0 == ap_sig_ioackin_hw_output_V_value_V_ap_ack));
end

assign ap_block_state25_pp0_stage0_iter23 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((exitcond_flatten_reg_338 == 1'd0) & (1'b0 == p_p2_mul1_stencil_stream_V_value_V_empty_n));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond7_fu_161_p2 = ((p_hw_output_x_scan_2_reg_127 == 11'd1917) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_149_p2 = ((indvar_flatten_reg_104 == 21'd2064609) ? 1'b1 : 1'b0);

assign hw_output_V_last_V = ap_reg_pp0_iter22_tmp_last_V_reg_393;

assign hw_output_V_value_V = ((isNeg_reg_419[0:0] === 1'b1) ? tmp_1_fu_316_p1 : tmp_4_fu_320_p4);

assign indvar_flatten_next_fu_155_p2 = (indvar_flatten_reg_104 + 21'd1);

assign isNeg_fu_247_p3 = sh_assign_fu_241_p2[32'd11];

assign loc_V_1_fu_234_p1 = p_Val2_s_fu_220_p1[51:0];

assign p_Val2_s_fu_220_p1 = grp_fu_144_p2;

assign p_hw_output_x_scan_1_fu_175_p2 = (11'd1 + p_hw_output_x_scan_s_fu_167_p3);

assign p_hw_output_x_scan_s_fu_167_p3 = ((exitcond7_fu_161_p2[0:0] === 1'b1) ? 11'd0 : p_hw_output_x_scan_2_reg_127);

assign p_hw_output_y_scan_2_fu_181_p2 = (11'd1 + p_hw_output_y_scan_1_phi_fu_119_p4);

assign p_hw_output_y_scan_s_fu_193_p3 = ((exitcond7_reg_347[0:0] === 1'b1) ? p_hw_output_y_scan_2_fu_181_p2 : p_hw_output_y_scan_1_phi_fu_119_p4);

assign sh_assign_1_fu_264_p3 = ((isNeg_fu_247_p3[0:0] === 1'b1) ? tmp_1_i_cast_i_fu_260_p1 : sh_assign_fu_241_p2);

assign sh_assign_1_i_cast_i_fu_285_p1 = $signed(sh_assign_1_reg_424);

assign sh_assign_fu_241_p2 = ($signed(12'd3073) + $signed(tmp_i_i_cast_i_fu_238_p1));

assign tmp_1_fu_316_p1 = tmp_fu_308_p3;

assign tmp_1_i_cast_i_fu_260_p1 = $signed(tmp_1_i_i_fu_255_p2);

assign tmp_1_i_i_fu_255_p2 = (11'd1023 - loc_V_reg_408);

assign tmp_2_fu_200_p2 = ((p_hw_output_x_scan_s_reg_353 == 11'd1916) ? 1'b1 : 1'b0);

assign tmp_2_i_cast_i_fu_292_p1 = $unsigned(sh_assign_1_i_cast_i_fu_285_p1);

assign tmp_2_i_i_fu_288_p1 = $unsigned(sh_assign_1_i_cast_i_fu_285_p1);

assign tmp_3_i_i_fu_296_p2 = tmp_i_i_fu_272_p4 >> tmp_2_i_cast_i_fu_292_p1;

assign tmp_4_fu_320_p4 = {{tmp_4_i_i_fu_302_p2[84:53]}};

assign tmp_4_i_i_fu_302_p2 = tmp_i_cast_i_fu_281_p1 << tmp_2_i_i_fu_288_p1;

assign tmp_7_mid1_fu_205_p2 = ((p_hw_output_y_scan_2_reg_363 == 11'd1076) ? 1'b1 : 1'b0);

assign tmp_7_mid2_fu_210_p3 = ((ap_reg_pp0_iter2_exitcond7_reg_347[0:0] === 1'b1) ? tmp_7_mid1_reg_388 : ap_reg_pp0_iter2_tmp_s_reg_368);

assign tmp_fu_308_p3 = tmp_3_i_i_fu_296_p2[32'd53];

assign tmp_i_cast_i_fu_281_p1 = tmp_i_i_fu_272_p4;

assign tmp_i_i_cast_i_fu_238_p1 = loc_V_reg_408;

assign tmp_i_i_fu_272_p4 = {{{{1'd1}, {ap_reg_pp0_iter22_loc_V_1_reg_414}}}, {1'd0}};

assign tmp_last_V_fu_215_p2 = (ap_reg_pp0_iter2_tmp_2_reg_383 & tmp_7_mid2_fu_210_p3);

assign tmp_s_fu_187_p2 = ((p_hw_output_y_scan_1_phi_fu_119_p4 == 11'd1076) ? 1'b1 : 1'b0);

endmodule //Loop_3_proc
