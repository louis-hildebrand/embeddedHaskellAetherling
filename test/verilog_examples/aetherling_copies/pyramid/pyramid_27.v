module stupleToSSeq_tInt_n3 (input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
assign O_0 = I_0;
assign O_1 = I_1;
assign O_2 = I_2;
assign valid_down = valid_up;
endmodule

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

module lutN #(parameter N = 1, parameter init = 1) (input [N-1:0] in, output out);
  assign out = init[in];
endmodule

module \aetherlinglib_hydrate__hydratedTypeBit83 (input [23:0] in, output [7:0] out_0, output [7:0] out_1, output [7:0] out_2);
assign out_0 = {in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};
assign out_1 = {in[15],in[14],in[13],in[12],in[11],in[10],in[9],in[8]};
assign out_2 = {in[23],in[22],in[21],in[20],in[19],in[18],in[17],in[16]};
endmodule

module \aetherlinglib_hydrate__hydratedTypeBit81 (input [7:0] in, output [7:0] out_0);
assign out_0 = {in[7],in[6],in[5],in[4],in[3],in[2],in[1],in[0]};
endmodule

module \aetherlinglib_dehydrate__hydratedTypeBit81 (input [7:0] in_0, output [7:0] out);
assign out = {in_0[7],in_0[6],in_0[5],in_0[4],in_0[3],in_0[2],in_0[1],in_0[0]};
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

module Remove_1_S (input [7:0] I_0_0, input [7:0] I_0_1, input [7:0] I_0_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] stupleToSSeq_tInt_n3_inst0_O_0;
wire [7:0] stupleToSSeq_tInt_n3_inst0_O_1;
wire [7:0] stupleToSSeq_tInt_n3_inst0_O_2;
wire stupleToSSeq_tInt_n3_inst0_valid_down;
stupleToSSeq_tInt_n3 stupleToSSeq_tInt_n3_inst0(.I_0(I_0_0), .I_1(I_0_1), .I_2(I_0_2), .O_0(stupleToSSeq_tInt_n3_inst0_O_0), .O_1(stupleToSSeq_tInt_n3_inst0_O_1), .O_2(stupleToSSeq_tInt_n3_inst0_O_2), .valid_down(stupleToSSeq_tInt_n3_inst0_valid_down), .valid_up(valid_up));
assign O_0 = stupleToSSeq_tInt_n3_inst0_O_0;
assign O_1 = stupleToSSeq_tInt_n3_inst0_O_1;
assign O_2 = stupleToSSeq_tInt_n3_inst0_O_2;
assign valid_down = stupleToSSeq_tInt_n3_inst0_valid_down;
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

module RAM_Array_1_Array_8_Bit__t_1n (input CLK, input [0:0] RADDR, output [7:0] RDATA_0, input [0:0] WADDR, input [7:0] WDATA_0, input WE);
wire [7:0] RAM1x8_inst0_RDATA;
wire [7:0] dehydrate_tArray_1_Array_8_Bit___inst0_out;
wire [7:0] hydrate_tArray_1_Array_8_Bit___inst0_out_0;
RAM1x8 RAM1x8_inst0(.CLK(CLK), .RADDR(RADDR), .RDATA(RAM1x8_inst0_RDATA), .WADDR(WADDR), .WDATA(dehydrate_tArray_1_Array_8_Bit___inst0_out), .WE(WE));
\aetherlinglib_dehydrate__hydratedTypeBit81 dehydrate_tArray_1_Array_8_Bit___inst0(.in_0(WDATA_0), .out(dehydrate_tArray_1_Array_8_Bit___inst0_out));
\aetherlinglib_hydrate__hydratedTypeBit81 hydrate_tArray_1_Array_8_Bit___inst0(.in(RAM1x8_inst0_RDATA), .out_0(hydrate_tArray_1_Array_8_Bit___inst0_out_0));
assign RDATA_0 = hydrate_tArray_1_Array_8_Bit___inst0_out_0;
endmodule

module Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int____ (input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
assign O_0 = I_0;
assign valid_down = valid_up;
endmodule

module Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int____ (input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
assign O_0 = I_0;
assign valid_down = valid_up;
endmodule

module NestedCounters_Int_hasCETrue_hasResetFalse_unq2 (input CE, input CLK, output last, output valid);
wire [0:0] coreir_const11_inst0_out;
Term_Bitt Term_Bitt_inst0(.I(CE));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign last = coreir_const11_inst0_out[0];
assign valid = coreir_const11_inst0_out[0];
endmodule

module NestedCounters_Int_hasCETrue_hasResetFalse_unq1 (input CE, input CLK, output last, output valid);
wire [0:0] coreir_const11_inst0_out;
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign last = coreir_const11_inst0_out[0];
assign valid = CE;
endmodule

module NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_unq1 (input CE, input CLK, output last, output valid);
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
NestedCounters_Int_hasCETrue_hasResetFalse_unq1 NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
assign last = NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
assign valid = NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
endmodule

module NestedCounters_Int_hasCETrue_hasResetFalse (input CE, input CLK, output [0:0] cur_valid, output last, output valid);
wire [0:0] coreir_const10_inst0_out;
wire [0:0] coreir_const11_inst0_out;
coreir_const #(.value(1'h0), .width(1)) coreir_const10_inst0(.out(coreir_const10_inst0_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign cur_valid = coreir_const10_inst0_out;
assign last = coreir_const11_inst0_out[0];
assign valid = CE;
endmodule

module NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse (input CE, input CLK, output [0:0] cur_valid, output last, output valid);
wire [0:0] NestedCounters_Int_hasCETrue_hasResetFalse_inst0_cur_valid;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
NestedCounters_Int_hasCETrue_hasResetFalse NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .cur_valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_cur_valid), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
assign cur_valid = NestedCounters_Int_hasCETrue_hasResetFalse_inst0_cur_valid;
assign last = NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
assign valid = NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
endmodule

module NativeMapParallel_n3 (input [7:0] I0_0, input [7:0] I0_1, input [7:0] I0_2, input [7:0] I1_0, input [7:0] I1_1, input [7:0] I1_2, output [7:0] O_0__0, output [7:0] O_0__1, output [7:0] O_1__0, output [7:0] O_1__1, output [7:0] O_2__0, output [7:0] O_2__1, output valid_down, input valid_up);
wire and_inst0_out;
wire and_inst1_out;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__1;
wire atomTupleCreator_t0Int_t1Int_inst0_valid_down;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst1_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst1_O__1;
wire atomTupleCreator_t0Int_t1Int_inst1_valid_down;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst2_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst2_O__1;
wire atomTupleCreator_t0Int_t1Int_inst2_valid_down;
corebit_and and_inst0(.in0(atomTupleCreator_t0Int_t1Int_inst0_valid_down), .in1(atomTupleCreator_t0Int_t1Int_inst1_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(atomTupleCreator_t0Int_t1Int_inst2_valid_down), .out(and_inst1_out));
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst0(.I0(I0_0), .I1(I1_0), .O__0(atomTupleCreator_t0Int_t1Int_inst0_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst0_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst0_valid_down), .valid_up(valid_up));
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst1(.I0(I0_1), .I1(I1_1), .O__0(atomTupleCreator_t0Int_t1Int_inst1_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst1_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst1_valid_down), .valid_up(valid_up));
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst2(.I0(I0_2), .I1(I1_2), .O__0(atomTupleCreator_t0Int_t1Int_inst2_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst2_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst2_valid_down), .valid_up(valid_up));
assign O_0__0 = atomTupleCreator_t0Int_t1Int_inst0_O__0;
assign O_0__1 = atomTupleCreator_t0Int_t1Int_inst0_O__1;
assign O_1__0 = atomTupleCreator_t0Int_t1Int_inst1_O__0;
assign O_1__1 = atomTupleCreator_t0Int_t1Int_inst1_O__1;
assign O_2__0 = atomTupleCreator_t0Int_t1Int_inst2_O__0;
assign O_2__1 = atomTupleCreator_t0Int_t1Int_inst2_O__1;
assign valid_down = and_inst1_out;
endmodule

module NativeMapParallel_n1_unq3 (input [7:0] I_0__0, input [7:0] I_0__1, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] RShift_Atom_inst0_O;
wire RShift_Atom_inst0_valid_down;
RShift_Atom RShift_Atom_inst0(.I__0(I_0__0), .I__1(I_0__1), .O(RShift_Atom_inst0_O), .valid_down(RShift_Atom_inst0_valid_down), .valid_up(valid_up));
assign O_0 = RShift_Atom_inst0_O;
assign valid_down = RShift_Atom_inst0_valid_down;
endmodule

module NativeMapParallel_n1_unq2 (input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0__0, output [7:0] O_0__1, output valid_down, input valid_up);
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__0;
wire [7:0] atomTupleCreator_t0Int_t1Int_inst0_O__1;
wire atomTupleCreator_t0Int_t1Int_inst0_valid_down;
atomTupleCreator_t0Int_t1Int atomTupleCreator_t0Int_t1Int_inst0(.I0(I0_0), .I1(I1_0), .O__0(atomTupleCreator_t0Int_t1Int_inst0_O__0), .O__1(atomTupleCreator_t0Int_t1Int_inst0_O__1), .valid_down(atomTupleCreator_t0Int_t1Int_inst0_valid_down), .valid_up(valid_up));
assign O_0__0 = atomTupleCreator_t0Int_t1Int_inst0_O__0;
assign O_0__1 = atomTupleCreator_t0Int_t1Int_inst0_O__1;
assign valid_down = atomTupleCreator_t0Int_t1Int_inst0_valid_down;
endmodule

module NativeMapParallel_n1_unq1 (input [7:0] I0_0_0, input [7:0] I0_0_1, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output [7:0] O_0_2, output valid_down, input valid_up);
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_0;
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_1;
wire [7:0] sseqTupleAppender_tInt_n2_inst0_O_2;
wire sseqTupleAppender_tInt_n2_inst0_valid_down;
sseqTupleAppender_tInt_n2 sseqTupleAppender_tInt_n2_inst0(.I0_0(I0_0_0), .I0_1(I0_0_1), .I1(I1_0), .O_0(sseqTupleAppender_tInt_n2_inst0_O_0), .O_1(sseqTupleAppender_tInt_n2_inst0_O_1), .O_2(sseqTupleAppender_tInt_n2_inst0_O_2), .valid_down(sseqTupleAppender_tInt_n2_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = sseqTupleAppender_tInt_n2_inst0_O_0;
assign O_0_1 = sseqTupleAppender_tInt_n2_inst0_O_1;
assign O_0_2 = sseqTupleAppender_tInt_n2_inst0_O_2;
assign valid_down = sseqTupleAppender_tInt_n2_inst0_valid_down;
endmodule

module NativeMapParallel_n1 (input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output valid_down, input valid_up);
wire [7:0] sseqTupleCreator_tInt_inst0_O_0;
wire [7:0] sseqTupleCreator_tInt_inst0_O_1;
wire sseqTupleCreator_tInt_inst0_valid_down;
sseqTupleCreator_tInt sseqTupleCreator_tInt_inst0(.I0(I0_0), .I1(I1_0), .O_0(sseqTupleCreator_tInt_inst0_O_0), .O_1(sseqTupleCreator_tInt_inst0_O_1), .valid_down(sseqTupleCreator_tInt_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = sseqTupleCreator_tInt_inst0_O_0;
assign O_0_1 = sseqTupleCreator_tInt_inst0_O_1;
assign valid_down = sseqTupleCreator_tInt_inst0_valid_down;
endmodule

module Mux_Array_1_Array_8_Bit__t_1n (input [7:0] data_0_0, output [7:0] out_0, input [0:0] sel);
Term_Bits_1_t Term_Bits_1_t_inst0(.I(sel));
assign out_0 = data_0_0;
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

module Mux2xOutBits1 (input [0:0] I0, input [0:0] I1, output [0:0] O, input S);
wire [0:0] coreir_commonlib_mux2x1_inst0_out;
\commonlib_muxn__N2__width1 coreir_commonlib_mux2x1_inst0(.in_data_0(I0), .in_data_1(I1), .in_sel(S), .out(coreir_commonlib_mux2x1_inst0_out));
assign O = coreir_commonlib_mux2x1_inst0_out;
endmodule

module Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1 (input CE, input CLK, input [0:0] I, output [0:0] O, input RESET);
wire [0:0] Mux2xOutBits1_inst0_O;
wire [0:0] const_0_1_out;
wire [0:0] enable_mux_O;
wire [0:0] value_out;
Mux2xOutBits1 Mux2xOutBits1_inst0(.I0(enable_mux_O), .I1(const_0_1_out), .O(Mux2xOutBits1_inst0_O), .S(RESET));
coreir_const #(.value(1'h0), .width(1)) const_0_1(.out(const_0_1_out));
Mux2xOutBits1 enable_mux(.I0(value_out), .I1(I), .O(enable_mux_O), .S(CE));
coreir_reg #(.clk_posedge(1), .init(1'h0), .width(1)) value(.clk(CLK), .in(Mux2xOutBits1_inst0_O), .out(value_out));
assign O = value_out;
endmodule

module Map_T_n3_i0_unq2 (input CLK, input [7:0] I_0_0, input [7:0] I_0_1, input [7:0] I_0_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Remove_1_S_inst0_O_0;
wire [7:0] Remove_1_S_inst0_O_1;
wire [7:0] Remove_1_S_inst0_O_2;
wire Remove_1_S_inst0_valid_down;
Remove_1_S Remove_1_S_inst0(.I_0_0(I_0_0), .I_0_1(I_0_1), .I_0_2(I_0_2), .O_0(Remove_1_S_inst0_O_0), .O_1(Remove_1_S_inst0_O_1), .O_2(Remove_1_S_inst0_O_2), .valid_down(Remove_1_S_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Remove_1_S_inst0_O_0;
assign O_1 = Remove_1_S_inst0_O_1;
assign O_2 = Remove_1_S_inst0_O_2;
assign valid_down = Remove_1_S_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq2 (input CLK, input [7:0] I_0_0, input [7:0] I_0_1, input [7:0] I_0_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0;
wire [7:0] Map_T_n3_i0_inst0_O_1;
wire [7:0] Map_T_n3_i0_inst0_O_2;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq2 Map_T_n3_i0_inst0(.CLK(CLK), .I_0_0(I_0_0), .I_0_1(I_0_1), .I_0_2(I_0_2), .O_0(Map_T_n3_i0_inst0_O_0), .O_1(Map_T_n3_i0_inst0_O_1), .O_2(Map_T_n3_i0_inst0_O_2), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n3_i0_inst0_O_0;
assign O_1 = Map_T_n3_i0_inst0_O_1;
assign O_2 = Map_T_n3_i0_inst0_O_2;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n3_i0_unq1 (input CLK, input [7:0] I0_0_0, input [7:0] I0_0_1, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output [7:0] O_0_2, output valid_down, input valid_up);
wire [7:0] NativeMapParallel_n1_inst0_O_0_0;
wire [7:0] NativeMapParallel_n1_inst0_O_0_1;
wire [7:0] NativeMapParallel_n1_inst0_O_0_2;
wire NativeMapParallel_n1_inst0_valid_down;
NativeMapParallel_n1_unq1 NativeMapParallel_n1_inst0(.I0_0_0(I0_0_0), .I0_0_1(I0_0_1), .I1_0(I1_0), .O_0_0(NativeMapParallel_n1_inst0_O_0_0), .O_0_1(NativeMapParallel_n1_inst0_O_0_1), .O_0_2(NativeMapParallel_n1_inst0_O_0_2), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = NativeMapParallel_n1_inst0_O_0_0;
assign O_0_1 = NativeMapParallel_n1_inst0_O_0_1;
assign O_0_2 = NativeMapParallel_n1_inst0_O_0_2;
assign valid_down = NativeMapParallel_n1_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq1 (input CLK, input [7:0] I0_0_0, input [7:0] I0_0_1, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output [7:0] O_0_2, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0_0;
wire [7:0] Map_T_n3_i0_inst0_O_0_1;
wire [7:0] Map_T_n3_i0_inst0_O_0_2;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq1 Map_T_n3_i0_inst0(.CLK(CLK), .I0_0_0(I0_0_0), .I0_0_1(I0_0_1), .I1_0(I1_0), .O_0_0(Map_T_n3_i0_inst0_O_0_0), .O_0_1(Map_T_n3_i0_inst0_O_0_1), .O_0_2(Map_T_n3_i0_inst0_O_0_2), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = Map_T_n3_i0_inst0_O_0_0;
assign O_0_1 = Map_T_n3_i0_inst0_O_0_1;
assign O_0_2 = Map_T_n3_i0_inst0_O_0_2;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n3_i0 (input CLK, input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output valid_down, input valid_up);
wire [7:0] NativeMapParallel_n1_inst0_O_0_0;
wire [7:0] NativeMapParallel_n1_inst0_O_0_1;
wire NativeMapParallel_n1_inst0_valid_down;
NativeMapParallel_n1 NativeMapParallel_n1_inst0(.I0_0(I0_0), .I1_0(I1_0), .O_0_0(NativeMapParallel_n1_inst0_O_0_0), .O_0_1(NativeMapParallel_n1_inst0_O_0_1), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = NativeMapParallel_n1_inst0_O_0_0;
assign O_0_1 = NativeMapParallel_n1_inst0_O_0_1;
assign valid_down = NativeMapParallel_n1_inst0_valid_down;
endmodule

module Map_T_n9_i0 (input CLK, input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0_0;
wire [7:0] Map_T_n3_i0_inst0_O_0_1;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0 Map_T_n3_i0_inst0(.CLK(CLK), .I0_0(I0_0), .I1_0(I1_0), .O_0_0(Map_T_n3_i0_inst0_O_0_0), .O_0_1(Map_T_n3_i0_inst0_O_0_1), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = Map_T_n3_i0_inst0_O_0_0;
assign O_0_1 = Map_T_n3_i0_inst0_O_0_1;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq2 (input CLK, input [7:0] I_0_0, input [7:0] I_0_1, input [7:0] I_0_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Remove_1_S_inst0_O_0;
wire [7:0] Remove_1_S_inst0_O_1;
wire [7:0] Remove_1_S_inst0_O_2;
wire Remove_1_S_inst0_valid_down;
Remove_1_S Remove_1_S_inst0(.I_0_0(I_0_0), .I_0_1(I_0_1), .I_0_2(I_0_2), .O_0(Remove_1_S_inst0_O_0), .O_1(Remove_1_S_inst0_O_1), .O_2(Remove_1_S_inst0_O_2), .valid_down(Remove_1_S_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Remove_1_S_inst0_O_0;
assign O_1 = Remove_1_S_inst0_O_1;
assign O_2 = Remove_1_S_inst0_O_2;
assign valid_down = Remove_1_S_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq7 (input CLK, input [7:0] I_0_0, input [7:0] I_0_1, input [7:0] I_0_2, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire [7:0] Map_T_n1_i2_inst0_O_1;
wire [7:0] Map_T_n1_i2_inst0_O_2;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq2 Map_T_n1_i2_inst0(.CLK(CLK), .I_0_0(I_0_0), .I_0_1(I_0_1), .I_0_2(I_0_2), .O_0(Map_T_n1_i2_inst0_O_0), .O_1(Map_T_n1_i2_inst0_O_1), .O_2(Map_T_n1_i2_inst0_O_2), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign O_1 = Map_T_n1_i2_inst0_O_1;
assign O_2 = Map_T_n1_i2_inst0_O_2;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n1_i2_unq1 (input CLK, input [7:0] I0_0_0, input [7:0] I0_0_1, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output [7:0] O_0_2, output valid_down, input valid_up);
wire [7:0] NativeMapParallel_n1_inst0_O_0_0;
wire [7:0] NativeMapParallel_n1_inst0_O_0_1;
wire [7:0] NativeMapParallel_n1_inst0_O_0_2;
wire NativeMapParallel_n1_inst0_valid_down;
NativeMapParallel_n1_unq1 NativeMapParallel_n1_inst0(.I0_0_0(I0_0_0), .I0_0_1(I0_0_1), .I1_0(I1_0), .O_0_0(NativeMapParallel_n1_inst0_O_0_0), .O_0_1(NativeMapParallel_n1_inst0_O_0_1), .O_0_2(NativeMapParallel_n1_inst0_O_0_2), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = NativeMapParallel_n1_inst0_O_0_0;
assign O_0_1 = NativeMapParallel_n1_inst0_O_0_1;
assign O_0_2 = NativeMapParallel_n1_inst0_O_0_2;
assign valid_down = NativeMapParallel_n1_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq6 (input CLK, input [7:0] I0_0_0, input [7:0] I0_0_1, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output [7:0] O_0_2, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0_0;
wire [7:0] Map_T_n1_i2_inst0_O_0_1;
wire [7:0] Map_T_n1_i2_inst0_O_0_2;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq1 Map_T_n1_i2_inst0(.CLK(CLK), .I0_0_0(I0_0_0), .I0_0_1(I0_0_1), .I1_0(I1_0), .O_0_0(Map_T_n1_i2_inst0_O_0_0), .O_0_1(Map_T_n1_i2_inst0_O_0_1), .O_0_2(Map_T_n1_i2_inst0_O_0_2), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = Map_T_n1_i2_inst0_O_0_0;
assign O_0_1 = Map_T_n1_i2_inst0_O_0_1;
assign O_0_2 = Map_T_n1_i2_inst0_O_0_2;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n1_i2 (input CLK, input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output valid_down, input valid_up);
wire [7:0] NativeMapParallel_n1_inst0_O_0_0;
wire [7:0] NativeMapParallel_n1_inst0_O_0_1;
wire NativeMapParallel_n1_inst0_valid_down;
NativeMapParallel_n1 NativeMapParallel_n1_inst0(.I0_0(I0_0), .I1_0(I1_0), .O_0_0(NativeMapParallel_n1_inst0_O_0_0), .O_0_1(NativeMapParallel_n1_inst0_O_0_1), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = NativeMapParallel_n1_inst0_O_0_0;
assign O_0_1 = NativeMapParallel_n1_inst0_O_0_1;
assign valid_down = NativeMapParallel_n1_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq5 (input CLK, input [7:0] I0_0, input [7:0] I1_0, output [7:0] O_0_0, output [7:0] O_0_1, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0_0;
wire [7:0] Map_T_n1_i2_inst0_O_0_1;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2 Map_T_n1_i2_inst0(.CLK(CLK), .I0_0(I0_0), .I1_0(I1_0), .O_0_0(Map_T_n1_i2_inst0_O_0_0), .O_0_1(Map_T_n1_i2_inst0_O_0_1), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0_0 = Map_T_n1_i2_inst0_O_0_0;
assign O_0_1 = Map_T_n1_i2_inst0_O_0_1;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
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

module LUT3_16 (input I0, input I1, input I2, output O);
wire coreir_lut3_inst0_out;
lutN #(.init(8'h10), .N(3)) coreir_lut3_inst0(.in({I2,I1,I0}), .out(coreir_lut3_inst0_out));
assign O = coreir_lut3_inst0_out;
endmodule

module LUT2_4 (input I0, input I1, output O);
wire coreir_lut2_inst0_out;
lutN #(.init(4'h4), .N(2)) coreir_lut2_inst0(.in({I1,I0}), .out(coreir_lut2_inst0_out));
assign O = coreir_lut2_inst0_out;
endmodule

module LUT1_2 (input I0, output O);
wire coreir_lut1_inst0_out;
lutN #(.init(2'h2), .N(1)) coreir_lut1_inst0(.in(I0), .out(coreir_lut1_inst0_out));
assign O = coreir_lut1_inst0_out;
endmodule

module LUT1_1 (input I0, output O);
wire coreir_lut1_inst0_out;
lutN #(.init(2'h1), .N(1)) coreir_lut1_inst0(.in(I0), .out(coreir_lut1_inst0_out));
assign O = coreir_lut1_inst0_out;
endmodule

module RAM_ST_SSeq_1_Int__hasResetFalse (input CLK, input [0:0] RADDR, output [7:0] RDATA_0, input RE, input [0:0] WADDR, input [7:0] WDATA_0, input WE);
wire LUT1_1_inst0_O;
wire [7:0] Mux_Array_1_Array_8_Bit__t_1n_inst0_out_0;
wire [0:0] NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_cur_valid;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [0:0] NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_cur_valid;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_last;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_valid;
wire [7:0] RAM_Array_1_Array_8_Bit__t_1n_inst0_RDATA_0;
wire and_inst0_out;
LUT1_1 LUT1_1_inst0(.I0(WADDR[0]), .O(LUT1_1_inst0_O));
Mux_Array_1_Array_8_Bit__t_1n Mux_Array_1_Array_8_Bit__t_1n_inst0(.data_0_0(RAM_Array_1_Array_8_Bit__t_1n_inst0_RDATA_0), .out_0(Mux_Array_1_Array_8_Bit__t_1n_inst0_out_0), .sel(RADDR));
NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0(.CE(RE), .CLK(CLK), .cur_valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_cur_valid), .last(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1(.CE(WE), .CLK(CLK), .cur_valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_cur_valid), .last(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_last), .valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_valid));
RAM_Array_1_Array_8_Bit__t_1n RAM_Array_1_Array_8_Bit__t_1n_inst0(.CLK(CLK), .RADDR(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_cur_valid), .RDATA_0(RAM_Array_1_Array_8_Bit__t_1n_inst0_RDATA_0), .WADDR(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_cur_valid), .WDATA_0(WDATA_0), .WE(and_inst0_out));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
Term_Bitt Term_Bitt_inst1(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last));
Term_Bitt Term_Bitt_inst2(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_valid));
Term_Bitt Term_Bitt_inst3(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_last));
corebit_and and_inst0(.in0(LUT1_1_inst0_O), .in1(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst1_valid), .out(and_inst0_out));
assign RDATA_0 = Mux_Array_1_Array_8_Bit__t_1n_inst0_out_0;
endmodule

module LUT1_0 (input I0, output O);
wire coreir_lut1_inst0_out;
lutN #(.init(2'h0), .N(1)) coreir_lut1_inst0(.in(I0), .out(coreir_lut1_inst0_out));
assign O = coreir_lut1_inst0_out;
endmodule

module LUT_Array_3_Array_8_Bit__t_1n (input CLK, input [0:0] addr, output [7:0] data_0, output [7:0] data_1, output [7:0] data_2);
wire LUT1_0_inst0_O;
wire LUT1_0_inst1_O;
wire LUT1_0_inst10_O;
wire LUT1_0_inst11_O;
wire LUT1_0_inst12_O;
wire LUT1_0_inst13_O;
wire LUT1_0_inst14_O;
wire LUT1_0_inst15_O;
wire LUT1_0_inst16_O;
wire LUT1_0_inst17_O;
wire LUT1_0_inst18_O;
wire LUT1_0_inst19_O;
wire LUT1_0_inst2_O;
wire LUT1_0_inst20_O;
wire LUT1_0_inst21_O;
wire LUT1_0_inst22_O;
wire LUT1_0_inst3_O;
wire LUT1_0_inst4_O;
wire LUT1_0_inst5_O;
wire LUT1_0_inst6_O;
wire LUT1_0_inst7_O;
wire LUT1_0_inst8_O;
wire LUT1_0_inst9_O;
wire LUT1_1_inst0_O;
wire [7:0] hydrate_tArray_3_Array_8_Bit___inst0_out_0;
wire [7:0] hydrate_tArray_3_Array_8_Bit___inst0_out_1;
wire [7:0] hydrate_tArray_3_Array_8_Bit___inst0_out_2;
LUT1_0 LUT1_0_inst0(.I0(addr[0]), .O(LUT1_0_inst0_O));
LUT1_0 LUT1_0_inst1(.I0(addr[0]), .O(LUT1_0_inst1_O));
LUT1_0 LUT1_0_inst10(.I0(addr[0]), .O(LUT1_0_inst10_O));
LUT1_0 LUT1_0_inst11(.I0(addr[0]), .O(LUT1_0_inst11_O));
LUT1_0 LUT1_0_inst12(.I0(addr[0]), .O(LUT1_0_inst12_O));
LUT1_0 LUT1_0_inst13(.I0(addr[0]), .O(LUT1_0_inst13_O));
LUT1_0 LUT1_0_inst14(.I0(addr[0]), .O(LUT1_0_inst14_O));
LUT1_0 LUT1_0_inst15(.I0(addr[0]), .O(LUT1_0_inst15_O));
LUT1_0 LUT1_0_inst16(.I0(addr[0]), .O(LUT1_0_inst16_O));
LUT1_0 LUT1_0_inst17(.I0(addr[0]), .O(LUT1_0_inst17_O));
LUT1_0 LUT1_0_inst18(.I0(addr[0]), .O(LUT1_0_inst18_O));
LUT1_0 LUT1_0_inst19(.I0(addr[0]), .O(LUT1_0_inst19_O));
LUT1_0 LUT1_0_inst2(.I0(addr[0]), .O(LUT1_0_inst2_O));
LUT1_0 LUT1_0_inst20(.I0(addr[0]), .O(LUT1_0_inst20_O));
LUT1_0 LUT1_0_inst21(.I0(addr[0]), .O(LUT1_0_inst21_O));
LUT1_0 LUT1_0_inst22(.I0(addr[0]), .O(LUT1_0_inst22_O));
LUT1_0 LUT1_0_inst3(.I0(addr[0]), .O(LUT1_0_inst3_O));
LUT1_0 LUT1_0_inst4(.I0(addr[0]), .O(LUT1_0_inst4_O));
LUT1_0 LUT1_0_inst5(.I0(addr[0]), .O(LUT1_0_inst5_O));
LUT1_0 LUT1_0_inst6(.I0(addr[0]), .O(LUT1_0_inst6_O));
LUT1_0 LUT1_0_inst7(.I0(addr[0]), .O(LUT1_0_inst7_O));
LUT1_0 LUT1_0_inst8(.I0(addr[0]), .O(LUT1_0_inst8_O));
LUT1_0 LUT1_0_inst9(.I0(addr[0]), .O(LUT1_0_inst9_O));
LUT1_1 LUT1_1_inst0(.I0(addr[0]), .O(LUT1_1_inst0_O));
\aetherlinglib_hydrate__hydratedTypeBit83 hydrate_tArray_3_Array_8_Bit___inst0(.in({LUT1_0_inst22_O,LUT1_0_inst21_O,LUT1_0_inst20_O,LUT1_0_inst19_O,LUT1_0_inst18_O,LUT1_0_inst17_O,LUT1_0_inst16_O,LUT1_0_inst15_O,LUT1_0_inst14_O,LUT1_0_inst13_O,LUT1_0_inst12_O,LUT1_0_inst11_O,LUT1_0_inst10_O,LUT1_0_inst9_O,LUT1_0_inst8_O,LUT1_1_inst0_O,LUT1_0_inst7_O,LUT1_0_inst6_O,LUT1_0_inst5_O,LUT1_0_inst4_O,LUT1_0_inst3_O,LUT1_0_inst2_O,LUT1_0_inst1_O,LUT1_0_inst0_O}), .out_0(hydrate_tArray_3_Array_8_Bit___inst0_out_0), .out_1(hydrate_tArray_3_Array_8_Bit___inst0_out_1), .out_2(hydrate_tArray_3_Array_8_Bit___inst0_out_2));
assign data_0 = hydrate_tArray_3_Array_8_Bit___inst0_out_0;
assign data_1 = hydrate_tArray_3_Array_8_Bit___inst0_out_1;
assign data_2 = hydrate_tArray_3_Array_8_Bit___inst0_out_2;
endmodule

module LUT_Array_1_Array_8_Bit__t_1n (input CLK, input [0:0] addr, output [7:0] data_0);
wire LUT1_0_inst0_O;
wire LUT1_0_inst1_O;
wire LUT1_0_inst2_O;
wire LUT1_0_inst3_O;
wire LUT1_0_inst4_O;
wire LUT1_0_inst5_O;
wire LUT1_0_inst6_O;
wire LUT1_1_inst0_O;
wire [7:0] hydrate_tArray_1_Array_8_Bit___inst0_out_0;
LUT1_0 LUT1_0_inst0(.I0(addr[0]), .O(LUT1_0_inst0_O));
LUT1_0 LUT1_0_inst1(.I0(addr[0]), .O(LUT1_0_inst1_O));
LUT1_0 LUT1_0_inst2(.I0(addr[0]), .O(LUT1_0_inst2_O));
LUT1_0 LUT1_0_inst3(.I0(addr[0]), .O(LUT1_0_inst3_O));
LUT1_0 LUT1_0_inst4(.I0(addr[0]), .O(LUT1_0_inst4_O));
LUT1_0 LUT1_0_inst5(.I0(addr[0]), .O(LUT1_0_inst5_O));
LUT1_0 LUT1_0_inst6(.I0(addr[0]), .O(LUT1_0_inst6_O));
LUT1_1 LUT1_1_inst0(.I0(addr[0]), .O(LUT1_1_inst0_O));
\aetherlinglib_hydrate__hydratedTypeBit81 hydrate_tArray_1_Array_8_Bit___inst0(.in({LUT1_0_inst6_O,LUT1_0_inst5_O,LUT1_0_inst4_O,LUT1_0_inst3_O,LUT1_0_inst2_O,LUT1_0_inst1_O,LUT1_1_inst0_O,LUT1_0_inst0_O}), .out_0(hydrate_tArray_1_Array_8_Bit___inst0_out_0));
assign data_0 = hydrate_tArray_1_Array_8_Bit___inst0_out_0;
endmodule

module LShift_Atom (input [7:0] I__0, input [7:0] I__1, output [7:0] O, output valid_down, input valid_up);
wire [7:0] shl8_inst0_out;
coreir_shl #(.width(8)) shl8_inst0(.in0(I__0), .in1(I__1), .out(shl8_inst0_out));
assign O = shl8_inst0_out;
assign valid_down = valid_up;
endmodule

module NativeMapParallel_n3_unq1 (input [7:0] I_0__0, input [7:0] I_0__1, input [7:0] I_1__0, input [7:0] I_1__1, input [7:0] I_2__0, input [7:0] I_2__1, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire [7:0] LShift_Atom_inst0_O;
wire LShift_Atom_inst0_valid_down;
wire [7:0] LShift_Atom_inst1_O;
wire LShift_Atom_inst1_valid_down;
wire [7:0] LShift_Atom_inst2_O;
wire LShift_Atom_inst2_valid_down;
wire and_inst0_out;
wire and_inst1_out;
LShift_Atom LShift_Atom_inst0(.I__0(I_0__0), .I__1(I_0__1), .O(LShift_Atom_inst0_O), .valid_down(LShift_Atom_inst0_valid_down), .valid_up(valid_up));
LShift_Atom LShift_Atom_inst1(.I__0(I_1__0), .I__1(I_1__1), .O(LShift_Atom_inst1_O), .valid_down(LShift_Atom_inst1_valid_down), .valid_up(valid_up));
LShift_Atom LShift_Atom_inst2(.I__0(I_2__0), .I__1(I_2__1), .O(LShift_Atom_inst2_O), .valid_down(LShift_Atom_inst2_valid_down), .valid_up(valid_up));
corebit_and and_inst0(.in0(LShift_Atom_inst0_valid_down), .in1(LShift_Atom_inst1_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(LShift_Atom_inst2_valid_down), .out(and_inst1_out));
assign O_0 = LShift_Atom_inst0_O;
assign O_1 = LShift_Atom_inst1_O;
assign O_2 = LShift_Atom_inst2_O;
assign valid_down = and_inst1_out;
endmodule

module Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
assign O_0 = I_0;
assign valid_down = valid_up;
endmodule

module Map_T_n1_i2_unq4 (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_O_0;
wire Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_valid_down;
Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0(.CLK(CLK), .I_0(I_0), .O_0(Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_O_0), .valid_down(Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_O_0;
assign valid_down = Down_S_n1_i2_sel0_tElSSeq_1_Int__vTrue_inst0_valid_down;
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

module Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET (input CLK, input [7:0] I_0, output [7:0] O_0);
wire [7:0] Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
Register_Array_8_Bit_t_0init_FalseCE_FalseRESET Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(I_0), .O(Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O));
assign O_0 = Register_Array_8_Bit_t_0init_FalseCE_FalseRESET_inst0_O;
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

module FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
wire Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I_0(I_0), .O_0(Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0));
Register_Bitt_0init_FalseCE_FalseRESET Register_Bitt_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(valid_up), .O(Register_Bitt_0init_FalseCE_FalseRESET_inst0_O));
assign O_0 = Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
assign valid_down = Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
endmodule

module FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
wire Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I_0(I_0), .O_0(Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0));
Register_Bitt_0init_FalseCE_FalseRESET Register_Bitt_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I(valid_up), .O(Register_Bitt_0init_FalseCE_FalseRESET_inst0_O));
assign O_0 = Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
assign valid_down = Register_Bitt_0init_FalseCE_FalseRESET_inst0_O;
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

module Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire InitialDelayCounter_6_inst0_valid;
InitialDelayCounter_6 InitialDelayCounter_6_inst0(.CE(valid_up), .CLK(CLK), .valid(InitialDelayCounter_6_inst0_valid));
assign O_0 = I_0;
assign valid_down = InitialDelayCounter_6_inst0_valid;
endmodule

module Module_2 (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_O_0;
wire Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_valid_down;
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire Map_T_n1_i2_inst0_valid_down;
Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0(.CLK(CLK), .I_0(I_0), .O_0(Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_O_0), .valid_down(Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n1_i2_unq4 Map_T_n1_i2_inst0(.CLK(CLK), .I_0(Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_O_0), .O_0(Map_T_n1_i2_inst0_O_0), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(Down_S_n3_i0_sel2_tElTSeq_1_2_SSeq_1_Int___vTrue_inst0_valid_down));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Map_T_n3_i0_unq4 (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Module_2_inst0_O_0;
wire Module_2_inst0_valid_down;
Module_2 Module_2_inst0(.CLK(CLK), .I_0(I_0), .O_0(Module_2_inst0_O_0), .valid_down(Module_2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Module_2_inst0_O_0;
assign valid_down = Module_2_inst0_valid_down;
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

module Counter3_Mod5CE (input CE, input CLK, output [2:0] O);
wire [2:0] Counter3CER_inst0_O;
wire LUT3_16_inst0_O;
wire and_inst0_out;
Counter3CER Counter3CER_inst0(.CE(CE), .CLK(CLK), .O(Counter3CER_inst0_O), .RESET(and_inst0_out));
LUT3_16 LUT3_16_inst0(.I0(Counter3CER_inst0_O[0]), .I1(Counter3CER_inst0_O[1]), .I2(Counter3CER_inst0_O[2]), .O(LUT3_16_inst0_O));
corebit_and and_inst0(.in0(LUT3_16_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter3CER_inst0_O;
endmodule

module InitialDelayCounter_4 (input CE, input CLK, output valid);
wire [2:0] Counter3_Mod5CE_inst0_O;
wire and_inst0_out;
wire [2:0] coreir_const34_inst0_out;
wire coreir_eq_3_inst0_out;
wire coreir_ult3_inst0_out;
Counter3_Mod5CE Counter3_Mod5CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter3_Mod5CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult3_inst0_out), .out(and_inst0_out));
coreir_const #(.value(3'h4), .width(3)) coreir_const34_inst0(.out(coreir_const34_inst0_out));
coreir_eq #(.width(3)) coreir_eq_3_inst0(.in0(Counter3_Mod5CE_inst0_O), .in1(coreir_const34_inst0_out), .out(coreir_eq_3_inst0_out));
coreir_ult #(.width(3)) coreir_ult3_inst0(.in0(Counter3_Mod5CE_inst0_O), .in1(coreir_const34_inst0_out), .out(coreir_ult3_inst0_out));
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

module Counter2_Mod3CE (input CE, input CLK, output [1:0] O);
wire [1:0] Counter2CER_inst0_O;
wire LUT2_4_inst0_O;
wire and_inst0_out;
Counter2CER Counter2CER_inst0(.CE(CE), .CLK(CLK), .O(Counter2CER_inst0_O), .RESET(and_inst0_out));
LUT2_4 LUT2_4_inst0(.I0(Counter2CER_inst0_O[0]), .I1(Counter2CER_inst0_O[1]), .O(LUT2_4_inst0_O));
corebit_and and_inst0(.in0(LUT2_4_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter2CER_inst0_O;
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
NestedCounters_Int_hasCETrue_hasResetFalse_unq2 NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
coreir_const #(.value(2'h3), .width(2)) coreir_const23_inst0(.out(coreir_const23_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const23_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = and_inst0_out;
endmodule

module Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid;
wire NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [7:0] RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
wire and_inst4_out;
wire and_inst5_out;
wire [0:0] coreir_const11_inst0_out;
NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_unq1 NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst0_out), .CLK(CLK), .last(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst2_out), .CLK(CLK), .valid(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid));
RAM_ST_SSeq_1_Int__hasResetFalse RAM_ST_SSeq_1_Int__hasResetFalse_inst0(.CLK(CLK), .RADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .RDATA_0(RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0), .RE(and_inst3_out), .WADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .WDATA_0(I_0), .WE(and_inst1_out));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(and_inst5_out), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(valid_up), .in1(coreir_const11_inst0_out[0]), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst1_out));
corebit_and and_inst2(.in0(and_inst0_out), .in1(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
corebit_and and_inst3(.in0(and_inst0_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst3_out));
corebit_and and_inst4(.in0(and_inst0_out), .in1(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst4_out));
corebit_and and_inst5(.in0(and_inst4_out), .in1(NestedCounters_TSeq_3_0_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst5_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0;
assign valid_down = valid_up;
endmodule

module NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse (input CE, input CLK, output valid);
wire [1:0] Counter2_Mod3CE_inst0_O;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid;
wire and_inst0_out;
wire and_inst1_out;
wire [1:0] coreir_const21_inst0_out;
wire coreir_ult2_inst0_out;
Counter2_Mod3CE Counter2_Mod3CE_inst0(.CE(and_inst1_out), .CLK(CLK), .O(Counter2_Mod3CE_inst0_O));
NestedCounters_Int_hasCETrue_hasResetFalse_unq2 NestedCounters_Int_hasCETrue_hasResetFalse_inst0(.CE(CE), .CLK(CLK), .last(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_valid), .in1(coreir_ult2_inst0_out), .out(and_inst0_out));
corebit_and and_inst1(.in0(CE), .in1(NestedCounters_Int_hasCETrue_hasResetFalse_inst0_last), .out(and_inst1_out));
coreir_const #(.value(2'h1), .width(2)) coreir_const21_inst0(.out(coreir_const21_inst0_out));
coreir_ult #(.width(2)) coreir_ult2_inst0(.in0(Counter2_Mod3CE_inst0_O), .in1(coreir_const21_inst0_out), .out(coreir_ult2_inst0_out));
assign valid = and_inst0_out;
endmodule

module Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last;
wire NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid;
wire NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid;
wire [7:0] RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
wire and_inst4_out;
wire and_inst5_out;
wire [0:0] coreir_const11_inst0_out;
NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_unq1 NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst0_out), .CLK(CLK), .last(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .valid(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0(.CE(and_inst2_out), .CLK(CLK), .valid(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid));
RAM_ST_SSeq_1_Int__hasResetFalse RAM_ST_SSeq_1_Int__hasResetFalse_inst0(.CLK(CLK), .RADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .RDATA_0(RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0), .RE(and_inst3_out), .WADDR(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .WDATA_0(I_0), .WE(and_inst1_out));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(and_inst5_out), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_valid));
corebit_and and_inst0(.in0(valid_up), .in1(coreir_const11_inst0_out[0]), .out(and_inst0_out));
corebit_and and_inst1(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst1_out));
corebit_and and_inst2(.in0(and_inst0_out), .in1(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst2_out));
corebit_and and_inst3(.in0(and_inst0_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst3_out));
corebit_and and_inst4(.in0(and_inst0_out), .in1(NestedCounters_SSeq_1_Int__hasCETrue_hasResetFalse_inst0_last), .out(and_inst4_out));
corebit_and and_inst5(.in0(and_inst4_out), .in1(NestedCounters_TSeq_1_2_Int__hasCETrue_hasResetFalse_inst0_valid), .out(and_inst5_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = RAM_ST_SSeq_1_Int__hasResetFalse_inst0_RDATA_0;
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

module Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire InitialDelayCounter_2_inst0_valid;
InitialDelayCounter_2 InitialDelayCounter_2_inst0(.CE(valid_up), .CLK(CLK), .valid(InitialDelayCounter_2_inst0_valid));
assign O_0 = I_0;
assign valid_down = InitialDelayCounter_2_inst0_valid;
endmodule

module Map_T_n9_i0_unq4 (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_O_0;
wire Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_valid_down;
Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0(.CLK(CLK), .I_0(I_0), .O_0(Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_O_0), .valid_down(Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_O_0;
assign valid_down = Down_S_n3_i0_sel2_tElSSeq_1_Int__vTrue_inst0_valid_down;
endmodule

module Counter1CER (input CE, input CLK, output [0:0] O, input RESET);
wire [0:0] Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1_inst0_O;
wire [0:0] const_1_1_out;
wire [0:0] coreir_add1_inst0_out;
Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1 Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1_inst0(.CE(CE), .CLK(CLK), .I(coreir_add1_inst0_out), .O(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1_inst0_O), .RESET(RESET));
coreir_const #(.value(1'h1), .width(1)) const_1_1(.out(const_1_1_out));
coreir_add #(.width(1)) coreir_add1_inst0(.in0(Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1_inst0_O), .in1(const_1_1_out), .out(coreir_add1_inst0_out));
assign O = Register_has_ce_True_has_reset_True_has_async_reset_False_type_Bits_n_1_inst0_O;
endmodule

module Counter1_Mod2CE (input CE, input CLK, output [0:0] O);
wire [0:0] Counter1CER_inst0_O;
wire LUT1_2_inst0_O;
wire and_inst0_out;
Counter1CER Counter1CER_inst0(.CE(CE), .CLK(CLK), .O(Counter1CER_inst0_O), .RESET(and_inst0_out));
LUT1_2 LUT1_2_inst0(.I0(Counter1CER_inst0_O[0]), .O(LUT1_2_inst0_O));
corebit_and and_inst0(.in0(LUT1_2_inst0_O), .in1(CE), .out(and_inst0_out));
assign O = Counter1CER_inst0_O;
endmodule

module InitialDelayCounter_1 (input CE, input CLK, output valid);
wire [0:0] Counter1_Mod2CE_inst0_O;
wire and_inst0_out;
wire [0:0] coreir_const11_inst0_out;
wire coreir_eq_1_inst0_out;
wire coreir_ult1_inst0_out;
Counter1_Mod2CE Counter1_Mod2CE_inst0(.CE(and_inst0_out), .CLK(CLK), .O(Counter1_Mod2CE_inst0_O));
corebit_and and_inst0(.in0(CE), .in1(coreir_ult1_inst0_out), .out(and_inst0_out));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
coreir_eq #(.width(1)) coreir_eq_1_inst0(.in0(Counter1_Mod2CE_inst0_O), .in1(coreir_const11_inst0_out), .out(coreir_eq_1_inst0_out));
coreir_ult #(.width(1)) coreir_ult1_inst0(.in0(Counter1_Mod2CE_inst0_O), .in1(coreir_const11_inst0_out), .out(coreir_ult1_inst0_out));
assign valid = coreir_eq_1_inst0_out;
endmodule

module Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire InitialDelayCounter_4_inst0_valid;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire [0:0] coreir_const11_inst0_out;
InitialDelayCounter_4 InitialDelayCounter_4_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_4_inst0_valid));
LUT_Array_3_Array_8_Bit__t_1n LUT_Array_3_Array_8_Bit__t_1n_inst0(.CLK(CLK), .addr(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .data_0(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0), .data_1(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1), .data_2(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(InitialDelayCounter_4_inst0_valid), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0;
assign O_1 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1;
assign O_2 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2;
assign valid_down = InitialDelayCounter_4_inst0_valid;
endmodule

module Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue (input CLK, output [7:0] O_0, output [7:0] O_1, output [7:0] O_2, output valid_down, input valid_up);
wire InitialDelayCounter_1_inst0_valid;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1;
wire [7:0] LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire [0:0] coreir_const11_inst0_out;
InitialDelayCounter_1 InitialDelayCounter_1_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_1_inst0_valid));
LUT_Array_3_Array_8_Bit__t_1n LUT_Array_3_Array_8_Bit__t_1n_inst0(.CLK(CLK), .addr(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .data_0(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0), .data_1(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1), .data_2(LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(InitialDelayCounter_1_inst0_valid), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_0;
assign O_1 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_1;
assign O_2 = LUT_Array_3_Array_8_Bit__t_1n_inst0_data_2;
assign valid_down = InitialDelayCounter_1_inst0_valid;
endmodule

module Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 (input CLK, output [7:0] O_0, output valid_down, input valid_up);
wire InitialDelayCounter_5_inst0_valid;
wire [7:0] LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire [0:0] coreir_const11_inst0_out;
InitialDelayCounter_5 InitialDelayCounter_5_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_5_inst0_valid));
LUT_Array_1_Array_8_Bit__t_1n LUT_Array_1_Array_8_Bit__t_1n_inst0(.CLK(CLK), .addr(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .data_0(LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(InitialDelayCounter_5_inst0_valid), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0;
assign valid_down = InitialDelayCounter_5_inst0_valid;
endmodule

module Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue (input CLK, output [7:0] O_0, output valid_down, input valid_up);
wire InitialDelayCounter_2_inst0_valid;
wire [7:0] LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0;
wire [0:0] SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O;
wire [0:0] coreir_const11_inst0_out;
InitialDelayCounter_2 InitialDelayCounter_2_inst0(.CE(coreir_const11_inst0_out[0]), .CLK(CLK), .valid(InitialDelayCounter_2_inst0_valid));
LUT_Array_1_Array_8_Bit__t_1n LUT_Array_1_Array_8_Bit__t_1n_inst0(.CLK(CLK), .addr(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O), .data_0(LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0));
SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0(.CE(InitialDelayCounter_2_inst0_valid), .CLK(CLK), .O(SizedCounter_1_cinFalse_coutFalse_incr1_hasCETrue_hasResetFalse_inst0_O));
Term_Bitt Term_Bitt_inst0(.I(valid_up));
coreir_const #(.value(1'h1), .width(1)) coreir_const11_inst0(.out(coreir_const11_inst0_out));
assign O_0 = LUT_Array_1_Array_8_Bit__t_1n_inst0_data_0;
assign valid_down = InitialDelayCounter_2_inst0_valid;
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

module ReduceParallel_n3 (input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O);
wire [7:0] renamedForReduce_inst0_out;
wire [7:0] renamedForReduce_inst1_out;
renamedForReduce renamedForReduce_inst0(.in0(I_0), .in1(renamedForReduce_inst1_out), .out(renamedForReduce_inst0_out));
renamedForReduce renamedForReduce_inst1(.in0(I_1), .in1(I_2), .out(renamedForReduce_inst1_out));
assign O = renamedForReduce_inst0_out;
endmodule

module Reduce_S_n3 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] ReduceParallel_n3_inst0_O;
wire [7:0] Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
wire [0:0] reg_P_inst0_out;
ReduceParallel_n3 ReduceParallel_n3_inst0(.I_0(I_0), .I_1(I_1), .I_2(I_2), .O(ReduceParallel_n3_inst0_O));
Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0(.CLK(CLK), .I_0(ReduceParallel_n3_inst0_O), .O_0(Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0));
coreir_reg #(.clk_posedge(1), .init(1'h0), .width(1)) reg_P_inst0(.clk(CLK), .in(valid_up), .out(reg_P_inst0_out));
assign O_0 = Register_Array_1_Array_8_Bit__t_0init_FalseCE_FalseRESET_inst0_O_0;
assign valid_down = reg_P_inst0_out[0];
endmodule

module Module_1 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2;
wire Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] NativeMapParallel_n1_inst0_O_0__0;
wire [7:0] NativeMapParallel_n1_inst0_O_0__1;
wire NativeMapParallel_n1_inst0_valid_down;
wire [7:0] NativeMapParallel_n1_inst1_O_0;
wire NativeMapParallel_n1_inst1_valid_down;
wire [7:0] NativeMapParallel_n3_inst0_O_0__0;
wire [7:0] NativeMapParallel_n3_inst0_O_0__1;
wire [7:0] NativeMapParallel_n3_inst0_O_1__0;
wire [7:0] NativeMapParallel_n3_inst0_O_1__1;
wire [7:0] NativeMapParallel_n3_inst0_O_2__0;
wire [7:0] NativeMapParallel_n3_inst0_O_2__1;
wire NativeMapParallel_n3_inst0_valid_down;
wire [7:0] NativeMapParallel_n3_inst1_O_0;
wire [7:0] NativeMapParallel_n3_inst1_O_1;
wire [7:0] NativeMapParallel_n3_inst1_O_2;
wire NativeMapParallel_n3_inst1_valid_down;
wire [7:0] Reduce_S_n3_inst0_O_0;
wire Reduce_S_n3_inst0_valid_down;
wire and_inst0_out;
wire and_inst1_out;
Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O_0(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .valid_down(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_unq1 Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O_0(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1), .O_2(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2), .valid_down(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
NativeMapParallel_n1_unq2 NativeMapParallel_n1_inst0(.I0_0(Reduce_S_n3_inst0_O_0), .I1_0(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0__0(NativeMapParallel_n1_inst0_O_0__0), .O_0__1(NativeMapParallel_n1_inst0_O_0__1), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(and_inst1_out));
NativeMapParallel_n1_unq3 NativeMapParallel_n1_inst1(.I_0__0(NativeMapParallel_n1_inst0_O_0__0), .I_0__1(NativeMapParallel_n1_inst0_O_0__1), .O_0(NativeMapParallel_n1_inst1_O_0), .valid_down(NativeMapParallel_n1_inst1_valid_down), .valid_up(NativeMapParallel_n1_inst0_valid_down));
NativeMapParallel_n3 NativeMapParallel_n3_inst0(.I0_0(I_0), .I0_1(I_1), .I0_2(I_2), .I1_0(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .I1_1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1), .I1_2(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2), .O_0__0(NativeMapParallel_n3_inst0_O_0__0), .O_0__1(NativeMapParallel_n3_inst0_O_0__1), .O_1__0(NativeMapParallel_n3_inst0_O_1__0), .O_1__1(NativeMapParallel_n3_inst0_O_1__1), .O_2__0(NativeMapParallel_n3_inst0_O_2__0), .O_2__1(NativeMapParallel_n3_inst0_O_2__1), .valid_down(NativeMapParallel_n3_inst0_valid_down), .valid_up(and_inst0_out));
NativeMapParallel_n3_unq1 NativeMapParallel_n3_inst1(.I_0__0(NativeMapParallel_n3_inst0_O_0__0), .I_0__1(NativeMapParallel_n3_inst0_O_0__1), .I_1__0(NativeMapParallel_n3_inst0_O_1__0), .I_1__1(NativeMapParallel_n3_inst0_O_1__1), .I_2__0(NativeMapParallel_n3_inst0_O_2__0), .I_2__1(NativeMapParallel_n3_inst0_O_2__1), .O_0(NativeMapParallel_n3_inst1_O_0), .O_1(NativeMapParallel_n3_inst1_O_1), .O_2(NativeMapParallel_n3_inst1_O_2), .valid_down(NativeMapParallel_n3_inst1_valid_down), .valid_up(NativeMapParallel_n3_inst0_valid_down));
Reduce_S_n3 Reduce_S_n3_inst0(.CLK(CLK), .I_0(NativeMapParallel_n3_inst1_O_0), .I_1(NativeMapParallel_n3_inst1_O_1), .I_2(NativeMapParallel_n3_inst1_O_2), .O_0(Reduce_S_n3_inst0_O_0), .valid_down(Reduce_S_n3_inst0_valid_down), .valid_up(NativeMapParallel_n3_inst1_valid_down));
corebit_and and_inst0(.in0(valid_up), .in1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Reduce_S_n3_inst0_valid_down), .in1(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
assign O_0 = NativeMapParallel_n1_inst1_O_0;
assign valid_down = NativeMapParallel_n1_inst1_valid_down;
endmodule

module Map_T_n1_i2_unq3 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Module_1_inst0_O_0;
wire Module_1_inst0_valid_down;
Module_1 Module_1_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O_0(Module_1_inst0_O_0), .valid_down(Module_1_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Module_1_inst0_O_0;
assign valid_down = Module_1_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq8 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Map_T_n1_i2_inst0_O_0;
wire Map_T_n1_i2_inst0_valid_down;
Map_T_n1_i2_unq3 Map_T_n1_i2_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O_0(Map_T_n1_i2_inst0_O_0), .valid_down(Map_T_n1_i2_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n1_i2_inst0_O_0;
assign valid_down = Map_T_n1_i2_inst0_valid_down;
endmodule

module Module_0 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1;
wire [7:0] Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2;
wire Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] NativeMapParallel_n1_inst0_O_0__0;
wire [7:0] NativeMapParallel_n1_inst0_O_0__1;
wire NativeMapParallel_n1_inst0_valid_down;
wire [7:0] NativeMapParallel_n1_inst1_O_0;
wire NativeMapParallel_n1_inst1_valid_down;
wire [7:0] NativeMapParallel_n3_inst0_O_0__0;
wire [7:0] NativeMapParallel_n3_inst0_O_0__1;
wire [7:0] NativeMapParallel_n3_inst0_O_1__0;
wire [7:0] NativeMapParallel_n3_inst0_O_1__1;
wire [7:0] NativeMapParallel_n3_inst0_O_2__0;
wire [7:0] NativeMapParallel_n3_inst0_O_2__1;
wire NativeMapParallel_n3_inst0_valid_down;
wire [7:0] NativeMapParallel_n3_inst1_O_0;
wire [7:0] NativeMapParallel_n3_inst1_O_1;
wire [7:0] NativeMapParallel_n3_inst1_O_2;
wire NativeMapParallel_n3_inst1_valid_down;
wire [7:0] Reduce_S_n3_inst0_O_0;
wire Reduce_S_n3_inst0_valid_down;
wire and_inst0_out;
wire and_inst1_out;
Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O_0(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .valid_down(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .O_0(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1), .O_2(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2), .valid_down(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
NativeMapParallel_n1_unq2 NativeMapParallel_n1_inst0(.I0_0(Reduce_S_n3_inst0_O_0), .I1_0(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0__0(NativeMapParallel_n1_inst0_O_0__0), .O_0__1(NativeMapParallel_n1_inst0_O_0__1), .valid_down(NativeMapParallel_n1_inst0_valid_down), .valid_up(and_inst1_out));
NativeMapParallel_n1_unq3 NativeMapParallel_n1_inst1(.I_0__0(NativeMapParallel_n1_inst0_O_0__0), .I_0__1(NativeMapParallel_n1_inst0_O_0__1), .O_0(NativeMapParallel_n1_inst1_O_0), .valid_down(NativeMapParallel_n1_inst1_valid_down), .valid_up(NativeMapParallel_n1_inst0_valid_down));
NativeMapParallel_n3 NativeMapParallel_n3_inst0(.I0_0(I_0), .I0_1(I_1), .I0_2(I_2), .I1_0(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .I1_1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_1), .I1_2(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_2), .O_0__0(NativeMapParallel_n3_inst0_O_0__0), .O_0__1(NativeMapParallel_n3_inst0_O_0__1), .O_1__0(NativeMapParallel_n3_inst0_O_1__0), .O_1__1(NativeMapParallel_n3_inst0_O_1__1), .O_2__0(NativeMapParallel_n3_inst0_O_2__0), .O_2__1(NativeMapParallel_n3_inst0_O_2__1), .valid_down(NativeMapParallel_n3_inst0_valid_down), .valid_up(and_inst0_out));
NativeMapParallel_n3_unq1 NativeMapParallel_n3_inst1(.I_0__0(NativeMapParallel_n3_inst0_O_0__0), .I_0__1(NativeMapParallel_n3_inst0_O_0__1), .I_1__0(NativeMapParallel_n3_inst0_O_1__0), .I_1__1(NativeMapParallel_n3_inst0_O_1__1), .I_2__0(NativeMapParallel_n3_inst0_O_2__0), .I_2__1(NativeMapParallel_n3_inst0_O_2__1), .O_0(NativeMapParallel_n3_inst1_O_0), .O_1(NativeMapParallel_n3_inst1_O_1), .O_2(NativeMapParallel_n3_inst1_O_2), .valid_down(NativeMapParallel_n3_inst1_valid_down), .valid_up(NativeMapParallel_n3_inst0_valid_down));
Reduce_S_n3 Reduce_S_n3_inst0(.CLK(CLK), .I_0(NativeMapParallel_n3_inst1_O_0), .I_1(NativeMapParallel_n3_inst1_O_1), .I_2(NativeMapParallel_n3_inst1_O_2), .O_0(Reduce_S_n3_inst0_O_0), .valid_down(Reduce_S_n3_inst0_valid_down), .valid_up(NativeMapParallel_n3_inst1_valid_down));
corebit_and and_inst0(.in0(valid_up), .in1(Const_tSSeq_3_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Reduce_S_n3_inst0_valid_down), .in1(Const_tSSeq_1_Int__hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
assign O_0 = NativeMapParallel_n1_inst1_O_0;
assign valid_down = NativeMapParallel_n1_inst1_valid_down;
endmodule

module Map_T_n3_i0_unq3 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Module_0_inst0_O_0;
wire Module_0_inst0_valid_down;
Module_0 Module_0_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O_0(Module_0_inst0_O_0), .valid_down(Module_0_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Module_0_inst0_O_0;
assign valid_down = Module_0_inst0_valid_down;
endmodule

module Map_T_n9_i0_unq3 (input CLK, input [7:0] I_0, input [7:0] I_1, input [7:0] I_2, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] Map_T_n3_i0_inst0_O_0;
wire Map_T_n3_i0_inst0_valid_down;
Map_T_n3_i0_unq3 Map_T_n3_i0_inst0(.CLK(CLK), .I_0(I_0), .I_1(I_1), .I_2(I_2), .O_0(Map_T_n3_i0_inst0_O_0), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(valid_up));
assign O_0 = Map_T_n3_i0_inst0_O_0;
assign valid_down = Map_T_n3_i0_inst0_valid_down;
endmodule

module top (input CLK, input [7:0] I_0, output [7:0] O_0, output valid_down, input valid_up);
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down;
wire [7:0] FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0;
wire FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
wire [7:0] FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Map_T_n3_i0_inst0_O_0;
wire Map_T_n3_i0_inst0_valid_down;
wire [7:0] Map_T_n9_i0_inst0_O_0_0;
wire [7:0] Map_T_n9_i0_inst0_O_0_1;
wire Map_T_n9_i0_inst0_valid_down;
wire [7:0] Map_T_n9_i0_inst1_O_0_0;
wire [7:0] Map_T_n9_i0_inst1_O_0_1;
wire [7:0] Map_T_n9_i0_inst1_O_0_2;
wire Map_T_n9_i0_inst1_valid_down;
wire [7:0] Map_T_n9_i0_inst2_O_0;
wire [7:0] Map_T_n9_i0_inst2_O_1;
wire [7:0] Map_T_n9_i0_inst2_O_2;
wire Map_T_n9_i0_inst2_valid_down;
wire [7:0] Map_T_n9_i0_inst3_O_0;
wire Map_T_n9_i0_inst3_valid_down;
wire [7:0] Map_T_n9_i0_inst4_O_0;
wire Map_T_n9_i0_inst4_valid_down;
wire [7:0] Map_T_n9_i0_inst5_O_0_0;
wire [7:0] Map_T_n9_i0_inst5_O_0_1;
wire Map_T_n9_i0_inst5_valid_down;
wire [7:0] Map_T_n9_i0_inst6_O_0_0;
wire [7:0] Map_T_n9_i0_inst6_O_0_1;
wire [7:0] Map_T_n9_i0_inst6_O_0_2;
wire Map_T_n9_i0_inst6_valid_down;
wire [7:0] Map_T_n9_i0_inst7_O_0;
wire [7:0] Map_T_n9_i0_inst7_O_1;
wire [7:0] Map_T_n9_i0_inst7_O_2;
wire Map_T_n9_i0_inst7_valid_down;
wire [7:0] Map_T_n9_i0_inst8_O_0;
wire Map_T_n9_i0_inst8_valid_down;
wire [7:0] Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_O_0;
wire Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_valid_down;
wire [7:0] Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_O_0;
wire Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0;
wire Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0;
wire Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0;
wire Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
wire [7:0] Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O_0;
wire Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down;
wire and_inst0_out;
wire and_inst1_out;
wire and_inst2_out;
wire and_inst3_out;
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I_0(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_O_0), .O_0(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_valid_down));
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1(.CLK(CLK), .I_0(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .valid_up(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2(.CLK(CLK), .I_0(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0), .O_0(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0), .valid_down(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .valid_up(FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down));
FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I_0(I_0), .O_0(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .valid_down(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(valid_up));
Map_T_n3_i0_unq4 Map_T_n3_i0_inst0(.CLK(CLK), .I_0(Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_O_0), .O_0(Map_T_n3_i0_inst0_O_0), .valid_down(Map_T_n3_i0_inst0_valid_down), .valid_up(Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_valid_down));
Map_T_n9_i0 Map_T_n9_i0_inst0(.CLK(CLK), .I0_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0), .I1_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0_0(Map_T_n9_i0_inst0_O_0_0), .O_0_1(Map_T_n9_i0_inst0_O_0_1), .valid_down(Map_T_n9_i0_inst0_valid_down), .valid_up(and_inst0_out));
Map_T_n9_i0_unq1 Map_T_n9_i0_inst1(.CLK(CLK), .I0_0_0(Map_T_n9_i0_inst0_O_0_0), .I0_0_1(Map_T_n9_i0_inst0_O_0_1), .I1_0(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0_0(Map_T_n9_i0_inst1_O_0_0), .O_0_1(Map_T_n9_i0_inst1_O_0_1), .O_0_2(Map_T_n9_i0_inst1_O_0_2), .valid_down(Map_T_n9_i0_inst1_valid_down), .valid_up(and_inst1_out));
Map_T_n9_i0_unq2 Map_T_n9_i0_inst2(.CLK(CLK), .I_0_0(Map_T_n9_i0_inst1_O_0_0), .I_0_1(Map_T_n9_i0_inst1_O_0_1), .I_0_2(Map_T_n9_i0_inst1_O_0_2), .O_0(Map_T_n9_i0_inst2_O_0), .O_1(Map_T_n9_i0_inst2_O_1), .O_2(Map_T_n9_i0_inst2_O_2), .valid_down(Map_T_n9_i0_inst2_valid_down), .valid_up(Map_T_n9_i0_inst1_valid_down));
Map_T_n9_i0_unq3 Map_T_n9_i0_inst3(.CLK(CLK), .I_0(Map_T_n9_i0_inst2_O_0), .I_1(Map_T_n9_i0_inst2_O_1), .I_2(Map_T_n9_i0_inst2_O_2), .O_0(Map_T_n9_i0_inst3_O_0), .valid_down(Map_T_n9_i0_inst3_valid_down), .valid_up(Map_T_n9_i0_inst2_valid_down));
Map_T_n9_i0_unq4 Map_T_n9_i0_inst4(.CLK(CLK), .I_0(Map_T_n9_i0_inst3_O_0), .O_0(Map_T_n9_i0_inst4_O_0), .valid_down(Map_T_n9_i0_inst4_valid_down), .valid_up(Map_T_n9_i0_inst3_valid_down));
Map_T_n9_i0_unq5 Map_T_n9_i0_inst5(.CLK(CLK), .I0_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O_0), .I1_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0), .O_0_0(Map_T_n9_i0_inst5_O_0_0), .O_0_1(Map_T_n9_i0_inst5_O_0_1), .valid_down(Map_T_n9_i0_inst5_valid_down), .valid_up(and_inst2_out));
Map_T_n9_i0_unq6 Map_T_n9_i0_inst6(.CLK(CLK), .I0_0_0(Map_T_n9_i0_inst5_O_0_0), .I0_0_1(Map_T_n9_i0_inst5_O_0_1), .I1_0(Map_T_n9_i0_inst4_O_0), .O_0_0(Map_T_n9_i0_inst6_O_0_0), .O_0_1(Map_T_n9_i0_inst6_O_0_1), .O_0_2(Map_T_n9_i0_inst6_O_0_2), .valid_down(Map_T_n9_i0_inst6_valid_down), .valid_up(and_inst3_out));
Map_T_n9_i0_unq7 Map_T_n9_i0_inst7(.CLK(CLK), .I_0_0(Map_T_n9_i0_inst6_O_0_0), .I_0_1(Map_T_n9_i0_inst6_O_0_1), .I_0_2(Map_T_n9_i0_inst6_O_0_2), .O_0(Map_T_n9_i0_inst7_O_0), .O_1(Map_T_n9_i0_inst7_O_1), .O_2(Map_T_n9_i0_inst7_O_2), .valid_down(Map_T_n9_i0_inst7_valid_down), .valid_up(Map_T_n9_i0_inst6_valid_down));
Map_T_n9_i0_unq8 Map_T_n9_i0_inst8(.CLK(CLK), .I_0(Map_T_n9_i0_inst7_O_0), .I_1(Map_T_n9_i0_inst7_O_1), .I_2(Map_T_n9_i0_inst7_O_2), .O_0(Map_T_n9_i0_inst8_O_0), .valid_down(Map_T_n9_i0_inst8_valid_down), .valid_up(Map_T_n9_i0_inst7_valid_down));
Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int____ Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0(.I_0(Map_T_n3_i0_inst0_O_0), .O_0(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_O_0), .valid_down(Passthrough_tInTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____tOutTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____inst0_valid_down), .valid_up(Map_T_n3_i0_inst0_valid_down));
Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int____ Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0(.I_0(Map_T_n9_i0_inst8_O_0), .O_0(Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_O_0), .valid_down(Passthrough_tInTSeq_9_0_TSeq_1_2_SSeq_1_Int____tOutTSeq_3_0_TSeq_3_0_TSeq_1_2_SSeq_1_Int_____inst0_valid_down), .valid_up(Map_T_n9_i0_inst8_valid_down));
Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0(.CLK(CLK), .I_0(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .valid_down(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .valid_up(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1(.CLK(CLK), .I_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_O_0), .O_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_O_0), .valid_down(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .valid_up(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down));
Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2(.CLK(CLK), .I_0(Map_T_n9_i0_inst4_O_0), .O_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0), .valid_down(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .valid_up(Map_T_n9_i0_inst4_valid_down));
Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_unq1 Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3(.CLK(CLK), .I_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0), .O_0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_O_0), .valid_down(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down), .valid_up(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down));
corebit_and and_inst0(.in0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst1_valid_down), .in1(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst0_out));
corebit_and and_inst1(.in0(Map_T_n9_i0_inst0_valid_down), .in1(FIFO_tTSeq_9_0_TSeq_3_0_SSeq_1_Int____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst0_valid_down), .out(and_inst1_out));
corebit_and and_inst2(.in0(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst3_valid_down), .in1(Shift_tN_no9_ni0_amt1_tElSSeq_1_Int___hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down), .out(and_inst2_out));
corebit_and and_inst3(.in0(Map_T_n9_i0_inst5_valid_down), .in1(Map_T_n9_i0_inst4_valid_down), .out(and_inst3_out));
assign O_0 = FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_O_0;
assign valid_down = FIFO_tTSeq_3_0_TSeq_1_2_TSeq_1_2_SSeq_1_Int_____delay1_hasCEFalse_hasResetFalse_hasValidTrue_inst2_valid_down;
endmodule

