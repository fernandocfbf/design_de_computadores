library ieee;
use ieee.std_logic_1164.all;

entity aula8 is
	generic (
	 larguraDados  : natural :=  8;
	 ADDR_WIDTH  : natural :=  8
	);

  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 FPGA_RESET : in std_logic;
	 PC_out  : out std_logic_vector(8 downto 0);
	 HEX0: out std_logic_vector(6 downto 0);
	 HEX1: out std_logic_vector(6 downto 0);
	 HEX2: out std_logic_vector(6 downto 0);
	 HEX3: out std_logic_vector(6 downto 0);
	 HEX4: out std_logic_vector(6 downto 0)
  
  );
end entity;


architecture arch_name of aula8 is
	signal PC_ROM : std_logic_vector (8 downto 0);
	signal habLeituraMEM : std_logic;
	signal habEscritaMEM : std_logic;
	signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
	signal instrucao : std_logic_vector (12 downto 0);
	signal RAM_MUX : std_logic_vector (7 downto 0);
	signal CLK : std_logic;
	signal CPU_DECODER_BLOCO : std_logic_vector (2 downto 0);
	signal habilita : std_logic;
	signal decod_bloco_and:std_logic;
	signal decod_bloco_s5:std_logic;
	
	signal decod_led_and_s0:std_logic;
	signal decod_led_and_s1:std_logic;
	signal decod_led_and_s2:std_logic;
	signal decod_led_and_s3:std_logic;
	signal decod_led_and_s4:std_logic;
	signal decod_led_and_s5:std_logic;
	
	signal saida_and1:std_logic;
	signal saida_and2:std_logic;
	signal saida_and3:std_logic;
	
	signal saida_and_hex0:std_logic;
	signal saida_and_hex1:std_logic;
	signal saida_and_hex2:std_logic;
	signal saida_and_hex3:std_logic;
	signal saida_and_hex4:std_logic;
	signal saida_and_hex5:std_logic;
	
	signal saida_ledr: std_logic_vector (7 downto 0);
	signal saida_led8: std_logic;
	signal saida_led9: std_logic;
	
	signal saida_reg_hex0: std_logic_vector (3 downto 0);
	signal saida_reg_hex1: std_logic_vector (3 downto 0);
	signal saida_reg_hex2: std_logic_vector (3 downto 0);
	signal saida_reg_hex3: std_logic_vector (3 downto 0);
	signal saida_reg_hex4: std_logic_vector (3 downto 0);
	signal saida_reg_hex5: std_logic_vector (3 downto 0);
	
	signal saida_hex0: std_logic_vector (6 downto 0);
	signal saida_hex1: std_logic_vector (6 downto 0);
	signal saida_hex2: std_logic_vector (6 downto 0);
	signal saida_hex3: std_logic_vector (6 downto 0);
	signal saida_hex4: std_logic_vector (6 downto 0);
	signal saida_hex5: std_logic_vector (6 downto 0);
	
	signal clk_detector: std_logic;
	signal reg_key0_out: std_logic;
	
	 
begin

CPU1 : entity work.cpu
          port map (		 
				ROM_address => PC_ROM,
				wr => habEscritaMEM,
				rd => habLeituraMEM,
				data_out => REG1_ULA_A,
				data_address => instrucao(8 downto 0),
				instruction_in => instrucao(12 downto 0),
				data_in => RAM_MUX,
				CLK => CLK
			);

ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (
				Endereco => PC_ROM,
				Dado => instrucao(12 downto 0));
			 
RAM1 : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (
				addr => instrucao(5 downto 0),
				we => habEscritaMEM,
				re => habLeituraMEM,
				habilita => habilita,
				dado_in => REG1_ULA_A,
				dado_out => RAM_MUX,
				clk => CLK);

-- CRIAR DECODIFICADOR 3x8
DECODIFICADO_BLOCO: entity work.decodificador3x8
        port map(
			entrada => instrucao(8 downto 6),
			s0 => habilita,
			s4 => decod_bloco_and,
			s5 => decod_bloco_s5);

-- DECODIFICADOR DOS LEDS		  
DECODIFICADOR_LED: entity work.decodificador3x8
		  port map(
			entrada => instrucao(2 downto 0),
			s0 => decod_led_and_s0, s1 => decod_led_and_s1, s2 => decod_led_and_s2,
			s3 => decod_led_and_s3, s4 => decod_led_and_s4, s5 => decod_led_and_s5);
	
-- REGISTRADOR LED 0-7	
REGISTRADOR_LED: entity work.registradorGenerico
	port map(DIN => REG1_ULA_A, DOUT => saida_ledr, ENABLE => saida_and3, CLK => CLK, RST => '0');

REGISTRADOR_LED8: entity work.registradorFlag
	port map(DIN => REG1_ULA_A(0), DOUT => saida_led8, ENABLE => saida_and2, CLK => CLK, RST => '0');

REGISTRADOR_LED9: entity work.registradorFlag
	port map(DIN => REG1_ULA_A(0), DOUT => saida_led9, ENABLE => saida_and1, CLK => CLK, RST => '0');

REGISTRADOR_HEX0: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex0, ENABLE => saida_and_hex0, CLK => CLK, RST => '0');
	
REGISTRADOR_HEX1: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex1, ENABLE => saida_and_hex1, CLK => CLK, RST => '0');

