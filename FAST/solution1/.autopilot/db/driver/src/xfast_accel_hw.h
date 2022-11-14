// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of img_in
//        bit 31~0 - img_in[31:0] (Read/Write)
// 0x14 : Data signal of img_in
//        bit 31~0 - img_in[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of threshold
//        bit 31~0 - threshold[31:0] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of img_out
//        bit 31~0 - img_out[31:0] (Read/Write)
// 0x28 : Data signal of img_out
//        bit 31~0 - img_out[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFAST_ACCEL_CONTROL_ADDR_IMG_IN_DATA    0x10
#define XFAST_ACCEL_CONTROL_BITS_IMG_IN_DATA    64
#define XFAST_ACCEL_CONTROL_ADDR_THRESHOLD_DATA 0x1c
#define XFAST_ACCEL_CONTROL_BITS_THRESHOLD_DATA 32
#define XFAST_ACCEL_CONTROL_ADDR_IMG_OUT_DATA   0x24
#define XFAST_ACCEL_CONTROL_BITS_IMG_OUT_DATA   64
#define XFAST_ACCEL_CONTROL_ADDR_ROWS_DATA      0x30
#define XFAST_ACCEL_CONTROL_BITS_ROWS_DATA      32
#define XFAST_ACCEL_CONTROL_ADDR_COLS_DATA      0x38
#define XFAST_ACCEL_CONTROL_BITS_COLS_DATA      32

