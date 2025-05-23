// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "call_Loop_LB2D_shift.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic call_Loop_LB2D_shift::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic call_Loop_LB2D_shift::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> call_Loop_LB2D_shift::ap_ST_fsm_state1 = "1";
const sc_lv<4> call_Loop_LB2D_shift::ap_ST_fsm_state2 = "10";
const sc_lv<4> call_Loop_LB2D_shift::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> call_Loop_LB2D_shift::ap_ST_fsm_state5 = "1000";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool call_Loop_LB2D_shift::ap_const_boolean_1 = true;
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_2 = "10";
const bool call_Loop_LB2D_shift::ap_const_boolean_0 = false;
const sc_lv<1> call_Loop_LB2D_shift::ap_const_lv1_0 = "0";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_1 = "1";
const sc_lv<1> call_Loop_LB2D_shift::ap_const_lv1_1 = "1";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_3 = "11";
const sc_lv<11> call_Loop_LB2D_shift::ap_const_lv11_0 = "00000000000";
const sc_lv<11> call_Loop_LB2D_shift::ap_const_lv11_436 = "10000110110";
const sc_lv<11> call_Loop_LB2D_shift::ap_const_lv11_1 = "1";
const sc_lv<11> call_Loop_LB2D_shift::ap_const_lv11_780 = "11110000000";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_A = "1010";
const sc_lv<10> call_Loop_LB2D_shift::ap_const_lv10_0 = "0000000000";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_20 = "100000";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_3F = "111111";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_40 = "1000000";
const sc_lv<32> call_Loop_LB2D_shift::ap_const_lv32_5F = "1011111";

