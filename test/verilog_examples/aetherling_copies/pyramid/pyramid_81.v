module sseqTupleCreator_tInt (input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
assign O_0 = I0;
assign O_1 = I1;
assign valid_down = valid_up;
endmodule

module sseqTupleAppender_tInt_n2 (input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
assign O_0 = I0_0;
assign O_1 = I0_1;
assign O_2 = I1;
assign valid_down = valid_up;
endmodule

module corebit_xor (input in0, input in1, output out);
  assign out = in0 ^ in1;
endmodule

module corebit_term (input in);

endmodule

module corebit_not (input in, output out);
  assign out = ~in;
endmodule

module corebit_eq (input I0, input I1, output O);
wire not_inst0_out;
wire xor_inst0_out;
corebit_not not_inst0(.in(xor_inst0_out), .out(not_inst0_out));
corebit_xor xor_inst0(.in0(I0), .in1(I1), .out(xor_inst0_out));
assign O = not_inst0_out;
endmodule

module corebit_const #(parameter value = 1) (output out);
  assign out = value;
endmodule

module corebit_and (input in0, input in1, output out);
  assign out = in0 & in1;
endmodule

module atomTupleCreator_t0Int_t1Int (input [7:0] I0, input [7:0] I1, output [7:0] O__0, output [7:0] O__1, output valid_down, input valid_up);
assign O__0 = I0;
assign O__1 = I1;
assign valid_down = valid_up;
endmodule

module coreir_ult #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output out);
  assign out = in0 < in1;
endmodule

module coreir_term #(parameter width = 1) (input [width-1:0] in);

endmodule

module coreir_slice #(parameter hi = 1, parameter lo = 0, parameter width = 1) (input [width-1:0] in, output [hi-lo-1:0] out);
  assign out = in[hi-1:lo];
endmodule

module coreir_shl #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output [width-1:0] out);
  assign out = in0 << in1;
endmodule

module coreir_reg #(parameter width = 1, parameter clk_posedge = 1, parameter init = 1) (input clk, input [width-1:0] in, output [width-1:0] out);
  reg [width-1:0] outReg=init;
  wire real_clk;
  assign real_clk = clk_posedge ? clk : ~clk;
  always @(posedge real_clk) begin
    outReg <= in;
  end
  assign out = outReg;
endmodule

module coreir_mux #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, input sel, output [width-1:0] out);
  assign out = sel ? in1 : in0;
endmodule

module coreir_mem #(parameter has_init = 0, parameter depth = 1, parameter width = 1) (input clk, input [width-1:0] wdata, input [$clog2(depth)-1:0] waddr, input wen, output [width-1:0] rdata, input [$clog2(depth)-1:0] raddr);
  reg [width-1:0] data[depth-1:0];
  always @(posedge clk) begin
    if (wen) begin
      data[waddr] <= wdata;
    end
  end
  assign rdata = data[raddr];
endmodule

module coreir_lshr #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output [width-1:0] out);
  assign out = in0 >> in1;
endmodule

module coreir_eq #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output out);
  assign out = in0 == in1;
endmodule

module coreir_const #(parameter width = 1, parameter value = 1) (output [width-1:0] out);
  assign out = value;
endmodule

module coreir_add #(parameter width = 1) (input [width-1:0] in0, input [width-1:0] in1, output [width-1:0] out);
  assign out = in0 + in1;
endmodule

module \commonlib_muxn__N2__width8 (input [7:0] in_data_0, input [7:0] in_data_1, input [0:0] in_sel, output [7:0] out);
wire [7:0] _join_out;
coreir_mux #(.width(8)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N2__width5 (input [4:0] in_data_0, input [4:0] in_data_1, input [0:0] in_sel, output [4:0] out);
wire [4:0] _join_out;
coreir_mux #(.width(5)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N2__width4 (input [3:0] in_data_0, input [3:0] in_data_1, input [0:0] in_sel, output [3:0] out);
wire [3:0] _join_out;
coreir_mux #(.width(4)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N2__width3 (input [2:0] in_data_0, input [2:0] in_data_1, input [0:0] in_sel, output [2:0] out);
wire [2:0] _join_out;
coreir_mux #(.width(3)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N2__width2 (input [1:0] in_data_0, input [1:0] in_data_1, input [0:0] in_sel, output [1:0] out);
wire [1:0] _join_out;
coreir_mux #(.width(2)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N2__width1 (input [0:0] in_data_0, input [0:0] in_data_1, input [0:0] in_sel, output [0:0] out);
wire [0:0] _join_out;
coreir_mux #(.width(1)) _join(.in0(in_data_0), .in1(in_data_1), .out(_join_out), .sel(in_sel[0]));
assign out = _join_out;
endmodule

module \commonlib_muxn__N1__width8 (input [7:0] in_data_0, input [0:0] in_sel, output [7:0] out);
corebit_term term_sel(.in(in_sel[0]));
assign out = in_data_0;
endmodule

module \commonlib_muxn__N3__width8 (input [7:0] in_data_0, input [7:0] in_data_1, input [7:0] in_data_2, input [1:0] in_sel, output [7:0] out);
wire [7:0] _join_out;
wire [7:0] muxN_0_out;
wire [7:0] muxN_1_out;
wire [0:0] sel_slice0_out;
wire [0:0] sel_slice1_out;
coreir_mux #(.width(8)) _join(.in0(muxN_0_out), .in1(muxN_1_out), .out(_join_out), .sel(in_sel[1]));
\commonlib_muxn__N2__width8 muxN_0(.in_data_0(in_data_0), .in_data_1(in_data_1), .in_sel(sel_slice0_out), .out(muxN_0_out));
\commonlib_muxn__N1__width8 muxN_1(.in_data_0(in_data_2), .in_sel(sel_slice1_out), .out(muxN_1_out));
coreir_slice #(.hi(1), .lo(0), .width(2)) sel_slice0(.in(in_sel), .out(sel_slice0_out));
coreir_slice #(.hi(1), .lo(0), .width(2)) sel_slice1(.in(in_sel), .out(sel_slice1_out));
assign out = _join_out;
endmodule

module lutN #(parameter N = 1, parameter init = 1) (input [N-1:0] in, output out);
  assign out = init[in];
endmodule

module \aetherlinglib_hydrate__hydratedTypeBit8 (input [7:0] in, output [7:0] out);
assign out = {in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};
endmodule

module \aetherlinglib_dehydrate__hydratedTypeBit8 (input [7:0] in, output [7:0] out);
assign out = {in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};
endmodule

module \aetherlinglib_dehydrate__hydratedTypeBit1 (input [0:0] in, output [0:0] out);
assign out = in[0];
endmodule

module \aetherlinglib_dehydrate__hydratedTypeBit (input in, output [0:0] out);
assign out = in;
endmodule

module Term_Bitt (input I);
wire [0:0] dehydrate_tBit_inst0_out;
\aetherlinglib_dehydrate__hydratedTypeBit dehydrate_tBit_inst0(.in(I), .out(dehydrate_tBit_inst0_out));
coreir_term #(.width(1)) term_w1_inst0(.in(dehydrate_tBit_inst0_out));
endmodule

module Term_Bits_1_t (input [0:0] I);
wire [0:0] dehydrate_tBits_1__inst0_out;
\aetherlinglib_dehydrate__hydratedTypeBit1 dehydrate_tBits_1__inst0(.in(I), .out(dehydrate_tBits_1__inst0_out));
coreir_term #(.width(1)) term_w1_inst0(.in(dehydrate_tBits_1__inst0_out));
endmodule

module SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse (input CE, input CLK, output [0:0] O);
wire [0:0] const_0_1_out;
Term_Bitt Term_Bitt_inst0(.I(CE));
coreir_const #(.value(1'h0), .width(1)) const_0_1(.out(const_0_1_out));
assign O = const_0_1_out;
endmodule

module RShift_Atom (input [7:0] I__0, input [7:0] I__1, output [7:0] O, output valid_down, input valid_up);
wire [7:0] lshr8_inst0_out;
coreir_lshr #(.width(8)) lshr8_inst0(.in0(I__0), .in1(I__1), .out(lshr8_inst0_out));
assign O = lshr8_inst0_out;
assign valid_down = valid_up;
endmodule

module RAM1x8 (input CLK, input [0:0] RADDR, output [7:0] RDATA, input [0:0] WADDR, input [7:0] WDATA, input WE);
wire [7:0] coreir_mem1x8_inst0_rdata;
coreir_mem #(.depth(1), .has_init(0), .width(8)) coreir_mem1x8_inst0(.clk(CLK), .raddr(RADDR), .rdata(coreir_mem1x8_inst0_rdata), .waddr(WADDR), .wdata(WDATA), .wen(WE));
assign RDATA = coreir_mem1x8_inst0_rdata;
endmodule

module RAM_Array_8_Bit_t_1n (input CLK, input [0:0] RADDR, output [7:0] RDATA, input [0:0] WADDR, input [7:0] WDATA, input WE);
wire [7:0] RAM1x8_inst0_RDATA;
wire [7:0] dehydrate_tArray_8_Bit__inst0_out;
wire [7:0] hydrate_tArray_8_Bit__inst0_out;
RAM1x8 RAM1x8_inst0(.CLK(CLK), .RADDR(RADDR), .RDATA(RAM1x8_inst0_RDATA), .WADDR(WADDR), .WDATA(dehydrate_tArray_8_Bit__inst0_out), .WE(WE));
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst0(.in(WDATA), .out(dehydrate_tArray_8_Bit__inst0_out));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Bit__inst0(.in(RAM1x8_inst0_RDATA), .out(hydrate_tArray_8_Bit__inst0_out));
assign RDATA = hydrate_tArray_8_Bit__inst0_out;
endmodule

module Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int____ (input [7:0] I, output [7:0] O, output valid_down, input valid_up);
assign O = I;
assign valid_down = valid_up;
endmodule

module Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int____ (input [7:0] I, output [7:0] O, output valid_down, input valid_up);
assign O = I;
assign valid_down = valid_up;
endmodule

module NestedCounters_Int_hasCETrue_hasResetFalse_unq1 (input CE, input CLK, output last, output valid);
wire [0:0] coreir_const11_inst0_out;
Term_Bitt Term_Bitt_inst0(.I(CE));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign last = coreir_const11_inst0_out[0];
assign valid = coreir_const11_inst0_out[0];
endmodule

module NestedCounters_Int_hasCETrue_hasResetFalse (input CE, input CLK, output last, output valid);
wire [0:0] coreir_const11_inst0_out;
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign last = coreir_const11_inst0_out[0];
assign valid = CE;
endmodule

module NativeMapParallel_n3 (input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] out_0, output [7:0] out_1, output [7:0] out_2);
wire [7:0] dehydrate_tArray_8_Bit__inst0_out;
wire [7:0] dehydrate_tArray_8_Bit__inst1_out;
wire [7:0] dehydrate_tArray_8_Bit__inst2_out;
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst0(.in(I_0), .out(dehydrate_tArray_8_Bit__inst0_out));
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst1(.in(I_1), .out(dehydrate_tArray_8_Bit__inst1_out));
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst2(.in(I_2), .out(dehydrate_tArray_8_Bit__inst2_out));
assign out_0 = dehydrate_tArray_8_Bit__inst0_out;
assign out_1 = dehydrate_tArray_8_Bit__inst1_out;
assign out_2 = dehydrate_tArray_8_Bit__inst2_out;
endmodule

module NativeMapParallel_n2_unq1 (input [7:0] I_0, input [7:0] I_1, output [7:0] out_0, output [7:0] out_1);
wire [7:0] dehydrate_tArray_8_Out_Bit___inst0_out;
wire [7:0] dehydrate_tArray_8_Out_Bit___inst1_out;
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Out_Bit___inst0(.in(I_0), .out(dehydrate_tArray_8_Out_Bit___inst0_out));
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Out_Bit___inst1(.in(I_1), .out(dehydrate_tArray_8_Out_Bit___inst1_out));
assign out_0 = dehydrate_tArray_8_Out_Bit___inst0_out;
assign out_1 = dehydrate_tArray_8_Out_Bit___inst1_out;
endmodule

module NativeMapParallel_n2 (input [7:0] I_0, input [7:0] I_1, output [7:0] out_0, output [7:0] out_1);
wire [7:0] dehydrate_tArray_8_Bit__inst0_out;
wire [7:0] dehydrate_tArray_8_Bit__inst1_out;
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst0(.in(I_0), .out(dehydrate_tArray_8_Bit__inst0_out));
\aetherlinglib_dehydrate__hydratedTypeBit8 dehydrate_tArray_8_Bit__inst1(.in(I_1), .out(dehydrate_tArray_8_Bit__inst1_out));
assign out_0 = dehydrate_tArray_8_Bit__inst0_out;
assign out_1 = dehydrate_tArray_8_Bit__inst1_out;
endmodule

module Mux_Array_8_Out_Bit__t_2n (input [7:0] data_0, input [7:0] data_1, output [7:0] out, input [0:0] sel);
wire [7:0] CommonlibMuxN_n2_w8_inst0_out;
wire [7:0] NativeMapParallel_n2_inst0_out_0;
wire [7:0] NativeMapParallel_n2_inst0_out_1;
wire [7:0] hydrate_tArray_8_Out_Bit___inst0_out;
\commonlib_muxn__N2__width8 CommonlibMuxN_n2_w8_inst0(.in_data_0(NativeMapParallel_n2_inst0_out_0), .in_data_1(NativeMapParallel_n2_inst0_out_1), .in_sel(sel), .out(CommonlibMuxN_n2_w8_inst0_out));
NativeMapParallel_n2_unq1 NativeMapParallel_n2_inst0(.I_0(data_0), .I_1(data_1), .out_0(NativeMapParallel_n2_inst0_out_0), .out_1(NativeMapParallel_n2_inst0_out_1));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Out_Bit___inst0(.in(CommonlibMuxN_n2_w8_inst0_out), .out(hydrate_tArray_8_Out_Bit___inst0_out));
assign out = hydrate_tArray_8_Out_Bit___inst0_out;
endmodule

module Mux_Array_8_Bit_t_3n (input [7:0] data_0, input [7:0] data_1, input [7:0] data_2, output [7:0] out, input [1:0] sel);
wire [7:0] CommonlibMuxN_n3_w8_inst0_out;
wire [7:0] NativeMapParallel_n3_inst0_out_0;
wire [7:0] NativeMapParallel_n3_inst0_out_1;
wire [7:0] NativeMapParallel_n3_inst0_out_2;
wire [7:0] hydrate_tArray_8_Bit__inst0_out;
\commonlib_muxn__N3__width8 CommonlibMuxN_n3_w8_inst0(.in_data_0(NativeMapParallel_n3_inst0_out_0), .in_data_1(NativeMapParallel_n3_inst0_out_1), .in_data_2(NativeMapParallel_n3_inst0_out_2), .in_sel(sel), .out(CommonlibMuxN_n3_w8_inst0_out));
NativeMapParallel_n3 NativeMapParallel_n3_inst0(.I_0(data_0), .I_1(data_1), .I_2(data_2), .out_0(NativeMapParallel_n3_inst0_out_0), .out_1(NativeMapParallel_n3_inst0_out_1), .out_2(NativeMapParallel_n3_inst0_out_2));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Bit__inst0(.in(CommonlibMuxN_n3_w8_inst0_out), .out(hydrate_tArray_8_Bit__inst0_out));
assign out = hydrate_tArray_8_Bit__inst0_out;
endmodule

module Mux_Array_8_Bit_t_2n (input [7:0] data_0, input [7:0] data_1, output [7:0] out, input [0:0] sel);
wire [7:0] CommonlibMuxN_n2_w8_inst0_out;
wire [7:0] NativeMapParallel_n2_inst0_out_0;
wire [7:0] NativeMapParallel_n2_inst0_out_1;
wire [7:0] hydrate_tArray_8_Bit__inst0_out;
\commonlib_muxn__N2__width8 CommonlibMuxN_n2_w8_inst0(.in_data_0(NativeMapParallel_n2_inst0_out_0), .in_data_1(NativeMapParallel_n2_inst0_out_1), .in_sel(sel), .out(CommonlibMuxN_n2_w8_inst0_out));
NativeMapParallel_n2 NativeMapParallel_n2_inst0(.I_0(data_0), .I_1(data_1), .out_0(NativeMapParallel_n2_inst0_out_0), .out_1(NativeMapParallel_n2_inst0_out_1));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Bit__inst0(.in(CommonlibMuxN_n2_w8_inst0_out), .out(hydrate_tArray_8_Bit__inst0_out));
assign out = hydrate_tArray_8_Bit__inst0_out;
endmodule

module Mux_Array_8_Bit_t_1n (input [7:0] data_0, output [7:0] out, input [0:0] sel);
Term_Bits_1_t Term_Bits_1_t_inst0(.I(sel));
assign out = data_0;
endmodule

module Mux2xOutBits5 (input [4:0] I0, input [4:0] I1, output [4:0] O, input S);
wire [4:0] coreir_commonlib_mux2x5_inst0_out;
\commonlib_muxn__N2__width5 coreir_commonlib_mux2x5_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x5_inst0_out));
assign O = coreir_commonlib_mux2x5_inst0_out;
endmodule

module Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5 (input CE, input CLK, input [4:0] I, output [4:0] O, input RESET);
wire [4:0] Mux2xOutBits5_inst0_O;
wire [4:0] const_0_5_out;
wire [4:0] enable_mux_O;
wire [4:0] value_out;
Mux2xOutBits5 Mux2xOutBits5_inst0(.I0(enable_mux_O), .I1(const_0_5_out), .O(Mux2xOutBits5_inst0_O), .S(RESET));
coreir_const #(.value(5'h00), .width(5)) const_0_5(.out(const_0_5_out));
Mux2xOutBits5 enable_mux(.I0(value_out), .I1(I), .O(enable_mux_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(5'h00), .width(5)) value(.clk(CLK), .in(Mux2xOutBits5_inst0_O), .out(value_out));
assign O = value_out;
endmodule

module Mux2xOutBits4 (input [3:0] I0, input [3:0] I1, output [3:0] O, input S);
wire [3:0] coreir_commonlib_mux2x4_inst0_out;
\commonlib_muxn__N2__width4 coreir_commonlib_mux2x4_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x4_inst0_out));
assign O = coreir_commonlib_mux2x4_inst0_out;
endmodule

module Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4 (input CE, input CLK, input [3:0] I, output [3:0] O, input RESET);
wire [3:0] Mux2xOutBits4_inst0_O;
wire [3:0] const_0_4_out;
wire [3:0] enable_mux_O;
wire [3:0] value_out;
Mux2xOutBits4 Mux2xOutBits4_inst0(.I0(enable_mux_O), .I1(const_0_4_out), .O(Mux2xOutBits4_inst0_O), .S(RESET));
coreir_const #(.value(4'h0), .width(4)) const_0_4(.out(const_0_4_out));
Mux2xOutBits4 enable_mux(.I0(value_out), .I1(I), .O(enable_mux_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(4'h0), .width(4)) value(.clk(CLK), .in(Mux2xOutBits4_inst0_O), .out(value_out));
assign O = value_out;
endmodule

module Mux2xOutBits3 (input [2:0] I0, input [2:0] I1, output [2:0] O, input S);
wire [2:0] coreir_commonlib_mux2x3_inst0_out;
\commonlib_muxn__N2__width3 coreir_commonlib_mux2x3_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x3_inst0_out));
assign O = coreir_commonlib_mux2x3_inst0_out;
endmodule

module Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3 (input CE, input CLK, input [2:0] I, output [2:0] O, input RESET);
wire [2:0] Mux2xOutBits3_inst0_O;
wire [2:0] const_0_3_out;
wire [2:0] enable_mux_O;
wire [2:0] value_out;
Mux2xOutBits3 Mux2xOutBits3_inst0(.I0(enable_mux_O), .I1(const_0_3_out), .O(Mux2xOutBits3_inst0_O), .S(RESET));
coreir_const #(.value(3'h0), .width(3)) const_0_3(.out(const_0_3_out));
Mux2xOutBits3 enable_mux(.I0(value_out), .I1(I), .O(enable_mux_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(3'h0), .width(3)) value(.clk(CLK), .in(Mux2xOutBits3_inst0_O), .out(value_out));
assign O = value_out;
endmodule

module Mux2xOutBits2 (input [1:0] I0, input [1:0] I1, output [1:0] O, input S);
wire [1:0] coreir_commonlib_mux2x2_inst0_out;
\commonlib_muxn__N2__width2 coreir_commonlib_mux2x2_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x2_inst0_out));
assign O = coreir_commonlib_mux2x2_inst0_out;
endmodule

module Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2 (input CE, input CLK, input [1:0] I, output [1:0] O, input RESET);
wire [1:0] Mux2xOutBits2_inst0_O;
wire [1:0] const_0_2_out;
wire [1:0] enable_mux_O;
wire [1:0] value_out;
Mux2xOutBits2 Mux2xOutBits2_inst0(.I0(enable_mux_O), .I1(const_0_2_out), .O(Mux2xOutBits2_inst0_O), .S(RESET));
coreir_const #(.value(2'h0), .width(2)) const_0_2(.out(const_0_2_out));
Mux2xOutBits2 enable_mux(.I0(value_out), .I1(I), .O(enable_mux_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(2'h0), .width(2)) value(.clk(CLK), .in(Mux2xOutBits2_inst0_O), .out(value_out));
assign O = value_out;
endmodule

module Mux2xNone (input I0, input I1, output O, input S);
wire [0:0] coreir_commonlib_mux2x1_inst0_out;
\commonlib_muxn__N2__width1 coreir_commonlib_mux2x1_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x1_inst0_out));
assign O = coreir_commonlib_mux2x1_inst0_out[0];
endmodule

module Map_T_n3_i0_unq3 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O__0, output [7:0] O__1, output valid_down, input valid_up);
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__1;
wire atomTupleCreator_t0Int_t1Int_inst0_valid_down;
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst0(.I0(I0), .I1(I1), .O__0(atomTupleCreator_t0Int_t1Int_inst0_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst0_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst0_valid_down), .valid_up(valid_up));
assign O__0 = atomTupleCreator_t0Int_t1Int_inst0_O__0;
assign O__1 = atomTupleCreator_t0Int_t1Int_inst0_O__1;
assign valid_down = atomTupleCreator_t0Int_t1Int_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq3 (input CLK, input [7:0] I__0, input [7:0] I__1, output [7:0] O, output valid_down, input valid_up);
wire [7:0] RShift_Atom_inst0_O;
wire RShift_Atom_inst0_valid_down;
RShift_Atom RShift_Atom_inst0(.I__0(I__0), .I__1(I__1), .O(RShift_Atom_inst0_O), .valid_down(RShift_Atom_inst0_valid_down), .valid_up(valid_up));
assign O = RShift_Atom_inst0_O;
assign valid_down = RShift_Atom_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq2 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O__0, output [7:0] O__1, output valid_down, input valid_up);
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__1;
wire atomTupleCreator_t0Int_t1Int_inst0_valid_down;
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst0(.I0(I0), .I1(I1), .O__0(atomTupleCreator_t0Int_t1Int_inst0_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst0_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst0_valid_down), .valid_up(valid_up));
assign O__0 = atomTupleCreator_t0Int_t1Int_inst0_O__0;
assign O__1 = atomTupleCreator_t0Int_t1Int_inst0_O__1;
assign valid_down = atomTupleCreator_t0Int_t1Int_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq1 (input CLK, input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_0;
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_1;
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_2;
wire sseqTupleAppender_tInt_n2_inst0_valid_down;
sseqTupleAppender_tInt_n2 sseqTupleAppender_tInt_n2_inst0(.I0_0(I0_0), .I0_1(I0_1), .I1(I1), .O_0(sseqTupleAppender_tInt_n2_inst0_O_0), .O_1(sseqTupleAppender_tInt_n2_inst0_O_1), .O_2(sseqTupleAppender_tInt_n2_inst0_O_2), .valid_down(sseqTupleAppender_tInt_n2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = sseqTupleAppender_tInt_n2_inst0_O_0;
assign O_1 = sseqTupleAppender_tInt_n2_inst0_O_1;
assign O_2 = sseqTupleAppender_tInt_n2_inst0_O_2;
assign valid_down = sseqTupleAppender_tInt_n2_inst0_valid_down;
endmodule

module Map_T_n3_i0_unq1 (input CLK, input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire [7:0] Map_T_n1_i2_inst0_O_2;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq1 Map_T_n1_i2_inst0(.CLK(CLK), .I0_0(I0_0), .I0_1(I0_1), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .O_2(Map_T_n1_i2_inst0_O_2), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign O_2 = Map_T_n1_i2_inst0_O_2;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq1 (input CLK, input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0;
wire [7:0] Map_T_n3_i0_inst0_O_1;
wire [7:0] Map_T_n3_i0_inst0_O_2;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq1 Map_T_n3_i0_inst0(.CLK(CLK), .I0_0(I0_0), .I0_1(I0_1), .I1(I1), .O_0(Map_T_n3_i0_inst0_O_0), .O_1(Map_T_n3_i0_inst0_O_1), .O_2(Map_T_n3_i0_inst0_O_2), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n3_i0_inst0_O_0;
assign O_1 = Map_T_n3_i0_inst0_O_1;
assign O_2 = Map_T_n3_i0_inst0_O_2;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq5 (input CLK, input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire [7:0] Map_T_n1_i2_inst0_O_2;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq1 Map_T_n1_i2_inst0(.CLK(CLK), .I0_0(I0_0), .I0_1(I0_1), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .O_2(Map_T_n1_i2_inst0_O_2), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign O_2 = Map_T_n1_i2_inst0_O_2;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq6 (input CLK, input [7:0] I0_0, input [7:0] I0_1, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire [7:0] Map_T_n1_i2_inst0_O_2;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq5 Map_T_n1_i2_inst0(.CLK(CLK), .I0_0(I0_0), .I0_1(I0_1), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .O_2(Map_T_n1_i2_inst0_O_2), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign O_2 = Map_T_n1_i2_inst0_O_2;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n1_i2 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
wire [7:0] sseqTupleCreator_tInt_inst0_O_0;
wire [7:0] sseqTupleCreator_tInt_inst0_O_1;
wire sseqTupleCreator_tInt_inst0_valid_down;
sseqTupleCreator_tInt sseqTupleCreator_tInt_inst0(.I0(I0), .I1(I1), .O_0(sseqTupleCreator_tInt_inst0_O_0), .O_1(sseqTupleCreator_tInt_inst0_O_1), .valid_down(sseqTupleCreator_tInt_inst0_valid_down), .valid_up(valid_up));
assign O_0 = sseqTupleCreator_tInt_inst0_O_0;
assign O_1 = sseqTupleCreator_tInt_inst0_O_1;
assign valid_down = sseqTupleCreator_tInt_inst0_valid_down;
endmodule

module Map_T_n3_i0 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2 Map_T_n1_i2_inst0(.CLK(CLK), .I0(I0), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n9_i0 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0;
wire [7:0] Map_T_n3_i0_inst0_O_1;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0 Map_T_n3_i0_inst0(.CLK(CLK), .I0(I0), .I1(I1), .O_0(Map_T_n3_i0_inst0_O_0), .O_1(Map_T_n3_i0_inst0_O_1), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n3_i0_inst0_O_0;
assign O_1 = Map_T_n3_i0_inst0_O_1;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq4 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2 Map_T_n1_i2_inst0(.CLK(CLK), .I0(I0), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq5 (input CLK, input [7:0] I0, input [7:0] I1, output [7:0] O_0, output [7:0] O_1, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq4 Map_T_n1_i2_inst0(.CLK(CLK), .I0(I0), .I1(I1), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module LUT4_4096 (input I0, input I1, input I2, input I3, output O);
wire coreir_lut4_inst0_out;
lutN #(.init(16'h1000), .N(4)) coreir_lut4_inst0(.in({I3,I2,I1,I0}), .out(coreir_lut4_inst0_out));
assign O = coreir_lut4_inst0_out;
endmodule

module LUT4_32768 (input I0, input I1, input I2, input I3, output O);
wire coreir_lut4_inst0_out;
lutN #(.init(16'h8000), .N(4)) coreir_lut4_inst0(.in({I3,I2,I1,I0}), .out(coreir_lut4_inst0_out));
assign O = coreir_lut4_inst0_out;
endmodule

module LUT3_64 (input I0, input I1, input I2, output O);
wire coreir_lut3_inst0_out;
lutN #(.init(8'h40), .N(3)) coreir_lut3_inst0(.in({I2,I1,I0}), .out(coreir_lut3_inst0_out));
assign O = coreir_lut3_inst0_out;
endmodule

module LUT3_32 (input I0, input I1, input I2, output O);
wire coreir_lut3_inst0_out;
lutN #(.init(8'h20), .N(3)) coreir_lut3_inst0(.in({I2,I1,I0}), .out(coreir_lut3_inst0_out));
assign O = coreir_lut3_inst0_out;
endmodule

module LUT2_8 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h8), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT2_4 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h4), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT2_2 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h2), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT2_1 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h1), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT2_0 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h0), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT_Array_8_Bit_t_3n_unq1 (input CLK, input [1:0] addr, output [7:0] data);
wire LUT2_0_inst0_O;
wire LUT2_0_inst1_O;
wire LUT2_0_inst2_O;
wire LUT2_0_inst3_O;
wire LUT2_0_inst4_O;
wire LUT2_0_inst5_O;
wire LUT2_0_inst6_O;
wire LUT2_1_inst0_O;
wire [7:0] hydrate_tArray_8_Bit__inst0_out;
LUT2_0 LUT2_0_inst0(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst0_O));
LUT2_0 LUT2_0_inst1(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst1_O));
LUT2_0 LUT2_0_inst2(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst2_O));
LUT2_0 LUT2_0_inst3(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst3_O));
LUT2_0 LUT2_0_inst4(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst4_O));
LUT2_0 LUT2_0_inst5(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst5_O));
LUT2_0 LUT2_0_inst6(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst6_O));
LUT2_1 LUT2_1_inst0(.I0(addr[0]), .I1(addr[1]), .O(LUT2_1_inst0_O));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Bit__inst0(.in({LUT2_0_inst6_O,LUT2_0_inst5_O,LUT2_0_inst4_O,LUT2_0_inst3_O,LUT2_0_inst2_O,LUT2_0_inst1_O,LUT2_1_inst0_O,LUT2_0_inst0_O}), .out(hydrate_tArray_8_Bit__inst0_out));
assign data = hydrate_tArray_8_Bit__inst0_out;
endmodule

module LUT_Array_8_Bit_t_3n (input CLK, input [1:0] addr, output [7:0] data);
wire LUT2_0_inst0_O;
wire LUT2_0_inst1_O;
wire LUT2_0_inst2_O;
wire LUT2_0_inst3_O;
wire LUT2_0_inst4_O;
wire LUT2_0_inst5_O;
wire LUT2_0_inst6_O;
wire LUT2_2_inst0_O;
wire [7:0] hydrate_tArray_8_Bit__inst0_out;
LUT2_0 LUT2_0_inst0(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst0_O));
LUT2_0 LUT2_0_inst1(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst1_O));
LUT2_0 LUT2_0_inst2(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst2_O));
LUT2_0 LUT2_0_inst3(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst3_O));
LUT2_0 LUT2_0_inst4(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst4_O));
LUT2_0 LUT2_0_inst5(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst5_O));
LUT2_0 LUT2_0_inst6(.I0(addr[0]), .I1(addr[1]), .O(LUT2_0_inst6_O));
LUT2_2 LUT2_2_inst0(.I0(addr[0]), .I1(addr[1]), .O(LUT2_2_inst0_O));
\aetherlinglib_hydrate__hydratedTypeBit8 hydrate_tArray_8_Bit__inst0(.in({LUT2_0_inst6_O,LUT2_0_inst5_O,LUT2_0_inst4_O,LUT2_0_inst3_O,LUT2_0_inst2_O,LUT2_0_inst1_O,LUT2_0_inst0_O,LUT2_2_inst0_O}), .out(hydrate_tArray_8_Bit__inst0_out));
assign data = hydrate_tArray_8_Bit__inst0_out;
endmodule

