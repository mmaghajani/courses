----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2017 06:05:21 PM
-- Design Name: 
-- Module Name: divisionBy3 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisionBy3 is Port (
x : in std_logic;
clk : in std_logic;
reset : in std_logic;
y : out std_logic_vector(1 downto 0 )
);
end divisionBy3;

architecture Behavioral of divisionBy3 is
type State_type IS (A, B, C, D , E, F , G , H , I , J , K);  
	signal State : State_Type;     
signal data : std_logic_vector( 7 downto 0 );
signal temp : integer range 0 to 255;

begin
process (clk) 
  begin 
    if (reset = '1') then            
	State <= A;
 
    elsif (clk'event and clk = '1') then    
	case State is 
		when A => 
			if x='1' then 
                 State <= B; 
            elsif x='0' then
                 State <= A;
            end if;  
 
		when B => 
		    data(0) <= x;
			State <= C;
 
		when C => 
		data(1) <= x;
			State <= D;
			
		when D =>
		data(2) <= x;
		State <= E;
             
        when E =>
        data(3) <= x;
                State <= F;
        when F =>
               data(4) <= x;
               State <= G;
        when G =>
               data(5) <= x;
               State <= H;
        when H =>
               data(6) <= x;
               State <= I;
        when I =>
               data(7) <= x;
               State <= J;
        when J =>
               if x='0' then 
                State <= K; 
               elsif x='1' then
                State <= J;
               end if; 
        when K =>
               State <= A;
		when others =>
			State <= A;
	end case; 
    end if; 
  end process;
  
  temp <= to_integer(unsigned(data)) ;
  
  
  process(State)
  variable remember : integer range 0 to 2 ;
  begin
  case State is
    when K => remember := temp mod 3 ;
     y <= std_logic_vector(to_unsigned(remember, 2));
    when others => y <= "XX" ;
    end case;
  end process;
end Behavioral;
