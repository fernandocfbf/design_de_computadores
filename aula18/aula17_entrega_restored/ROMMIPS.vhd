LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ROMMIPS IS
  GENERIC (
    dataWidth : NATURAL := 32;
    addrWidth : NATURAL := 32;
    memoryAddrWidth : NATURAL := 6); -- 64 posicoes de 32 bits cada
  PORT (
    clk : IN STD_LOGIC;
    Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
    Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0));
END ENTITY;

ARCHITECTURE assincrona OF ROMMIPS IS
	TYPE blocoMemoria IS ARRAY(0 TO 2 ** memoryAddrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);
	signal memROM: blocoMemoria;
	attribute ram_init_file : string;
	attribute ram_init_file of memROM:
	signal is "ROMcontent.mif";

	-- Utiliza uma quantidade menor de endereços locais:
	signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

	begin
		EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
		Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
	end architecture;
  -- abaixo tudo comentado para usar o arquivo .mif
  --FUNCTION initMemory
    --RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
  --BEGIN
	-- Inicializa os endereços:
	--tmp(0) := "100011" & "00000" & "01000" & "0000000000000000"; -- lw M[0] no $t0
	--tmp(1) := "100011" & "00000" & "01001" & "0000000000000000"; -- lw M[0] no $t1
	--tmp(2) := "101011" & "00000" & "01000" & "0000000000000100"; -- sw  
	--tmp(3) := "000010" & "00000" & "00000" & "0000000000001000";  -- pula para a instrucao 8 beq (deslocamento de 2 bits pra direita)
	
	--tmp(5)
	--tmp(6)
	--tmp(7)
	--tmp(8) := "000100" & "00000" & "00000" & "1111111111111100"; -- beq -3
	--tmp(9)

	 -- 100
    --RETURN tmp;
  --END initMemory;

  --SIGNAL memROM : blocoMemoria := initMemory;
  --signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);
  
--BEGIN
 -- EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  --Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
--END ARCHITECTURE;