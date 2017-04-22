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

entity FSMThreeProcess is Port (
clk : in std_logic;
x : in std_logic ;
reset : in std_logic ;
y : out std_logic );
end FSMThreeProcess;

architecture Behavioral of FSMThreeProcess is
type State_type IS (A, B, C, D);  
	signal currentState , nextState : State_Type;     
begin
process (x) 
  begin 
    if (reset = '1') then            
	nextState <= A;
    else
    
	case currentState is
		when A => 
			if x='1' then 
				nextState <= B; 
			end if; 
 
		when B => 
			if x='1' then 
                 nextState <= C; 
            elsif x='0' then
                 nextState <= A;
            end if;  
 
		when C => 
			if x='1' then 
				nextState <= D; 
			elsif x='0' then
			    nextState <= A;
			end if; 
 
		when D=> 
			if x='1' then 
                        nextState <= D; 
                    elsif x='0' then
                        nextState <= A;
                    end if; 
		when others =>
			nextState <= A;
	end case; 
    end if; 
  end process;
  
    process
      begin
          wait until rising_edge(clk);
          currentState <= nextState;
     end process;
  
  process(currentState)
  begin
  case currentState is
    when D => y <= '1';
    when others => y <= '0' ;
    end case;
  end process;
end Behavioral;
