// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module fast_accel_IMG_V_22_RAM_1WNR_AUTO_2R1W (address0, ce0, d0, we0, q0, address1, ce1, q1, address2, ce2, q2, address3, ce3, q3, address4, ce4, q4, address5, ce5, q5,  reset, clk);

parameter DataWidth = 8;
parameter AddressWidth = 10;
parameter AddressRange = 606;

input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0;
output wire[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output wire[DataWidth-1:0] q1;
input[AddressWidth-1:0] address2;
input ce2;
output wire[DataWidth-1:0] q2;
input[AddressWidth-1:0] address3;
input ce3;
output wire[DataWidth-1:0] q3;
input[AddressWidth-1:0] address4;
input ce4;
output wire[DataWidth-1:0] q4;
input[AddressWidth-1:0] address5;
input ce5;
output wire[DataWidth-1:0] q5;
input reset;
input clk;

reg [DataWidth-1:0] ram0[0:AddressRange-1];
reg [DataWidth-1:0] ram1[0:AddressRange-1];
reg [DataWidth-1:0] ram2[0:AddressRange-1];
reg [DataWidth-1:0] ram3[0:AddressRange-1];
reg [DataWidth-1:0] ram4[0:AddressRange-1];
reg [DataWidth-1:0] q0_t0;
reg [DataWidth-1:0] q0_t1;
reg [DataWidth-1:0] q1_t0;
reg [DataWidth-1:0] q1_t1;
reg [DataWidth-1:0] q2_t0;
reg [DataWidth-1:0] q2_t1;
reg [DataWidth-1:0] q3_t0;
reg [DataWidth-1:0] q3_t1;
reg [DataWidth-1:0] q4_t0;
reg [DataWidth-1:0] q4_t1;
reg [DataWidth-1:0] q5_t0;
reg [DataWidth-1:0] q5_t1;

assign q0 = q0_t1;
assign q1 = q1_t1;
assign q2 = q2_t1;
assign q3 = q3_t1;
assign q4 = q4_t1;
assign q5 = q5_t1;

always @(posedge clk)  
begin
    if (ce0) 
    begin
        q0_t1 <= q0_t0;
    end
    if (ce1) 
    begin
        q1_t1 <= q1_t0;
    end
    if (ce2) 
    begin
        q2_t1 <= q2_t0;
    end
    if (ce3) 
    begin
        q3_t1 <= q3_t0;
    end
    if (ce4) 
    begin
        q4_t1 <= q4_t0;
    end
    if (ce5) 
    begin
        q5_t1 <= q5_t0;
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram0[address0] <= d0; 
        q0_t0 <= ram0[address0];
    end
end


always @(posedge clk)  
begin 
    if (ce1) begin
        q1_t0 <= ram0[address1];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram1[address0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce2) begin
        q2_t0 <= ram1[address2];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram2[address0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce3) begin
        q3_t0 <= ram2[address3];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram3[address0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce4) begin
        q4_t0 <= ram3[address4];
    end
end


always @(posedge clk)  
begin 
    if (ce0) begin
        if (we0) 
            ram4[address0] <= d0; 
    end
end

always @(posedge clk)  
begin 
    if (ce5) begin
        q5_t0 <= ram4[address5];
    end
end


endmodule

