LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY aula16 IS
	GENERIC (
		larguraDados : NATURAL := 8;
		ADDR_WIDTH : NATURAL := 8
	);

	PORT (
		CLOCK_50 : IN STD_LOGIC;
		habEscritaMEM : IN STD_LOGIC;
		habLeituraMEM : IN STD_LOGIC;
		BEQ : IN STD_LOGIC;
		sel_mux_ula_mem : IN STD_LOGIC;
		mux_rt_imediato : IN STD_LOGIC;
		ULActrl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		habEscritaReg : IN STD_LOGIC;
		sel_mux_rt_rd : IN STD_LOGIC;
		sel_mux_jump : IN STD_LOGIC;

		sel : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		flag_ULA_s : OUT STD_LOGIC;
		PC_out_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		somador_mux_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		saida_shift_left_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		Saida_estende_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		instrucao_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		saida_prox_pc_s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END ENTITY;
ARCHITECTURE arch_name OF aula16 IS
	SIGNAL PC_OUT : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL SOMADOR_PC : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL instrucao : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL REG1_ULA_B : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL REG2_ULA_C : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_ULA : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_estende : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Saida_unidade_de_controle : STD_LOGIC_VECTOR (11 DOWNTO 0);
	SIGNAL Dado_lido : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Flag_Ula : STD_LOGIC;
	SIGNAL CLK : STD_LOGIC;
	SIGNAL RESET : STD_LOGIC;
	SIGNAL somador_mux : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_beq : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_shift_left : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_teste : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_rt_imediato : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_mux_rt_rd : STD_LOGIC_VECTOR (4 DOWNTO 0);
	SIGNAL saida_mux_ula_mem : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_prox_pc : STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL saida_shift_left_mux : STD_LOGIC_VECTOR (25 DOWNTO 0);

BEGIN
	CLK <= CLOCK_50;

	PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 32)
		PORT MAP(
			DIN => saida_prox_pc,
			DOUT => PC_OUT,
			ENABLE => '1',
			CLK => CLK,
			RST => RESET);

	SOMACONSTANTE : ENTITY work.somaConstante GENERIC MAP (larguraDados => 32, constante => 4)
		PORT MAP(
			entrada => PC_OUT,
			saida => SOMADOR_PC
		);

	ESTENDE_SINAL : ENTITY work.estendeSinalGenerico GENERIC MAP (larguraDadoEntrada => 16, larguraDadoSaida => 32)
		PORT MAP(
			estendeSinal_IN => instrucao(15 DOWNTO 0),
			estendeSinal_OUT => Saida_estende
		);

	DESLOCADOR : ENTITY work.deslocadorGenerico GENERIC MAP (larguraDadoEntrada => 32, larguraDadoSaida => 32)
		PORT MAP(
			sinalIN => Saida_estende,
			sinalOUT => saida_shift_left
		);

	DESLOCADOR_ROM : ENTITY work.deslocadorGenericoROM GENERIC MAP (larguraDadoEntrada => 26, larguraDadoSaida => 26)
		PORT MAP(
			sinalIN => instrucao(25 DOWNTO 0), --imediato
			sinalOUT => saida_shift_left_mux
		);

	SOMACONSTANTE_BEQ : ENTITY work.somadorGenerico GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA => SOMADOR_PC,
			entradaB => saida_shift_left,
			saida => somador_mux);

	MUX_IMEDIATO : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => REG2_ULA_C,
			entradaB_MUX => Saida_estende,
			seletor_MUX => Saida_unidade_de_controle(8),
			saida_MUX => saida_mux_rt_imediato);

	MUX_BEQ : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => SOMADOR_PC,
			entradaB_MUX => somador_mux,
			seletor_MUX => Flag_Ula AND Saida_unidade_de_controle(2),
			saida_MUX => saida_mux_beq);

	MUX_ULA_MEM : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => Saida_ULA,
			entradaB_MUX => Dado_lido,
			seletor_MUX => Saida_unidade_de_controle(3),
			saida_MUX => saida_mux_ula_mem);

	MUX_RT_RD : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 5)
		PORT MAP(
			entradaA_MUX => instrucao(20 DOWNTO 16),
			entradaB_MUX => instrucao(15 DOWNTO 11),
			seletor_MUX => Saida_unidade_de_controle(10),
			saida_MUX => saida_mux_rt_rd);

	MUX_JMP : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 32)
		PORT MAP(
			entradaA_MUX => saida_mux_beq,
			entradaB_MUX => SOMADOR_PC(31 DOWNTO 28) & instrucao(25 DOWNTO 0) & '0' & '0',
			seletor_MUX => Saida_unidade_de_controle(11), -- mudar isso aqui
			saida_MUX => saida_prox_pc);

	ROMMIPS : ENTITY work.ROMMIPS GENERIC MAP (dataWidth => 32, addrWidth => 32)
		PORT MAP(
			Endereco => PC_OUT,
			Dado => instrucao,
			clk => CLK);

	RAMMIPS : ENTITY work.RAMMIPS GENERIC MAP (dataWidth => 32, addrWidth => 32, memoryAddrWidth => 6)
		PORT MAP(
			clk => CLK,
			Endereco => Saida_ULA,
			Dado_in => REG2_ULA_C,
			Dado_out => Dado_lido,
			we => Saida_unidade_de_controle(0),
			re => Saida_unidade_de_controle(1));

	BANCO_REG : ENTITY work.bancoReg GENERIC MAP (larguraDados => 32, larguraEndBancoRegs => 5)
		PORT MAP(
			clk => CLK,
			enderecoA => instrucao(25 DOWNTO 21),
			enderecoB => instrucao(20 DOWNTO 16),
			enderecoC => saida_mux_rt_rd,
			dadoEscritaC => saida_mux_ula_mem,
			escreveC => Saida_unidade_de_controle(9), -- concluir
			saidaA => REG1_ULA_B,
			saidaB => REG2_ULA_C
		);

	ULA : ENTITY work.ULA GENERIC MAP(larguraDados => 32)
		PORT MAP(
			entradaA => REG1_ULA_B,
			entradaB => saida_mux_rt_imediato,
			saida => Saida_ULA,
			seletor => Saida_unidade_de_controle(7 DOWNTO 4),
			flagZero => Flag_Ula);

	Saida_unidade_de_controle(0) <= habEscritaMEM;
	Saida_unidade_de_controle(1) <= habLeituraMEM;
	Saida_unidade_de_controle(2) <= BEQ;
	Saida_unidade_de_controle(3) <= sel_mux_ula_mem;
	Saida_unidade_de_controle(7 DOWNTO 4) <= ULActrl;
	Saida_unidade_de_controle(8) <= mux_rt_imediato;
	Saida_unidade_de_controle(9) <= habEscritaReg;
	Saida_unidade_de_controle(10) <= sel_mux_rt_rd;
	Saida_unidade_de_controle(11) <= sel_mux_jump;

	sel <= Saida_unidade_de_controle(7 DOWNTO 4);
	PC_out_s <= PC_OUT;
	flag_ULA_s <= flag_ULA;
	somador_mux_s <= somador_mux;
	saida_shift_left_s <= saida_shift_left;
	Saida_estende_s <= Saida_estende;
	instrucao_s <= instrucao;
	saida_prox_pc_s <= saida_prox_pc;
END ARCHITECTURE;