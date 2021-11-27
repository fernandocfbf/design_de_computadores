LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY UNIDADE_CONTROLE_ULA IS
  GENERIC (
    larguraDados : NATURAL := 8 -- n ta sendo usado, acho
  );
  PORT (
    opcode : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    funct : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    tipo_r : IN STD_LOGIC;
    ULActrl : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF UNIDADE_CONTROLE_ULA IS
  CONSTANT lw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
  CONSTANT sw : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
  CONSTANT beq : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
  CONSTANT bne : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000101";
  CONSTANT lui : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001111";
  CONSTANT ori : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001101";
  CONSTANT addi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";
  CONSTANT andi : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";

  CONSTANT r : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";

  CONSTANT jmp : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";

  CONSTANT zero : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) := (OTHERS => '0');

BEGIN

  -- bit3 de ULActrl não é usado, então podemos colocar zero

  ULActrl <=

    -- tipo R
    "0110" WHEN (tipo_r = '1' AND funct = "100010") ELSE -- sub 
    "0010" WHEN (tipo_r = '1' AND funct = "100000") ELSE -- add 
    "0111" WHEN (tipo_r = '1' AND funct = "101010") ELSE -- slt 
    "0001" WHEN (tipo_r = '1' AND funct = "100101") ELSE -- or 
    "0000" WHEN (tipo_r = '1' AND funct = "100100") ELSE -- and 
    "0000" WHEN (tipo_r = '1' AND funct = "001000") ELSE -- jr 

    -- tipo I
    "0001" WHEN (tipo_r = '0' AND opcode = ori) ELSE -- ori 
    "0010" WHEN (tipo_r = '0' AND opcode = lw) ELSE -- lw 
    "0010" WHEN (tipo_r = '0' AND opcode = sw) ELSE -- sw 
    "0110" WHEN (tipo_r = '0' AND (opcode = beq or opcode = bne)) ELSE -- beq/bne 
    "0010" WHEN (tipo_r = '0' AND opcode = addi) ELSE -- addi 
    "0000" WHEN (tipo_r = '0' AND opcode = andi) ELSE -- andi 
    "0000";
  -- J tipo J -> não precisa da ULA
END ARCHITECTURE;