#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "fast.h"

#include <iostream>
using namespace std;

int main()
{
    DTYPE input[16384];
    DTYPE output[16384];
    int gold;
    int in;

    int imgheight = 128;
    int imgwidth = 128;

    int threshold = 20;

    FILE * fp = fopen("E:\\NTU\\111_1\\HLS\\LabC\\FAST\\solution1\\src.txt","r");
    FILE * fpo = fopen("E:\\NTU\\111_1\\HLS\\LabC\\FAST\\solution1\\dst.txt","r");
    FILE * fpo_2 = fopen("E:\\NTU\\111_1\\HLS\\LabC\\FAST\\solution1\\dst.txt","r");
    for(int i=0; i<16384; i++)
    {
        fscanf(fp, "%d", &in);
        input[i] = in;
        //cout<<i<<":"<<input[i]<<endl;
    }

	fast_accel(input, threshold, output, imgheight, imgwidth);
    int tf = 0;

    for(int i=0; i<16384; i++)
    {
        fscanf(fpo_2, "%d", &gold);
        cout<<"output["<<i<<"]:"<<output[i]<<" | "<<gold<<endl;
        if (output[i] - gold != 0)
        {
            tf = 1;
        }        
    }

    fclose(fp);
    fclose(fpo);
    fclose(fpo_2);
    if (tf == 1)
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "F: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 1;
    } 
    else 
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "P: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }

}
