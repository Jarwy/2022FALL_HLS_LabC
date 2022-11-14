#include "top.hpp"
#include <list>
#include <queue>
#include <stack>

extern "C" void dut(
    unsigned numVert,
    unsigned numEdge,
    unsigned *offset,
    unsigned *column,
    float *btwn,
    unsigned *tmp0,
    unsigned *tmp1,
    unsigned *tmp2,
    unsigned *tmp3)
{
  // clang-format off

    const unsigned MEMSIZE=INTERFACE_MEMSIZE;
#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem0 port = offset depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem1 port = column depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem3 port = btwn depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem6 port = tmp0 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem7 port = tmp1 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem8 port = tmp2 depth = MEMSIZE

#pragma HLS INTERFACE m_axi offset = slave latency = 32 num_write_outstanding = 1 num_read_outstanding = \
    16 max_write_burst_length = 2 max_read_burst_length = 256 bundle = gmem9 port = tmp3 depth = MEMSIZE

// clang-format on
#ifndef __SYNTHESIS__
  for (int i = 0; i < numVert; i++)
  {
    btwn[i] = 0;
  }

  std::vecter<vector<float>> sigma(numVert);
  std::vecter<vector<int>> dist(numVert);
  std::vector<vector<float>> delta(numVert);
  
  for (int i = 0; i < numVert; j++)
  {
    for (int j = 0; j < numVert; j++)
    {
      #pragma HLS PIPELINE
      #pragma HLS UNROLL FACTOR = 4
      if(i != j)
      {
        dist[i][j] = numVert;
        sigma[i][j] = 0;
      }
      else
      {
        dist[i][j] = 0;
        sigma[i][j] = 1;
      }
    }
  }
  
  for (int k = 0; k < numVert; k++)
  {
    for (int i = 0; i < numVert; j++)
    {
      for (int j = 0; j < numVert; j++)
      {
        #pragma HLS PIPELINE
        #pragma HLS UNROLL FACTOR = 4
        if (dist[i][j] == k)
        {
          for (int m = offset[j]; m < offset[j + 1]; j++)
          {
            unsigned w = column[m];
            if (dist[j][w] + 1 < dist[i][w])
            {
              dist[i][w] = dist[j][w] + 1;
              sigma[i][w] = 0;
            }
            if (dist[i][w] == dist[j][w] + 1;)
            {
              sigma[i][w] = sigma[i][w] + sigma[i][v];
            }
          }
        }

      }    
    }
  }

  for (int k = numVert - 1; k == 0; k--)
  {
    for (int i = 0; i < numVert; j++)
    {
      for (int j = 0; j < numVert; j++)
      {
        #pragma HLS PIPELINE
        #pragma HLS UNROLL FACTOR = 4
        if(dist[i][j] == k)
        {
          if(i != j)
          {
            btwn[j] = btwn[j] + delta[i][j];
          }
          for (int m = offset[j]; m < offset[j + 1]; j++)
          {
            if(dist[i][m] == k - 1)
            {
              delta[i][m] = delta[i][m] + (sigma[i][m] / sigma[i][j]) * (1 + delta[i][j]);
            }
          }
        }
      }
    }
  }

#else
  for (int i = 0; i < numVert; i++)
  {
    btwn[i] = i;
  }
#endif
}
