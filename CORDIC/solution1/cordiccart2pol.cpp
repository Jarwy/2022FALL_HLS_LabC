#include "cordiccart2pol.h"

data_t  FACTOR = 0.6072529350088812561694;
data_t angles[16] = {	0.78539816339744828000, 0.46364760900080609000, 0.24497866312686414000, 0.12435499454676144000,
						0.06241880999595735000, 0.03123983343026827700, 0.01562372862047683100, 0.00781234106010111110,
						0.00390623013196697180, 0.00195312251647881880, 0.00097656218955931946, 0.00048828121119489829,
						0.00024414062014936177, 0.00012207031189367021, 0.00006103515617420877, 0.00003051757811552610};

void cordiccart2pol(data_t x, data_t y, data_t *r,  data_t *theta)
{
#pragma HLS INTERFACE s_axilite port=x
#pragma HLS INTERFACE s_axilite port=y
#pragma HLS INTERFACE s_axilite port=r
#pragma HLS INTERFACE s_axilite port=theta
//#pragma HLS INTERFACE ap_ctrl_none port=return
	data_t base_radian = 0.0;
	*theta = 0.0;	*r = 0.0;

	if(y >= 0) {
		data_t temp = x;
		x = y;	y = -temp;
		base_radian = 1.57079632679;
	}else{
		data_t temp = y;
		y = x;	x = -temp;
		base_radian = -1.57079632679;
	}

	for(uint_8 j = 0; j < NO_ITER; j++){
		data_t x_shift =  x >> j;
		data_t y_shift =  y >> j;

		if(y>=0){				//sign=-1
			x = x + y_shift;
			y = y - x_shift;
			*theta = *theta + angles[j];
		}else{					//sign=1
			x = x - y_shift;
			y = y + x_shift;
			*theta = *theta - angles[j];
		}
	}
	*theta = *theta + base_radian;
	*r = x * FACTOR;
}
