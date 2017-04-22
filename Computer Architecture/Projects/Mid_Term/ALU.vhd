library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all ;

entity alu is port (
  clk : in std_logic;
  add, sub, comp, findZero : in std_logic;
  a, b : in std_logic_vector(7 downto 0);
  aGreater : out std_logic;
  result : out std_logic_vector(7 downto 0);
  aIsZero : out std_logic
  );
end entity;

architecture data_flow of alu is
begin
  process (clk)
    begin
      if clk'event and clk = '1' then
        if add = '1' then
          result <= a + b;
        elsif sub = '1' then
          result <= a - b;
        elsif comp = '1' then
          if a > b then
            aGreater <= '1';
          else
            aGreater <= '0';
          end if;
        elsif findZero = '1' then
          if a = "00000000" then
            aIsZero <= '1';
          else
            aIsZero <= '0';
          end if;
        end if;
      end if;
    end process;
end architecture data_flow;

