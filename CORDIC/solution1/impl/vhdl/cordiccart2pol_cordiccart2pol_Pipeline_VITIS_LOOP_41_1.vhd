-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_41_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    y_V_1 : IN STD_LOGIC_VECTOR (15 downto 0);
    temp_V : IN STD_LOGIC_VECTOR (15 downto 0);
    p_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    p_out_ap_vld : OUT STD_LOGIC;
    x_V_2_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    x_V_2_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_41_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln41_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal angles_V_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal angles_V_ce0 : STD_LOGIC;
    signal angles_V_q0 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal tmp_fu_167_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_300 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_V_3_fu_199_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_V_3_reg_310 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_V_4_fu_207_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_V_4_reg_315 : STD_LOGIC_VECTOR (15 downto 0);
    signal sh_assign_cast_fu_142_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal x_V_fu_46 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_x_V_load_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal y_V_fu_50 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_y_V_load : STD_LOGIC_VECTOR (15 downto 0);
    signal j_fu_54 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln41_fu_130_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal empty_fu_58 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln1549_fu_239_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln1386_fu_147_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln1386_fu_151_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_1_fu_161_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal r_V_fu_155_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_V_2_fu_187_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal x_V_1_fu_175_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_V_3_fu_193_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal y_V_2_fu_181_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln712_fu_223_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal sub_ln712_fu_233_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln712_fu_227_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_41_1_angles_V_ROM_AUTO_1R IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;


    component cordiccart2pol_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    angles_V_U : component cordiccart2pol_cordiccart2pol_Pipeline_VITIS_LOOP_41_1_angles_V_ROM_AUTO_1R
    generic map (
        DataWidth => 12,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => angles_V_address0,
        ce0 => angles_V_ce0,
        q0 => angles_V_q0);

    flow_control_loop_pipe_sequential_init_U : component cordiccart2pol_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    empty_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    empty_fu_58 <= ap_const_lv16_0;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    empty_fu_58 <= select_ln1549_fu_239_p3;
                end if;
            end if; 
        end if;
    end process;

    j_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_54 <= ap_const_lv5_0;
                elsif (((icmp_ln41_fu_124_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    j_fu_54 <= add_ln41_fu_130_p2;
                end if;
            end if; 
        end if;
    end process;

    x_V_fu_46_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    x_V_fu_46 <= temp_V;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    x_V_fu_46 <= x_V_3_reg_310;
                end if;
            end if; 
        end if;
    end process;

    y_V_fu_50_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    y_V_fu_50 <= y_V_1;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    y_V_fu_50 <= y_V_4_reg_315;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln41_fu_124_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                tmp_reg_300 <= ap_sig_allocacmp_y_V_load(15 downto 15);
                x_V_3_reg_310 <= x_V_3_fu_199_p3;
                y_V_4_reg_315 <= y_V_4_fu_207_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln41_fu_130_p2 <= std_logic_vector(unsigned(j_fu_54) + unsigned(ap_const_lv5_1));
    add_ln712_fu_227_p2 <= std_logic_vector(unsigned(zext_ln712_fu_223_p1) + unsigned(empty_fu_58));
    angles_V_address0 <= sh_assign_cast_fu_142_p1(5 - 1 downto 0);

    angles_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            angles_V_ce0 <= ap_const_logic_1;
        else 
            angles_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln41_fu_124_p2)
    begin
        if (((icmp_ln41_fu_124_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_x_V_load_1_assign_proc : process(ap_enable_reg_pp0_iter2, x_V_3_reg_310, ap_block_pp0_stage0, x_V_fu_46)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_x_V_load_1 <= x_V_3_reg_310;
        else 
            ap_sig_allocacmp_x_V_load_1 <= x_V_fu_46;
        end if; 
    end process;


    ap_sig_allocacmp_y_V_load_assign_proc : process(ap_enable_reg_pp0_iter2, y_V_4_reg_315, ap_block_pp0_stage0, y_V_fu_50)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_y_V_load <= y_V_4_reg_315;
        else 
            ap_sig_allocacmp_y_V_load <= y_V_fu_50;
        end if; 
    end process;

    icmp_ln41_fu_124_p2 <= "1" when (j_fu_54 = ap_const_lv5_10) else "0";
    p_out <= empty_fu_58;

    p_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln41_fu_124_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln41_fu_124_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_out_ap_vld <= ap_const_logic_1;
        else 
            p_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    r_V_1_fu_161_p2 <= std_logic_vector(shift_right(signed(ap_sig_allocacmp_y_V_load),to_integer(unsigned('0' & zext_ln1386_fu_151_p1(16-1 downto 0)))));
    r_V_fu_155_p2 <= std_logic_vector(shift_right(signed(ap_sig_allocacmp_x_V_load_1),to_integer(unsigned('0' & zext_ln1386_fu_151_p1(16-1 downto 0)))));
    select_ln1549_fu_239_p3 <= 
        sub_ln712_fu_233_p2 when (tmp_reg_300(0) = '1') else 
        add_ln712_fu_227_p2;
    sh_assign_cast_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_fu_54),64));
    sub_ln712_fu_233_p2 <= std_logic_vector(unsigned(empty_fu_58) - unsigned(zext_ln712_fu_223_p1));
    tmp_fu_167_p3 <= ap_sig_allocacmp_y_V_load(15 downto 15);
    trunc_ln1386_fu_147_p1 <= j_fu_54(4 - 1 downto 0);
    x_V_1_fu_175_p2 <= std_logic_vector(unsigned(r_V_1_fu_161_p2) + unsigned(ap_sig_allocacmp_x_V_load_1));
    x_V_2_fu_187_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_x_V_load_1) - unsigned(r_V_1_fu_161_p2));
    x_V_2_out <= x_V_fu_46;

    x_V_2_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln41_fu_124_p2, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln41_fu_124_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            x_V_2_out_ap_vld <= ap_const_logic_1;
        else 
            x_V_2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    x_V_3_fu_199_p3 <= 
        x_V_2_fu_187_p2 when (tmp_fu_167_p3(0) = '1') else 
        x_V_1_fu_175_p2;
    y_V_2_fu_181_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_y_V_load) - unsigned(r_V_fu_155_p2));
    y_V_3_fu_193_p2 <= std_logic_vector(unsigned(r_V_fu_155_p2) + unsigned(ap_sig_allocacmp_y_V_load));
    y_V_4_fu_207_p3 <= 
        y_V_3_fu_193_p2 when (tmp_fu_167_p3(0) = '1') else 
        y_V_2_fu_181_p2;
    zext_ln1386_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln1386_fu_147_p1),16));
    zext_ln712_fu_223_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(angles_V_q0),16));
end behav;
