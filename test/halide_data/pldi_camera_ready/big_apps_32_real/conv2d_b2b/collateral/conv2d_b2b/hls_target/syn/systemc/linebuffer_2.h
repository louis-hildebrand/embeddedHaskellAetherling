// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _linebuffer_2_HH_
#define _linebuffer_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "call_1.h"

namespace ap_rtl {

struct linebuffer_2 : public sc_module {
    // Port declarations 16
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<32> > in_stream_V_value_V_dout;
    sc_in< sc_logic > in_stream_V_value_V_empty_n;
    sc_out< sc_logic > in_stream_V_value_V_read;
    sc_out< sc_lv<128> > out_stream_V_value_V_din;
    sc_in< sc_logic > out_stream_V_value_V_full_n;
    sc_out< sc_logic > out_stream_V_value_V_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_in< sc_logic > ap_continue;


    // Module declarations
    linebuffer_2(sc_module_name name);
    SC_HAS_PROCESS(linebuffer_2);

    ~linebuffer_2();

    sc_trace_file* mVcdFile;

    call_1* call_1_U0;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > real_start_status_reg;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > start_control_reg;
    sc_signal< sc_logic > call_1_U0_in_stream_V_value_V_read;
    sc_signal< sc_lv<128> > call_1_U0_out_stream_V_value_V_din;
    sc_signal< sc_logic > call_1_U0_out_stream_V_value_V_write;
    sc_signal< sc_logic > call_1_U0_ap_done;
    sc_signal< sc_logic > call_1_U0_ap_start;
    sc_signal< sc_logic > call_1_U0_ap_ready;
    sc_signal< sc_logic > call_1_U0_ap_idle;
    sc_signal< sc_logic > call_1_U0_ap_continue;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > call_1_U0_start_full_n;
    sc_signal< sc_logic > call_1_U0_start_write;
    static const sc_logic ap_const_logic_0;
    static const sc_logic ap_const_logic_1;
    static const bool ap_const_boolean_1;
    static const sc_lv<128> ap_const_lv128_lc_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_call_1_U0_ap_continue();
    void thread_call_1_U0_ap_start();
    void thread_call_1_U0_start_full_n();
    void thread_call_1_U0_start_write();
    void thread_in_stream_V_value_V_read();
    void thread_internal_ap_ready();
    void thread_out_stream_V_value_V_din();
    void thread_out_stream_V_value_V_write();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
};

}

using namespace ap_rtl;

#endif
