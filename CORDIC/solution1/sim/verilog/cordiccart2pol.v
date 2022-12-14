// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cordiccart2pol_cordiccart2pol,hls_ip_2021_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.870000,HLS_SYN_LAT=23,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=282,HLS_SYN_LUT=687,HLS_VERSION=2021_2}" *)

module cordiccart2pol (
        ap_local_block,
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

output   ap_local_block;
input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;

reg ap_done;
reg ap_idle;
reg ap_ready;

wire   [0:0] ap_local_deadlock;
 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [15:0] x;
wire   [15:0] y;
wire   [15:0] r;
reg    r_ap_vld;
wire   [15:0] theta;
reg    theta_ap_vld;
reg   [15:0] y_read_reg_193;
wire   [15:0] temp_V_fu_126_p3;
reg   [15:0] temp_V_reg_210;
wire   [15:0] y_V_5_fu_135_p3;
reg   [15:0] y_V_5_reg_215;
wire    ap_CS_fsm_state3;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_done;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_idle;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_ready;
wire   [15:0] grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_p_out;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_p_out_ap_vld;
wire  signed [15:0] grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_x_V_2_out;
wire    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_x_V_2_out_ap_vld;
reg    grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state6;
wire   [0:0] tmp_fu_106_p3;
wire   [15:0] x_V_fu_114_p2;
wire   [15:0] y_V_fu_120_p2;
wire   [0:0] tmp_1_fu_151_p3;
wire   [15:0] select_ln19_fu_158_p3;
wire  signed [27:0] grp_fu_186_p2;
wire   [11:0] grp_fu_186_p1;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg = 1'b0;
end

cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_29_1 grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start),
    .ap_done(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_done),
    .ap_idle(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_idle),
    .ap_ready(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_ready),
    .y_V_1(y_V_5_reg_215),
    .temp_V(temp_V_reg_210),
    .p_out(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_p_out),
    .p_out_ap_vld(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_p_out_ap_vld),
    .x_V_2_out(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_x_V_2_out),
    .x_V_2_out_ap_vld(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_x_V_2_out_ap_vld)
);

cordiccart2pol_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .x(x),
    .y(y),
    .r(r),
    .r_ap_vld(r_ap_vld),
    .theta(theta),
    .theta_ap_vld(theta_ap_vld),
    .ap_local_deadlock(ap_local_deadlock)
);

cordiccart2pol_mul_mul_16s_12ns_28_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 12 ),
    .dout_WIDTH( 28 ))
mul_mul_16s_12ns_28_4_1_U6(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_x_V_2_out),
    .din1(grp_fu_186_p1),
    .ce(1'b1),
    .dout(grp_fu_186_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_ready == 1'b1)) begin
            grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        temp_V_reg_210 <= temp_V_fu_126_p3;
        y_V_5_reg_215 <= y_V_5_fu_135_p3;
        y_read_reg_193 <= y;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_ap_vld = 1'b1;
    end else begin
        r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        theta_ap_vld = 1'b1;
    end else begin
        theta_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_local_block = 1'b0;

assign ap_local_deadlock = 1'd0;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start = grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_ap_start_reg;

assign grp_fu_186_p1 = 28'd2487;

assign r = {{grp_fu_186_p2[27:12]}};

assign select_ln19_fu_158_p3 = ((tmp_1_fu_151_p3[0:0] == 1'b1) ? 16'd59102 : 16'd6433);

assign temp_V_fu_126_p3 = ((tmp_fu_106_p3[0:0] == 1'b1) ? x_V_fu_114_p2 : y);

assign theta = (grp_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_fu_96_p_out + select_ln19_fu_158_p3);

assign tmp_1_fu_151_p3 = y_read_reg_193[32'd15];

assign tmp_fu_106_p3 = y[32'd15];

assign x_V_fu_114_p2 = (16'd0 - y);

assign y_V_5_fu_135_p3 = ((tmp_fu_106_p3[0:0] == 1'b1) ? x : y_V_fu_120_p2);

assign y_V_fu_120_p2 = (16'd0 - x);

endmodule //cordiccart2pol
