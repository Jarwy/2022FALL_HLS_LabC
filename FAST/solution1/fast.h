#include "ap_int.h"
#include <math.h>
#include <iostream>
using namespace std;

typedef ap_uint<1> uint_1;
typedef ap_uint<6> uint_6;
typedef ap_uint<8> DTYPE;
typedef ap_uint<16> uint_16;

void fast_accel(DTYPE* img_in, int threshold, DTYPE* img_out, int rows, int cols);