call_Loop_LB2D_shift::call_Loop_LB2D_shift(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00001001);
    sensitive << ( slice_stream_V_value_V_empty_n );
    sensitive << ( out_stream_V_value_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_reg_300 );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011001);
    sensitive << ( slice_stream_V_value_V_empty_n );
    sensitive << ( out_stream_V_value_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_reg_300 );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011011);
    sensitive << ( slice_stream_V_value_V_empty_n );
    sensitive << ( out_stream_V_value_V_full_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_reg_300 );

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( slice_stream_V_value_V_empty_n );
    sensitive << ( out_stream_V_value_V_full_n );
    sensitive << ( icmp_reg_300 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( tmp_7_fu_127_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( tmp_5_fu_115_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( tmp_5_fu_115_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_i_fu_133_p2);
    sensitive << ( i_0_i_i_reg_104 );

    SC_METHOD(thread_icmp_fu_149_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( tmp_7_fu_127_p2 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( tmp_fu_139_p4 );

    SC_METHOD(thread_n1_1_fu_121_p2);
    sensitive << ( n1_reg_93 );

    SC_METHOD(thread_out_stream_V_value_V_blk_n);
    sensitive << ( out_stream_V_value_V_full_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( icmp_reg_300 );

    SC_METHOD(thread_out_stream_V_value_V_din);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_reg_300 );
    sensitive << ( ap_block_pp0_stage0_flag00001001 );
    sensitive << ( p_Result_20_2_2_fu_223_p4 );
    sensitive << ( p_Result_20_2_1_fu_213_p4 );
    sensitive << ( p_Result_20_2_fu_203_p4 );
    sensitive << ( p_Result_20_1_2_fu_193_p4 );
    sensitive << ( p_Result_20_1_1_fu_183_p4 );
    sensitive << ( p_Result_20_1_fu_173_p4 );
    sensitive << ( tmp_4_fu_169_p1 );
    sensitive << ( tmp_2_fu_165_p1 );
    sensitive << ( tmp_1_fu_161_p1 );

    SC_METHOD(thread_out_stream_V_value_V_write);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_reg_300 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );

    SC_METHOD(thread_p_Result_20_1_1_fu_183_p4);
    sensitive << ( buffer_1_value_V_fu_72 );

    SC_METHOD(thread_p_Result_20_1_2_fu_193_p4);
    sensitive << ( slice_stream_V_value_V_dout );

    SC_METHOD(thread_p_Result_20_1_fu_173_p4);
    sensitive << ( buffer_0_value_V_fu_76 );

    SC_METHOD(thread_p_Result_20_2_1_fu_213_p4);
    sensitive << ( buffer_1_value_V_fu_72 );

    SC_METHOD(thread_p_Result_20_2_2_fu_223_p4);
    sensitive << ( slice_stream_V_value_V_dout );

    SC_METHOD(thread_p_Result_20_2_fu_203_p4);
    sensitive << ( buffer_0_value_V_fu_76 );

    SC_METHOD(thread_slice_stream_V_value_V_blk_n);
    sensitive << ( slice_stream_V_value_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_slice_stream_V_value_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );

    SC_METHOD(thread_tmp_1_fu_161_p1);
    sensitive << ( buffer_0_value_V_fu_76 );

    SC_METHOD(thread_tmp_2_fu_165_p1);
    sensitive << ( buffer_1_value_V_fu_72 );

    SC_METHOD(thread_tmp_4_fu_169_p1);
    sensitive << ( slice_stream_V_value_V_dout );

    SC_METHOD(thread_tmp_5_fu_115_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( n1_reg_93 );

    SC_METHOD(thread_tmp_7_fu_127_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_0_i_i_reg_104 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_tmp_fu_139_p4);
    sensitive << ( i_0_i_i_reg_104 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( tmp_5_fu_115_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_7_fu_127_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_flag00011011 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "call_Loop_LB2D_shift_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, slice_stream_V_value_V_dout, "(port)slice_stream_V_value_V_dout");
    sc_trace(mVcdFile, slice_stream_V_value_V_empty_n, "(port)slice_stream_V_value_V_empty_n");
    sc_trace(mVcdFile, slice_stream_V_value_V_read, "(port)slice_stream_V_value_V_read");
    sc_trace(mVcdFile, out_stream_V_value_V_din, "(port)out_stream_V_value_V_din");
    sc_trace(mVcdFile, out_stream_V_value_V_full_n, "(port)out_stream_V_value_V_full_n");
    sc_trace(mVcdFile, out_stream_V_value_V_write, "(port)out_stream_V_value_V_write");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, slice_stream_V_value_V_blk_n, "slice_stream_V_value_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00000000, "ap_block_pp0_stage0_flag00000000");
    sc_trace(mVcdFile, out_stream_V_value_V_blk_n, "out_stream_V_value_V_blk_n");
    sc_trace(mVcdFile, icmp_reg_300, "icmp_reg_300");
    sc_trace(mVcdFile, i_0_i_i_reg_104, "i_0_i_i_reg_104");
    sc_trace(mVcdFile, tmp_5_fu_115_p2, "tmp_5_fu_115_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, n1_1_fu_121_p2, "n1_1_fu_121_p2");
    sc_trace(mVcdFile, n1_1_reg_286, "n1_1_reg_286");
    sc_trace(mVcdFile, tmp_7_fu_127_p2, "tmp_7_fu_127_p2");
    sc_trace(mVcdFile, tmp_7_reg_291, "tmp_7_reg_291");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011001, "ap_block_pp0_stage0_flag00011001");
    sc_trace(mVcdFile, i_fu_133_p2, "i_fu_133_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, icmp_fu_149_p2, "icmp_fu_149_p2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011011, "ap_block_pp0_stage0_flag00011011");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, n1_reg_93, "n1_reg_93");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00001001, "ap_block_pp0_stage0_flag00001001");
    sc_trace(mVcdFile, buffer_1_value_V_fu_72, "buffer_1_value_V_fu_72");
    sc_trace(mVcdFile, buffer_0_value_V_fu_76, "buffer_0_value_V_fu_76");
    sc_trace(mVcdFile, tmp_fu_139_p4, "tmp_fu_139_p4");
    sc_trace(mVcdFile, p_Result_20_2_2_fu_223_p4, "p_Result_20_2_2_fu_223_p4");
    sc_trace(mVcdFile, p_Result_20_2_1_fu_213_p4, "p_Result_20_2_1_fu_213_p4");
    sc_trace(mVcdFile, p_Result_20_2_fu_203_p4, "p_Result_20_2_fu_203_p4");
    sc_trace(mVcdFile, p_Result_20_1_2_fu_193_p4, "p_Result_20_1_2_fu_193_p4");
    sc_trace(mVcdFile, p_Result_20_1_1_fu_183_p4, "p_Result_20_1_1_fu_183_p4");
    sc_trace(mVcdFile, p_Result_20_1_fu_173_p4, "p_Result_20_1_fu_173_p4");
    sc_trace(mVcdFile, tmp_4_fu_169_p1, "tmp_4_fu_169_p1");
    sc_trace(mVcdFile, tmp_2_fu_165_p1, "tmp_2_fu_165_p1");
    sc_trace(mVcdFile, tmp_1_fu_161_p1, "tmp_1_fu_161_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

call_Loop_LB2D_shift::~call_Loop_LB2D_shift() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void call_Loop_LB2D_shift::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(tmp_5_fu_115_p2.read(), ap_const_lv1_1))) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, tmp_5_fu_115_p2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(ap_const_lv1_0, tmp_5_fu_115_p2.read()))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_127_p2.read()))) {
        i_0_i_i_reg_104 = i_fu_133_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_5_fu_115_p2.read()))) {
        i_0_i_i_reg_104 = ap_const_lv11_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        n1_reg_93 = ap_const_lv11_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        n1_reg_93 = n1_1_reg_286.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_reg_291.read()))) {
        buffer_0_value_V_fu_76 = buffer_1_value_V_fu_72.read();
        buffer_1_value_V_fu_72 = slice_stream_V_value_V_dout.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_7_fu_127_p2.read()))) {
        icmp_reg_300 = icmp_fu_149_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        n1_1_reg_286 = n1_1_fu_121_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        tmp_7_reg_291 = tmp_7_fu_127_p2.read();
    }
}

