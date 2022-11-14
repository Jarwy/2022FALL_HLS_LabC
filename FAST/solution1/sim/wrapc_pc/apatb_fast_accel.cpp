#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem "../tv/cdatafile/c.fast_accel.autotvin_gmem.dat"
#define AUTOTB_TVOUT_gmem "../tv/cdatafile/c.fast_accel.autotvout_gmem.dat"
// wrapc file define:
#define AUTOTB_TVIN_img_in "../tv/cdatafile/c.fast_accel.autotvin_img_in.dat"
#define AUTOTB_TVOUT_img_in "../tv/cdatafile/c.fast_accel.autotvout_img_in.dat"
// wrapc file define:
#define AUTOTB_TVIN_threshold "../tv/cdatafile/c.fast_accel.autotvin_threshold.dat"
#define AUTOTB_TVOUT_threshold "../tv/cdatafile/c.fast_accel.autotvout_threshold.dat"
// wrapc file define:
#define AUTOTB_TVIN_img_out "../tv/cdatafile/c.fast_accel.autotvin_img_out.dat"
#define AUTOTB_TVOUT_img_out "../tv/cdatafile/c.fast_accel.autotvout_img_out.dat"
// wrapc file define:
#define AUTOTB_TVIN_rows "../tv/cdatafile/c.fast_accel.autotvin_rows.dat"
#define AUTOTB_TVOUT_rows "../tv/cdatafile/c.fast_accel.autotvout_rows.dat"
// wrapc file define:
#define AUTOTB_TVIN_cols "../tv/cdatafile/c.fast_accel.autotvin_cols.dat"
#define AUTOTB_TVOUT_cols "../tv/cdatafile/c.fast_accel.autotvout_cols.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem "../tv/rtldatafile/rtl.fast_accel.autotvout_gmem.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_img_in "../tv/rtldatafile/rtl.fast_accel.autotvout_img_in.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_threshold "../tv/rtldatafile/rtl.fast_accel.autotvout_threshold.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_img_out "../tv/rtldatafile/rtl.fast_accel.autotvout_img_out.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rows "../tv/rtldatafile/rtl.fast_accel.autotvout_rows.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cols "../tv/rtldatafile/rtl.fast_accel.autotvout_cols.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem_depth = 0;
  img_in_depth = 0;
  threshold_depth = 0;
  img_out_depth = 0;
  rows_depth = 0;
  cols_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem " << gmem_depth << "}\n";
  total_list << "{img_in " << img_in_depth << "}\n";
  total_list << "{threshold " << threshold_depth << "}\n";
  total_list << "{img_out " << img_out_depth << "}\n";
  total_list << "{rows " << rows_depth << "}\n";
  total_list << "{cols " << cols_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem_depth;
    int img_in_depth;
    int threshold_depth;
    int img_out_depth;
    int rows_depth;
    int cols_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
extern "C" void fast_accel_hw_stub_wrapper(volatile void *, int, volatile void *, int, int);

extern "C" void apatb_fast_accel_hw(volatile void * __xlx_apatb_param_img_in, int __xlx_apatb_param_threshold, volatile void * __xlx_apatb_param_img_out, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
#ifdef USE_BINARY_TV_FILE
{
transaction<8> tr(32768);
aesl_fh.read(AUTOTB_TVOUT_PC_gmem, tr.p, tr.tbytes);
tr.reorder();
tr.send<1>((char*)__xlx_apatb_param_img_in, 16384);
tr.send<1>((char*)__xlx_apatb_param_img_out, 16384);
}
#else
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_gmem);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<8> > gmem_pc_buffer(32768);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "gmem");
  
            // push token into output port buffer
            if (AESL_token != "") {
              gmem_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "gmem" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 16384; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_img_in)[j*1+0] = gmem_pc_buffer[i].range(7, 0).to_int64();
}
            for (int j = 0, e = 16384; j < e; j += 1, ++i) {((char*)__xlx_apatb_param_img_out)[j*1+0] = gmem_pc_buffer[i].range(7, 0).to_int64();
}}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  #endif

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_img_in = 0;
unsigned __xlx_offset_byte_param_img_out = 0;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVIN_gmem, 'b');
transaction<8> tr(32768);
  __xlx_offset_byte_param_img_in = 0*1;
  if (__xlx_apatb_param_img_in) {
tr.import<1>((char*)__xlx_apatb_param_img_in, 16384, 0);
  }
  __xlx_offset_byte_param_img_out = 16384*1;
  if (__xlx_apatb_param_img_out) {
tr.import<1>((char*)__xlx_apatb_param_img_out, 16384, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVIN_gmem, tr.p, tr.tbytes);
}

  tcl_file.set_num(32768, &tcl_file.gmem_depth);
