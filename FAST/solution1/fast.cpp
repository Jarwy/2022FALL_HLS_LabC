#include "fast.h"

void fast_accel(DTYPE* img_in, int threshold, DTYPE* img_out, int rows, int cols)
{
#pragma HLS INTERFACE m_axi depth=16384 port=img_in
#pragma HLS INTERFACE m_axi depth=16384 port=img_out
#pragma HLS INTERFACE s_axilite port=threshold
#pragma HLS INTERFACE s_axilite port=rows
#pragma HLS INTERFACE s_axilite port=cols
//#pragma HLS INTERFACE ap_ctrl_none port=return
    DTYPE IMG[16384];
    uint_1 FLAG[16] = {0};

    for (uint_16 i = 0; i < 16384; i++) {
#pragma HLS PIPELINE
    	IMG[i] = img_in[i];
    }

    for (uint_16 i = 387; i < 15997; i++) {
#pragma HLS PIPELINE
    	DTYPE pixel_in = img_in[i];
    	DTYPE row = i / 128;
        DTYPE col = i % 128;

        FLAG[0] = abs(IMG[i - 384] - pixel_in) > threshold;
        FLAG[1] = abs(IMG[i + 3] - pixel_in) > threshold;
        FLAG[2] = abs(IMG[i + 384] - pixel_in) > threshold;
        FLAG[3] = abs(IMG[i - 3] - pixel_in) > threshold;
        FLAG[4] = abs(IMG[i - 383] - pixel_in) > threshold;
        FLAG[5] = abs(IMG[i - 254] - pixel_in) > threshold;
        FLAG[6] = abs(IMG[i - 125] - pixel_in) > threshold;
        FLAG[7] = abs(IMG[i + 131] - pixel_in) > threshold;
        FLAG[8] = abs(IMG[i + 258] - pixel_in) > threshold;
        FLAG[9] = abs(IMG[i + 385] - pixel_in) > threshold;
        FLAG[10] = abs(IMG[i + 383] - pixel_in) > threshold;
        FLAG[11] = abs(IMG[i + 254] - pixel_in) > threshold;
        FLAG[12] = abs(IMG[i + 125] - pixel_in) > threshold;
        FLAG[13] = abs(IMG[i - 131] - pixel_in) > threshold;
        FLAG[14] = abs(IMG[i - 258] - pixel_in) > threshold;
        FLAG[15] = abs(IMG[i - 385] - pixel_in) > threshold;

        bool pre_examine = 0;
        DTYPE cnt = 0;
        for(DTYPE i = 0; i<16; i++){
        	cnt = cnt + FLAG[i];
        	if(i==3 && cnt>2) pre_examine = 1;
        }

        if (cnt >= 12 && pre_examine == 1)
            img_out[i] = 255;
        else
            img_out[i] = 0;

        if (col == 124)
            i = i+6;
        else
            i = i;
    }
}
/**/