module LUT1_1 (input I0, output O);
wire coreir_lut1_inst0_out;
lutN #(.init(2'h1), .N(1)) coreir_lut1_inst0(.in(I0), .out(coreir_lut1_inst0_out));
assign O = coreir_lut1_inst0_out;
endmodule

module LShift_Atom (input [7:0] I__0, input [7:0] I__1, output [7:0] O, output valid_down, input valid_up);
wire [7:0] shl8_inst0_out;
coreir_shl #(.width(8)) shl8_inst0(.in0(I__0), .in1(I__1), .out(shl8_inst0_out));
assign O = shl8_inst0_out;
assign valid_down = valid_up;
endmodule

module Map_T_n3_i0_unq4 (input CLK, input [7:0] I__0, input [7:0] I__1, output [7:0] O, output valid_down, input valid_up);
wire [7:0] LShift_Atom_inst0_O;
wire LShift_Atom_inst0_valid_down;
LShift_Atom LShift_Atom_inst0(.I__0(I__0), .I__1(I__1), .O(LShift_Atom_inst0_O), .valid_down(LShift_Atom_inst0_valid_down), .valid_up(valid_up));
assign O = LShift_Atom_inst0_O;
assign valid_down = LShift_Atom_inst0_valid_down;
endmodule

module Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
assign O = I;
assign valid_down = valid_up;
endmodule

