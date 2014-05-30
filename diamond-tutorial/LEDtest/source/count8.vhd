library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.typepackage.all;

entity count8 is
  port (
  clk: in std_logic;
  reset: in std_logic;
  direction: in std_logic;
  count: out std_logic_vector(7 downto 0));
end count8;

architecture rtl of count8 is
  signal countai: std8s;
  signal countbi: std8t;
begin
  main1: process (clk, reset)
  begin
    if (reset = '1') then
      countai <= "00000000";
      countbi <= "00000000";
    elsif (clk'event and clk = '1') then
      if (direction = '1') then
        countai <= std8s(unsigned(countai) + 1);
      else
        countai <= std8s(unsigned(countai) - 1);
      end if;
      countbi <= std8st(countai);
      count <= std8ts(countbi);
    end if;
  end process;
end rtl;
