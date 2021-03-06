LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaROM IS
	GENERIC (
		dataWidth : NATURAL := 13;
		addrWidth : NATURAL := 9
	);
	PORT (
		Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
		Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE assincrona OF memoriaROM IS

	CONSTANT NOP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
	CONSTANT LDA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001"; -- carrega ac com valor da memoria
	CONSTANT SOMA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010"; -- soma A+B
	CONSTANT SUB : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011"; -- subtrai A-B
	CONSTANT LDI : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100"; -- carrega acumulador 
	CONSTANT STA : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0101"; -- salva valor do ac na memória
	CONSTANT JMP : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0110"; -- faz um jump
	CONSTANT JEQ : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0111"; -- desvia se CEQ = 0
	CONSTANT CEQ : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000"; -- compara ac com o valor da memória
	CONSTANT JSR : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001";
	CONSTANT RET : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010"; --retorna da subrotina

	CONSTANT R0 : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	CONSTANT R1 : STD_LOGIC_VECTOR(1 DOWNTO 0) := "01";
	CONSTANT R2 : STD_LOGIC_VECTOR(1 DOWNTO 0) := "10";
	CONSTANT R3 : STD_LOGIC_VECTOR(1 DOWNTO 0) := "11";

	TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

	FUNCTION initMemory
		RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
	BEGIN
		-- CTRL = SelMUX, Habilita_A, Reset_A, Operacao_ULA
		-- Inicializa os endereços:
		--    		CTRL   Prox Estado
		-- 1. SETUP
		tmp(0) := LDI & R0 & '0' & x"00"; -- Carrega 0 no AC

		-- 1.1 carrega 0 nos HEXs
		tmp(1) := STA & R0 & '1' & x"20";
		tmp(2) := STA & R0 & '1' & x"21";
		tmp(3) := STA & R0 & '1' & x"22";
		tmp(4) := STA & R0 & '1' & x"23";
		tmp(5) := STA & R0 & '1' & x"24";
		tmp(6) := STA & R0 & '1' & x"25";

		-- -- 1.2 carrega 0 nos LEDs
		tmp(7) := STA & R0 & '1' & x"00"; -- (LEDR 7)
		tmp(8) := STA & R0 & '1' & x"01"; -- limite (LEDR 8)
		tmp(9) := STA & R0 & '1' & x"02"; -- overflow (LEDR 9)

		-- -- 1.3 carrega 0 nas variáveis
		tmp(10) := STA & R0 & '0' & x"00"; -- comparação com 0
		tmp(11) := STA & R0 & '0' & x"01"; -- unidade
		tmp(12) := STA & R0 & '0' & x"02"; -- dezena
		tmp(13) := STA & R0 & '0' & x"03"; -- centena
		tmp(14) := STA & R0 & '0' & x"04"; -- milhar
		tmp(15) := STA & R0 & '0' & x"05"; -- dezena de milhar
		tmp(16) := STA & R0 & '0' & x"06"; -- centena de milhar
		tmp(17) := STA & R0 & '0' & x"07"; -- inibir contagem

		-- -- 1.4 limites de contagem e constantes
		tmp(18) := LDI & R0 & '0' & x"01";
		tmp(19) := STA & R0 & '0' & x"08"; -- const 1

		tmp(20) := LDI & R0 & '0' & x"0A";
		tmp(21) := STA & R0 & '0' & x"09"; -- comparação com 10

		tmp(22) := LDI & R0 & '0' & x"09";
		tmp(23) := STA & R0 & '0' & x"0A"; -- limite unidade (9)
		tmp(24) := STA & R0 & '0' & x"0B"; -- limite dezena (9)
		tmp(25) := STA & R0 & '0' & x"0C"; -- limite centena (9)
		tmp(26) := STA & R0 & '0' & x"0D"; -- limite milhar (9)
		tmp(27) := STA & R0 & '0' & x"0E"; -- limite dezena de milhar (9)
		tmp(28) := STA & R0 & '0' & x"0F"; -- limite centena de milhar (9)

		tmp(29) := LDI & R0 & '0' & x"06";
		tmp(30) := STA & R0 & '0' & x"10"; -- comparação com 6
		tmp(31) := LDI & R0 & '0' & x"02";
		tmp(32) := STA & R0 & '0' & x"11"; -- comparação com 2
		tmp(33) := LDI & R0 & '0' & x"04";
		tmp(34) := STA & R0 & '0' & x"12"; -- comparação com 4

		-- 2. LOOP 

		-- 2.1 lê KEY[0] 
		tmp(50) := LDA & R0 & '1' & x"60"; -- carrega AC com valor KEY[0]
		tmp(51) := CEQ & R0 & '0' & x"00"; -- compara com MEM[0] (const 0)
		tmp(52) := JEQ & R0 & '0' & x"36"; -- desvia se igual a 0 (botão não pressionado)
		tmp(53) := JSR & R0 & '0' & x"50"; -- pula para sub rotina de incremento

		-- 2.2 lê KEY[1]
		tmp(54) := LDA & R0 & '1' & x"61"; -- carrega AC com valor KEY[1]
		tmp(55) := CEQ & R0 & '0' & x"00"; -- compara com MEM[0] (const 0)
		tmp(56) := JEQ & R0 & '0' & x"3A"; -- desvia se igual a 0 (botão não pressionado)
		tmp(57) := JSR & R0 & '0' & x"B4"; -- pula para sub rotina de incremento

		tmp(58) := JSR & R0 & '0' & x"A0"; -- sub rotina de update
		tmp(59) := JMP & R0 & '0' & x"32"; -- reinicia

		-- 2.4 sub rotina de incremento
		tmp(80) := STA & R0 & '1' & x"FF"; -- limpa KEY[0]

		-- 2.4.1 incrementa unidade
		tmp(81) := LDA & R0 & '0' & x"01"; -- carrega unidade
		tmp(82) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(83) := STA & R0 & '0' & x"01"; -- salva o incremento em unidade
		tmp(84) := CEQ & R0 & '0' & x"09"; -- compara com const 10
		tmp(85) := JEQ & R0 & '0' & x"57"; -- desvia se chegou em 10 
		tmp(86) := JMP & R0 & '0' & x"88"; -- retorna sub rotina

		-- 2.4.2 incrementa dezena
		tmp(88) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(89) := STA & R0 & '0' & x"01"; -- guarda o valor nas unidades
		tmp(90) := LDA & R0 & '0' & x"02"; -- carrega dezenas
		tmp(91) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(92) := STA & R0 & '0' & x"02"; -- guarda o valor nas dezenas
		tmp(93) := CEQ & R0 & '0' & x"10"; -- compara com o valor const 6
		tmp(94) := JEQ & R0 & '0' & x"60"; -- desvia se chegou em 6
		tmp(95) := JMP & R0 & '0' & x"88"; -- retorna sub rotina

		-- 2.4.3 incrementa centena
		tmp(96) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(97) := STA & R0 & '0' & x"02"; -- guarda o valor nas dezenas
		tmp(98) := LDA & R0 & '0' & x"03"; -- carrega centenas
		tmp(99) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(100) := STA & R0 & '0' & x"03"; -- guarda o valor nas centenas
		tmp(101) := CEQ & R0 & '0' & x"09"; -- compara com const 10
		tmp(102) := JEQ & R0 & '0' & x"68"; -- desvia se chegou em 10
		tmp(103) := JMP & R0 & '0' & x"88";

		-- 2.4.4 incrementa milhar
		tmp(104) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(105) := STA & R0 & '0' & x"03"; -- guarda o valor nas centenas
		tmp(106) := LDA & R0 & '0' & x"04"; -- carrega milhares
		tmp(107) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(108) := STA & R0 & '0' & x"04"; -- guarda o valor nos milhares
		tmp(109) := CEQ & R0 & '0' & x"10"; -- compara com const 6
		tmp(110) := JEQ & R0 & '0' & x"70"; -- desvia se chegou em 6
		tmp(111) := JMP & R0 & '0' & x"88";

		-- 2.4.5 incrementa dezena de milhar
		tmp(112) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(113) := STA & R0 & '0' & x"04"; -- guarda o valor nos milhares

		tmp(114) := LDA & R0 & '0' & x"05"; -- carrega dezenas de milhares
		tmp(115) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(116) := STA & R0 & '0' & x"05"; -- guarda o valor nas dezenas de milhares
		tmp(117) := CEQ & R0 & '0' & x"12"; -- compara com const 4
		tmp(118) := JEQ & R0 & '0' & x"81"; -- desvia se chegou em 4

		tmp(119) := LDA & R0 & '0' & x"05"; -- carrega dezenas de milhares
		tmp(120) := CEQ & R0 & '0' & x"09"; -- compara com const 10
		tmp(121) := JEQ & R0 & '0' & x"7B"; -- desvia se chegou em 10
		tmp(122) := JMP & R0 & '0' & x"88";

		tmp(123) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(124) := STA & R0 & '0' & x"05"; -- guarda o valor nas dezenas de milhares
		tmp(125) := LDA & R0 & '0' & x"06"; -- carrega centenas de milhares
		tmp(126) := SOMA & R0 & '0' & x"08"; -- soma com const 1
		tmp(127) := STA & R0 & '0' & x"06"; -- guarda o valor nas dezenas de milhares
		tmp(128) := JMP & R0 & '0' & x"88"; -- retorna da sub rotina

		-- 2.4.6 incrementa centena de milhar 
		tmp(129) := LDA & R0 & '0' & x"06"; -- carrega centenas de milhares
		tmp(130) := CEQ & R0 & '0' & x"11"; -- compara com const 2
		tmp(131) := JEQ & R0 & '0' & x"85"; -- desvia se chegou em 2
		tmp(132) := JMP & R0 & '0' & x"77";

		tmp(133) := LDA & R0 & '0' & x"00"; -- carrega const 0
		tmp(134) := STA & R0 & '0' & x"05"; -- guarda o valor nas dezenas de milhares
		tmp(135) := STA & R0 & '0' & x"06"; -- guarda o valor nas centenas de milhares

		tmp(136) := RET & R0 & '0' & x"00"; -- retorna da sub-rotina

		-- 2.5 UPDATE
		tmp(160) := LDA & R0 & '0' & x"01"; -- carrega unidade
		tmp(161) := STA & R0 & '1' & x"20"; -- guarda o valor no HEX0 (288)
		tmp(162) := LDA & R0 & '0' & x"02"; -- carrega dezenas
		tmp(163) := STA & R0 & '1' & x"21"; -- guarda o valor no HEX1 (289)
		tmp(164) := LDA & R0 & '0' & x"03"; -- carrega centenas
		tmp(165) := STA & R0 & '1' & x"22"; -- guarda o valor no HEX2 (290)
		tmp(166) := LDA & R0 & '0' & x"04"; -- carrega milhares
		tmp(167) := STA & R0 & '1' & x"23"; -- guarda o valor no HEX3 (291)
		tmp(168) := LDA & R0 & '0' & x"05"; -- carrega dezena de milhares
		tmp(169) := STA & R0 & '1' & x"24"; -- guarda o valor no HEX3 (292)
		tmp(170) := LDA & R0 & '0' & x"06"; -- carrega centena de milhares
		tmp(171) := STA & R0 & '1' & x"25"; -- guarda o valor no HEX3 (293)
		tmp(172) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina

		-- 2.6 configura horário
		
		tmp(180) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(181) := LDI & R3 & '0' & x"01"; -- carrega const 1
		tmp(182) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(183) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(184) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(185) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(186) := JEQ & R0 & '0' & x"B5"; -- volta para o inicio
		tmp(187) := STA & R1 & '0' & x"01"; -- salva valor em unidades

		tmp(190) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(191) := LDI & R3 & '0' & x"03"; -- carrega const 1
		tmp(192) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(193) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(194) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(195) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(196) := JEQ & R0 & '0' & x"BF"; -- volta para o inicio
		tmp(197) := STA & R1 & '0' & x"02"; -- salva valor em dezenas

		tmp(200) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(201) := LDI & R3 & '0' & x"07"; -- carrega const 1
		tmp(202) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(203) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(204) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(205) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(206) := JEQ & R0 & '0' & x"C9"; -- volta para o inicio
		tmp(207) := STA & R1 & '0' & x"03"; -- salva valor em centenas

		tmp(210) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(211) := LDI & R3 & '0' & x"0F"; -- carrega const 1
		tmp(212) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(213) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(214) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(215) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(216) := JEQ & R0 & '0' & x"D3"; -- volta para o inicio
		tmp(217) := STA & R1 & '0' & x"04"; -- salva valor em milhares

		tmp(220) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(221) := LDI & R3 & '0' & x"1F"; -- carrega const 1
		tmp(222) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(223) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(224) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(225) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(226) := JEQ & R0 & '0' & x"DD"; -- volta para o inicio
		tmp(227) := STA & R1 & '0' & x"05"; -- salva valor em dezenas de milhares

		tmp(230) := STA & R0 & '1' & x"FE"; -- limpa KEY[1]
		tmp(231) := LDI & R3 & '0' & x"3F"; -- carrega const 1
		tmp(232) := STA & R3 & '1' & x"00"; -- liga LED
		tmp(233) := LDA & R0 & '1' & x"61"; -- lê KEY[1]
		tmp(234) := CEQ & R0 & '0' & x"00"; -- compara com const 0
		tmp(235) := LDA & R1 & '1' & x"40"; -- lê chaves
		tmp(236) := JEQ & R0 & '0' & x"E7"; -- volta para o inicio
		tmp(237) := STA & R1 & '0' & x"06"; -- salva valor em dezenas

		tmp(240) := STA & R0 & '1' & x"FE"; -- limpa a leitura do botão B1
		tmp(241) := LDA & R0 & '0' & x"00"; -- Carrega o valor de MEM[3] (constante 0)
		tmp(242) := STA & R0 & '1' & x"00"; -- Armazena o valor do acumulador em MEM[256] (LED7)
		tmp(243) := RET & R0 & '0' & x"00"; -- Retorna da sub-rotina
		RETURN tmp;
	END initMemory;

	SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
	Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;