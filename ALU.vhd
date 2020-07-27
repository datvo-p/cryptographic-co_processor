
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_signed.all;

entity ALU is
port(
A: in STD_LOGIC_VECTOR(15 downto 0);
B: in STD_LOGIC_VECTOR(15 downto 0);
Sel: in STD_LOGIC_VECTOR(3 downto 0);
result: inout STD_LOGIC_VECTOR(15 downto 0)
);
end ALU;



architecture Behavioral of ALU is
signal AAAA,BBBB:STD_logic_vector(16 downto 0);
signal selsig: STD_logic_vector(16 downto 0);
begin

AAAA<='0'&A(15 downto 0);
BBBB<='0'&B(15 downto 0);
selsig<='0'&result(15 downto 0);

    with Sel select selsig <=
        AAAA+BBBB when  "0000",
        AAAA-BBBB when "0001",
       (AAAA and BBBB) when "0010",
        AAAA or BBBB when "0011",
        AAAA xor BBBB when "0100",
        not(AAAA) when "0101",
        AAAA when "0110",
        "00000000000000000" when others;

end Behavioral;
