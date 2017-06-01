----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/25/2017 06:17:04 PM
-- Design Name: 
-- Module Name: testben - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testben is
--  Port ( );
end testben;

architecture Behavioral of testben is
signal reset : std_logic := '0';
signal sys_diff_clock_clk_n : std_logic := '0';
signal sys_diff_clock_clk_p : std_logic := '1';
component design_1_wrapper is
  port (
    reset : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
end component design_1_wrapper;
begin
sys_diff_clock_clk_p <= not (sys_diff_clock_clk_p) after 10ns;
sys_diff_clock_clk_n <= not (sys_diff_clock_clk_n) after 10ns;
l1: design_1_wrapper port map(reset => reset,
                                sys_diff_clock_clk_p => sys_diff_clock_clk_p,
                                sys_diff_clock_clk_n => sys_diff_clock_clk_n);
 
end Behavioral;
