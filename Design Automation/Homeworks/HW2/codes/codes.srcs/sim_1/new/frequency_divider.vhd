----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 02:14:36 PM
-- Design Name: 
-- Module Name: frequency_divider - Behavioral
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


use IEEE.numeric_std.ALL;
 
entity frequency_divider is 
generic (N : integer := 10 );
port ( 
clk,reset : in std_logic;
clk_out : out std_logic);
end frequency_divider;
 
architecture Behavioral of frequency_divider is
signal count: integer:=0;
signal tmp : std_logic := '1';
begin
process(clk,reset)
begin
if(reset='0') then
    count<=0;
    tmp<='1';
elsif(clk'event and clk='1') then
    count <=count+1;
    if (count = N) then
        tmp <= NOT tmp;
        count <= 0;
    end if;
end if;

clk_out <= tmp;
end process;
 
end Behavioral;
