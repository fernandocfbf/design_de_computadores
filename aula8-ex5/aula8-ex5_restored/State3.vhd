library IEEE;
use ieee.std_logic_1164.all;

entity State3 is
    port
    (
        -- Input ports
        dado : in  std_logic;
		  habilita : in std_logic;
        -- Output ports
        saida : out std_logic_vector(7 downto 0) -- := (others => '1')
    );
end entity;

architecture comportamento of State3 is
   --
   --  
   --
begin
   saida <= "0000000" & dado when (habilita = '1') else "ZZZZZZZZ"; 
	 
end architecture;