void call_Loop_LB2D_shift::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void call_Loop_LB2D_shift::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void call_Loop_LB2D_shift::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void call_Loop_LB2D_shift::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[3];
}

void call_Loop_LB2D_shift::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void call_Loop_LB2D_shift::thread_ap_block_pp0_stage0_flag00001001() {
    ap_block_pp0_stage0_flag00001001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && (esl_seteq<1,1,1>(ap_const_logic_0, slice_stream_V_value_V_empty_n.read()) || 
  (esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_stream_V_value_V_full_n.read()))));
}

void call_Loop_LB2D_shift::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && (esl_seteq<1,1,1>(ap_const_logic_0, slice_stream_V_value_V_empty_n.read()) || 
  (esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_stream_V_value_V_full_n.read()))));
}

void call_Loop_LB2D_shift::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && (esl_seteq<1,1,1>(ap_const_logic_0, slice_stream_V_value_V_empty_n.read()) || 
  (esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0) && 
   esl_seteq<1,1,1>(ap_const_logic_0, out_stream_V_value_V_full_n.read()))));
}

void call_Loop_LB2D_shift::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void call_Loop_LB2D_shift::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void call_Loop_LB2D_shift::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = (esl_seteq<1,1,1>(ap_const_logic_0, slice_stream_V_value_V_empty_n.read()) || (esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0) && 
  esl_seteq<1,1,1>(ap_const_logic_0, out_stream_V_value_V_full_n.read())));
}

