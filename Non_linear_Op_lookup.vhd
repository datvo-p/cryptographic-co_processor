

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Non_linear_Op_lookup is
port(
    LUTIN: in STD_LOGIC_vector(15 downto 0);
    LUTOUT: inout STD_LOGIC_VECTOR(7 downto 0);
    result:  out STD_LOGIC_VECTOR( 15 downto 0)

);
end Non_linear_Op_lookup;

architecture Behavioral of Non_linear_Op_lookup is
signal MSN_in: std_logic_vector(3 downto 0);
signal LSN_in: std_logic_vector(3 downto 0);
signal MSN_out: std_logic_vector(3 downto 0);
signal LSN_out: std_logic_vector(3 downto 0);

begin
MSN_in <= LUTIN(7 downto 4);
LSN_in <= LUTIN(3 downto 0);

MSN_out <= "0001" when MSN_in = "0000" else
           "1011" when MSN_in = "0001" else
           "1001" when MSN_in = "0010" else
           "1100" when MSN_in = "0011" else
           "1101" when MSN_in = "0100" else
           "0110" when MSN_in = "0101" else
           "1111" when MSN_in = "0110" else
           "0011" when MSN_in = "0111" else
           "1110" when MSN_in = "1000" else
           "1000" when MSN_in = "1001" else
           "0111" when MSN_in = "1010" else
           "0100" when MSN_in = "1011" else
           "1010" when MSN_in = "1100" else
           "0010" when MSN_in = "1101" else
           "0101" when MSN_in = "1110" else
           "0000" when MSN_in = "1111" else
           "0000";
           
 LSN_out <= "1111" when MSN_in = "0000" else
           "0000" when MSN_in = "0001" else
           "1101" when MSN_in = "0010" else
           "0111" when MSN_in = "0011" else
           "1011" when MSN_in = "0100" else
           "1110" when MSN_in = "0101" else
           "0101" when MSN_in = "0110" else
           "1010" when MSN_in = "0111" else
           "1001" when MSN_in = "1000" else
           "0010" when MSN_in = "1001" else
           "1100" when MSN_in = "1010" else
           "0001" when MSN_in = "1011" else
           "0011" when MSN_in = "1100" else
           "0100" when MSN_in = "1101" else
           "1000" when MSN_in = "1110" else
           "0110" when MSN_in = "1111" else
           "0000";          
           
           
           
           
LUTOUT <= MSN_out&LSN_out;
result <=LUTIN(15 downto 8)&LUTOUT;

end Behavioral;
