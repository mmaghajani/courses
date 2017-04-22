library IEEE;
use IEEE.std_logic_1164.all;

entity controller is port(
  write_request : in std_logic ;
  read_request: in std_logic ;
  clk : in std_logic;
  ram_ready: in std_logic ;
  cache_ready: in std_logic ;
  is_hit: in std_logic ;
  invalidate: out std_logic ;
  ram_write: out std_logic ;
  ram_read: out std_logic ;
  read_cache: out std_logic ;
  wren: out std_logic
  );
end controller;

architecture behavioral of controller is
  constant start: integer := 0 ;
  constant read_from_ram: integer := 1 ;
  constant write_to_ram: integer := 2 ;
begin
  process(clk)
    variable state: integer range 0 to 2 := start ;
    begin
      if(clk'event AND clk='1') then
      case state is
        when start =>
        if(write_request = '1' and read_request = '0')then
          state := write_to_ram ;
        elsif( write_request = '0' and read_request = '1')then
          if( is_hit = '1' )then
            invalidate <= '0' ;
            ram_write <= '0' ;
            ram_read <= '0' ;
            wren <= '0' ;
            read_cache <= '1' ;
          else
            ram_read <= '1' ;
            invalidate <= '0' ;
            ram_write <= '0' ;
            wren <= '0' ;
            read_cache <= '0' ;
            state := read_from_ram ;
          end if;
        else
            invalidate <= '0' ;
            ram_write <= '0' ;
            ram_read <= '0' ;
            wren <= '0' ;
            read_cache <= '0' ;
          end if ;
        when read_from_ram =>
            invalidate <= '0' ;
            ram_write <= '0' ;
            ram_read <= '0' ;
            wren <= '1' ;
            read_cache <= '0' ;
            if( cache_ready = '1' )then
              state := start ;
            end if ;
        when write_to_ram =>
          if( is_hit = '1')then
            invalidate <= '1' ;
          else
            invalidate <= '0' ;
          end if ;
          ram_write <= '1' ;
          ram_read <= '0' ;
          wren <= '0' ;
          read_cache <= '0' ;
          state := start ;
        when others =>
          state := start ;
      end case ;
      end if ;
      end process ;
end behavioral ;