void call_Loop_LB2D_shift::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(tmp_7_fu_127_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_5_fu_115_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void call_Loop_LB2D_shift::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void call_Loop_LB2D_shift::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_5_fu_115_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_i_fu_133_p2() {
    i_fu_133_p2 = (!i_0_i_i_reg_104.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(i_0_i_i_reg_104.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void call_Loop_LB2D_shift::thread_icmp_fu_149_p2() {
    icmp_fu_149_p2 = (!tmp_fu_139_p4.read().is_01() || !ap_const_lv10_0.is_01())? sc_lv<1>(): sc_lv<1>(tmp_fu_139_p4.read() == ap_const_lv10_0);
}

void call_Loop_LB2D_shift::thread_n1_1_fu_121_p2() {
    n1_1_fu_121_p2 = (!n1_reg_93.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_biguint<11>(n1_reg_93.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void call_Loop_LB2D_shift::thread_out_stream_V_value_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0))) {
        out_stream_V_value_V_blk_n = out_stream_V_value_V_full_n.read();
    } else {
        out_stream_V_value_V_blk_n = ap_const_logic_1;
    }
}

void call_Loop_LB2D_shift::thread_out_stream_V_value_V_din() {
    out_stream_V_value_V_din = esl_concat<256,32>(esl_concat<224,32>(esl_concat<192,32>(esl_concat<160,32>(esl_concat<128,32>(esl_concat<96,32>(esl_concat<64,32>(esl_concat<32,32>(p_Result_20_2_2_fu_223_p4.read(), p_Result_20_2_1_fu_213_p4.read()), p_Result_20_2_fu_203_p4.read()), p_Result_20_1_2_fu_193_p4.read()), p_Result_20_1_1_fu_183_p4.read()), p_Result_20_1_fu_173_p4.read()), tmp_4_fu_169_p1.read()), tmp_2_fu_165_p1.read()), tmp_1_fu_161_p1.read());
}

void call_Loop_LB2D_shift::thread_out_stream_V_value_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_reg_300.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        out_stream_V_value_V_write = ap_const_logic_1;
    } else {
        out_stream_V_value_V_write = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_p_Result_20_1_1_fu_183_p4() {
    p_Result_20_1_1_fu_183_p4 = buffer_1_value_V_fu_72.read().range(63, 32);
}

void call_Loop_LB2D_shift::thread_p_Result_20_1_2_fu_193_p4() {
    p_Result_20_1_2_fu_193_p4 = slice_stream_V_value_V_dout.read().range(63, 32);
}

void call_Loop_LB2D_shift::thread_p_Result_20_1_fu_173_p4() {
    p_Result_20_1_fu_173_p4 = buffer_0_value_V_fu_76.read().range(63, 32);
}

void call_Loop_LB2D_shift::thread_p_Result_20_2_1_fu_213_p4() {
    p_Result_20_2_1_fu_213_p4 = buffer_1_value_V_fu_72.read().range(95, 64);
}

void call_Loop_LB2D_shift::thread_p_Result_20_2_2_fu_223_p4() {
    p_Result_20_2_2_fu_223_p4 = slice_stream_V_value_V_dout.read().range(95, 64);
}

void call_Loop_LB2D_shift::thread_p_Result_20_2_fu_203_p4() {
    p_Result_20_2_fu_203_p4 = buffer_0_value_V_fu_76.read().range(95, 64);
}

void call_Loop_LB2D_shift::thread_slice_stream_V_value_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        slice_stream_V_value_V_blk_n = slice_stream_V_value_V_empty_n.read();
    } else {
        slice_stream_V_value_V_blk_n = ap_const_logic_1;
    }
}

void call_Loop_LB2D_shift::thread_slice_stream_V_value_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        slice_stream_V_value_V_read = ap_const_logic_1;
    } else {
        slice_stream_V_value_V_read = ap_const_logic_0;
    }
}

void call_Loop_LB2D_shift::thread_tmp_1_fu_161_p1() {
    tmp_1_fu_161_p1 = buffer_0_value_V_fu_76.read().range(32-1, 0);
}

void call_Loop_LB2D_shift::thread_tmp_2_fu_165_p1() {
    tmp_2_fu_165_p1 = buffer_1_value_V_fu_72.read().range(32-1, 0);
}

void call_Loop_LB2D_shift::thread_tmp_4_fu_169_p1() {
    tmp_4_fu_169_p1 = slice_stream_V_value_V_dout.read().range(32-1, 0);
}

void call_Loop_LB2D_shift::thread_tmp_5_fu_115_p2() {
    tmp_5_fu_115_p2 = (!n1_reg_93.read().is_01() || !ap_const_lv11_436.is_01())? sc_lv<1>(): sc_lv<1>(n1_reg_93.read() == ap_const_lv11_436);
}

void call_Loop_LB2D_shift::thread_tmp_7_fu_127_p2() {
    tmp_7_fu_127_p2 = (!i_0_i_i_reg_104.read().is_01() || !ap_const_lv11_780.is_01())? sc_lv<1>(): sc_lv<1>(i_0_i_i_reg_104.read() == ap_const_lv11_780);
}

void call_Loop_LB2D_shift::thread_tmp_fu_139_p4() {
    tmp_fu_139_p4 = i_0_i_i_reg_104.read().range(10, 1);
}

void call_Loop_LB2D_shift::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_5_fu_115_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_7_fu_127_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(tmp_7_fu_127_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}

