LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY cpu IS
        -- Total de bits das entradas e saidas
        GENERIC (
                larguraDados : NATURAL := 8;
                simulacao : BOOLEAN := TRUE -- para gravar na placa, altere de TRUE para FALSE
        );
        PORT (
                ROM_address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
                wr : OUT STD_LOGIC;
                rd : OUT STD_LOGIC;
                data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                data_address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);

                instruction_in : IN STD_LOGIC_VECTOR(14 DOWNTO 0);
                data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                CLK : IN STD_LOGIC;
                --RST : in std_logic

                --teste marco
                flag_0 : OUT STD_LOGIC;
                operacao_ULA_test : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
                ULA_entradaA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                ULA_entradaB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

        );
END ENTITY;
ARCHITECTURE arquitetura OF cpu IS

        -- Faltam alguns sinais:
        SIGNAL MUX_ULA_B : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL chavesY_MUX_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL MUX_REG1 : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL REG1_ULA_A : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL Saida_ULA : STD_LOGIC_VECTOR (larguraDados - 1 DOWNTO 0);
        SIGNAL Saida_ULA_flag : STD_LOGIC;
        SIGNAL instrucao : STD_LOGIC_VECTOR (14 DOWNTO 0);
        SIGNAL PC_ROM : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL SOMADOR_MUX : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL MUXJUMP_PC : STD_LOGIC_VECTOR (8 DOWNTO 0);
        SIGNAL Chave_Operacao_ULA : STD_LOGIC;
        --signal CLK : std_logic;
        SIGNAL SelMUX : STD_LOGIC;
        SIGNAL SelMUXJUMP : STD_LOGIC;
        SIGNAL Logica_Mux : STD_LOGIC_VECTOR (1 DOWNTO 0);
        SIGNAL Habilita_A : STD_LOGIC;
        SIGNAL Operacao_ULA : STD_LOGIC_VECTOR (1 DOWNTO 0);
        SIGNAL habLeituraMEM : STD_LOGIC;
        SIGNAL habEscritaMEM : STD_LOGIC;
        SIGNAL habFlagIgual : STD_LOGIC;
        SIGNAL habEscritaRetorno : STD_LOGIC;
        SIGNAL Flag_Log : STD_LOGIC;
        SIGNAL JEQ : STD_LOGIC;
        SIGNAL RET : STD_LOGIC;
        SIGNAL JSR : STD_LOGIC;
        SIGNAL PontosDeControle : STD_LOGIC_VECTOR (11 DOWNTO 0);
        SIGNAL RAM_MUX : STD_LOGIC_VECTOR (7 DOWNTO 0);
        SIGNAL Saida_End_retorno : STD_LOGIC_VECTOR (8 DOWNTO 0);

BEGIN

        -- Instanciando os componentes:

        BANCO_REGISTRADORES : ENTITY work.bancoRegistradoresArqRegMem GENERIC MAP (larguraDados => larguraDados, larguraEndBancoRegs => 2)
                PORT MAP(
                        clk => CLK,
                        endereco => instrucao(10 DOWNTO 9),
                        dadoEscrita => Saida_ULA,
                        habilitaEscrita => Habilita_A,
                        saida => REG1_ULA_A
                );

        -- O port map completo do MUX.
        MUX1 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(
                        entradaA_MUX => RAM_MUX,
                        entradaB_MUX => instrucao(7 DOWNTO 0),
                        seletor_MUX => SelMUX,
                        saida_MUX => MUX_ULA_B);
        MUXJUMP : ENTITY work.muxGenericoJUMP GENERIC MAP (larguraDados => 9)
                PORT MAP(
                        entradaA_MUX => SOMADOR_MUX,
                        entradaB_MUX => instrucao(8 DOWNTO 0),
                        entradaC_MUX => Saida_End_retorno,
                        seletor_MUX => Logica_Mux,
                        saida_MUX => MUXJUMP_PC);
        FLAG : ENTITY work.registradorFlag GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(DIN => Saida_ULA_flag, DOUT => Flag_Log, ENABLE => HabFlagIgual, CLK => CLK, RST => '0');

        END_RETORNO : ENTITY work.end_retorno GENERIC MAP (larguraDados => larguraDados)
                PORT MAP(DIN => SOMADOR_MUX, DOUT => Saida_End_retorno, ENABLE => HabEscritaRetorno, CLK => CLK, RST => '0');

        -- O botao 3 faz o Reset da MEF:
        PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 9)
                PORT MAP(DIN => MUXJUMP_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
        --REG_MEF = PC

        -- O port map completo da ULA:
        ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
                PORT MAP(entradaA => REG1_ULA_A, entradaB => MUX_ULA_B, saida => Saida_ULA, saida_flag => Saida_ULA_flag, seletor => Operacao_ULA);

        -- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)

        -- SOMADOR ATIVIDADE 2
        SOMACONSTANTE : ENTITY work.somaConstante GENERIC MAP (larguraDados => 9, constante => 1)
                PORT MAP(entrada => PC_ROM, saida => SOMADOR_MUX);

        DECODER : ENTITY work.decodificador
                PORT MAP(opcode => instrucao(14 DOWNTO 11), PontosDeControle => PontosDeControle);

        logica_de_desvio : ENTITY work.logica_de_desvio
                PORT MAP(flag => Flag_Log, jeq => JEQ, ret => RET, jsr => JSR, SelMuxJump => SelMUXJUMP, dataOUT => Logica_Mux);

        habEscritaMEM <= PontosDeControle(0);
        habLeituraMEM <= PontosDeControle(1);
        selMUX <= PontosDeControle(6);
        Habilita_A <= PontosDeControle(5);
        Operacao_ULA <= PontosDeControle(4 DOWNTO 3);
        SelMUXJUMP <= PontosDeControle(10);
        JEQ <= PontosDeControle(7);
        habFlagIgual <= PontosDeControle(2);
        habEscritaRetorno <= PontosDeControle(11);
        RET <= PontosDeControle(9);
        JSR <= PontosDeControle(8);

        ROM_address <= PC_ROM;
        wr <= habEscritaMEM;
        rd <= habLeituraMEM;
        data_out <= REG1_ULA_A;
        data_address <= instrucao(8 DOWNTO 0);
        instrucao <= instruction_in;
        RAM_MUX <= data_in;

        --teste marco
        flag_0 <= Saida_ULA_flag;
        operacao_ULA_test <= PontosDeControle(4 DOWNTO 3);
        ULA_entradaA <= REG1_ULA_A;
        ULA_entradaB <= MUX_ULA_B;
END ARCHITECTURE;