----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2017 04:43:05 PM
-- Design Name: 
-- Module Name: TB - Behavioral
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

entity TB is
--  Port ( );
end TB;



--architecture Behavioral of TB is
--component BCD_multiplier is Port (
--a : in std_logic_vector( 3 downto 0 );
--b : in std_logic_vector( 3 downto 0 );
--v : out std_logic_vector( 7 downto 0 )
--);
--end component;

--signal a,b : std_logic_vector( 3 downto 0);
--signal v : std_logic_vector( 7 downto 0 );

--begin

--BCD: BCD_multiplier port map( a , b , v );

--a <= "0011" ,
--     "0010" after 100ns,
--     "0101" after 200ns,
--     "1110" after 300ns,
--     "0100" after 400ns,
--     "1100" after 500ns,
--     "0001" after 600ns,
--     "0000" after 700ns,
--     "0110" after 800ns,
--     "1111" after 900ns;
     
--b <= "0011" ,
--          "0010" after 100ns,
--          "0101" after 200ns,
--          "1110" after 300ns,
--          "0100" after 400ns,
--          "1100" after 500ns,
--          "0001" after 600ns,
--          "0000" after 700ns,
--          "0110" after 800ns,
--          "1111" after 900ns;
          
--end Behavioral;

--architecture BCD of TB is
--component BCD_1x8_multiplier is Port (
--b : in std_logic_vector( 3 downto 0);
--a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
--out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 : out std_logic_vector( 3 downto 0 )
--);
--end component;

--signal b :  std_logic_vector( 3 downto 0);
--signal a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 :  std_logic_vector( 3 downto 0 );
--signal out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 :  std_logic_vector( 3 downto 0 );
--begin

--BCD: BCD_1x8_multiplier port map( b , a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 , out0 , out1 , out2 , out3 , out4 , out5 , out6 , out7 , out8 );
--b <= "1000" ,
--     "1001"after 500ns ;
--a0 <= "0011",
--          "1001"after 500ns ;
--a1 <= "0111",
--               "1001"after 500ns ;
--a2 <= "0010",
--                    "1001"after 500ns ;
--a3 <= "0100",
--                         "1001"after 500ns ;
--a4 <= "0101",
--                              "1001"after 500ns ;
--a5 <= "0100",
--                                   "1001"after 500ns ;
--a6 <= "0011",
--                                        "1001"after 500ns ;
--a7 <= "0001",
--                                             "1001"after 500ns ;
--end BCD;

--architecture N_digit_BCD of TB is
--component N_digit_BCD_adder is
--generic (N : integer := 4);
--Port (
--input1 : in std_logic_vector( 4*N-1 downto 0 );
--input2 : in std_logic_vector( 4*N-1 downto 0 );
--carry_in : in std_logic ;
--sum : out std_logic_vector( 4*N-1 downto 0 );
--carry_out : out std_logic 
--);
--end component;

--signal input1 : std_logic_vector( 15 downto 0 );
--signal input2 :  std_logic_vector( 15 downto 0 );
--signal carry_in :  std_logic ;
--signal sum :  std_logic_vector( 15 downto 0 );
--signal carry_out :  std_logic ;

--begin

--BCD: N_digit_BCD_adder generic map(4) port map( input1 , input2 , carry_in , sum , carry_out);
--input1 <= "1000000001100001";
--input2 <= "0100001110010010";
--carry_in <= '1';
--end N_digit_BCD;

architecture BCD_8x8 of TB is
component BCD_8x8_multiplier is Port (
clk : in std_logic;
rst : in std_logic;
a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 : in std_logic_vector( 3 downto 0 );
b0 , b1 , b2 , b3 , b4 , b5 , b6 , b7 : in std_logic_vector( 3 downto 0 );
p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 : out std_logic_vector( 3 downto 0 );
p8 , p9 , p10 , p11 , p12 , p13 , p14 , p15 , p16 : out std_logic_vector( 3 downto 0 )
);
end component;

signal a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 :  std_logic_vector( 3 downto 0 );
signal b0 , b1 , b2 , b3 , b4 , b5 , b6 , b7 :  std_logic_vector( 3 downto 0 );
signal p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 :  std_logic_vector( 3 downto 0 );
signal p8 , p9 , p10 , p11 , p12 , p13 , p14 , p15 , p16 :  std_logic_vector( 3 downto 0 );
signal clk : std_logic := '0';
signal rst : std_logic := '0';
begin

BCD: BCD_8x8_multiplier port map( clk ,rst, a0 , a1 , a2 , a3 , a4 , a5 , a6 , a7 ,
                                  b0 , b1 , b2 , b3 , b4 , b5 , b6 , b7 , 
                                  p0 , p1 , p2 , p3 , p4 , p5 , p6 , p7 , 
                                  p8 , p9 , p10 , p11 , p12 , p13 , p14 , p15 , p16 );

a0 <= "0011",
          "1001"after 5000ns ;
a1 <= "0111",
               "1001"after 5000ns ;
a2 <= "0010",
                    "1001"after 5000ns ;
a3 <= "0100",
                         "1001"after 5000ns ;
a4 <= "0101",
                              "1001"after 5000ns ;
a5 <= "0100",
                                   "1001"after 5000ns ;
a6 <= "0011",
                                        "1001"after 5000ns ;
a7 <= "0001",
                                             "1001"after 5000ns ;
b0 <= "0011",
                                                       "1001"after 5000ns ;
                                             b1 <= "0111",
                                                           "1001"after 5000ns ;
                                             b2 <= "0010",
                                                                 "1001"after 5000ns ;
                                             b3 <= "0100",
                                                                      "1001"after 5000ns ;
                                             b4 <= "0101",
                                                                           "1001"after 5000ns ;
                                             b5 <= "0100",
                                                                                "1001"after 5000ns ;
                                             b6 <= "0011",
                                                                                     "1001"after 5000ns ;
                                             b7 <= "0001",
                                                                                          "1001"after 5000ns ;
clk <= not clk after 200ns;
rst <= '0' , 
        '1' after 5000ns,
        '0' after 5200ns;
end BCD_8x8;
