----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2017 08:49:48 AM
-- Design Name: 
-- Module Name: RippleCounter - RTL
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- ~ --
entity RippleCounter is
  generic (
    n : natural := 4
  );
  port (
    clk   : in std_logic;
    reset : in std_logic;

    counter  : out std_logic_vector(n-1 downto 0)
  );
end RippleCounter;
-- ~ --
architecture RTL of RippleCounter is
  -- signals declaration
  signal clk_arr, counter_arr   : std_logic_vector(n-1 downto 0);

begin
  -- clocks
  clk_arr(0)            <= clk;
  clk_arr(n-1 downto 1) <= counter_arr(n-2 downto 0);

  -- flip-flops
  gen_cnt: for i in 0 to n-1 generate
    dff: process(reset , clk_arr(i))
    begin
      if (reset = '1') then
        counter_arr(i) <= '1';
      elsif (clk_arr(i)'event and clk_arr(i) = '1') then
        counter_arr(i) <= not counter_arr(i);
      end if;
    end process dff;
  end generate;
  
  -- output
  counter <= not counter_arr;
  -- ~ --
end RTL;