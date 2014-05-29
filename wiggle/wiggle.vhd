library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity wiggle is
   port (-- Interface to PCI Logicore.
      rst         : in std_logic;
      clk         : in std_logic;
      gpio        : out std_logic_vector(45 downto 0)
   );
end wiggle;

architecture rtl of wiggle is

   signal count   : std_logic_vector(45 downto 0);

begin

   process(CLK, RST)
   begin
      if RST ='1' then
         count <= (others => '0');
      elsif rising_edge(CLK) then
         count <= count + 1;
      end if;
   end process;

   gpio <= count;

end rtl;
