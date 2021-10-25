LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY aula8 IS
	GENERIC (
		larguraDados : NATURAL := 8;
		ADDR_WIDTH : NATURAL := 8
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC;
		KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		FPGA_RESET_N : IN STD_LOGIC;
		HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

		--teste marco
		PC_out : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		flag_0 : OUT STD_LOGIC;
		operacao_ULA_test : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		ULA_entradaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		ULA_entradaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

	);
END ENTITY;
ARCHITECTURE arch_name OF aula8 IS
	SIGNAL PC_ROM : STD_LOGIC_VECTOR (8 DOWNTO 0);
	SIGNAL habLeituraMEM : STD_LOGIC;
	SIGNAL habEscritaMEM : STD_LOGIC;
	SIGNAL REG1_ULA_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
	SIGNAL instrucao : STD_LOGIC_VECTOR (14 DOWNTO 0);
	SIGNAL RAM_MUX : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL CLK : STD_LOGIC;
	SIGNAL CPU_DECODER_BLOCO : STD_LOGIC_VECTOR (2 DOWNTO 0);
	SIGNAL habilita : STD_LOGIC;
	SIGNAL decod_bloco_and : STD_LOGIC;
	SIGNAL decod_bloco_s5 : STD_LOGIC;

	SIGNAL decod_led_and_s0 : STD_LOGIC;
	SIGNAL decod_led_and_s1 : STD_LOGIC;
	SIGNAL decod_led_and_s2 : STD_LOGIC;
	SIGNAL decod_led_and_s3 : STD_LOGIC;
	SIGNAL decod_led_and_s4 : STD_LOGIC;
	SIGNAL decod_led_and_s5 : STD_LOGIC;

	SIGNAL saida_and1 : STD_LOGIC;
	SIGNAL saida_and2 : STD_LOGIC;
	SIGNAL saida_and3 : STD_LOGIC;

	SIGNAL saida_and_hex0 : STD_LOGIC;
	SIGNAL saida_and_hex1 : STD_LOGIC;
	SIGNAL saida_and_hex2 : STD_LOGIC;
	SIGNAL saida_and_hex3 : STD_LOGIC;
	SIGNAL saida_and_hex4 : STD_LOGIC;
	SIGNAL saida_and_hex5 : STD_LOGIC;

	SIGNAL saida_ledr : STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL saida_led8 : STD_LOGIC;
	SIGNAL saida_led9 : STD_LOGIC;

	SIGNAL saida_reg_hex0 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_reg_hex1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_reg_hex2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_reg_hex3 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_reg_hex4 : STD_LOGIC_VECTOR (3 DOWNTO 0);
	SIGNAL saida_reg_hex5 : STD_LOGIC_VECTOR (3 DOWNTO 0);

	SIGNAL saida_hex0 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL saida_hex1 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL saida_hex2 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL saida_hex3 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL saida_hex4 : STD_LOGIC_VECTOR (6 DOWNTO 0);
	SIGNAL saida_hex5 : STD_LOGIC_VECTOR (6 DOWNTO 0);

	SIGNAL clk_detector : STD_LOGIC;
	SIGNAL reg_key0_out : STD_LOGIC;

	SIGNAL clk_detector1 : STD_LOGIC;
	SIGNAL reg_key1_out : STD_LOGIC;

	SIGNAL clk_base_tempo_dev : STD_LOGIC;
	SIGNAL clk_base_tempo_rap : STD_LOGIC;
	SIGNAL clk_tempo : STD_LOGIC;

