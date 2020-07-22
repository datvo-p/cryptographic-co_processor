----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/15/2020 03:06:49 PM
-- Design Name: 
-- Module Name: Shifter - Behavioral
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

entity Shifter is
 port( 
 input: in STD_LOGIC_VECTOR(15 downto 0);
 Control: in STD_LOGIC_VECTOR(3 downto 0);
 shiftout: out STD_logic_vector(15 downto 0)
        
 );
end Shifter;

architecture Behavioral of Shifter is
    begin
    shiftout <= input(15 downto 0) when control = "0000" else
                input(7 downto 0)&input(15 downto 8) when control ="1000" else
                input(3 downto 0)&input(15 downto 4) when control ="1001" else
                input(7 downto 0) & "00000000" when control ="1010" else
                x"0000";
end Behavioral;
