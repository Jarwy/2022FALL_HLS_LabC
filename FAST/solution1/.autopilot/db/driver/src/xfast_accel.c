// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfast_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFast_accel_CfgInitialize(XFast_accel *InstancePtr, XFast_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFast_accel_Set_img_in(XFast_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_IN_DATA, (u32)(Data));
    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_IN_DATA + 4, (u32)(Data >> 32));
}

u64 XFast_accel_Get_img_in(XFast_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_IN_DATA);
    Data += (u64)XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_IN_DATA + 4) << 32;
    return Data;
}

void XFast_accel_Set_threshold(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_THRESHOLD_DATA, Data);
}

u32 XFast_accel_Get_threshold(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_THRESHOLD_DATA);
    return Data;
}

void XFast_accel_Set_img_out(XFast_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_OUT_DATA, (u32)(Data));
    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_OUT_DATA + 4, (u32)(Data >> 32));
}

u64 XFast_accel_Get_img_out(XFast_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_OUT_DATA);
    Data += (u64)XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_IMG_OUT_DATA + 4) << 32;
    return Data;
}

void XFast_accel_Set_rows(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XFast_accel_Get_rows(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XFast_accel_Set_cols(XFast_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFast_accel_WriteReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XFast_accel_Get_cols(XFast_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFast_accel_ReadReg(InstancePtr->Control_BaseAddress, XFAST_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

