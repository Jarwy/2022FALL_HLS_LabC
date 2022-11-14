-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity fast_accel_IMG_V_22_RAM_1WNR_AUTO_2R1W is 
    generic(
            DataWidth     : integer := 8; 
            AddressWidth     : integer := 10; 
            AddressRange    : integer := 606
    ); 
    port (
          address0     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          d0        : in std_logic_vector(DataWidth-1 downto 0); 
          we0       : in std_logic; 
          q0        : out std_logic_vector(DataWidth-1 downto 0);
          address1     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          q1        : out std_logic_vector(DataWidth-1 downto 0);
          address2     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce2       : in std_logic; 
          q2        : out std_logic_vector(DataWidth-1 downto 0);
          address3     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce3       : in std_logic; 
          q3        : out std_logic_vector(DataWidth-1 downto 0);
          address4     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce4       : in std_logic; 
          q4        : out std_logic_vector(DataWidth-1 downto 0);
          address5     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce5       : in std_logic; 
          q5        : out std_logic_vector(DataWidth-1 downto 0);
          reset      : in std_logic; 
          clk        : in std_logic 
    ); 
end entity; 


architecture rtl of fast_accel_IMG_V_22_RAM_1WNR_AUTO_2R1W is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address1_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address2_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address3_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address4_tmp : std_logic_vector(AddressWidth-1 downto 0); 
signal address5_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
shared variable ram0 : mem_array;

shared variable ram1 : mem_array;

shared variable ram2 : mem_array;

shared variable ram3 : mem_array;

shared variable ram4 : mem_array;

signal q0_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q0_t1 : std_logic_vector(DataWidth-1 downto 0);
signal q1_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q1_t1 : std_logic_vector(DataWidth-1 downto 0);
signal q2_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q2_t1 : std_logic_vector(DataWidth-1 downto 0);
signal q3_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q3_t1 : std_logic_vector(DataWidth-1 downto 0);
signal q4_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q4_t1 : std_logic_vector(DataWidth-1 downto 0);
signal q5_t0 : std_logic_vector(DataWidth-1 downto 0);
signal q5_t1 : std_logic_vector(DataWidth-1 downto 0);

begin 

q0 <= q0_t1;
q1 <= q1_t1;
q2 <= q2_t1;
q3 <= q3_t1;
q4 <= q4_t1;
q5 <= q5_t1;

p_IO_pipeline_reg : process (clk)  
begin
    if (clk'event and clk = '1') then
      if (ce0 = '1') then
        q0_t1 <= q0_t0;
      end if;
      if (ce1 = '1') then
        q1_t1 <= q1_t0;
      end if;
      if (ce2 = '1') then
        q2_t1 <= q2_t0;
      end if;
      if (ce3 = '1') then
        q3_t1 <= q3_t0;
      end if;
      if (ce4 = '1') then
        q4_t1 <= q4_t0;
      end if;
      if (ce5 = '1') then
        q5_t1 <= q5_t0;
      end if;
    end if;
end process;

memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_memory_access_0: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0_t0 <= ram0(CONV_INTEGER(address0_tmp));
            if (we0 = '1') then 
                ram0(CONV_INTEGER(address0_tmp)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_1: process (address1) 
begin
      address1_tmp <= address1;
--synthesis translate_off
      if (CONV_INTEGER(address1) > AddressRange-1) then
           address1_tmp <= (others => '0');
      else 
           address1_tmp <= address1;
      end if;
--synthesis translate_on
end process;

p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            q1_t0 <= ram0(CONV_INTEGER(address1_tmp));
        end if;
    end if;
end process;

memory_access_guard_2: process (address2) 
begin
      address2_tmp <= address2;
--synthesis translate_off
      if (CONV_INTEGER(address2) > AddressRange-1) then
           address2_tmp <= (others => '0');
      else 
           address2_tmp <= address2;
      end if;
--synthesis translate_on
end process;

p_memory_access_2: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce2 = '1') then 
            q2_t0 <= ram1(CONV_INTEGER(address2_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram1(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_3: process (address3) 
begin
      address3_tmp <= address3;
--synthesis translate_off
      if (CONV_INTEGER(address3) > AddressRange-1) then
           address3_tmp <= (others => '0');
      else 
           address3_tmp <= address3;
      end if;
--synthesis translate_on
end process;

p_memory_access_3: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce3 = '1') then 
            q3_t0 <= ram2(CONV_INTEGER(address3_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram2(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_4: process (address4) 
begin
      address4_tmp <= address4;
--synthesis translate_off
      if (CONV_INTEGER(address4) > AddressRange-1) then
           address4_tmp <= (others => '0');
      else 
           address4_tmp <= address4;
      end if;
--synthesis translate_on
end process;

p_memory_access_4: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce4 = '1') then 
            q4_t0 <= ram3(CONV_INTEGER(address4_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram3(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;

memory_access_guard_5: process (address5) 
begin
      address5_tmp <= address5;
--synthesis translate_off
      if (CONV_INTEGER(address5) > AddressRange-1) then
           address5_tmp <= (others => '0');
      else 
           address5_tmp <= address5;
      end if;
--synthesis translate_on
end process;

p_memory_access_5: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce5 = '1') then 
            q5_t0 <= ram4(CONV_INTEGER(address5_tmp));
        end if;
        if (ce0 = '1') then 
            if (we0 = '1') then 
                ram4(CONV_INTEGER(address0)) := d0; 
            end if;
        end if;
    end if;
end process;


end rtl;

