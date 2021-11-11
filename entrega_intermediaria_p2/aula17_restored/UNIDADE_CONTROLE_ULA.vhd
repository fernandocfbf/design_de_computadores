library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity UNIDADE_CONTROLE_ULA is
    generic
    (
        larguraDados : natural := 8 -- n ta sendo usado, acho
    );
    port
    (
      funct:  in STD_LOGIC_VECTOR(5 downto 0);
      ULAop:  in STD_LOGIC_VECTOR(1 downto 0);
      ULActrl:    out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity;

architecture comportamento of UNIDADE_CONTROLE_ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

	begin
	
					-- bit3 de ULActrl não é usado, então podemos colocar zero
	
	ULActrl <= "0110" when (ULAop="10" and funct="100010") else -- sub tipo R
				  "0010" when (ULAop="10" and funct="100000") else -- add tipo R
				  "0111" when (ULAop="10" and funct="101010") else -- slt tipo R
				  "0001" when (ULAop="10" and funct="100101") else -- or tipo R
				  "0000" when (ULAop="10" and funct="100100") else -- and tipo R
				  "0010" when (ULAop="00" and funct="100011") else -- lw tipo I
				  "0010" when (ULAop="00" and funct="101011") else -- Sw tipo I
				  "0110" when (ULAop="01" and funct="000100");     -- beq tipo I 
				  
				  -- J tipo J -> não precisa da ULA, independente, querido!
end architecture;