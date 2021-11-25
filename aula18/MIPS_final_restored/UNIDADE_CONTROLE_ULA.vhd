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
		opcode: in STD_LOGIC_VECTOR(5 downto 0);
      fun:  in STD_LOGIC_VECTOR(5 downto 0);
      TipoR:  in STD_LOGIC;
      ULActrl: out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity;

architecture comportamento of UNIDADE_CONTROLE_ULA is
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
	  
	
	begin
					
					-- bit3 de ULActrl não é usado, então podemos colocar zero
	
	ULActrl <= "0110" when (TipoR='1' and fun="100010") else     -- sub tipo R
				  "0010" when (TipoR='1' and fun="100000") else     -- add tipo R
				  "0111" when (TipoR='1' and fun="101010") else     -- slt tipo R
				  "0001" when (TipoR='1' and fun="100101") else     -- or tipo R
				  "0000" when (TipoR='1' and fun="100100") else     -- and tipo R
				  "0000" when (TipoR='1' and fun="001000") else     -- jr tipo R
				  "0001" when (TipoR='0' and opcode = "001101")else   -- ori tipo I
				  "0010" when (TipoR='0' and (opcode = "101011" or opcode = "100011"))else  -- lw / sw tipo I
				  "0110" when (TipoR='0' and opcode = "000100") else  -- beq tipo I 
				  "0000" when (TipoR='0' and opcode = "001100") else -- ANDI		
				  "0000";
				  -- J tipo J -> não precisa da ULA
end architecture;