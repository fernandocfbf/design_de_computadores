library IEEE;
use ieee.std_logic_1164.all;

entity State3_8 is
    port
    (
        -- Input ports
        dado : in  std_logic_vector(7 downto 0);
		  habilita : in std_logic;
        -- Output ports
        saida : out std_logic_vector(7 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of State3_8 is
   --
   --  
   --
begin
   saida <= dado when(habilita = '1') else "ZZZZZZZZ"; 
	 
end architecture;