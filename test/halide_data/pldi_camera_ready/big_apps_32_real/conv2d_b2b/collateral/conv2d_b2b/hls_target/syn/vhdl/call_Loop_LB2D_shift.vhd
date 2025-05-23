-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity call_Loop_LB2D_shift is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    slice_stream_V_value_V_dout : IN STD_LOGIC_VECTOR (95 downto 0);
    slice_stream_V_value_V_empty_n : IN STD_LOGIC;
    slice_stream_V_value_V_read : OUT STD_LOGIC;
    out_stream_V_value_V_din : OUT STD_LOGIC_VECTOR (287 downto 0);
    out_stream_V_value_V_full_n : IN STD_LOGIC;
    out_stream_V_value_V_write : OUT STD_LOGIC );
end;


architecture behav of call_Loop_LB2D_shift is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_436 : STD_LOGIC_VECTOR (10 downto 0) := "10000110110";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv11_780 : STD_LOGIC_VECTOR (10 downto 0) := "11110000000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal slice_stream_V_value_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal out_stream_V_value_V_blk_n : STD_LOGIC;
    signal icmp_reg_300 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_0_i_i_reg_104 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_s_fu_115_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal n1_1_fu_121_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal n1_1_reg_286 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_1_fu_127_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_291 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal i_fu_133_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal icmp_fu_149_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal n1_reg_93 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal buffer_1_value_V_fu_72 : STD_LOGIC_VECTOR (95 downto 0);
    signal buffer_0_value_V_fu_76 : STD_LOGIC_VECTOR (95 downto 0);
    signal tmp_fu_139_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_Result_31_2_2_fu_223_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_31_2_1_fu_213_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_31_2_fu_203_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_31_1_2_fu_193_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_31_1_1_fu_183_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_Result_31_1_fu_173_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_169_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_165_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_161_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_s_fu_115_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_s_fu_115_p2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if (((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state3 xor ap_const_logic_1);
                elsif ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_s_fu_115_p2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_lv1_0 = tmp_1_fu_127_p2))) then 
                i_0_i_i_reg_104 <= i_fu_133_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = tmp_s_fu_115_p2))) then 
                i_0_i_i_reg_104 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    n1_reg_93_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                n1_reg_93 <= ap_const_lv11_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                n1_reg_93 <= n1_1_reg_286;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_1_reg_291))) then
                buffer_0_value_V_fu_76 <= buffer_1_value_V_fu_72;
                buffer_1_value_V_fu_72 <= slice_stream_V_value_V_dout;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_lv1_0 = tmp_1_fu_127_p2))) then
                icmp_reg_300 <= icmp_fu_149_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                n1_1_reg_286 <= n1_1_fu_121_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                tmp_1_reg_291 <= tmp_1_fu_127_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, tmp_s_fu_115_p2, ap_CS_fsm_state2, tmp_1_fu_127_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_s_fu_115_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_1_fu_127_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (tmp_1_fu_127_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(slice_stream_V_value_V_empty_n, out_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, icmp_reg_300)
    begin
                ap_block_pp0_stage0_flag00001001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and ((ap_const_logic_0 = slice_stream_V_value_V_empty_n) or ((icmp_reg_300 = ap_const_lv1_0) and (ap_const_logic_0 = out_stream_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(slice_stream_V_value_V_empty_n, out_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, icmp_reg_300)
    begin
                ap_block_pp0_stage0_flag00011001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and ((ap_const_logic_0 = slice_stream_V_value_V_empty_n) or ((icmp_reg_300 = ap_const_lv1_0) and (ap_const_logic_0 = out_stream_V_value_V_full_n))));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(slice_stream_V_value_V_empty_n, out_stream_V_value_V_full_n, ap_enable_reg_pp0_iter1, icmp_reg_300)
    begin
                ap_block_pp0_stage0_flag00011011 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and ((ap_const_logic_0 = slice_stream_V_value_V_empty_n) or ((icmp_reg_300 = ap_const_lv1_0) and (ap_const_logic_0 = out_stream_V_value_V_full_n))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(slice_stream_V_value_V_empty_n, out_stream_V_value_V_full_n, icmp_reg_300)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((ap_const_logic_0 = slice_stream_V_value_V_empty_n) or ((icmp_reg_300 = ap_const_lv1_0) and (ap_const_logic_0 = out_stream_V_value_V_full_n)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(tmp_1_fu_127_p2)
    begin
        if ((tmp_1_fu_127_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, tmp_s_fu_115_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_s_fu_115_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(tmp_s_fu_115_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (tmp_s_fu_115_p2 = ap_const_lv1_1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_133_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_104) + unsigned(ap_const_lv11_1));
    icmp_fu_149_p2 <= "1" when (tmp_fu_139_p4 = ap_const_lv10_0) else "0";
    n1_1_fu_121_p2 <= std_logic_vector(unsigned(n1_reg_93) + unsigned(ap_const_lv11_1));

    out_stream_V_value_V_blk_n_assign_proc : process(out_stream_V_value_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, icmp_reg_300)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (icmp_reg_300 = ap_const_lv1_0))) then 
            out_stream_V_value_V_blk_n <= out_stream_V_value_V_full_n;
        else 
            out_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_stream_V_value_V_din <= ((((((((p_Result_31_2_2_fu_223_p4 & p_Result_31_2_1_fu_213_p4) & p_Result_31_2_fu_203_p4) & p_Result_31_1_2_fu_193_p4) & p_Result_31_1_1_fu_183_p4) & p_Result_31_1_fu_173_p4) & tmp_4_fu_169_p1) & tmp_3_fu_165_p1) & tmp_2_fu_161_p1);

    out_stream_V_value_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_reg_300, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (icmp_reg_300 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            out_stream_V_value_V_write <= ap_const_logic_1;
        else 
            out_stream_V_value_V_write <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_31_1_1_fu_183_p4 <= buffer_1_value_V_fu_72(63 downto 32);
    p_Result_31_1_2_fu_193_p4 <= slice_stream_V_value_V_dout(63 downto 32);
    p_Result_31_1_fu_173_p4 <= buffer_0_value_V_fu_76(63 downto 32);
    p_Result_31_2_1_fu_213_p4 <= buffer_1_value_V_fu_72(95 downto 64);
    p_Result_31_2_2_fu_223_p4 <= slice_stream_V_value_V_dout(95 downto 64);
    p_Result_31_2_fu_203_p4 <= buffer_0_value_V_fu_76(95 downto 64);

    slice_stream_V_value_V_blk_n_assign_proc : process(slice_stream_V_value_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            slice_stream_V_value_V_blk_n <= slice_stream_V_value_V_empty_n;
        else 
            slice_stream_V_value_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    slice_stream_V_value_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            slice_stream_V_value_V_read <= ap_const_logic_1;
        else 
            slice_stream_V_value_V_read <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_fu_127_p2 <= "1" when (i_0_i_i_reg_104 = ap_const_lv11_780) else "0";
    tmp_2_fu_161_p1 <= buffer_0_value_V_fu_76(32 - 1 downto 0);
    tmp_3_fu_165_p1 <= buffer_1_value_V_fu_72(32 - 1 downto 0);
    tmp_4_fu_169_p1 <= slice_stream_V_value_V_dout(32 - 1 downto 0);
    tmp_fu_139_p4 <= i_0_i_i_reg_104(10 downto 1);
    tmp_s_fu_115_p2 <= "1" when (n1_reg_93 = ap_const_lv11_436) else "0";
end behav;
