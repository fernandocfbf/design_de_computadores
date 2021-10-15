library ieee;
use ieee.std_logic_1164.all;

entity muxGenericoJUMP is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8);
  port (
    entradaA_MUX, entradaB_MUX, entradaC_MUX: in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenericoJUMP is
  begin
    saida_MUX <= entradaB_MUX when (seletor_MUX = "01") else
						entradaC_MUX when (seletor_MUX = "10") else
	    entradaA_MUX;
		 
end architecture;