REGISTRADOR_HEX2: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex2, ENABLE => saida_and_hex2, CLK => CLK, RST => '0');

REGISTRADOR_HEX3: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex3, ENABLE => saida_and_hex3, CLK => CLK, RST => '0');

REGISTRADOR_HEX4: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex4, ENABLE => saida_and_hex4, CLK => CLK, RST => '0');

REGISTRADOR_HEX5: entity work.registrador4
	port map(DIN => REG1_ULA_A(3 downto 0), DOUT => saida_reg_hex5, ENABLE => saida_and_hex5, CLK => CLK, RST => '0');
	
DECODIFICADOR_HEX0: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex0,
	saida7seg => saida_hex0);
	
DECODIFICADOR_HEX1: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex1,
	apaga => '0',
   negativo => '0',
   overFlow => '0',
	saida7seg => saida_hex1);
	
DECODIFICADOR_HEX2: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex2,
	apaga => '0',
   negativo => '0',
   overFlow => '0',
	saida7seg => saida_hex2);

DECODIFICADOR_HEX3: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex3,
	apaga => '0',
   negativo => '0',
   overFlow => '0',
	saida7seg => saida_hex3);

DECODIFICADOR_HEX4: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex4,
	apaga => '0',
   negativo => '0',
   overFlow => '0',
	saida7seg => saida_hex4);

DECODIFICADOR_HEX5: entity work.decodificadorSegmentos
   port map(
	dadoHex => saida_reg_hex5,
	apaga => '0',
   negativo => '0',
   overFlow => '0',
	saida7seg => saida_hex5);
	
DETECTOR_BORDA_KEY0: entity work.edgeDetector
	port map(
		clk => CLOCK_50,
		entrada => (not KEY(0)),
		saida => clk_detector);

REGISTRADOR: entity work.registrador_key0
	port map(
		DIN  => '1',
      DOUT => reg_key0_out,
      RST  => instrucao(0) and instrucao(1) and instrucao(2) and instrucao(3) and instrucao(4) and instrucao(5) and instrucao(6) and instrucao(7) and instrucao(8),
		CLK  => clk_detector);
	
--portas and
AND1: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_bloco_and, entrada3 => decod_led_and_s2, entrada4 => not(instrucao(5)), dataOUT => saida_and1);
	
AND2: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_bloco_and, entrada3 => decod_led_and_s1, entrada4 => not(instrucao(5)), dataOUT => saida_and2);
	
AND3: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s0, entrada3 => decod_bloco_and, entrada4 => not(instrucao(5)), dataOUT => saida_and3);
	
AND_HEX0: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s0, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex0);

AND_HEX1: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s1, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex1);

AND_HEX2: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s2, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex2);
	
AND_HEX3: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s3, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex3);
	
AND_HEX4: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s4, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex4);
	
AND_HEX5: entity work.porta_and
	port map(entrada1 => habEscritaMEM, entrada2 => decod_led_and_s5, entrada3 => decod_bloco_and, entrada4 => instrucao(5), dataOUT => saida_and_hex5);

STATE_BUFFER1: entity work.State3_8
	port map(
	dado => SW(7 downto 0), 
	habilita => habLeituraMEM and not(instrucao(5)) and decod_led_and_s0 and decod_bloco_s5,
	saida => RAM_MUX);

STATE_BUFFER2: entity work.State3
	port map(
	dado => SW(8),
	habilita => habLeituraMEM and not(instrucao(5)) and decod_led_and_s1 and decod_bloco_s5,
	saida => RAM_MUX);

STATE_BUFFER3: entity work.State3
	port map(
	dado => SW(9), 
	habilita => habLeituraMEM and not(instrucao(5)) and decod_led_and_s2 and decod_bloco_s5,
	saida => RAM_MUX);
	
STATE_BUFFER4: entity work.State3
	port map(
	dado => reg_key0_out, 
	habilita => habLeituraMEM and instrucao(5) and decod_led_and_s0 and decod_bloco_s5,
	saida => RAM_MUX);
	
STATE_BUFFER5: entity work.State3
	port map(
	dado => KEY(1), 
	habilita => habLeituraMEM and instrucao(5) and decod_led_and_s1 and decod_bloco_s5,
	saida => RAM_MUX);
	
STATE_BUFFER6: entity work.State3
	port map(
	dado => KEY(2), 
	habilita  => habLeituraMEM and instrucao(5) and decod_led_and_s2 and decod_bloco_s5,
	saida => RAM_MUX);
	
STATE_BUFFER7: entity work.State3
	port map(
	dado => KEY(3), 
	habilita  => habLeituraMEM and instrucao(5) and decod_led_and_s3 and decod_bloco_s5,
	saida => RAM_MUX);
	
STATE_BUFFER8: entity work.State3
	port map(
	dado => FPGA_RESET, 
	habilita => habLeituraMEM and instrucao(5) and decod_led_and_s4 and decod_bloco_s5,
	saida => RAM_MUX);
	
LEDR(7 downto 0) <= saida_ledr;
LEDR(8) <= saida_led8;
LEDR(9) <= saida_led9;
CLK  <= CLOCK_50;
PC_out <= PC_ROM;

HEX0 <= saida_hex0;
HEX1 <= saida_hex1;
HEX2 <= saida_hex2;
HEX3 <= saida_hex3;
HEX4 <= saida_hex4;

end architecture;