----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2017 06:53:24 AM
-- Design Name: 
-- Module Name: N_digit_BCD_adder - Behavioral
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

entity N_digit_BCD_adder is
generic (N : integer := 4);
Port (
input1 : in std_logic_vector( 4*N-1 downto 0 );
input2 : in std_logic_vector( 4*N-1 downto 0 );
carry_in : in std_logic ;
sum : out std_logic_vector( 4*N-1 downto 0 );
carry_out : out std_logic 
);
end N_digit_BCD_adder;

architecture Behavioral of N_digit_BCD_adder is
component BCD_adder is
    port( input1,input2  : in  std_logic_vector(3 downto 0);
       carry_in : in std_logic;
        sum_out  : out  std_logic_vector(3 downto 0); 
        carry : out std_logic  
    );
end component;
signal carries : std_logic_vector( N-1 downto 0 );
begin

F: for I in 1 to N generate
    F_if1: if I = 1 generate
        BCD: BCD_adder port map( input1(I*4-1 downto I*4-4) , input2(I*4-1 downto I*4-4) , carry_in ,
            sum( I*4-1 downto I*4-4) , carries(I-1) );
    end generate F_if1;
    
    F_if2: if I /= 1 generate
        BCD: BCD_adder port map( input1(I*4-1 downto I*4-4) , input2(I*4-1 downto I*4-4) , carries(I-2) ,
                sum( I*4-1 downto I*4-4) , carries(I-1) );
        end generate F_if2;
   end generate F;
   
carry_out <= carries(N-1);
end Behavioral;
