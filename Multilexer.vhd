
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- designining a multiplxer for a cryptographic coprocessor
entity Multilexer is
 port(
 A : in STD_LOGIC_VECTOR(15 downto 0); -----ALU input
 B: in STD_LOGIC_VECTOR(15 downto 0); -------shifter input
 C: in STD_LOGIC_VECTOR(7 downto 0); ------non linear look up input
 S : in STD_LOGIC_VECTOR(3 downto 0);--------control logic
 F : out STD_LOGIC_vector(15 downto 0)
 );
 
end Multilexer;

architecture Behavioral of Multilexer is

begin
       F  <=A(15 downto 0) when S = "0000" else
            A(15 downto 0)  when S = "0001" else
           A(15 downto 0)  when S = "0010" else
            A(15 downto 0) when S = "0011" else
            A(15 downto 0)  when S = "0100" else
            A(15 downto 0)  when S = "0101" else
            A(15 downto 0)  when S = "0110" else
            A(15 downto 0)  when S = "0111" else
            B(15 downto 0) when S = "1000" else
            B(15 downto 0) when S = "1001" else
            B(15 downto 0) when S ="1010" else
            C(15 downto 0);

end Behavioral;
