----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 11:58:49 AM
-- Design Name: 
-- Module Name: temprature - concurrent
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity temprature is Port (
temp1 : in std_logic_vector( 7 downto 0 ) ;
temp2 : in std_logic_vector( 7 downto 0 ) ;
temp3 : in std_logic_vector( 7 downto 0 ) ;
temp4 : in std_logic_vector( 7 downto 0 ) ;
temp5 : in std_logic_vector( 7 downto 0 ) ;
cooler : out  bit ;
heater : out  bit );
end temprature;



architecture concurrent of temprature is
signal avg : std_logic_vector( 7 downto 0 ) ;
begin

avg <= std_logic_vector(shift_right(unsigned(temp1 + temp2 + temp3 + temp4) , natural(2)));

cooler <= '0' when avg < temp5 + 4 else
          '0' when avg > temp5 - 4 and avg < temp5 + 4 else
          '1';
heater <= '1' when avg < temp5 - 4 else
          '0' when avg > temp5 - 4 and avg < temp5 + 4 else
          '0';
end concurrent;

architecture sequential of temprature is
signal avg_sig : std_logic_vector( 7 downto 0 ) ;
begin
process(temp1 , temp2 , temp3 , temp4 , temp5)
variable avg : std_logic_vector( 7 downto 0 ) ;
begin
avg := std_logic_vector(shift_right(unsigned(temp1 + temp2 + temp3 + temp4) , natural(2)));
if( avg  < temp5 - 4 ) then
heater <= '1' ;
cooler <= '0';
elsif( avg > temp5 - 4 and avg < temp5 + 4 ) then
heater <= '0';
cooler <= '0';
else
heater <= '0';
cooler <= '1';
end if;
avg_sig <= avg;
end process;

end sequential;