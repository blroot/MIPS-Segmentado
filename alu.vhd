----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.04.2014 16:07:47
-- Design Name: 
-- Module Name: P1d - Behavioral
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
use IEEE.STD_LOGIC_Arith.ALL;
use IEEE.STD_LOGIC_Signed.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( a : in STD_LOGIC_VECTOR (31 downto 0);
           b : in STD_LOGIC_VECTOR (31 downto 0);
           control : in STD_LOGIC_VECTOR (2 downto 0);
           zero : out STD_LOGIC;
           result : out STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

signal aux : STD_LOGIC_VECTOR (31 downto 0);

begin

process(a, b, control)
begin
    case control is
    when "000" => aux <= a and b;
    when "001" => aux <= a or b;
    when "010" => aux <= a + b;
    when "110" => aux <= a - b;
    when "111" => 
        if(a<b) then
        aux <= x"00000001";
        else aux <= x"00000000";
        end if;
    when "100" => aux <= b(15 downto 0) & x"0000";  
    when others => aux <= x"00000000";   
    end case;  
       
end process;

result <= aux;

process(aux)
begin
if(aux = x"00000000") then
         zero <= '1';
    else zero <= '0';
end if; 
end process;

end Behavioral;
