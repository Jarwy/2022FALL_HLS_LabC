// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of x
//        bit 15~0 - x[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of y
//        bit 15~0 - y[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of r
//        bit 15~0 - r[15:0] (Read)
//        others   - reserved
// 0x24 : Control signal of r
//        bit 0  - r_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of theta
//        bit 15~0 - theta[15:0] (Read)
//        others   - reserved
// 0x34 : Control signal of theta
//        bit 0  - theta_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_X_DATA     0x10
#define CONTROL_BITS_X_DATA     16
#define CONTROL_ADDR_Y_DATA     0x18
#define CONTROL_BITS_Y_DATA     16
#define CONTROL_ADDR_R_DATA     0x20
#define CONTROL_BITS_R_DATA     16
#define CONTROL_ADDR_R_CTRL     0x24
#define CONTROL_ADDR_THETA_DATA 0x30
#define CONTROL_BITS_THETA_DATA 16
#define CONTROL_ADDR_THETA_CTRL 0x34