#else
// print gmem Transactions
{
aesl_fh.write(AUTOTB_TVIN_gmem, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_img_in = 0*1;
  if (__xlx_apatb_param_img_in) {
    for (int j = 0  - 0, e = 16384 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_img_in)[j];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_img_out = 16384*1;
  if (__xlx_apatb_param_img_out) {
    for (int j = 0  - 0, e = 16384 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_img_out)[j];
aesl_fh.write(AUTOTB_TVIN_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(32768, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVIN_gmem, end_str());
}

#endif
// print img_in Transactions
{
aesl_fh.write(AUTOTB_TVIN_img_in, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_img_in;
aesl_fh.write(AUTOTB_TVIN_img_in, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.img_in_depth);
aesl_fh.write(AUTOTB_TVIN_img_in, end_str());
}

// print threshold Transactions
{
aesl_fh.write(AUTOTB_TVIN_threshold, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_threshold);
aesl_fh.write(AUTOTB_TVIN_threshold, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.threshold_depth);
aesl_fh.write(AUTOTB_TVIN_threshold, end_str());
}

// print img_out Transactions
{
aesl_fh.write(AUTOTB_TVIN_img_out, begin_str(AESL_transaction));
{
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_img_out;
aesl_fh.write(AUTOTB_TVIN_img_out, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.img_out_depth);
aesl_fh.write(AUTOTB_TVIN_img_out, end_str());
}

// print rows Transactions
{
aesl_fh.write(AUTOTB_TVIN_rows, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_rows);
aesl_fh.write(AUTOTB_TVIN_rows, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.rows_depth);
aesl_fh.write(AUTOTB_TVIN_rows, end_str());
}

// print cols Transactions
{
aesl_fh.write(AUTOTB_TVIN_cols, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_cols);
aesl_fh.write(AUTOTB_TVIN_cols, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.cols_depth);
aesl_fh.write(AUTOTB_TVIN_cols, end_str());
}

CodeState = CALL_C_DUT;
fast_accel_hw_stub_wrapper(__xlx_apatb_param_img_in, __xlx_apatb_param_threshold, __xlx_apatb_param_img_out, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
CodeState = DUMP_OUTPUTS;
#ifdef USE_BINARY_TV_FILE
{
aesl_fh.touch(AUTOTB_TVOUT_gmem, 'b');
transaction<8> tr(32768);
  __xlx_offset_byte_param_img_in = 0*1;
  if (__xlx_apatb_param_img_in) {
tr.import<1>((char*)__xlx_apatb_param_img_in, 16384, 0);
  }
  __xlx_offset_byte_param_img_out = 16384*1;
  if (__xlx_apatb_param_img_out) {
tr.import<1>((char*)__xlx_apatb_param_img_out, 16384, 0);
  }
tr.reorder();
aesl_fh.write(AUTOTB_TVOUT_gmem, tr.p, tr.tbytes);
}

  tcl_file.set_num(32768, &tcl_file.gmem_depth);
#else
// print gmem Transactions
{
aesl_fh.write(AUTOTB_TVOUT_gmem, begin_str(AESL_transaction));
{
  __xlx_offset_byte_param_img_in = 0*1;
  if (__xlx_apatb_param_img_in) {
    for (int j = 0  - 0, e = 16384 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_img_in)[j];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
  __xlx_offset_byte_param_img_out = 16384*1;
  if (__xlx_apatb_param_img_out) {
    for (int j = 0  - 0, e = 16384 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_img_out)[j];
aesl_fh.write(AUTOTB_TVOUT_gmem, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
    }
  }
}

  tcl_file.set_num(32768, &tcl_file.gmem_depth);
aesl_fh.write(AUTOTB_TVOUT_gmem, end_str());
}

#endif
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
