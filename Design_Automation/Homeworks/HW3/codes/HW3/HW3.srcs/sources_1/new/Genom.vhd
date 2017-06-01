----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/27/2017 02:47:11 PM
-- Design Name: 
-- Module Name: Genom - Behavioral
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

entity Genom is Port (
input : in std_logic_vector( 1 downto 0 );
reset : in std_logic ;
clk : in std_logic ;
output : out std_logic_vector( 1 downto 0 )
);
end Genom;

architecture Behavioral of Genom is
type State_type IS (start , A, B, C, D , E , F , G , H , I , J , P , Q );  
	signal State : State_Type;  
signal foundP : std_logic := '0';
signal foundQ : std_logic := '0';   
begin
process (clk, reset) 
  begin 
    if (reset = '1') then    
    foundP <= '0';
    foundQ <= '0';        
	State <= start;
 
    elsif (clk'event and clk = '1') then    
	case State is
	when start =>
	if input = "11" then
	State <= A ;
	elsif input = "00" then
	State <= I ;
	elsif input = "01" then
	State <= start;
	else
	State <= start;
	end if;
		when A => 
			if input = "11" then
            State <= A ;
            elsif input = "00" then
            State <= B ;
            elsif input = "01" then
            State <= start;
            else
            State <= start;
            end if;
		when B => 
			if input = "11" then
            State <= A ;
            elsif input = "00" then
            State <= I ;
            elsif input = "01" then
            State <= J;
            else
            State <= C;
            end if;
		when C => 
			if input = "11" then
            State <= A ;
            elsif input = "00" then
            State <= D ;
            elsif input = "01" then
            State <= start;
            else
            State <= start;
            end if;
		when D=> 
			if input = "11" then
            State <= A ;
            elsif input = "00" then
            State <= I ;
            elsif input = "01" then
            State <= J;
            else
            State <= E;
            end if;
        when E =>
        if input = "11" then
                    State <= A ;
                    elsif input = "00" then
                    State <= F ;
                    elsif input = "01" then
                    State <= start;
                    else
                    State <= start;
                    end if;
        when F =>
        if input = "11" then
                    State <= A ;
                    elsif input = "00" then
                    State <= I ;
                    elsif input = "01" then
                    State <= J;
                    else
                    State <= G;
                    end if;
        when G =>
        if input = "11" then
                    State <= H ;
                    elsif input = "00" then
                    State <= I ;
                    elsif input = "01" then
                    State <= start;
                    else
                    State <= start;
                    end if;
        when H =>
        if input = "11" then
                    State <= A ;
                    elsif input = "00" then
                    State <= B ;
                    elsif input = "01" then
                    foundP <= '1';
                    foundQ <= '0';
                    State <= P;
                    else
                    State <= start;
                    end if;
        when I =>
        if input = "11" then
                    State <= A ;
                    elsif input = "00" then
                    State <= I ;
                    elsif input = "01" then
                    State <= J;
                    else
                    State <= start;
                    end if;
        when J =>
        if input = "11" then
                    foundQ <= '1';
                    foundP <= '0';
                    State <= Q ;
                    elsif input = "00" then
                    State <= I ;
                    elsif input = "01" then
                    State <= start;
                    else
                    State <= start;
                    end if;
        when P =>
        State <= start ;
        when Q =>
        State <= start ;
		when others =>
			State <= A;
	end case; 
    end if; 
  end process;

process(State)
  begin
  case State is
    when P =>
    output <= "01";
    when Q =>
        output <= "10";
    when others =>
        if( foundP = '1' )then
            output <= "01";
            elsif foundQ = '1' then
            output <= "10";
            else
            output <= "00";
            end if;
    end case;
  end process;
end Behavioral;
