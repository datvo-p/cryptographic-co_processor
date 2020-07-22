
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

entity ALU is
port(
A: in STD_LOGIC_VECTOR(15 downto 0);
B: in STD_LOGIC_VECTOR(15 downto 0);
Sel: in STD_LOGIC_VECTOR(3 downto 0);
result: out STD_LOGIC_VECTOR(15 downto 0)
);
end ALU;



architecture Behavioral of ALU is
signal AAAA,BBBB:STD_logic_vector(15 downto 0);
begin

AAAA<='0'&A(15 downto 0);
BBBB<='0'&B(15 downto 0);

    with Sel select

end Behavioral;
