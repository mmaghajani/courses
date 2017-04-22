----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2017 02:14:22 PM
-- Design Name: 
-- Module Name: FSM - Behavioral
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

entity FSMTwoProcess is Port (
clk : in std_logic;
x : in std_logic ;
reset : in std_logic ;
y : out std_logic );
end FSMTwoProcess;

architecture Behavioral of FSMTwoProcess is
type State_type IS (A, B, C, D);  
	signal State : State_Type;     
begin
process (clk, reset) 
  begin 
    if (reset = '1') then            
	State <= A;
 
    elsif (clk'event and clk = '1') then    
	case State is
		when A => 
			if x='1' then 
				State <= B; 
			end if; 
 
		when B => 
			if x='1' then 
                 State <= C; 
            elsif x='0' then
                 State <= A;
            end if;  
 
		when C => 
			if x='1' then 
				State <= D; 
			elsif x='0' then
			    State <= A;
			end if; 
 
		when D=> 
			if x='1' then 
                        State <= D; 
                    elsif x='0' then
                        State <= A;
                    end if; 
		when others =>
			State <= A;
	end case; 
    end if; 
  end process;
  
  process(State)
  begin
  case State is
    when D => y <= '1';
    when others => y <= '0' ;
    end case;
  end process;
end Behavioral;