BEGIN

	CPU1 : ENTITY work.cpu
		PORT MAP(
			ROM_address => PC_ROM,
			wr => habEscritaMEM,
			rd => habLeituraMEM,
			data_out => REG1_ULA_A,
			data_address => instrucao(8 DOWNTO 0),
			instruction_in => instrucao,
			data_in => RAM_MUX,
			flag_0 => flag_0,
			operacao_ULA_test => operacao_ULA_test,
			ULA_entradaA => ULA_entradaA,
			ULA_entradaB => ULA_entradaB,
			CLK => CLK
		);

	ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => 15, addrWidth => 9)
		PORT MAP(
			Endereco => PC_ROM,
			Dado => instrucao);

	RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => 8, addrWidth => 6)
		PORT MAP(
			addr => instrucao(5 DOWNTO 0),
			we => habEscritaMEM,
			re => habLeituraMEM,
			habilita => habilita,
			dado_in => REG1_ULA_A,
			dado_out => RAM_MUX,
			clk => CLK);

	-- CRIAR DECODIFICADOR 3x8
	DECODIFICADO_BLOCO : ENTITY work.decodificador3x8
		PORT MAP(
			entrada => instrucao(8 DOWNTO 6),
			s0 => habilita,
			s4 => decod_bloco_and,
			s5 => decod_bloco_s5);

	-- DECODIFICADOR DOS LEDS		  
	DECODIFICADOR_LED : ENTITY work.decodificador3x8
		PORT MAP(
			entrada => instrucao(2 DOWNTO 0),
			s0 => decod_led_and_s0, s1 => decod_led_and_s1, s2 => decod_led_and_s2,
			s3 => decod_led_and_s3, s4 => decod_led_and_s4, s5 => decod_led_and_s5);

	-- REGISTRADOR LED 0-7	
	REGISTRADOR_LED : ENTITY work.registradorGenerico
		PORT MAP(DIN => REG1_ULA_A, DOUT => saida_ledr, ENABLE => saida_and3, CLK => CLK, RST => '0');

	REGISTRADOR_LED8 : ENTITY work.registradorFlag
		PORT MAP(DIN => REG1_ULA_A(0), DOUT => saida_led8, ENABLE => saida_and2, CLK => CLK, RST => '0');

	REGISTRADOR_LED9 : ENTITY work.registradorFlag
		PORT MAP(DIN => REG1_ULA_A(0), DOUT => saida_led9, ENABLE => saida_and1, CLK => CLK, RST => '0');

	REGISTRADOR_HEX0 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex0, ENABLE => saida_and_hex0, CLK => CLK, RST => '0');

	REGISTRADOR_HEX1 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex1, ENABLE => saida_and_hex1, CLK => CLK, RST => '0');

	REGISTRADOR_HEX2 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex2, ENABLE => saida_and_hex2, CLK => CLK, RST => '0');

	REGISTRADOR_HEX3 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex3, ENABLE => saida_and_hex3, CLK => CLK, RST => '0');

	REGISTRADOR_HEX4 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex4, ENABLE => saida_and_hex4, CLK => CLK, RST => '0');

	REGISTRADOR_HEX5 : ENTITY work.registrador4
		PORT MAP(DIN => REG1_ULA_A(3 DOWNTO 0), DOUT => saida_reg_hex5, ENABLE => saida_and_hex5, CLK => CLK, RST => '0');

	DECODIFICADOR_HEX0 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex0,
			saida7seg => saida_hex0);

	DECODIFICADOR_HEX1 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex1,
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => saida_hex1);

	DECODIFICADOR_HEX2 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex2,
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => saida_hex2);

	DECODIFICADOR_HEX3 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex3,
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => saida_hex3);

	DECODIFICADOR_HEX4 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex4,
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => saida_hex4);

	DECODIFICADOR_HEX5 : ENTITY work.decodificadorSegmentos
		PORT MAP(
			dadoHex => saida_reg_hex5,
			apaga => '0',
			negativo => '0',
			overFlow => '0',
			saida7seg => saida_hex5);

	DETECTOR_BORDA_KEY0 : ENTITY work.edgeDetector
		PORT MAP(
			clk => CLOCK_50,
			entrada => (NOT KEY(0)),
			saida => clk_detector);

	DETECTOR_BORDA_KEY1 : ENTITY work.edgeDetector
		PORT MAP(
			clk => CLOCK_50,
			entrada => (NOT KEY(1)),
			saida => clk_detector1);

	REGISTRADOR : ENTITY work.registrador_key0
		PORT MAP(
			DIN => '1',
			DOUT => reg_key0_out,
			RST => instrucao(0) AND instrucao(1) AND instrucao(2) AND instrucao(3) AND instrucao(4) AND instrucao(5) AND instrucao(6) AND instrucao(7) AND instrucao(8) AND habEscritaMEM,
			CLK => clk_tempo);

	REGISTRADOR1 : ENTITY work.registrador_key0
		PORT MAP(
			DIN => '1',
			DOUT => reg_key1_out,
			RST => not(instrucao(0)) AND instrucao(1) AND instrucao(2) AND instrucao(3) AND instrucao(4) AND instrucao(5) AND instrucao(6) AND instrucao(7) AND instrucao(8) AND habEscritaMEM,
			CLK => clk_detector1);

	BASETEMPO : ENTITY work.divisorGenerico
		GENERIC MAP(divisor => 25000000)
		PORT MAP(
			clk => CLK,
			saida_clk => clk_base_tempo_dev
		);
		
	BASETEMPO_RAP : ENTITY work.divisorGenerico
		GENERIC MAP(divisor => 10000)
		PORT MAP(
			clk => CLK,
			saida_clk => clk_base_tempo_rap
		);
		
	MUX_BASETEMPO: entity work.muxGenerico2x1_bit
	  port map(
		  entradaA_MUX => clk_base_tempo_dev,
		  entradaB_MUX =>  clk_base_tempo_rap,
		  seletor_MUX => SW(9),
		  saida_MUX => clk_tempo
	  );

	--portas and
	AND1 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_bloco_and, entrada3 => decod_led_and_s2, entrada4 => NOT(instrucao(5)), dataOUT => saida_and1);

	AND2 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_bloco_and, entrada3 => decod_led_and_s1, entrada4 => NOT(instrucao(5)), dataOUT => saida_and2);

	AND3 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s0, entrada3 => decod_bloco_and, entrada4 => NOT(instrucao(5)), dataOUT => saida_and3);

	AND_HEX0 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s0, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex0);

	AND_HEX1 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s1, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex1);

	AND_HEX2 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s2, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex2);

	AND_HEX3 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s3, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex3);

	AND_HEX4 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s4, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex4);

	AND_HEX5 : ENTITY work.porta_and
		PORT MAP(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s5, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex5);

	STATE_BUFFER1 : ENTITY work.State3_8
		PORT MAP(
			dado => SW(7 DOWNTO 0),
			habilita => habLeituraMEM AND NOT(instrucao(5)) AND decod_led_and_s0 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER2 : ENTITY work.State3
		PORT MAP(
			dado => SW(8),
			habilita => habLeituraMEM AND NOT(instrucao(5)) AND decod_led_and_s1 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER3 : ENTITY work.State3
		PORT MAP(
			dado => SW(9),
			habilita => habLeituraMEM AND NOT(instrucao(5)) AND decod_led_and_s2 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER4 : ENTITY work.State3
		PORT MAP(
			dado => reg_key0_out,
			habilita => habLeituraMEM AND instrucao(5) AND decod_led_and_s0 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER5 : ENTITY work.State3
		PORT MAP(
			dado => reg_key1_out,
			habilita => habLeituraMEM AND instrucao(5) AND decod_led_and_s1 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER6 : ENTITY work.State3
		PORT MAP(
			dado => KEY(2),
			habilita => habLeituraMEM AND instrucao(5) AND decod_led_and_s2 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER7 : ENTITY work.State3
		PORT MAP(
			dado => KEY(3),
			habilita => habLeituraMEM AND instrucao(5) AND decod_led_and_s3 AND decod_bloco_s5,
			saida => RAM_MUX);

	STATE_BUFFER8 : ENTITY work.State3
		PORT MAP(
			dado => NOT(FPGA_RESET_N),
			habilita => habLeituraMEM AND instrucao(5) AND decod_led_and_s4 AND decod_bloco_s5,
			saida => RAM_MUX);

	LEDR(7 DOWNTO 0) <= saida_ledr;
	LEDR(8) <= saida_led8;
	LEDR(9) <= saida_led9;
	CLK <= CLOCK_50;
	PC_out <= PC_ROM;

	HEX0 <= saida_hex0;
	HEX1 <= saida_hex1;
	HEX2 <= saida_hex2;
	HEX3 <= saida_hex3;
	HEX4 <= saida_hex4;
	HEX5 <= saida_hex5;
END ARCHITECTURE;