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
	   opcode:  in STD_LOGIC_VECTOR(5 downto 0);
      funct:  in STD_LOGIC_VECTOR(5 downto 0);
      tipo_r:  in STD_LOGIC;
      ULActrl: out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity;

architecture comportamento of UNIDADE_CONTROLE_ULA is
  CONSTANT lw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
  CONSTANT sw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
  CONSTANT beqs : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
  CONSTANT lui : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001111";
  CONSTANT ori : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001101";
  CONSTANT addi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";
  CONSTANT andi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";
  
  CONSTANT r : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
  
  CONSTANT jmp : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
  
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

	begin
	
					-- bit3 de ULActrl não é usado, então podemos colocar zero

	ULActrl <= "0110" when (tipo_r='1' and funct="100010") else -- sub tipo R
				  "0010" when (tipo_r='1' and funct="100000") else -- add tipo R
				  "0111" when (tipo_r='1' and funct="101010") else -- slt tipo R
				  "0001" when (tipo_r='1' and funct="100101") else -- or tipo R
				  "0000" when (tipo_r='1' and funct="100100") else -- and tipo R
				  "0001" when (tipo_r='0' and opcode = ori) else -- ori tipo I
				  "0010" when (tipo_r='0' and opcode = lw) else -- lw tipo I
				  "0010" when (tipo_r='0' and opcode = sw) else -- sw tipo I
				  "0110" when (tipo_r='0' and opcode = beqs) else -- beq tipo I 
				  "0010" when (tipo_r='0' and opcode = addi) else -- addi tipo I
				  "0000" when (tipo_r='0' and opcode = andi) else -- andi tipo I
				  "0000";
				  -- J tipo J -> não precisa da ULA
end architecture;