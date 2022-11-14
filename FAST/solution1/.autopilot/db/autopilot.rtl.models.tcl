set SynModuleInfo {
  {SRCNAME fast_accel_Pipeline_VITIS_LOOP_14_1 MODELNAME fast_accel_Pipeline_VITIS_LOOP_14_1 RTLNAME fast_accel_fast_accel_Pipeline_VITIS_LOOP_14_1
    SUBMODULES {
      {MODELNAME fast_accel_flow_control_loop_pipe_sequential_init RTLNAME fast_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fast_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fast_accel_Pipeline_VITIS_LOOP_19_2 MODELNAME fast_accel_Pipeline_VITIS_LOOP_19_2 RTLNAME fast_accel_fast_accel_Pipeline_VITIS_LOOP_19_2
    SUBMODULES {
      {MODELNAME fast_accel_urem_33s_6ns_5_37_1 RTLNAME fast_accel_urem_33s_6ns_5_37_1 BINDTYPE op TYPE urem IMPL auto LATENCY 36 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_urem_14ns_6ns_5_18_1 RTLNAME fast_accel_urem_14ns_6ns_5_18_1 BINDTYPE op TYPE urem IMPL auto LATENCY 17 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_mul_33ns_35ns_67_2_1 RTLNAME fast_accel_mul_33ns_35ns_67_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_mul_mul_14ns_15ns_29_4_1 RTLNAME fast_accel_mul_mul_14ns_15ns_29_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fast_accel MODELNAME fast_accel RTLNAME fast_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME fast_accel_IMG_V_0_RAM_1WNR_AUTO_1R1W RTLNAME fast_accel_IMG_V_0_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_IMG_V_22_RAM_1WNR_AUTO_1R1W RTLNAME fast_accel_IMG_V_22_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fast_accel_control_s_axi RTLNAME fast_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME fast_accel_gmem_m_axi RTLNAME fast_accel_gmem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