module Map_T_n1_i2_unq8 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_O;
wire Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_valid_down;
Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0(.CLK(CLK), .I(I), .O(Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_O), .valid_down(Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_valid_down), .valid_up(valid_up));
assign O = Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_O;
assign valid_down = Down_S_n1_i2_sel0_tElTSeq_1_2_Int__vTrue_inst0_valid_down;
endmodule

module Decode185 (input [4:0] I, output O);
wire [4:0] const_18_5_out;
wire coreir_eq_5_inst0_out;
coreir_const #(.value(5'h12), .width(5)) const_18_5(.out(const_18_5_out));
coreir_eq #(.width(5)) coreir_eq_5_inst0(.in0(I), .in1(const_18_5_out), .out(coreir_eq_5_inst0_out));
assign O = coreir_eq_5_inst0_out;
endmodule

module DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse (input CE, input CLK, input I, output O);
wire Mux2xNone_inst0_O;
wire [0:0] reg_P_inst0_out;
Mux2xNone Mux2xNone_inst0(.I0(reg_P_inst0_out[0]), .I1(I), .O(Mux2xNone_inst0_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(1'h0), .width(1)) reg_P_inst0(.clk(CLK), .in(Mux2xNone_inst0_O), .out(reg_P_inst0_out));
assign O = reg_P_inst0_out[0];
endmodule

module Register8CE (input CE, input CLK, input [7:0] I, output [7:0] O);
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst0_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst1_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst2_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst3_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst4_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst5_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst6_O;
wire DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst7_O;
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst0(.CE(CE), .CLK(CLK), .I(I[0]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst0_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst1(.CE(CE), .CLK(CLK), .I(I[1]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst1_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst2(.CE(CE), .CLK(CLK), .I(I[2]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst2_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst3(.CE(CE), .CLK(CLK), .I(I[3]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst3_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst4(.CE(CE), .CLK(CLK), .I(I[4]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst4_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst5(.CE(CE), .CLK(CLK), .I(I[5]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst5_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst6(.CE(CE), .CLK(CLK), .I(I[6]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst6_O));
DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst7(.CE(CE), .CLK(CLK), .I(I[7]), .O(DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst7_O));
assign O = {DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst7_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst6_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst5_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst4_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst3_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst2_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst1_O,DFF_init0_has_ceTrue_has_resetFalse_has_async_resetFalse_inst0_O};
endmodule

module Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET (input CE, input CLK, input [7:0] I, output [7:0] O);
wire [7:0] Register8CE_inst0_O;
Register8CE Register8CE_inst0(.CE(CE), .CLK(CLK), .I(I), .O(Register8CE_inst0_O));
assign O = Register8CE_inst0_O;
endmodule

module Register_Array_8_Bit_t_0init_TrueCE_FalseRESET (input CE, input CLK, input [7:0] I, output [7:0] O);
wire [7:0] Register8CE_inst0_O;
Register8CE Register8CE_inst0(.CE(CE), .CLK(CLK), .I(I), .O(Register8CE_inst0_O));
assign O = Register8CE_inst0_O;
endmodule

module DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse (input CLK, input I, output O);
wire [0:0] reg_P_inst0_out;
coreir_reg #(.clk_posedge(1), .init(1'h0), .width(1)) reg_P_inst0(.clk(CLK), .in(I), .out(reg_P_inst0_out));
assign O = reg_P_inst0_out[0];
endmodule

module Register8 (input CLK, input [7:0] I, output [7:0] O);
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst1_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst2_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst3_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst4_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst5_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst6_O;
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst7_O;
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0(.CLK(CLK), .I(I[0]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst1(.CLK(CLK), .I(I[1]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst1_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst2(.CLK(CLK), .I(I[2]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst2_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst3(.CLK(CLK), .I(I[3]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst3_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst4(.CLK(CLK), .I(I[4]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst4_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst5(.CLK(CLK), .I(I[5]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst5_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst6(.CLK(CLK), .I(I[6]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst6_O));
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst7(.CLK(CLK), .I(I[7]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst7_O));
assign O = {DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst7_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst6_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst5_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst4_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst3_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst2_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst1_O,DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O};
endmodule

module Register_Array_8_Bit_t_0init_FalseCE_FalseRESET (input CLK, input [7:0] I, output [7:0] O);
wire [7:0] Register8_inst0_O;
Register8 Register8_inst0(.CLK(CLK), .I(I), .O(Register8_inst0_O));
assign O = Register8_inst0_O;
endmodule

module Register1 (input CLK, input [0:0] I, output [0:0] O);
wire DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O;
DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0(.CLK(CLK), .I(I[0]), .O(DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O));
assign O = DFF_init0_has_ceFalse_has_resetFalse_has_async_resetFalse_inst0_O;
endmodule

module Register_Bitt_0init_FalseCE_FalseRESET (input CLK, input I, output O);
wire [0:0] Register1_inst0_O;
Register1 Register1_inst0(.CLK(CLK), .I(I), .O(Register1_inst0_O));
assign O = Register1_inst0_O[0];
endmodule

module FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
wire Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
Register_Array_8_Bit_t_0init_FalseCE_FalseRESET Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(I), .O(Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O));
Register_Bitt_0init_FalseCE_FalseRESET Register_Bitt_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(valid_up), .O(Register_Bitt_0init_FalseCE_FalseRESET_inst0_O));
assign O = Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
assign valid_down = Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
endmodule

module FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
wire Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
Register_Array_8_Bit_t_0init_FalseCE_FalseRESET Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(I), .O(Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O));
Register_Bitt_0init_FalseCE_FalseRESET Register_Bitt_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(valid_up), .O(Register_Bitt_0init_FalseCE_FalseRESET_inst0_O));
assign O = Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
assign valid_down = Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
endmodule

module Counter5CER (input CE, input CLK, output [4:0] O, input RESET);
wire [4:0] Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5_inst0_O;
wire [4:0] const_1_5_out;
wire [4:0] coreir_add5_inst0_out;
Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5 Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5_inst0(.CE(CE), .CLK(CLK), .I(coreir_add5_inst0_out), .O(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5_inst0_O), .RESET(RESET));
coreir_const #(.value(5'h01), .width(5)) const_1_5(.out(const_1_5_out));
coreir_add #(.width(5)) coreir_add5_inst0(.in0(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5_inst0_O), .in1(const_1_5_out), .out(coreir_add5_inst0_out));
assign O = Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_5_inst0_O;
endmodule

module Counter5_Mod19CE (input CE, input CLK, output [4:0] O);
wire [4:0] Counter5CER_inst0_O;
wire Decode185_inst0_O;
wire and_inst0_out;
Counter5CER Counter5CER_inst0(.CE(CE), .CLK(CLK), .O(Counter5CER_inst0_O), .RESET(and_inst0_out));
Decode185 Decode185_inst0(.I(Counter5CER_inst0_O), .O(Decode185_inst0_O));
corebit_and and_inst0(.in0(Decode185_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter5CER_inst0_O;
endmodule

module InitialDelayCounter_18 (input CE, input CLK, output valid);
wire [4:0] Counter5_Mod19CE_inst0_O;
wire and_inst0_out;
wire [4:0] coreir_const518_inst0_out;
wire coreir_eq_5_inst0_out;
wire coreir_ult5_inst0_out;
Counter5_Mod19CE Counter5_Mod19CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter5_Mod19CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult5_inst0_out), .out(and_inst0_out));
coreir_const #(.value(5'h12), .width(5)) coreir_const518_inst0(.out(coreir_const518_inst0_out));
coreir_eq #(.width(5)) coreir_eq_5_inst0(.in0(Counter5_Mod19CE_inst0_O), .in1(coreir_const518_inst0_out), .out(coreir_eq_5_inst0_out));
coreir_ult #(.width(5)) coreir_ult5_inst0(.in0(Counter5_Mod19CE_inst0_O), .in1(coreir_const518_inst0_out), .out(coreir_ult5_inst0_out));
assign valid = coreir_eq_5_inst0_out;
endmodule

module Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire InitialDelayCounter_18_inst0_valid;
InitialDelayCounter_18 InitialDelayCounter_18_inst0(.CE(valid_up), .CLK(CLK), .valid(InitialDelayCounter_18_inst0_valid));
assign O = I;
assign valid_down = InitialDelayCounter_18_inst0_valid;
endmodule

module Module_2 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_O;
wire Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst0_O;
wire Map_T_n1_i2_inst0_valid_down;
Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0(.CLK(CLK), .I(I), .O(Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_O), .valid_down(Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n1_i2_unq8 Map_T_n1_i2_inst0(.CLK(CLK), .I(Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_O), .O(Map_T_n1_i2_inst0_O), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(Down_S_n3_i0_sel2_tElTSeq_1_2_TSeq_1_2_Int___vTrue_inst0_valid_down));
assign O = Map_T_n1_i2_inst0_O;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n3_i0_unq6 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Module_2_inst0_O;
wire Module_2_inst0_valid_down;
Module_2 Module_2_inst0(.CLK(CLK), .I(I), .O(Module_2_inst0_O), .valid_down(Module_2_inst0_valid_down), .valid_up(valid_up));
assign O = Module_2_inst0_O;
assign valid_down = Module_2_inst0_valid_down;
endmodule

module Counter4CER (input CE, input CLK, output [3:0] O, input RESET);
wire [3:0] Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4_inst0_O;
wire [3:0] const_1_4_out;
wire [3:0] coreir_add4_inst0_out;
Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4 Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4_inst0(.CE(CE), .CLK(CLK), .I(coreir_add4_inst0_out), .O(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4_inst0_O), .RESET(RESET));
coreir_const #(.value(4'h1), .width(4)) const_1_4(.out(const_1_4_out));
coreir_add #(.width(4)) coreir_add4_inst0(.in0(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4_inst0_O), .in1(const_1_4_out), .out(coreir_add4_inst0_out));
assign O = Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_4_inst0_O;
endmodule

module Counter4_Mod16CE (input CE, input CLK, output [3:0] O);
wire [3:0] Counter4CER_inst0_O;
wire LUT4_32768_inst0_O;
wire and_inst0_out;
Counter4CER Counter4CER_inst0(.CE(CE), .CLK(CLK), .O(Counter4CER_inst0_O), .RESET(and_inst0_out));
LUT4_32768 LUT4_32768_inst0(.I0(Counter4CER_inst0_O[0]), .I1(Counter4CER_inst0_O[1]), .I2(Counter4CER_inst0_O[2]), .I3(Counter4CER_inst0_O[3]), .O(LUT4_32768_inst0_O));
corebit_and and_inst0(.in0(LUT4_32768_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter4CER_inst0_O;
endmodule

module InitialDelayCounter_15 (input CE, input CLK, output valid);
wire [3:0] Counter4_Mod16CE_inst0_O;
wire and_inst0_out;
wire [3:0] coreir_const415_inst0_out;
wire coreir_eq_4_inst0_out;
wire coreir_ult4_inst0_out;
Counter4_Mod16CE Counter4_Mod16CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter4_Mod16CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult4_inst0_out), .out(and_inst0_out));
coreir_const #(.value(4'hf), .width(4)) coreir_const415_inst0(.out(coreir_const415_inst0_out));
coreir_eq #(.width(4)) coreir_eq_4_inst0(.in0(Counter4_Mod16CE_inst0_O), .in1(coreir_const415_inst0_out), .out(coreir_eq_4_inst0_out));
coreir_ult #(.width(4)) coreir_ult4_inst0(.in0(Counter4_Mod16CE_inst0_O), .in1(coreir_const415_inst0_out), .out(coreir_ult4_inst0_out));
assign valid = coreir_eq_4_inst0_out;
endmodule

module Counter4_Mod13CE (input CE, input CLK, output [3:0] O);
wire [3:0] Counter4CER_inst0_O;
wire LUT4_4096_inst0_O;
wire and_inst0_out;
Counter4CER Counter4CER_inst0(.CE(CE), .CLK(CLK), .O(Counter4CER_inst0_O), .RESET(and_inst0_out));
LUT4_4096 LUT4_4096_inst0(.I0(Counter4CER_inst0_O[0]), .I1(Counter4CER_inst0_O[1]), .I2(Counter4CER_inst0_O[2]), .I3(Counter4CER_inst0_O[3]), .O(LUT4_4096_inst0_O));
corebit_and and_inst0(.in0(LUT4_4096_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter4CER_inst0_O;
endmodule

module InitialDelayCounter_12 (input CE, input CLK, output valid);
wire [3:0] Counter4_Mod13CE_inst0_O;
wire and_inst0_out;
wire [3:0] coreir_const412_inst0_out;
wire coreir_eq_4_inst0_out;
wire coreir_ult4_inst0_out;
Counter4_Mod13CE Counter4_Mod13CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter4_Mod13CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult4_inst0_out), .out(and_inst0_out));
coreir_const #(.value(4'hc), .width(4)) coreir_const412_inst0(.out(coreir_const412_inst0_out));
coreir_eq #(.width(4)) coreir_eq_4_inst0(.in0(Counter4_Mod13CE_inst0_O), .in1(coreir_const412_inst0_out), .out(coreir_eq_4_inst0_out));
coreir_ult #(.width(4)) coreir_ult4_inst0(.in0(Counter4_Mod13CE_inst0_O), .in1(coreir_const412_inst0_out), .out(coreir_ult4_inst0_out));
assign valid = coreir_eq_4_inst0_out;
endmodule

module Counter3CER (input CE, input CLK, output [2:0] O, input RESET);
wire [2:0] Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3_inst0_O;
wire [2:0] const_1_3_out;
wire [2:0] coreir_add3_inst0_out;
Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3 Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3_inst0(.CE(CE), .CLK(CLK), .I(coreir_add3_inst0_out), .O(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3_inst0_O), .RESET(RESET));
coreir_const #(.value(3'h1), .width(3)) const_1_3(.out(const_1_3_out));
coreir_add #(.width(3)) coreir_add3_inst0(.in0(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3_inst0_O), .in1(const_1_3_out), .out(coreir_add3_inst0_out));
assign O = Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_3_inst0_O;
endmodule

module Counter3_Mod7CE (input CE, input CLK, output [2:0] O);
wire [2:0] Counter3CER_inst0_O;
wire LUT3_64_inst0_O;
wire and_inst0_out;
Counter3CER Counter3CER_inst0(.CE(CE), .CLK(CLK), .O(Counter3CER_inst0_O), .RESET(and_inst0_out));
LUT3_64 LUT3_64_inst0(.I0(Counter3CER_inst0_O[0]), .I1(Counter3CER_inst0_O[1]), .I2(Counter3CER_inst0_O[2]), .O(LUT3_64_inst0_O));
corebit_and and_inst0(.in0(LUT3_64_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter3CER_inst0_O;
endmodule

module InitialDelayCounter_6 (input CE, input CLK, output valid);
wire [2:0] Counter3_Mod7CE_inst0_O;
wire and_inst0_out;
wire [2:0] coreir_const36_inst0_out;
wire coreir_eq_3_inst0_out;
wire coreir_ult3_inst0_out;
Counter3_Mod7CE Counter3_Mod7CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter3_Mod7CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult3_inst0_out), .out(and_inst0_out));
coreir_const #(.value(3'h6), .width(3)) coreir_const36_inst0(.out(coreir_const36_inst0_out));
coreir_eq #(.width(3)) coreir_eq_3_inst0(.in0(Counter3_Mod7CE_inst0_O), .in1(coreir_const36_inst0_out), .out(coreir_eq_3_inst0_out));
coreir_ult #(.width(3)) coreir_ult3_inst0(.in0(Counter3_Mod7CE_inst0_O), .in1(coreir_const36_inst0_out), .out(coreir_ult3_inst0_out));
assign valid = coreir_eq_3_inst0_out;
endmodule

module Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire InitialDelayCounter_6_inst0_valid;
InitialDelayCounter_6 InitialDelayCounter_6_inst0(.CE(valid_up), .CLK(CLK), .valid(InitialDelayCounter_6_inst0_valid));
assign O = I;
assign valid_down = InitialDelayCounter_6_inst0_valid;
endmodule

module Map_T_n9_i0_unq4 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_O;
wire Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_valid_down;
Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0(.CLK(CLK), .I(I), .O(Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_O), .valid_down(Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_valid_down), .valid_up(valid_up));
assign O = Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_O;
assign valid_down = Down_S_n3_i0_sel2_tElTSeq_1_2_Int__vTrue_inst0_valid_down;
endmodule

module Counter3_Mod6CE (input CE, input CLK, output [2:0] O);
wire [2:0] Counter3CER_inst0_O;
wire LUT3_32_inst0_O;
wire and_inst0_out;
Counter3CER Counter3CER_inst0(.CE(CE), .CLK(CLK), .O(Counter3CER_inst0_O), .RESET(and_inst0_out));
LUT3_32 LUT3_32_inst0(.I0(Counter3CER_inst0_O[0]), .I1(Counter3CER_inst0_O[1]), .I2(Counter3CER_inst0_O[2]), .O(LUT3_32_inst0_O));
corebit_and and_inst0(.in0(LUT3_32_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter3CER_inst0_O;
endmodule

module InitialDelayCounter_5 (input CE, input CLK, output valid);
wire [2:0] Counter3_Mod6CE_inst0_O;
wire and_inst0_out;
wire [2:0] coreir_const35_inst0_out;
wire coreir_eq_3_inst0_out;
wire coreir_ult3_inst0_out;
Counter3_Mod6CE Counter3_Mod6CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter3_Mod6CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult3_inst0_out), .out(and_inst0_out));
coreir_const #(.value(3'h5), .width(3)) coreir_const35_inst0(.out(coreir_const35_inst0_out));
coreir_eq #(.width(3)) coreir_eq_3_inst0(.in0(Counter3_Mod6CE_inst0_O), .in1(coreir_const35_inst0_out), .out(coreir_eq_3_inst0_out));
coreir_ult #(.width(3)) coreir_ult3_inst0(.in0(Counter3_Mod6CE_inst0_O), .in1(coreir_const35_inst0_out), .out(coreir_ult3_inst0_out));
assign valid = coreir_eq_3_inst0_out;
endmodule

module Counter2CER (input CE, input CLK, output [1:0] O, input RESET);
wire [1:0] Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2_inst0_O;
wire [1:0] const_1_2_out;
wire [1:0] coreir_add2_inst0_out;
Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2 Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2_inst0(.CE(CE), .CLK(CLK), .I(coreir_add2_inst0_out), .O(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2_inst0_O), .RESET(RESET));
coreir_const #(.value(2'h1), .width(2)) const_1_2(.out(const_1_2_out));
coreir_add #(.width(2)) coreir_add2_inst0(.in0(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2_inst0_O), .in1(const_1_2_out), .out(coreir_add2_inst0_out));
assign O = Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_2_inst0_O;
endmodule

module Counter2_Mod4CE (input CE, input CLK, output [1:0] O);
wire [1:0] Counter2CER_inst0_O;
wire LUT2_8_inst0_O;
wire and_inst0_out;
Counter2CER Counter2CER_inst0(.CE(CE), .CLK(CLK), .O(Counter2CER_inst0_O), .RESET(and_inst0_out));
LUT2_8 LUT2_8_inst0(.I0(Counter2CER_inst0_O[0]), .I1(Counter2CER_inst0_O[1]), .O(LUT2_8_inst0_O));
corebit_and and_inst0(.in0(LUT2_8_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter2CER_inst0_O;
endmodule

module InitialDelayCounter_3 (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod4CE_inst0_O;
wire and_inst0_out;
wire [1:0] coreir_const23_inst0_out;
wire coreir_eq_2_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod4CE Counter2_Mod4CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter2_Mod4CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
coreir_const #(.value(2'h3), .width(2)) coreir_const23_inst0(.out(coreir_const23_inst0_out));
coreir_eq #(.width(2)) coreir_eq_2_inst0(.in0(Counter2_Mod4CE_inst0_O), .in1(coreir_const23_inst0_out), .out(coreir_eq_2_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod4CE_inst0_O), .in1(coreir_const23_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = coreir_eq_2_inst0_out;
endmodule

module Counter2_Mod3CE_COUT (input CE, input CLK, output COUT, output [1:0] O);
wire [1:0] Counter2CER_inst0_O;
wire LUT2_4_inst0_O;
wire and_inst0_out;
Counter2CER Counter2CER_inst0(.CE(CE), .CLK(CLK), .O(Counter2CER_inst0_O), .RESET(and_inst0_out));
LUT2_4 LUT2_4_inst0(.I0(Counter2CER_inst0_O[0]), .I1(Counter2CER_inst0_O[1]), .O(LUT2_4_inst0_O));
corebit_and and_inst0(.in0(LUT2_4_inst0_O), .in1(CE), .out(and_inst0_out));
assign COUT = and_inst0_out;
assign O = Counter2CER_inst0_O;
endmodule

module Counter2_Mod3CE (input CE, input CLK, output [1:0] O);
wire [1:0] Counter2CER_inst0_O;
wire LUT2_4_inst0_O;
wire and_inst0_out;
Counter2CER Counter2CER_inst0(.CE(CE), .CLK(CLK), .O(Counter2CER_inst0_O), .RESET(and_inst0_out));
LUT2_4 LUT2_4_inst0(.I0(Counter2CER_inst0_O[0]), .I1(Counter2CER_inst0_O[1]), .O(LUT2_4_inst0_O));
corebit_and and_inst0(.in0(LUT2_4_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter2CER_inst0_O;
endmodule

module serialize_tInt_n3_i0_hasRESETFalse (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O, output valid_down, input valid_up);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire LUT2_1_inst0_O;
wire [7:0] Mux_Array_8_Bit_t_2n_inst0_out;
wire [7:0] Mux_Array_8_Bit_t_3n_inst0_out;
wire [0:0] Register1_inst0_O;
wire [7:0] Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
wire [7:0] Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst0_O;
wire [7:0] Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst1_O;
wire and_inst0_out;
wire and_inst1_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(valid_up), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
LUT2_1 LUT2_1_inst0(.I0(Counter2_Mod3CE_inst0_O[0]), .I1(Counter2_Mod3CE_inst0_O[1]), .O(LUT2_1_inst0_O));
Mux_Array_8_Bit_t_2n Mux_Array_8_Bit_t_2n_inst0(.data_0(Mux_Array_8_Bit_t_3n_inst0_out), .data_1(I_0), .out(Mux_Array_8_Bit_t_2n_inst0_out), .sel(LUT2_1_inst0_O));
Mux_Array_8_Bit_t_3n Mux_Array_8_Bit_t_3n_inst0(.data_0(Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst0_O), .data_1(Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst0_O), .data_2(Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst1_O), .out(Mux_Array_8_Bit_t_3n_inst0_out), .sel(Counter2_Mod3CE_inst0_O));
Register1 Register1_inst0(.CLK(CLK), .I(valid_up), .O(Register1_inst0_O));
Register_Array_8_Bit_t_0init_FalseCE_FalseRESET Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(Mux_Array_8_Bit_t_2n_inst0_out), .O(Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O));
Register_Array_8_Bit_t_0init_TrueCE_FalseRESET Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst0(.CE(and_inst0_out), .CLK(CLK), .I(I_1), .O(Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst0_O));
Register_Array_8_Bit_t_0init_TrueCE_FalseRESET Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst1(.CE(and_inst1_out), .CLK(CLK), .I(I_2), .O(Register_Array_8_Bit_t_0init_TrueCE_FalseRESET_inst1_O));
corebit_and and_inst0(.in0(LUT2_1_inst0_O), .in1(valid_up), .out(and_inst0_out));
corebit_and and_inst1(.in0(LUT2_1_inst0_O), .in1(valid_up), .out(and_inst1_out));
assign O = Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
assign valid_down = Register1_inst0_O[0];
endmodule

module Map_T_n3_i0_unq2 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O, output valid_down, input valid_up);
wire [7:0] serialize_tInt_n3_i0_hasRESETFalse_inst0_O;
wire serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down;
serialize_tInt_n3_i0_hasRESETFalse serialize_tInt_n3_i0_hasRESETFalse_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O(serialize_tInt_n3_i0_hasRESETFalse_inst0_O), .valid_down(serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down), .valid_up(valid_up));
assign O = serialize_tInt_n3_i0_hasRESETFalse_inst0_O;
assign valid_down = serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq2 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq2 Map_T_n3_i0_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O(Map_T_n3_i0_inst0_O), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O = Map_T_n3_i0_inst0_O;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq6 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O, output valid_down, input valid_up);
wire [7:0] serialize_tInt_n3_i0_hasRESETFalse_inst0_O;
wire serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down;
serialize_tInt_n3_i0_hasRESETFalse serialize_tInt_n3_i0_hasRESETFalse_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O(serialize_tInt_n3_i0_hasRESETFalse_inst0_O), .valid_down(serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down), .valid_up(valid_up));
assign O = serialize_tInt_n3_i0_hasRESETFalse_inst0_O;
assign valid_down = serialize_tInt_n3_i0_hasRESETFalse_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq7 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq6 Map_T_n1_i2_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O(Map_T_n1_i2_inst0_O), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O = Map_T_n1_i2_inst0_O;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_unq1 (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire and_inst0_out;
wire and_inst1_out;
wire [1:0] coreir_const23_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst1_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
coreir_const #(.value(2'h3), .width(2)) coreir_const23_inst0(.out(coreir_const23_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const23_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = and_inst0_out;
endmodule

module NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire and_inst0_out;
wire and_inst1_out;
wire [1:0] coreir_const23_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst1_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse_unq1 NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
coreir_const #(.value(2'h3), .width(2)) coreir_const23_inst0(.out(coreir_const23_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const23_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = and_inst0_out;
endmodule

module NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_unq2 (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire and_inst0_out;
wire and_inst1_out;
wire [1:0] coreir_const21_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst1_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse_unq1 NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
coreir_const #(.value(2'h1), .width(2)) coreir_const21_inst0(.out(coreir_const21_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const21_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = and_inst0_out;
endmodule

module NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_unq1 (input CE, input CLK, output last, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire LUT2_4_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire [1:0] coreir_const21_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst2_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
LUT2_4 LUT2_4_inst0(.I0(Counter2_Mod3CE_inst0_O[0]), .I1(Counter2_Mod3CE_inst0_O[1]), .O(LUT2_4_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(LUT2_4_inst0_O), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
corebit_and and_inst2(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
coreir_const #(.value(2'h1), .width(2)) coreir_const21_inst0(.out(coreir_const21_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const21_inst0_out), .out(coreir_ult2_inst0_out));
assign last = and_inst1_out;
assign valid = and_inst0_out;
endmodule

module NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse (input CE, input CLK, output [0:0] cur_valid, output last, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire LUT2_4_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
wire and_inst4_out;
wire [1:0] coreir_const21_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst2_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
LUT2_4 LUT2_4_inst0(.I0(Counter2_Mod3CE_inst0_O[0]), .I1(Counter2_Mod3CE_inst0_O[1]), .O(LUT2_4_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(and_inst4_out), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(LUT2_4_inst0_O), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
corebit_and and_inst2(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
corebit_and and_inst3(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .out(and_inst3_out));
corebit_and and_inst4(.in0(and_inst3_out), .in1(coreir_ult2_inst0_out), .out(and_inst4_out));
coreir_const #(.value(2'h1), .width(2)) coreir_const21_inst0(.out(coreir_const21_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const21_inst0_out), .out(coreir_ult2_inst0_out));
assign cur_valid = SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
assign last = and_inst1_out;
assign valid = and_inst0_out;
endmodule

module RAM_ST_TSeq_1_2_Int__hasResetFalse (input CLK, input [0:0] RADDR, output [7:0] RDATA, input RE, input [0:0] WADDR, input [7:0] WDATA, input WE);
wire LUT1_1_inst0_O;
wire [7:0] Mux_Array_8_Bit_t_1n_inst0_out;
wire [0:0] NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_cur_valid;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [0:0] NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_cur_valid;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_last;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid;
wire [7:0] RAM_Array_8_Bit_t_1n_inst0_RDATA;
wire and_inst0_out;
LUT1_1 LUT1_1_inst0(.I0(WADDR[0]), .O(LUT1_1_inst0_O));
Mux_Array_8_Bit_t_1n Mux_Array_8_Bit_t_1n_inst0(.data_0(RAM_Array_8_Bit_t_1n_inst0_RDATA), .out(Mux_Array_8_Bit_t_1n_inst0_out), .sel(RADDR));
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0(.CE(RE), .CLK(CLK), .cur_valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_cur_valid), .last(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1(.CE(WE), .CLK(CLK), .cur_valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_cur_valid), .last(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_last), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid));
RAM_Array_8_Bit_t_1n RAM_Array_8_Bit_t_1n_inst0(.CLK(CLK), .RADDR(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_cur_valid), .RDATA(RAM_Array_8_Bit_t_1n_inst0_RDATA), .WADDR(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_cur_valid), .WDATA(WDATA), .WE(and_inst0_out));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
Term_Bitt Term_Bitt_inst1(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last));
Term_Bitt Term_Bitt_inst2(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid));
Term_Bitt Term_Bitt_inst3(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_last));
corebit_and and_inst0(.in0(LUT1_1_inst0_O), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid), .out(and_inst0_out));
assign RDATA = Mux_Array_8_Bit_t_1n_inst0_out;
endmodule

module Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid;
wire [7:0] RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
wire and_inst4_out;
wire and_inst5_out;
wire [0:0] coreir_const11_inst0_out;
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_unq1 NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst0_out), .CLK(CLK), .last(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_unq2 NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1(.CE(and_inst2_out), .CLK(CLK), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid));
RAM_ST_TSeq_1_2_Int__hasResetFalse RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0(.CLK(CLK), .RADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .RDATA(RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA), .RE(and_inst3_out), .WADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .WDATA(I), .WE(and_inst1_out));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(and_inst5_out), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(valid_up), .in1(coreir_const11_inst0_out[0]), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid), .out(and_inst1_out));
corebit_and and_inst2(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
corebit_and and_inst3(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid), .out(and_inst3_out));
corebit_and and_inst4(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst4_out));
corebit_and and_inst5(.in0(and_inst4_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst1_valid), .out(and_inst5_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA;
assign valid_down = valid_up;
endmodule

module Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid;
wire NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [7:0] RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
wire and_inst4_out;
wire and_inst5_out;
wire [0:0] coreir_const11_inst0_out;
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_unq1 NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst0_out), .CLK(CLK), .last(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst2_out), .CLK(CLK), .valid(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid));
RAM_ST_TSeq_1_2_Int__hasResetFalse RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0(.CLK(CLK), .RADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .RDATA(RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA), .RE(and_inst3_out), .WADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .WDATA(I), .WE(and_inst1_out));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(and_inst5_out), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(valid_up), .in1(coreir_const11_inst0_out[0]), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst1_out));
corebit_and and_inst2(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
corebit_and and_inst3(.in0(and_inst0_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst3_out));
corebit_and and_inst4(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst4_out));
corebit_and and_inst5(.in0(and_inst4_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst5_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = RAM_ST_TSeq_1_2_Int__hasResetFalse_inst0_RDATA;
assign valid_down = valid_up;
endmodule

module InitialDelayCounter_2 (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire and_inst0_out;
wire [1:0] coreir_const22_inst0_out;
wire coreir_eq_2_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
coreir_const #(.value(2'h2), .width(2)) coreir_const22_inst0(.out(coreir_const22_inst0_out));
coreir_eq #(.width(2)) coreir_eq_2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const22_inst0_out), .out(coreir_eq_2_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const22_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = coreir_eq_2_inst0_out;
endmodule

module Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, output [7:0] O, output valid_down, input valid_up);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire InitialDelayCounter_12_inst0_valid;
wire [7:0] LUT_Array_8_Bit_t_3n_inst0_data;
wire [0:0] coreir_const11_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(InitialDelayCounter_12_inst0_valid), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
InitialDelayCounter_12 InitialDelayCounter_12_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_12_inst0_valid));
LUT_Array_8_Bit_t_3n LUT_Array_8_Bit_t_3n_inst0(.CLK(CLK), .addr(Counter2_Mod3CE_inst0_O), .data(LUT_Array_8_Bit_t_3n_inst0_data));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = LUT_Array_8_Bit_t_3n_inst0_data;
assign valid_down = InitialDelayCounter_12_inst0_valid;
endmodule

module Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue (input CLK, output [7:0] O, output valid_down, input valid_up);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire InitialDelayCounter_2_inst0_valid;
wire [7:0] LUT_Array_8_Bit_t_3n_inst0_data;
wire [0:0] coreir_const11_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(InitialDelayCounter_2_inst0_valid), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
InitialDelayCounter_2 InitialDelayCounter_2_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_2_inst0_valid));
LUT_Array_8_Bit_t_3n LUT_Array_8_Bit_t_3n_inst0(.CLK(CLK), .addr(Counter2_Mod3CE_inst0_O), .data(LUT_Array_8_Bit_t_3n_inst0_data));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = LUT_Array_8_Bit_t_3n_inst0_data;
assign valid_down = InitialDelayCounter_2_inst0_valid;
endmodule

module Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, output [7:0] O, output valid_down, input valid_up);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire InitialDelayCounter_15_inst0_valid;
wire [7:0] LUT_Array_8_Bit_t_3n_inst0_data;
wire [0:0] coreir_const11_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(InitialDelayCounter_15_inst0_valid), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
InitialDelayCounter_15 InitialDelayCounter_15_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_15_inst0_valid));
LUT_Array_8_Bit_t_3n_unq1 LUT_Array_8_Bit_t_3n_inst0(.CLK(CLK), .addr(Counter2_Mod3CE_inst0_O), .data(LUT_Array_8_Bit_t_3n_inst0_data));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = LUT_Array_8_Bit_t_3n_inst0_data;
assign valid_down = InitialDelayCounter_15_inst0_valid;
endmodule

module Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue (input CLK, output [7:0] O, output valid_down, input valid_up);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire InitialDelayCounter_5_inst0_valid;
wire [7:0] LUT_Array_8_Bit_t_3n_inst0_data;
wire [0:0] coreir_const11_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(InitialDelayCounter_5_inst0_valid), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
InitialDelayCounter_5 InitialDelayCounter_5_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_5_inst0_valid));
LUT_Array_8_Bit_t_3n_unq1 LUT_Array_8_Bit_t_3n_inst0(.CLK(CLK), .addr(Counter2_Mod3CE_inst0_O), .data(LUT_Array_8_Bit_t_3n_inst0_data));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O = LUT_Array_8_Bit_t_3n_inst0_data;
assign valid_down = InitialDelayCounter_5_inst0_valid;
endmodule

module Add_Atom (input [7:0] I__0, input [7:0] I__1, output [7:0] O);
wire [7:0] coreir_add8_inst0_out;
coreir_add #(.width(8)) coreir_add8_inst0(.in0(I__0), .in1(I__1), .out(coreir_add8_inst0_out));
assign O = coreir_add8_inst0_out;
endmodule

module renamedForReduce (input [7:0] in0, input [7:0] in1, output [7:0] out);
wire [7:0] Add_Atom_inst0_O;
Add_Atom Add_Atom_inst0(.I__0(in0), .I__1(in1), .O(Add_Atom_inst0_O));
assign out = Add_Atom_inst0_O;
endmodule

module ReduceSequential_n3_ceTrue (input CE, input CLK, input [7:0] I, output [7:0] out, output ready, output valid);
wire Counter2_Mod3CE_COUT_inst0_COUT;
wire [1:0] Counter2_Mod3CE_COUT_inst0_O;
wire [7:0] Mux_Array_8_Out_Bit__t_2n_inst0_out;
wire [7:0] Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET_inst0_O;
wire bit_const_1_None_out;
wire [1:0] const_0_2_out;
wire corebit_eq_inst0_O;
wire coreir_eq_2_inst0_out;
wire [7:0] renamedForReduce_inst0_out;
Counter2_Mod3CE_COUT Counter2_Mod3CE_COUT_inst0(.CE(CE), .CLK(CLK), .COUT(Counter2_Mod3CE_COUT_inst0_COUT), .O(Counter2_Mod3CE_COUT_inst0_O));
Mux_Array_8_Out_Bit__t_2n Mux_Array_8_Out_Bit__t_2n_inst0(.data_0(renamedForReduce_inst0_out), .data_1(I), .out(Mux_Array_8_Out_Bit__t_2n_inst0_out), .sel(coreir_eq_2_inst0_out));
Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET_inst0(.CE(CE), .CLK(CLK), .I(Mux_Array_8_Out_Bit__t_2n_inst0_out), .O(Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET_inst0_O));
corebit_const #(.value(1)) bit_const_1_None(.out(bit_const_1_None_out));
coreir_const #(.value(2'h0), .width(2)) const_0_2(.out(const_0_2_out));
corebit_eq corebit_eq_inst0(.I0(Counter2_Mod3CE_COUT_inst0_COUT), .I1(bit_const_1_None_out), .O(corebit_eq_inst0_O));
coreir_eq #(.width(2)) coreir_eq_2_inst0(.in0(Counter2_Mod3CE_COUT_inst0_O), .in1(const_0_2_out), .out(coreir_eq_2_inst0_out));
renamedForReduce renamedForReduce_inst0(.in0(I), .in1(Register_Array_8_Out_Bit__t_0init_TrueCE_FalseRESET_inst0_O), .out(renamedForReduce_inst0_out));
assign out = renamedForReduce_inst0_out;
assign ready = bit_const_1_None_out;
assign valid = corebit_eq_inst0_O;
endmodule

module Reduce_T_n3_i0 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire InitialDelayCounter_3_inst0_valid;
wire NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [7:0] ReduceSequential_n3_ceTrue_inst0_out;
wire ReduceSequential_n3_ceTrue_inst0_ready;
wire ReduceSequential_n3_ceTrue_inst0_valid;
wire [7:0] Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
InitialDelayCounter_3 InitialDelayCounter_3_inst0(.CE(valid_up), .CLK(CLK), .valid(InitialDelayCounter_3_inst0_valid));
NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_unq1 NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0(.CE(valid_up), .CLK(CLK), .valid(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid));
ReduceSequential_n3_ceTrue ReduceSequential_n3_ceTrue_inst0(.CE(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .CLK(CLK), .I(I), .out(ReduceSequential_n3_ceTrue_inst0_out), .ready(ReduceSequential_n3_ceTrue_inst0_ready), .valid(ReduceSequential_n3_ceTrue_inst0_valid));
Register_Array_8_Bit_t_0init_FalseCE_FalseRESET Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(ReduceSequential_n3_ceTrue_inst0_out), .O(Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(ReduceSequential_n3_ceTrue_inst0_valid));
Term_Bitt Term_Bitt_inst1(.I(ReduceSequential_n3_ceTrue_inst0_ready));
assign O = Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
assign valid_down = InitialDelayCounter_3_inst0_valid;
endmodule

module Module_1 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst0_O__0;
wire [7:0] Map_T_n1_i2_inst0_O__1;
wire Map_T_n1_i2_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst1_O;
wire Map_T_n1_i2_inst1_valid_down;
wire [7:0] Map_T_n3_i0_inst0_O__0;
wire [7:0] Map_T_n3_i0_inst0_O__1;
wire Map_T_n3_i0_inst0_valid_down;
wire [7:0] Map_T_n3_i0_inst1_O;
wire Map_T_n3_i0_inst1_valid_down;
wire [7:0] Reduce_T_n3_i0_inst0_O;
wire Reduce_T_n3_i0_inst0_valid_down;
wire and_inst0_out;
wire and_inst1_out;
Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n1_i2_unq2 Map_T_n1_i2_inst0(.CLK(CLK), .I0(Reduce_T_n3_i0_inst0_O), .I1(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O__0(Map_T_n1_i2_inst0_O__0), .O__1(Map_T_n1_i2_inst0_O__1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(and_inst1_out));
Map_T_n1_i2_unq3 Map_T_n1_i2_inst1(.CLK(CLK), .I__0(Map_T_n1_i2_inst0_O__0), .I__1(Map_T_n1_i2_inst0_O__1), .O(Map_T_n1_i2_inst1_O), .valid_down(Map_T_n1_i2_inst1_valid_down), .valid_up(Map_T_n1_i2_inst0_valid_down));
Map_T_n3_i0_unq3 Map_T_n3_i0_inst0(.CLK(CLK), .I0(I), .I1(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O__0(Map_T_n3_i0_inst0_O__0), .O__1(Map_T_n3_i0_inst0_O__1), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(and_inst0_out));
Map_T_n3_i0_unq4 Map_T_n3_i0_inst1(.CLK(CLK), .I__0(Map_T_n3_i0_inst0_O__0), .I__1(Map_T_n3_i0_inst0_O__1), .O(Map_T_n3_i0_inst1_O), .valid_down(Map_T_n3_i0_inst1_valid_down), .valid_up(Map_T_n3_i0_inst0_valid_down));
Reduce_T_n3_i0 Reduce_T_n3_i0_inst0(.CLK(CLK), .I(Map_T_n3_i0_inst1_O), .O(Reduce_T_n3_i0_inst0_O), .valid_down(Reduce_T_n3_i0_inst0_valid_down), .valid_up(Map_T_n3_i0_inst1_valid_down));
corebit_and and_inst0(.in0(valid_up), .in1(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Reduce_T_n3_i0_inst0_valid_down), .in1(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
assign O = Map_T_n1_i2_inst1_O;
assign valid_down = Map_T_n1_i2_inst1_valid_down;
endmodule

module Map_T_n1_i2_unq7 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Module_1_inst0_O;
wire Module_1_inst0_valid_down;
Module_1 Module_1_inst0(.CLK(CLK), .I(I), .O(Module_1_inst0_O), .valid_down(Module_1_inst0_valid_down), .valid_up(valid_up));
assign O = Module_1_inst0_O;
assign valid_down = Module_1_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq8 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq7 Map_T_n1_i2_inst0(.CLK(CLK), .I(I), .O(Map_T_n1_i2_inst0_O), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O = Map_T_n1_i2_inst0_O;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Module_0 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst0_O__0;
wire [7:0] Map_T_n1_i2_inst0_O__1;
wire Map_T_n1_i2_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst1_O;
wire Map_T_n1_i2_inst1_valid_down;
wire [7:0] Map_T_n3_i0_inst0_O__0;
wire [7:0] Map_T_n3_i0_inst0_O__1;
wire Map_T_n3_i0_inst0_valid_down;
wire [7:0] Map_T_n3_i0_inst1_O;
wire Map_T_n3_i0_inst1_valid_down;
wire [7:0] Reduce_T_n3_i0_inst0_O;
wire Reduce_T_n3_i0_inst0_valid_down;
wire and_inst0_out;
wire and_inst1_out;
Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n1_i2_unq2 Map_T_n1_i2_inst0(.CLK(CLK), .I0(Reduce_T_n3_i0_inst0_O), .I1(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O__0(Map_T_n1_i2_inst0_O__0), .O__1(Map_T_n1_i2_inst0_O__1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(and_inst1_out));
Map_T_n1_i2_unq3 Map_T_n1_i2_inst1(.CLK(CLK), .I__0(Map_T_n1_i2_inst0_O__0), .I__1(Map_T_n1_i2_inst0_O__1), .O(Map_T_n1_i2_inst1_O), .valid_down(Map_T_n1_i2_inst1_valid_down), .valid_up(Map_T_n1_i2_inst0_valid_down));
Map_T_n3_i0_unq3 Map_T_n3_i0_inst0(.CLK(CLK), .I0(I), .I1(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O__0(Map_T_n3_i0_inst0_O__0), .O__1(Map_T_n3_i0_inst0_O__1), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(and_inst0_out));
Map_T_n3_i0_unq4 Map_T_n3_i0_inst1(.CLK(CLK), .I__0(Map_T_n3_i0_inst0_O__0), .I__1(Map_T_n3_i0_inst0_O__1), .O(Map_T_n3_i0_inst1_O), .valid_down(Map_T_n3_i0_inst1_valid_down), .valid_up(Map_T_n3_i0_inst0_valid_down));
Reduce_T_n3_i0 Reduce_T_n3_i0_inst0(.CLK(CLK), .I(Map_T_n3_i0_inst1_O), .O(Reduce_T_n3_i0_inst0_O), .valid_down(Reduce_T_n3_i0_inst0_valid_down), .valid_up(Map_T_n3_i0_inst1_valid_down));
corebit_and and_inst0(.in0(valid_up), .in1(Const_tTSeq_3_0_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Reduce_T_n3_i0_inst0_valid_down), .in1(Const_tTSeq_1_2_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
assign O = Map_T_n1_i2_inst1_O;
assign valid_down = Map_T_n1_i2_inst1_valid_down;
endmodule

module Map_T_n3_i0_unq5 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Module_0_inst0_O;
wire Module_0_inst0_valid_down;
Module_0 Module_0_inst0(.CLK(CLK), .I(I), .O(Module_0_inst0_O), .valid_down(Module_0_inst0_valid_down), .valid_up(valid_up));
assign O = Module_0_inst0_O;
assign valid_down = Module_0_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq3 (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq5 Map_T_n3_i0_inst0(.CLK(CLK), .I(I), .O(Map_T_n3_i0_inst0_O), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O = Map_T_n3_i0_inst0_O;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module top (input CLK, input [7:0] I, output [7:0] O, output valid_down, input valid_up);
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down;
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
wire [7:0] FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Map_T_n3_i0_inst0_O;
wire Map_T_n3_i0_inst0_valid_down;
wire [7:0] Map_T_n9_i0_inst0_O_0;
wire [7:0] Map_T_n9_i0_inst0_O_1;
wire Map_T_n9_i0_inst0_valid_down;
wire [7:0] Map_T_n9_i0_inst1_O_0;
wire [7:0] Map_T_n9_i0_inst1_O_1;
wire [7:0] Map_T_n9_i0_inst1_O_2;
wire Map_T_n9_i0_inst1_valid_down;
wire [7:0] Map_T_n9_i0_inst2_O;
wire Map_T_n9_i0_inst2_valid_down;
wire [7:0] Map_T_n9_i0_inst3_O;
wire Map_T_n9_i0_inst3_valid_down;
wire [7:0] Map_T_n9_i0_inst4_O;
wire Map_T_n9_i0_inst4_valid_down;
wire [7:0] Map_T_n9_i0_inst5_O_0;
wire [7:0] Map_T_n9_i0_inst5_O_1;
wire Map_T_n9_i0_inst5_valid_down;
wire [7:0] Map_T_n9_i0_inst6_O_0;
wire [7:0] Map_T_n9_i0_inst6_O_1;
wire [7:0] Map_T_n9_i0_inst6_O_2;
wire Map_T_n9_i0_inst6_valid_down;
wire [7:0] Map_T_n9_i0_inst7_O;
wire Map_T_n9_i0_inst7_valid_down;
wire [7:0] Map_T_n9_i0_inst8_O;
wire Map_T_n9_i0_inst8_valid_down;
wire [7:0] Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_O;
wire Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down;
wire [7:0] Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_O;
wire Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O;
wire Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O;
wire Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O;
wire Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O;
wire Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_O), .O(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down));
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1(.CLK(CLK), .I(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .valid_up(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2(.CLK(CLK), .I(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O), .O(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .valid_up(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down));
FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I(I), .O(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n3_i0_unq6 Map_T_n3_i0_inst0(.CLK(CLK), .I(Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_O), .O(Map_T_n3_i0_inst0_O), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down));
Map_T_n9_i0 Map_T_n9_i0_inst0(.CLK(CLK), .I0(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O), .I1(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O_0(Map_T_n9_i0_inst0_O_0), .O_1(Map_T_n9_i0_inst0_O_1), .valid_down(Map_T_n9_i0_inst0_valid_down), .valid_up(and_inst0_out));
Map_T_n9_i0_unq1 Map_T_n9_i0_inst1(.CLK(CLK), .I0_0(Map_T_n9_i0_inst0_O_0), .I0_1(Map_T_n9_i0_inst0_O_1), .I1(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O_0(Map_T_n9_i0_inst1_O_0), .O_1(Map_T_n9_i0_inst1_O_1), .O_2(Map_T_n9_i0_inst1_O_2), .valid_down(Map_T_n9_i0_inst1_valid_down), .valid_up(and_inst1_out));
Map_T_n9_i0_unq2 Map_T_n9_i0_inst2(.CLK(CLK), .I_0(Map_T_n9_i0_inst1_O_0), .I_1(Map_T_n9_i0_inst1_O_1), .I_2(Map_T_n9_i0_inst1_O_2), .O(Map_T_n9_i0_inst2_O), .valid_down(Map_T_n9_i0_inst2_valid_down), .valid_up(Map_T_n9_i0_inst1_valid_down));
Map_T_n9_i0_unq3 Map_T_n9_i0_inst3(.CLK(CLK), .I(Map_T_n9_i0_inst2_O), .O(Map_T_n9_i0_inst3_O), .valid_down(Map_T_n9_i0_inst3_valid_down), .valid_up(Map_T_n9_i0_inst2_valid_down));
Map_T_n9_i0_unq4 Map_T_n9_i0_inst4(.CLK(CLK), .I(Map_T_n9_i0_inst3_O), .O(Map_T_n9_i0_inst4_O), .valid_down(Map_T_n9_i0_inst4_valid_down), .valid_up(Map_T_n9_i0_inst3_valid_down));
Map_T_n9_i0_unq5 Map_T_n9_i0_inst5(.CLK(CLK), .I0(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O), .I1(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O), .O_0(Map_T_n9_i0_inst5_O_0), .O_1(Map_T_n9_i0_inst5_O_1), .valid_down(Map_T_n9_i0_inst5_valid_down), .valid_up(and_inst2_out));
Map_T_n9_i0_unq6 Map_T_n9_i0_inst6(.CLK(CLK), .I0_0(Map_T_n9_i0_inst5_O_0), .I0_1(Map_T_n9_i0_inst5_O_1), .I1(Map_T_n9_i0_inst4_O), .O_0(Map_T_n9_i0_inst6_O_0), .O_1(Map_T_n9_i0_inst6_O_1), .O_2(Map_T_n9_i0_inst6_O_2), .valid_down(Map_T_n9_i0_inst6_valid_down), .valid_up(and_inst3_out));
Map_T_n9_i0_unq7 Map_T_n9_i0_inst7(.CLK(CLK), .I_0(Map_T_n9_i0_inst6_O_0), .I_1(Map_T_n9_i0_inst6_O_1), .I_2(Map_T_n9_i0_inst6_O_2), .O(Map_T_n9_i0_inst7_O), .valid_down(Map_T_n9_i0_inst7_valid_down), .valid_up(Map_T_n9_i0_inst6_valid_down));
Map_T_n9_i0_unq8 Map_T_n9_i0_inst8(.CLK(CLK), .I(Map_T_n9_i0_inst7_O), .O(Map_T_n9_i0_inst8_O), .valid_down(Map_T_n9_i0_inst8_valid_down), .valid_up(Map_T_n9_i0_inst7_valid_down));
Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int____ Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0(.I(Map_T_n3_i0_inst0_O), .O(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_O), .valid_down(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down), .valid_up(Map_T_n3_i0_inst0_valid_down));
Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int____ Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0(.I(Map_T_n9_i0_inst8_O), .O(Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_O), .valid_down(Passthrough_tInTSeq_9_0_TSeq_1_2_TSeq_1_2_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_TSeq_1_2_Int_____inst0_valid_down), .valid_up(Map_T_n9_i0_inst8_valid_down));
Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .valid_down(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1(.CLK(CLK), .I(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O), .O(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O), .valid_down(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .valid_up(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2(.CLK(CLK), .I(Map_T_n9_i0_inst4_O), .O(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O), .valid_down(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .valid_up(Map_T_n9_i0_inst4_valid_down));
Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3(.CLK(CLK), .I(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O), .O(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O), .valid_down(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down), .valid_up(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down));
corebit_and and_inst0(.in0(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .in1(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Map_T_n9_i0_inst0_valid_down), .in1(FIFO_tTSeq_9_0_TSeq_3_0_TSeq_1_2_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
corebit_and and_inst2(.in0(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down), .in1(Shift_tN_no9_ni0_amt1_tElTSeq_1_2_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .out(and_inst2_out));
corebit_and and_inst3(.in0(Map_T_n9_i0_inst5_valid_down), .in1(Map_T_n9_i0_inst4_valid_down), .out(and_inst3_out));
assign O = FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O;
assign valid_down = FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_TSeq_1_2_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
endmodule

