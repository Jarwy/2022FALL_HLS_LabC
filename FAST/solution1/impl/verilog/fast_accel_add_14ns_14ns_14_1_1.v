// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module fast_accel_add_14ns_14ns_14_1_1_Adder_3(a, b, s);

input [14 - 1 : 0] a;
input [14 - 1 : 0] b;
output [14 - 1 : 0] s;

assign s = a + b;

endmodule
`timescale 1 ns / 1 ps
module fast_accel_add_14ns_14ns_14_1_1(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



fast_accel_add_14ns_14ns_14_1_1_Adder_3 fast_accel_add_14ns_14ns_14_1_1_Adder_3_U(
    .a( din0 ),
    .b( din1 ),
    .s( dout ));

endmodule

