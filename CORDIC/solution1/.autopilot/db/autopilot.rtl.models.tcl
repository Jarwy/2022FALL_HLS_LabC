set SynModuleInfo {
  {SRCNAME cordiccart2pol_Pipeline_VITIS_LOOP_29_1 MODELNAME cordiccart2pol_Pipeline_VITIS_LOOP_29_1 RTLNAME cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_29_1
    SUBMODULES {
      {MODELNAME cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_angles_V_ROM_AUTO_1R RTLNAME cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_29_1_angles_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_flow_control_loop_pipe_sequential_init RTLNAME cordiccart2pol_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cordiccart2pol_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cordiccart2pol MODELNAME cordiccart2pol RTLNAME cordiccart2pol IS_TOP 1
    SUBMODULES {
      {MODELNAME cordiccart2pol_mul_mul_16s_12ns_28_4_1 RTLNAME cordiccart2pol_mul_mul_16s_12ns_28_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_control_s_axi RTLNAME cordiccart2pol_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
