library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex7seg is 
  port (
    input  : in  std_logic_vector(3 downto 0);
    output : out std_logic_vector(6 downto 0));
end hex7seg;

architecture combinational of hex7seg is
  signal output_n : std_logic_vector(6 downto 0);
begin
  with input select
    output_n <=
    "0111111" when "0000",
    "0000110" when "0001",
    "1011011" when "0010",
    "1001111" when "0011",
    "1100110" when "0100",
    "1101101" when "0101",
    "1111101" when "0110",
    "0000111" when "0111",
    "1111111" when "1000",
    "1101111" when "1001", 
    "1110111" when "1010",
    "1111100" when "1011", 
    "0111001" when "1100", 
    "1011110" when "1101", 
    "1111001" when "1110",
    "1110001" when "1111",
    "XXXXXXX" when others;

  output <= not output_n;

end combinational;
