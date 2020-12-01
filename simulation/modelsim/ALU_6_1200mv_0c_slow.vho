-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/01/2020 10:45:59"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	Reloj : IN std_logic;
	Restablecer : IN std_logic;
	Habilitar : IN std_logic;
	Numero_1 : IN std_logic_vector(15 DOWNTO 0);
	Numero_2 : IN std_logic_vector(15 DOWNTO 0);
	Operacion : IN std_logic_vector(3 DOWNTO 0);
	ResultadoTotal : BUFFER std_logic_vector(15 DOWNTO 0);
	Disponibilidad : BUFFER std_logic;
	Resultado_Z : BUFFER std_logic;
	Resultado_C : BUFFER std_logic;
	Resultado_O : BUFFER std_logic;
	Resultado_N : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- ResultadoTotal[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[7]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[9]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[12]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[14]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResultadoTotal[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Disponibilidad	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado_Z	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado_C	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado_O	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultado_N	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacion[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacion[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacion[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Operacion[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reloj	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Restablecer	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[7]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[9]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[9]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[10]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[12]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[12]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[13]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[13]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[14]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[14]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_2[15]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Numero_1[15]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Habilitar	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reloj : std_logic;
SIGNAL ww_Restablecer : std_logic;
SIGNAL ww_Habilitar : std_logic;
SIGNAL ww_Numero_1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Numero_2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Operacion : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ResultadoTotal : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Disponibilidad : std_logic;
SIGNAL ww_Resultado_Z : std_logic;
SIGNAL ww_Resultado_C : std_logic;
SIGNAL ww_Resultado_O : std_logic;
SIGNAL ww_Resultado_N : std_logic;
SIGNAL \Restablecer~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ResultadoTotal[0]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[1]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[2]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[3]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[4]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[5]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[6]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[7]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[8]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[9]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[10]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[11]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[12]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[13]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[14]~output_o\ : std_logic;
SIGNAL \ResultadoTotal[15]~output_o\ : std_logic;
SIGNAL \Disponibilidad~output_o\ : std_logic;
SIGNAL \Resultado_Z~output_o\ : std_logic;
SIGNAL \Resultado_C~output_o\ : std_logic;
SIGNAL \Resultado_O~output_o\ : std_logic;
SIGNAL \Resultado_N~output_o\ : std_logic;
SIGNAL \Reloj~input_o\ : std_logic;
SIGNAL \Reloj~inputclkctrl_outclk\ : std_logic;
SIGNAL \Operacion[3]~input_o\ : std_logic;
SIGNAL \Operacion[1]~input_o\ : std_logic;
SIGNAL \Operacion[0]~input_o\ : std_logic;
SIGNAL \Operacion[2]~input_o\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~0_combout\ : std_logic;
SIGNAL \B_Control|Show_Foo[0]~1_combout\ : std_logic;
SIGNAL \Numero_2[0]~input_o\ : std_logic;
SIGNAL \B_registroAQE|Din~1_combout\ : std_logic;
SIGNAL \Restablecer~input_o\ : std_logic;
SIGNAL \Habilitar~input_o\ : std_logic;
SIGNAL \B_Control|B_SeleccionOpera|MULT~combout\ : std_logic;
SIGNAL \Restablecer~inputclkctrl_outclk\ : std_logic;
SIGNAL \B_Control|FF2~q\ : std_logic;
SIGNAL \B_registroAQE|Reset_Mul~combout\ : std_logic;
SIGNAL \B_registroAQE|Eregistro~combout\ : std_logic;
SIGNAL \B_registroAQE|Registro0~q\ : std_logic;
SIGNAL \B_Control|FF5~q\ : std_logic;
SIGNAL \B_Control|B_Counter|FF3~0_combout\ : std_logic;
SIGNAL \B_Control|comb~0_combout\ : std_logic;
SIGNAL \B_Control|B_Counter|FF2~0_combout\ : std_logic;
SIGNAL \B_Control|B_Counter|FF1~0_combout\ : std_logic;
SIGNAL \B_Control|B_Counter|FF0~0_combout\ : std_logic;
SIGNAL \B_Control|B_Counter|FF0~q\ : std_logic;
SIGNAL \B_Control|B_Counter|FF1~q\ : std_logic;
SIGNAL \B_Control|B_Counter|FF2~q\ : std_logic;
SIGNAL \B_Control|B_Counter|FF3~q\ : std_logic;
SIGNAL \B_Control|D~2_combout\ : std_logic;
SIGNAL \B_Control|D[3]~3_combout\ : std_logic;
SIGNAL \B_Control|FF3~q\ : std_logic;
SIGNAL \B_Control|FF4~q\ : std_logic;
SIGNAL \Numero_1[1]~input_o\ : std_logic;
SIGNAL \Numero_1[3]~input_o\ : std_logic;
SIGNAL \Numero_1[5]~input_o\ : std_logic;
SIGNAL \B_Control|Restar~0_combout\ : std_logic;
SIGNAL \B_Control|Restar~1_combout\ : std_logic;
SIGNAL \Numero_1[0]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[0]~0_combout\ : std_logic;
SIGNAL \Numero_1[15]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~15_combout\ : std_logic;
SIGNAL \Numero_2[15]~input_o\ : std_logic;
SIGNAL \Numero_1[14]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~14_combout\ : std_logic;
SIGNAL \Numero_2[14]~input_o\ : std_logic;
SIGNAL \Numero_1[13]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~13_combout\ : std_logic;
SIGNAL \Numero_2[13]~input_o\ : std_logic;
SIGNAL \Numero_2[12]~input_o\ : std_logic;
SIGNAL \Numero_1[12]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~12_combout\ : std_logic;
SIGNAL \Numero_2[11]~input_o\ : std_logic;
SIGNAL \Numero_1[11]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~11_combout\ : std_logic;
SIGNAL \Numero_1[10]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~10_combout\ : std_logic;
SIGNAL \Numero_2[10]~input_o\ : std_logic;
SIGNAL \Numero_2[9]~input_o\ : std_logic;
SIGNAL \Numero_1[9]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~9_combout\ : std_logic;
SIGNAL \Numero_1[8]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT~8_combout\ : std_logic;
SIGNAL \Numero_2[8]~input_o\ : std_logic;
SIGNAL \Numero_1[7]~input_o\ : std_logic;
SIGNAL \Numero_2[6]~input_o\ : std_logic;
SIGNAL \Numero_1[6]~input_o\ : std_logic;
SIGNAL \Numero_2[5]~input_o\ : std_logic;
SIGNAL \Numero_2[4]~input_o\ : std_logic;
SIGNAL \Numero_1[4]~input_o\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[4]~2_combout\ : std_logic;
SIGNAL \Numero_2[3]~input_o\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[3]~1_combout\ : std_logic;
SIGNAL \Numero_2[2]~input_o\ : std_logic;
SIGNAL \Numero_2[1]~input_o\ : std_logic;
SIGNAL \B_ADDER|FA1|SCarry~0_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[1]~8_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[10]~3_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro10~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|EregisA~combout\ : std_logic;
SIGNAL \B_registroAQE|Registro10~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[1]~1_combout\ : std_logic;
SIGNAL \B_ADDER|FA2|SCarry~0_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[2]~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[11]~5_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro11~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro11~q\ : std_logic;
SIGNAL \Numero_1[2]~input_o\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[2]~2_combout\ : std_logic;
SIGNAL \B_ADDER|FA3|SCarry~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[12]~8_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro12~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro12~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[3]~3_combout\ : std_logic;
SIGNAL \B_ADDER|FA4|SCarry~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[13]~9_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro13~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro13~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[4]~4_combout\ : std_logic;
SIGNAL \B_ADDER|FA5|SCarry~0_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[5]~3_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[14]~11_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro14~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro14~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[5]~5_combout\ : std_logic;
SIGNAL \B_ADDER|FA6|SCarry~0_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[6]~4_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[15]~13_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro15~feeder_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro15~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[6]~6_combout\ : std_logic;
SIGNAL \B_ADDER|FA7|SCarry~0_combout\ : std_logic;
SIGNAL \Numero_2[7]~input_o\ : std_logic;
SIGNAL \B_ADDER|FA8|ResultBit~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro16~q\ : std_logic;
SIGNAL \B_SelectorMP|SignalOUT[7]~7_combout\ : std_logic;
SIGNAL \B_ADDER|FA8|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA9|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA10|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA11|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA12|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA13|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA14|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA15|SCarry~0_combout\ : std_logic;
SIGNAL \B_ADDER|FA16|SCarry~0_combout\ : std_logic;
SIGNAL \B_Control|SaveCarry~0_combout\ : std_logic;
SIGNAL \B_Control|D~4_combout\ : std_logic;
SIGNAL \B_Control|FF1~q\ : std_logic;
SIGNAL \B_Control|SaveCarry~1_combout\ : std_logic;
SIGNAL \BR_Carry~q\ : std_logic;
SIGNAL \B_Control|B_SeleccionOpera|MULT~0_combout\ : std_logic;
SIGNAL \B_Control|CarryOutput~combout\ : std_logic;
SIGNAL \B_ADDER|FA1|ResultBit~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Din[9]~2_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro9~q\ : std_logic;
SIGNAL \B_registroAQE|Din[8]~15_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro8~q\ : std_logic;
SIGNAL \B_registroAQE|Din[7]~14_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro7~q\ : std_logic;
SIGNAL \B_registroAQE|Din[6]~12_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro6~q\ : std_logic;
SIGNAL \B_registroAQE|Din[5]~10_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro5~q\ : std_logic;
SIGNAL \B_registroAQE|Din[4]~7_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro4~q\ : std_logic;
SIGNAL \B_registroAQE|Din[3]~6_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro3~q\ : std_logic;
SIGNAL \B_registroAQE|Din[2]~4_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro2~q\ : std_logic;
SIGNAL \B_registroAQE|Din[1]~0_combout\ : std_logic;
SIGNAL \B_registroAQE|Registro1~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~2_combout\ : std_logic;
SIGNAL \B_Control|Show_Foo~0_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~1_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~3_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~4_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~5_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~7_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~6_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[0]~8_combout\ : std_logic;
SIGNAL \B_Control|D[0]~0_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF0~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~13_combout\ : std_logic;
SIGNAL \B_ADDER|FA2|ResultBit~0_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~9_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~10_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~11_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~12_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[1]~14_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF1~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~19_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~20_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~15_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~16_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~17_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~18_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[2]~21_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF2~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~22_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~26_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~24_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~25_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~27_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~23_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[3]~28_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF3~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~34_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~33_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~31_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~29_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~30_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~32_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[4]~35_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF4~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~40_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~41_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~36_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~37_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~38_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~39_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[5]~42_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF5~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~47_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~48_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~45_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~43_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~44_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~46_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[6]~49_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF6~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~54_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~53_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~51_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~50_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~52_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[7]~55_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF7~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~62_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~64_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~63_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~65_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~60_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~56_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~58_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~57_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~59_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~61_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[8]~66_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF8~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~72_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~71_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~69_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~67_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~68_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~70_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[9]~73_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF9~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~79_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~78_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~76_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~74_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~75_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~77_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[10]~80_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF10~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~84_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~85_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~81_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~82_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~83_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~86_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~87_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[11]~88_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF11~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~92_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~93_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~90_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~89_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~91_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~94_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~95_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[12]~96_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF12~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~103_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~102_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~99_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~97_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~98_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[13]~5_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~100_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~101_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[13]~104_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF13~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~111_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~112_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~110_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~113_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~106_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~105_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~107_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[14]~6_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT~108_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~109_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[14]~114_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF14~q\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~115_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~116_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~118_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~119_combout\ : std_logic;
SIGNAL \B_SelectorSM|SignalOUT[15]~7_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~117_combout\ : std_logic;
SIGNAL \B_SelectorG|SignalOUT[15]~120_combout\ : std_logic;
SIGNAL \B_R_Resultado|FF15~q\ : std_logic;
SIGNAL \B_Control|D[0]~1_combout\ : std_logic;
SIGNAL \B_Control|FF0~q\ : std_logic;
SIGNAL \B_Banderas|SResultado_Z~3_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_Z~0_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_Z~1_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_Z~2_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_Z~4_combout\ : std_logic;
SIGNAL \B_Banderas|FF4~0_combout\ : std_logic;
SIGNAL \B_Banderas|FF4~q\ : std_logic;
SIGNAL \B_Banderas|FF0~q\ : std_logic;
SIGNAL \B_Banderas|SResultado_C~combout\ : std_logic;
SIGNAL \B_Banderas|FF2~q\ : std_logic;
SIGNAL \B_Banderas|SResultado_O~1_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_O~0_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_O~2_combout\ : std_logic;
SIGNAL \B_Banderas|SResultado_O~3_combout\ : std_logic;
SIGNAL \B_Banderas|FF1~q\ : std_logic;
SIGNAL \B_Banderas|SResultado_N~0_combout\ : std_logic;
SIGNAL \B_Banderas|FF3~q\ : std_logic;
SIGNAL \B_Control|D\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \B_Control|Show_Foo\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B_registroAQE|Din\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \B_Control|B_Counter|ENA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B_Control|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \B_registroAQE|ALT_INV_Reset_Mul~combout\ : std_logic;
SIGNAL \B_Control|ALT_INV_FF4~q\ : std_logic;
SIGNAL \B_Control|ALT_INV_D[0]~0_combout\ : std_logic;
SIGNAL \B_Control|ALT_INV_FF0~q\ : std_logic;

BEGIN

ww_Reloj <= Reloj;
ww_Restablecer <= Restablecer;
ww_Habilitar <= Habilitar;
ww_Numero_1 <= Numero_1;
ww_Numero_2 <= Numero_2;
ww_Operacion <= Operacion;
ResultadoTotal <= ww_ResultadoTotal;
Disponibilidad <= ww_Disponibilidad;
Resultado_Z <= ww_Resultado_Z;
Resultado_C <= ww_Resultado_C;
Resultado_O <= ww_Resultado_O;
Resultado_N <= ww_Resultado_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Restablecer~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Restablecer~input_o\);

\Reloj~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj~input_o\);
\B_Control|ALT_INV_comb~0_combout\ <= NOT \B_Control|comb~0_combout\;
\B_registroAQE|ALT_INV_Reset_Mul~combout\ <= NOT \B_registroAQE|Reset_Mul~combout\;
\B_Control|ALT_INV_FF4~q\ <= NOT \B_Control|FF4~q\;
\B_Control|ALT_INV_D[0]~0_combout\ <= NOT \B_Control|D[0]~0_combout\;
\B_Control|ALT_INV_FF0~q\ <= NOT \B_Control|FF0~q\;

-- Location: IOOBUF_X21_Y41_N2
\ResultadoTotal[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF0~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[0]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\ResultadoTotal[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF1~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[1]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\ResultadoTotal[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF2~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\ResultadoTotal[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF3~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[3]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\ResultadoTotal[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF4~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[4]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\ResultadoTotal[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF5~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[5]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\ResultadoTotal[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF6~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[6]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\ResultadoTotal[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF7~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[7]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\ResultadoTotal[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF8~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[8]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\ResultadoTotal[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF9~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[9]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\ResultadoTotal[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF10~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[10]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\ResultadoTotal[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF11~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[11]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\ResultadoTotal[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF12~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[12]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\ResultadoTotal[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF13~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[13]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\ResultadoTotal[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF14~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[14]~output_o\);

-- Location: IOOBUF_X7_Y41_N2
\ResultadoTotal[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_R_Resultado|FF15~q\,
	devoe => ww_devoe,
	o => \ResultadoTotal[15]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\Disponibilidad~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Control|ALT_INV_FF0~q\,
	devoe => ww_devoe,
	o => \Disponibilidad~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\Resultado_Z~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Banderas|FF0~q\,
	devoe => ww_devoe,
	o => \Resultado_Z~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\Resultado_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Banderas|FF2~q\,
	devoe => ww_devoe,
	o => \Resultado_C~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\Resultado_O~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Banderas|FF1~q\,
	devoe => ww_devoe,
	o => \Resultado_O~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\Resultado_N~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \B_Banderas|FF3~q\,
	devoe => ww_devoe,
	o => \Resultado_N~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\Reloj~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reloj,
	o => \Reloj~input_o\);

-- Location: CLKCTRL_G17
\Reloj~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj~inputclkctrl_outclk\);

-- Location: IOIBUF_X31_Y41_N15
\Operacion[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacion(3),
	o => \Operacion[3]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\Operacion[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacion(1),
	o => \Operacion[1]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\Operacion[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacion(0),
	o => \Operacion[0]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\Operacion[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operacion(2),
	o => \Operacion[2]~input_o\);

-- Location: LCCOMB_X27_Y39_N26
\B_SelectorG|SignalOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~0_combout\ = (\Operacion[3]~input_o\ & ((\Operacion[1]~input_o\) # ((\Operacion[2]~input_o\)))) # (!\Operacion[3]~input_o\ & (((!\Operacion[2]~input_o\) # (!\Operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT~0_combout\);

-- Location: LCCOMB_X27_Y40_N2
\B_Control|Show_Foo[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|Show_Foo[0]~1_combout\ = (\Operacion[3]~input_o\ & (((\Operacion[2]~input_o\) # (!\Operacion[0]~input_o\)) # (!\Operacion[1]~input_o\))) # (!\Operacion[3]~input_o\ & (!\Operacion[0]~input_o\ & (\Operacion[1]~input_o\ $ 
-- (!\Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|Show_Foo[0]~1_combout\);

-- Location: IOIBUF_X52_Y32_N15
\Numero_2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(0),
	o => \Numero_2[0]~input_o\);

-- Location: LCCOMB_X29_Y40_N12
\B_registroAQE|Din~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din~1_combout\ = (\B_registroAQE|Registro1~q\) # (!\B_Control|FF4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_registroAQE|Registro1~q\,
	datac => \B_Control|FF4~q\,
	combout => \B_registroAQE|Din~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\Restablecer~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Restablecer,
	o => \Restablecer~input_o\);

-- Location: IOIBUF_X10_Y41_N8
\Habilitar~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Habilitar,
	o => \Habilitar~input_o\);

-- Location: LCCOMB_X28_Y40_N22
\B_Control|B_SeleccionOpera|MULT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_SeleccionOpera|MULT~combout\ = (!\Operacion[1]~input_o\ & (\Operacion[0]~input_o\ & (\Operacion[2]~input_o\ & !\Operacion[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[0]~input_o\,
	datac => \Operacion[2]~input_o\,
	datad => \Operacion[3]~input_o\,
	combout => \B_Control|B_SeleccionOpera|MULT~combout\);

-- Location: LCCOMB_X30_Y38_N2
\B_Control|D[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D\(2) = (!\Habilitar~input_o\ & (!\B_Control|FF2~q\ & \B_Control|B_SeleccionOpera|MULT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Habilitar~input_o\,
	datac => \B_Control|FF2~q\,
	datad => \B_Control|B_SeleccionOpera|MULT~combout\,
	combout => \B_Control|D\(2));

-- Location: CLKCTRL_G19
\Restablecer~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Restablecer~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Restablecer~inputclkctrl_outclk\);

-- Location: FF_X30_Y38_N3
\B_Control|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|D\(2),
	clrn => \Restablecer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF2~q\);

-- Location: LCCOMB_X30_Y38_N10
\B_registroAQE|Reset_Mul\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Reset_Mul~combout\ = (!\Restablecer~input_o\ & !\B_Control|FF2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Restablecer~input_o\,
	datad => \B_Control|FF2~q\,
	combout => \B_registroAQE|Reset_Mul~combout\);

-- Location: LCCOMB_X30_Y38_N0
\B_registroAQE|Eregistro\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Eregistro~combout\ = (\B_Control|FF2~q\) # (\B_Control|FF4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|FF2~q\,
	datad => \B_Control|FF4~q\,
	combout => \B_registroAQE|Eregistro~combout\);

-- Location: FF_X29_Y40_N13
\B_registroAQE|Registro0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din~1_combout\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sclr => \B_Control|ALT_INV_FF4~q\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro0~q\);

-- Location: FF_X30_Y38_N15
\B_Control|FF5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \B_registroAQE|Eregistro~combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF5~q\);

-- Location: LCCOMB_X30_Y38_N20
\B_Control|B_Counter|FF3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|FF3~0_combout\ = !\B_Control|B_Counter|FF3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|B_Counter|FF3~q\,
	combout => \B_Control|B_Counter|FF3~0_combout\);

-- Location: LCCOMB_X30_Y38_N6
\B_Control|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|comb~0_combout\ = (\B_Control|FF2~q\) # (!\Restablecer~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Restablecer~input_o\,
	datad => \B_Control|FF2~q\,
	combout => \B_Control|comb~0_combout\);

-- Location: LCCOMB_X29_Y38_N6
\B_Control|B_Counter|FF2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|FF2~0_combout\ = !\B_Control|B_Counter|FF2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|B_Counter|FF2~q\,
	combout => \B_Control|B_Counter|FF2~0_combout\);

-- Location: LCCOMB_X32_Y38_N24
\B_Control|B_Counter|FF1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|FF1~0_combout\ = !\B_Control|B_Counter|FF1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|B_Counter|FF1~q\,
	combout => \B_Control|B_Counter|FF1~0_combout\);

-- Location: LCCOMB_X29_Y38_N0
\B_Control|B_Counter|FF0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|FF0~0_combout\ = !\B_Control|B_Counter|FF0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|B_Counter|FF0~q\,
	combout => \B_Control|B_Counter|FF0~0_combout\);

-- Location: FF_X29_Y38_N1
\B_Control|B_Counter|FF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|B_Counter|FF0~0_combout\,
	clrn => \B_Control|ALT_INV_comb~0_combout\,
	ena => \B_Control|FF4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|B_Counter|FF0~q\);

-- Location: LCCOMB_X29_Y38_N30
\B_Control|B_Counter|ENA[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|ENA\(1) = (\B_Control|B_Counter|FF0~q\ & \B_Control|FF4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|B_Counter|FF0~q\,
	datad => \B_Control|FF4~q\,
	combout => \B_Control|B_Counter|ENA\(1));

-- Location: FF_X32_Y38_N25
\B_Control|B_Counter|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|B_Counter|FF1~0_combout\,
	clrn => \B_Control|ALT_INV_comb~0_combout\,
	ena => \B_Control|B_Counter|ENA\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|B_Counter|FF1~q\);

-- Location: LCCOMB_X29_Y38_N28
\B_Control|B_Counter|ENA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|ENA\(2) = (\B_Control|FF4~q\ & (\B_Control|B_Counter|FF1~q\ & \B_Control|B_Counter|FF0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|FF4~q\,
	datac => \B_Control|B_Counter|FF1~q\,
	datad => \B_Control|B_Counter|FF0~q\,
	combout => \B_Control|B_Counter|ENA\(2));

-- Location: FF_X29_Y38_N7
\B_Control|B_Counter|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|B_Counter|FF2~0_combout\,
	clrn => \B_Control|ALT_INV_comb~0_combout\,
	ena => \B_Control|B_Counter|ENA\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|B_Counter|FF2~q\);

-- Location: LCCOMB_X29_Y38_N4
\B_Control|B_Counter|ENA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_Counter|ENA\(3) = (\B_Control|B_Counter|FF2~q\ & (\B_Control|B_Counter|FF0~q\ & (\B_Control|B_Counter|FF1~q\ & \B_Control|FF4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|B_Counter|FF2~q\,
	datab => \B_Control|B_Counter|FF0~q\,
	datac => \B_Control|B_Counter|FF1~q\,
	datad => \B_Control|FF4~q\,
	combout => \B_Control|B_Counter|ENA\(3));

-- Location: FF_X30_Y38_N21
\B_Control|B_Counter|FF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|B_Counter|FF3~0_combout\,
	clrn => \B_Control|ALT_INV_comb~0_combout\,
	ena => \B_Control|B_Counter|ENA\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|B_Counter|FF3~q\);

-- Location: LCCOMB_X30_Y38_N14
\B_Control|D~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D~2_combout\ = (\B_Control|B_SeleccionOpera|MULT~combout\ & (\B_Control|FF5~q\ & !\B_Control|B_Counter|FF3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|B_SeleccionOpera|MULT~combout\,
	datac => \B_Control|FF5~q\,
	datad => \B_Control|B_Counter|FF3~q\,
	combout => \B_Control|D~2_combout\);

-- Location: LCCOMB_X30_Y38_N28
\B_Control|D[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D[3]~3_combout\ = (\B_Control|D~2_combout\ & (\B_registroAQE|Registro1~q\ $ (\B_registroAQE|Registro0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro1~q\,
	datab => \B_Control|D~2_combout\,
	datac => \B_registroAQE|Registro0~q\,
	combout => \B_Control|D[3]~3_combout\);

-- Location: FF_X30_Y40_N1
\B_Control|FF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \B_Control|D[3]~3_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF3~q\);

-- Location: LCCOMB_X30_Y38_N24
\B_Control|D[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D\(4) = (\B_Control|FF3~q\) # ((\B_Control|D~2_combout\ & (\B_registroAQE|Registro0~q\ $ (!\B_registroAQE|Registro1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro0~q\,
	datab => \B_Control|D~2_combout\,
	datac => \B_registroAQE|Registro1~q\,
	datad => \B_Control|FF3~q\,
	combout => \B_Control|D\(4));

-- Location: FF_X30_Y38_N25
\B_Control|FF4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|D\(4),
	clrn => \Restablecer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF4~q\);

-- Location: IOIBUF_X25_Y41_N1
\Numero_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(1),
	o => \Numero_1[1]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\Numero_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(3),
	o => \Numero_1[3]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\Numero_1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(5),
	o => \Numero_1[5]~input_o\);

-- Location: LCCOMB_X27_Y39_N8
\B_Control|Restar~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|Restar~0_combout\ = (\Operacion[3]~input_o\) # ((\Operacion[1]~input_o\ & ((\Operacion[2]~input_o\) # (!\Operacion[0]~input_o\))) # (!\Operacion[1]~input_o\ & ((\Operacion[0]~input_o\) # (!\Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|Restar~0_combout\);

-- Location: LCCOMB_X29_Y40_N8
\B_Control|Restar~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|Restar~1_combout\ = ((\B_registroAQE|Registro1~q\ & !\B_registroAQE|Registro0~q\)) # (!\B_Control|Restar~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro1~q\,
	datab => \B_Control|Restar~0_combout\,
	datad => \B_registroAQE|Registro0~q\,
	combout => \B_Control|Restar~1_combout\);

-- Location: IOIBUF_X41_Y41_N1
\Numero_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(0),
	o => \Numero_1[0]~input_o\);

-- Location: LCCOMB_X30_Y40_N14
\B_SelectorMP|SignalOUT[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[0]~0_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro9~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[0]~input_o\,
	datab => \B_Control|FF3~q\,
	datad => \B_registroAQE|Registro9~q\,
	combout => \B_SelectorMP|SignalOUT[0]~0_combout\);

-- Location: IOIBUF_X43_Y41_N1
\Numero_1[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(15),
	o => \Numero_1[15]~input_o\);

-- Location: LCCOMB_X28_Y40_N10
\B_SelectorMP|SignalOUT~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~15_combout\ = (\Numero_1[15]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Numero_1[15]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~15_combout\);

-- Location: IOIBUF_X34_Y41_N8
\Numero_2[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(15),
	o => \Numero_2[15]~input_o\);

-- Location: IOIBUF_X12_Y41_N1
\Numero_1[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(14),
	o => \Numero_1[14]~input_o\);

-- Location: LCCOMB_X28_Y40_N12
\B_SelectorMP|SignalOUT~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~14_combout\ = (\Numero_1[14]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[14]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~14_combout\);

-- Location: IOIBUF_X23_Y41_N1
\Numero_2[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(14),
	o => \Numero_2[14]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\Numero_1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(13),
	o => \Numero_1[13]~input_o\);

-- Location: LCCOMB_X32_Y40_N20
\B_SelectorMP|SignalOUT~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~13_combout\ = (\Numero_1[13]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[13]~input_o\,
	datac => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~13_combout\);

-- Location: IOIBUF_X38_Y41_N1
\Numero_2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(13),
	o => \Numero_2[13]~input_o\);

-- Location: IOIBUF_X52_Y21_N8
\Numero_2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(12),
	o => \Numero_2[12]~input_o\);

-- Location: IOIBUF_X52_Y21_N1
\Numero_1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(12),
	o => \Numero_1[12]~input_o\);

-- Location: LCCOMB_X32_Y40_N24
\B_SelectorMP|SignalOUT~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~12_combout\ = (\Numero_1[12]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[12]~input_o\,
	datac => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~12_combout\);

-- Location: IOIBUF_X41_Y41_N15
\Numero_2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(11),
	o => \Numero_2[11]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\Numero_1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(11),
	o => \Numero_1[11]~input_o\);

-- Location: LCCOMB_X30_Y39_N26
\B_SelectorMP|SignalOUT~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~11_combout\ = (\Numero_1[11]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Numero_1[11]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~11_combout\);

-- Location: IOIBUF_X46_Y41_N1
\Numero_1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(10),
	o => \Numero_1[10]~input_o\);

-- Location: LCCOMB_X30_Y39_N14
\B_SelectorMP|SignalOUT~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~10_combout\ = (\Numero_1[10]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[10]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~10_combout\);

-- Location: IOIBUF_X27_Y41_N1
\Numero_2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(10),
	o => \Numero_2[10]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\Numero_2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(9),
	o => \Numero_2[9]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\Numero_1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(9),
	o => \Numero_1[9]~input_o\);

-- Location: LCCOMB_X32_Y38_N10
\B_SelectorMP|SignalOUT~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~9_combout\ = (\Numero_1[9]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[9]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~9_combout\);

-- Location: IOIBUF_X41_Y41_N8
\Numero_1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(8),
	o => \Numero_1[8]~input_o\);

-- Location: LCCOMB_X30_Y39_N8
\B_SelectorMP|SignalOUT~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT~8_combout\ = (\Numero_1[8]~input_o\ & !\B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[8]~input_o\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT~8_combout\);

-- Location: IOIBUF_X36_Y41_N8
\Numero_2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(8),
	o => \Numero_2[8]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\Numero_1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(7),
	o => \Numero_1[7]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\Numero_2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(6),
	o => \Numero_2[6]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\Numero_1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(6),
	o => \Numero_1[6]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\Numero_2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(5),
	o => \Numero_2[5]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\Numero_2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(4),
	o => \Numero_2[4]~input_o\);

-- Location: IOIBUF_X48_Y41_N8
\Numero_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(4),
	o => \Numero_1[4]~input_o\);

-- Location: LCCOMB_X29_Y40_N18
\B_SelectorSM|SignalOUT[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[4]~2_combout\ = \Numero_2[4]~input_o\ $ ((((\B_registroAQE|Registro1~q\ & !\B_registroAQE|Registro0~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro1~q\,
	datab => \B_Control|Restar~0_combout\,
	datac => \Numero_2[4]~input_o\,
	datad => \B_registroAQE|Registro0~q\,
	combout => \B_SelectorSM|SignalOUT[4]~2_combout\);

-- Location: IOIBUF_X48_Y41_N1
\Numero_2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(3),
	o => \Numero_2[3]~input_o\);

-- Location: LCCOMB_X30_Y38_N4
\B_SelectorSM|SignalOUT[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[3]~1_combout\ = \Numero_2[3]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro0~q\,
	datab => \B_registroAQE|Registro1~q\,
	datac => \B_Control|Restar~0_combout\,
	datad => \Numero_2[3]~input_o\,
	combout => \B_SelectorSM|SignalOUT[3]~1_combout\);

-- Location: IOIBUF_X38_Y41_N8
\Numero_2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(2),
	o => \Numero_2[2]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\Numero_2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(1),
	o => \Numero_2[1]~input_o\);

-- Location: LCCOMB_X30_Y40_N10
\B_ADDER|FA1|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA1|SCarry~0_combout\ = (\B_Control|CarryOutput~combout\ & ((\B_SelectorMP|SignalOUT[0]~0_combout\) # (\Numero_2[0]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_Control|CarryOutput~combout\ & ((\Numero_2[0]~input_o\ & 
-- (\B_SelectorMP|SignalOUT[0]~0_combout\)) # (!\Numero_2[0]~input_o\ & ((\B_Control|Restar~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|CarryOutput~combout\,
	datab => \Numero_2[0]~input_o\,
	datac => \B_SelectorMP|SignalOUT[0]~0_combout\,
	datad => \B_Control|Restar~1_combout\,
	combout => \B_ADDER|FA1|SCarry~0_combout\);

-- Location: LCCOMB_X29_Y40_N24
\B_SelectorSM|SignalOUT[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[1]~8_combout\ = \Numero_2[1]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro0~q\,
	datab => \B_Control|Restar~0_combout\,
	datac => \B_registroAQE|Registro1~q\,
	datad => \Numero_2[1]~input_o\,
	combout => \B_SelectorSM|SignalOUT[1]~8_combout\);

-- Location: LCCOMB_X29_Y40_N26
\B_registroAQE|Din[10]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[10]~3_combout\ = (\B_Control|FF3~q\ & (\B_SelectorMP|SignalOUT[1]~1_combout\ $ (\B_ADDER|FA1|SCarry~0_combout\ $ (\B_SelectorSM|SignalOUT[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF3~q\,
	datab => \B_SelectorMP|SignalOUT[1]~1_combout\,
	datac => \B_ADDER|FA1|SCarry~0_combout\,
	datad => \B_SelectorSM|SignalOUT[1]~8_combout\,
	combout => \B_registroAQE|Din[10]~3_combout\);

-- Location: LCCOMB_X31_Y38_N4
\B_registroAQE|Registro10~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro10~feeder_combout\ = \B_registroAQE|Din[10]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[10]~3_combout\,
	combout => \B_registroAQE|Registro10~feeder_combout\);

-- Location: LCCOMB_X30_Y38_N16
\B_registroAQE|EregisA\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|EregisA~combout\ = (\B_Control|FF3~q\) # ((\B_Control|FF2~q\) # (\B_Control|FF4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF3~q\,
	datac => \B_Control|FF2~q\,
	datad => \B_Control|FF4~q\,
	combout => \B_registroAQE|EregisA~combout\);

-- Location: FF_X31_Y38_N5
\B_registroAQE|Registro10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro10~feeder_combout\,
	asdata => \B_registroAQE|Registro11~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro10~q\);

-- Location: LCCOMB_X30_Y40_N8
\B_SelectorMP|SignalOUT[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[1]~1_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro10~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[1]~input_o\,
	datab => \B_Control|FF3~q\,
	datad => \B_registroAQE|Registro10~q\,
	combout => \B_SelectorMP|SignalOUT[1]~1_combout\);

-- Location: LCCOMB_X30_Y40_N18
\B_ADDER|FA2|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA2|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[1]~1_combout\ & ((\B_ADDER|FA1|SCarry~0_combout\) # (\B_Control|Restar~1_combout\ $ (\Numero_2[1]~input_o\)))) # (!\B_SelectorMP|SignalOUT[1]~1_combout\ & (\B_ADDER|FA1|SCarry~0_combout\ & 
-- (\B_Control|Restar~1_combout\ $ (\Numero_2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \Numero_2[1]~input_o\,
	datac => \B_SelectorMP|SignalOUT[1]~1_combout\,
	datad => \B_ADDER|FA1|SCarry~0_combout\,
	combout => \B_ADDER|FA2|SCarry~0_combout\);

-- Location: LCCOMB_X29_Y40_N22
\B_SelectorSM|SignalOUT[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[2]~0_combout\ = \Numero_2[2]~input_o\ $ ((((\B_registroAQE|Registro1~q\ & !\B_registroAQE|Registro0~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro1~q\,
	datab => \B_Control|Restar~0_combout\,
	datac => \Numero_2[2]~input_o\,
	datad => \B_registroAQE|Registro0~q\,
	combout => \B_SelectorSM|SignalOUT[2]~0_combout\);

-- Location: LCCOMB_X30_Y38_N8
\B_registroAQE|Din[11]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[11]~5_combout\ = (\B_Control|FF3~q\ & (\B_ADDER|FA2|SCarry~0_combout\ $ (\B_SelectorSM|SignalOUT[2]~0_combout\ $ (\B_SelectorMP|SignalOUT[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF3~q\,
	datab => \B_ADDER|FA2|SCarry~0_combout\,
	datac => \B_SelectorSM|SignalOUT[2]~0_combout\,
	datad => \B_SelectorMP|SignalOUT[2]~2_combout\,
	combout => \B_registroAQE|Din[11]~5_combout\);

-- Location: LCCOMB_X31_Y38_N26
\B_registroAQE|Registro11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro11~feeder_combout\ = \B_registroAQE|Din[11]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[11]~5_combout\,
	combout => \B_registroAQE|Registro11~feeder_combout\);

-- Location: FF_X31_Y38_N27
\B_registroAQE|Registro11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro11~feeder_combout\,
	asdata => \B_registroAQE|Registro12~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro11~q\);

-- Location: IOIBUF_X25_Y41_N8
\Numero_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_1(2),
	o => \Numero_1[2]~input_o\);

-- Location: LCCOMB_X30_Y40_N4
\B_SelectorMP|SignalOUT[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[2]~2_combout\ = (\B_Control|FF3~q\ & (\B_registroAQE|Registro11~q\)) # (!\B_Control|FF3~q\ & ((\Numero_1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|FF3~q\,
	datac => \B_registroAQE|Registro11~q\,
	datad => \Numero_1[2]~input_o\,
	combout => \B_SelectorMP|SignalOUT[2]~2_combout\);

-- Location: LCCOMB_X30_Y40_N2
\B_ADDER|FA3|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA3|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[2]~2_combout\ & ((\B_ADDER|FA2|SCarry~0_combout\) # (\B_Control|Restar~1_combout\ $ (\Numero_2[2]~input_o\)))) # (!\B_SelectorMP|SignalOUT[2]~2_combout\ & (\B_ADDER|FA2|SCarry~0_combout\ & 
-- (\B_Control|Restar~1_combout\ $ (\Numero_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \Numero_2[2]~input_o\,
	datac => \B_SelectorMP|SignalOUT[2]~2_combout\,
	datad => \B_ADDER|FA2|SCarry~0_combout\,
	combout => \B_ADDER|FA3|SCarry~0_combout\);

-- Location: LCCOMB_X30_Y38_N22
\B_registroAQE|Din[12]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[12]~8_combout\ = (\B_Control|FF3~q\ & (\B_SelectorSM|SignalOUT[3]~1_combout\ $ (\B_SelectorMP|SignalOUT[3]~3_combout\ $ (\B_ADDER|FA3|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF3~q\,
	datab => \B_SelectorSM|SignalOUT[3]~1_combout\,
	datac => \B_SelectorMP|SignalOUT[3]~3_combout\,
	datad => \B_ADDER|FA3|SCarry~0_combout\,
	combout => \B_registroAQE|Din[12]~8_combout\);

-- Location: LCCOMB_X31_Y38_N14
\B_registroAQE|Registro12~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro12~feeder_combout\ = \B_registroAQE|Din[12]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[12]~8_combout\,
	combout => \B_registroAQE|Registro12~feeder_combout\);

-- Location: FF_X31_Y38_N15
\B_registroAQE|Registro12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro12~feeder_combout\,
	asdata => \B_registroAQE|Registro13~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro12~q\);

-- Location: LCCOMB_X30_Y40_N20
\B_SelectorMP|SignalOUT[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[3]~3_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro12~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[3]~input_o\,
	datac => \B_registroAQE|Registro12~q\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT[3]~3_combout\);

-- Location: LCCOMB_X30_Y40_N24
\B_ADDER|FA4|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA4|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[3]~3_combout\ & ((\B_ADDER|FA3|SCarry~0_combout\) # (\B_Control|Restar~1_combout\ $ (\Numero_2[3]~input_o\)))) # (!\B_SelectorMP|SignalOUT[3]~3_combout\ & (\B_ADDER|FA3|SCarry~0_combout\ & 
-- (\B_Control|Restar~1_combout\ $ (\Numero_2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \B_SelectorMP|SignalOUT[3]~3_combout\,
	datac => \Numero_2[3]~input_o\,
	datad => \B_ADDER|FA3|SCarry~0_combout\,
	combout => \B_ADDER|FA4|SCarry~0_combout\);

-- Location: LCCOMB_X28_Y39_N8
\B_registroAQE|Din[13]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[13]~9_combout\ = (\B_Control|FF3~q\ & (\B_SelectorSM|SignalOUT[4]~2_combout\ $ (\B_SelectorMP|SignalOUT[4]~4_combout\ $ (\B_ADDER|FA4|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorSM|SignalOUT[4]~2_combout\,
	datab => \B_SelectorMP|SignalOUT[4]~4_combout\,
	datac => \B_Control|FF3~q\,
	datad => \B_ADDER|FA4|SCarry~0_combout\,
	combout => \B_registroAQE|Din[13]~9_combout\);

-- Location: LCCOMB_X31_Y38_N8
\B_registroAQE|Registro13~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro13~feeder_combout\ = \B_registroAQE|Din[13]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[13]~9_combout\,
	combout => \B_registroAQE|Registro13~feeder_combout\);

-- Location: FF_X31_Y38_N9
\B_registroAQE|Registro13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro13~feeder_combout\,
	asdata => \B_registroAQE|Registro14~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro13~q\);

-- Location: LCCOMB_X30_Y40_N0
\B_SelectorMP|SignalOUT[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[4]~4_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro13~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[4]~input_o\,
	datac => \B_Control|FF3~q\,
	datad => \B_registroAQE|Registro13~q\,
	combout => \B_SelectorMP|SignalOUT[4]~4_combout\);

-- Location: LCCOMB_X30_Y40_N6
\B_ADDER|FA5|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA5|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[4]~4_combout\ & ((\B_ADDER|FA4|SCarry~0_combout\) # (\B_Control|Restar~1_combout\ $ (\Numero_2[4]~input_o\)))) # (!\B_SelectorMP|SignalOUT[4]~4_combout\ & (\B_ADDER|FA4|SCarry~0_combout\ & 
-- (\B_Control|Restar~1_combout\ $ (\Numero_2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \Numero_2[4]~input_o\,
	datac => \B_SelectorMP|SignalOUT[4]~4_combout\,
	datad => \B_ADDER|FA4|SCarry~0_combout\,
	combout => \B_ADDER|FA5|SCarry~0_combout\);

-- Location: LCCOMB_X30_Y38_N12
\B_SelectorSM|SignalOUT[5]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[5]~3_combout\ = \Numero_2[5]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~0_combout\,
	datab => \Numero_2[5]~input_o\,
	datac => \B_registroAQE|Registro0~q\,
	datad => \B_registroAQE|Registro1~q\,
	combout => \B_SelectorSM|SignalOUT[5]~3_combout\);

-- Location: LCCOMB_X31_Y38_N20
\B_registroAQE|Din[14]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[14]~11_combout\ = (\B_Control|FF3~q\ & (\B_SelectorMP|SignalOUT[5]~5_combout\ $ (\B_ADDER|FA5|SCarry~0_combout\ $ (\B_SelectorSM|SignalOUT[5]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT[5]~5_combout\,
	datab => \B_Control|FF3~q\,
	datac => \B_ADDER|FA5|SCarry~0_combout\,
	datad => \B_SelectorSM|SignalOUT[5]~3_combout\,
	combout => \B_registroAQE|Din[14]~11_combout\);

-- Location: LCCOMB_X31_Y38_N22
\B_registroAQE|Registro14~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro14~feeder_combout\ = \B_registroAQE|Din[14]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[14]~11_combout\,
	combout => \B_registroAQE|Registro14~feeder_combout\);

-- Location: FF_X31_Y38_N23
\B_registroAQE|Registro14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro14~feeder_combout\,
	asdata => \B_registroAQE|Registro15~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro14~q\);

-- Location: LCCOMB_X31_Y38_N12
\B_SelectorMP|SignalOUT[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[5]~5_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro14~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[5]~input_o\,
	datac => \B_registroAQE|Registro14~q\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT[5]~5_combout\);

-- Location: LCCOMB_X30_Y40_N28
\B_ADDER|FA6|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA6|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[5]~5_combout\ & ((\B_ADDER|FA5|SCarry~0_combout\) # (\B_Control|Restar~1_combout\ $ (\Numero_2[5]~input_o\)))) # (!\B_SelectorMP|SignalOUT[5]~5_combout\ & (\B_ADDER|FA5|SCarry~0_combout\ & 
-- (\B_Control|Restar~1_combout\ $ (\Numero_2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \Numero_2[5]~input_o\,
	datac => \B_SelectorMP|SignalOUT[5]~5_combout\,
	datad => \B_ADDER|FA5|SCarry~0_combout\,
	combout => \B_ADDER|FA6|SCarry~0_combout\);

-- Location: LCCOMB_X30_Y38_N30
\B_SelectorSM|SignalOUT[6]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[6]~4_combout\ = \Numero_2[6]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~0_combout\,
	datab => \Numero_2[6]~input_o\,
	datac => \B_registroAQE|Registro0~q\,
	datad => \B_registroAQE|Registro1~q\,
	combout => \B_SelectorSM|SignalOUT[6]~4_combout\);

-- Location: LCCOMB_X31_Y38_N28
\B_registroAQE|Din[15]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[15]~13_combout\ = (\B_Control|FF3~q\ & (\B_SelectorMP|SignalOUT[6]~6_combout\ $ (\B_ADDER|FA6|SCarry~0_combout\ $ (\B_SelectorSM|SignalOUT[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT[6]~6_combout\,
	datab => \B_Control|FF3~q\,
	datac => \B_ADDER|FA6|SCarry~0_combout\,
	datad => \B_SelectorSM|SignalOUT[6]~4_combout\,
	combout => \B_registroAQE|Din[15]~13_combout\);

-- Location: LCCOMB_X31_Y38_N30
\B_registroAQE|Registro15~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Registro15~feeder_combout\ = \B_registroAQE|Din[15]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_registroAQE|Din[15]~13_combout\,
	combout => \B_registroAQE|Registro15~feeder_combout\);

-- Location: FF_X31_Y38_N31
\B_registroAQE|Registro15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Registro15~feeder_combout\,
	asdata => \B_registroAQE|Registro16~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro15~q\);

-- Location: LCCOMB_X31_Y38_N2
\B_SelectorMP|SignalOUT[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[6]~6_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro15~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[6]~input_o\,
	datac => \B_registroAQE|Registro15~q\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT[6]~6_combout\);

-- Location: LCCOMB_X31_Y40_N10
\B_ADDER|FA7|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA7|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[6]~6_combout\ & ((\B_ADDER|FA6|SCarry~0_combout\) # (\Numero_2[6]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT[6]~6_combout\ & (\B_ADDER|FA6|SCarry~0_combout\ & 
-- (\Numero_2[6]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[6]~input_o\,
	datab => \B_SelectorMP|SignalOUT[6]~6_combout\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA6|SCarry~0_combout\,
	combout => \B_ADDER|FA7|SCarry~0_combout\);

-- Location: IOIBUF_X46_Y41_N22
\Numero_2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Numero_2(7),
	o => \Numero_2[7]~input_o\);

-- Location: LCCOMB_X32_Y39_N14
\B_ADDER|FA8|ResultBit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA8|ResultBit~0_combout\ = \B_SelectorMP|SignalOUT[7]~7_combout\ $ (\B_Control|Restar~1_combout\ $ (\B_ADDER|FA7|SCarry~0_combout\ $ (\Numero_2[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT[7]~7_combout\,
	datab => \B_Control|Restar~1_combout\,
	datac => \B_ADDER|FA7|SCarry~0_combout\,
	datad => \Numero_2[7]~input_o\,
	combout => \B_ADDER|FA8|ResultBit~0_combout\);

-- Location: LCCOMB_X31_Y38_N24
\B_registroAQE|Din[16]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din\(16) = (\B_Control|FF4~q\ & ((\B_registroAQE|Registro16~q\) # ((\B_Control|FF3~q\ & \B_ADDER|FA8|ResultBit~0_combout\)))) # (!\B_Control|FF4~q\ & (\B_Control|FF3~q\ & ((\B_ADDER|FA8|ResultBit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF4~q\,
	datab => \B_Control|FF3~q\,
	datac => \B_registroAQE|Registro16~q\,
	datad => \B_ADDER|FA8|ResultBit~0_combout\,
	combout => \B_registroAQE|Din\(16));

-- Location: FF_X31_Y38_N25
\B_registroAQE|Registro16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din\(16),
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro16~q\);

-- Location: LCCOMB_X32_Y38_N0
\B_SelectorMP|SignalOUT[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorMP|SignalOUT[7]~7_combout\ = (\B_Control|FF3~q\ & ((\B_registroAQE|Registro16~q\))) # (!\B_Control|FF3~q\ & (\Numero_1[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[7]~input_o\,
	datab => \B_registroAQE|Registro16~q\,
	datad => \B_Control|FF3~q\,
	combout => \B_SelectorMP|SignalOUT[7]~7_combout\);

-- Location: LCCOMB_X31_Y40_N0
\B_ADDER|FA8|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA8|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT[7]~7_combout\ & ((\B_ADDER|FA7|SCarry~0_combout\) # (\Numero_2[7]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT[7]~7_combout\ & (\B_ADDER|FA7|SCarry~0_combout\ & 
-- (\Numero_2[7]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT[7]~7_combout\,
	datab => \Numero_2[7]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA7|SCarry~0_combout\,
	combout => \B_ADDER|FA8|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N18
\B_ADDER|FA9|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA9|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~8_combout\ & ((\B_ADDER|FA8|SCarry~0_combout\) # (\Numero_2[8]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~8_combout\ & (\B_ADDER|FA8|SCarry~0_combout\ & 
-- (\Numero_2[8]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~8_combout\,
	datab => \Numero_2[8]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA8|SCarry~0_combout\,
	combout => \B_ADDER|FA9|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N24
\B_ADDER|FA10|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA10|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~9_combout\ & ((\B_ADDER|FA9|SCarry~0_combout\) # (\Numero_2[9]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~9_combout\ & (\B_ADDER|FA9|SCarry~0_combout\ & 
-- (\Numero_2[9]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datab => \B_Control|Restar~1_combout\,
	datac => \B_SelectorMP|SignalOUT~9_combout\,
	datad => \B_ADDER|FA9|SCarry~0_combout\,
	combout => \B_ADDER|FA10|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N6
\B_ADDER|FA11|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA11|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~10_combout\ & ((\B_ADDER|FA10|SCarry~0_combout\) # (\Numero_2[10]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~10_combout\ & (\B_ADDER|FA10|SCarry~0_combout\ & 
-- (\Numero_2[10]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~10_combout\,
	datab => \Numero_2[10]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA10|SCarry~0_combout\,
	combout => \B_ADDER|FA11|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N16
\B_ADDER|FA12|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA12|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~11_combout\ & ((\B_ADDER|FA11|SCarry~0_combout\) # (\Numero_2[11]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~11_combout\ & (\B_ADDER|FA11|SCarry~0_combout\ & 
-- (\Numero_2[11]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[11]~input_o\,
	datab => \B_SelectorMP|SignalOUT~11_combout\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA11|SCarry~0_combout\,
	combout => \B_ADDER|FA12|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N28
\B_ADDER|FA13|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA13|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~12_combout\ & ((\B_ADDER|FA12|SCarry~0_combout\) # (\Numero_2[12]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~12_combout\ & (\B_ADDER|FA12|SCarry~0_combout\ & 
-- (\Numero_2[12]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[12]~input_o\,
	datab => \B_SelectorMP|SignalOUT~12_combout\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA12|SCarry~0_combout\,
	combout => \B_ADDER|FA13|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N30
\B_ADDER|FA14|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA14|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~13_combout\ & ((\B_ADDER|FA13|SCarry~0_combout\) # (\Numero_2[13]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~13_combout\ & (\B_ADDER|FA13|SCarry~0_combout\ & 
-- (\Numero_2[13]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~13_combout\,
	datab => \Numero_2[13]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA13|SCarry~0_combout\,
	combout => \B_ADDER|FA14|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N12
\B_ADDER|FA15|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA15|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~14_combout\ & ((\B_ADDER|FA14|SCarry~0_combout\) # (\Numero_2[14]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~14_combout\ & (\B_ADDER|FA14|SCarry~0_combout\ & 
-- (\Numero_2[14]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~14_combout\,
	datab => \Numero_2[14]~input_o\,
	datac => \B_ADDER|FA14|SCarry~0_combout\,
	datad => \B_Control|Restar~1_combout\,
	combout => \B_ADDER|FA15|SCarry~0_combout\);

-- Location: LCCOMB_X31_Y40_N26
\B_ADDER|FA16|SCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA16|SCarry~0_combout\ = (\B_SelectorMP|SignalOUT~15_combout\ & ((\B_ADDER|FA15|SCarry~0_combout\) # (\Numero_2[15]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~15_combout\ & (\B_ADDER|FA15|SCarry~0_combout\ & 
-- (\Numero_2[15]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~15_combout\,
	datab => \Numero_2[15]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA15|SCarry~0_combout\,
	combout => \B_ADDER|FA16|SCarry~0_combout\);

-- Location: LCCOMB_X27_Y39_N24
\B_Control|SaveCarry~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|SaveCarry~0_combout\ = (\Operacion[3]~input_o\) # ((\Operacion[2]~input_o\) # (\Operacion[1]~input_o\ $ (!\Operacion[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|SaveCarry~0_combout\);

-- Location: LCCOMB_X27_Y39_N20
\B_Control|D~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D~4_combout\ = (\Operacion[3]~input_o\ & (!\Operacion[2]~input_o\ & ((\Operacion[0]~input_o\) # (!\Operacion[1]~input_o\)))) # (!\Operacion[3]~input_o\ & ((\Operacion[1]~input_o\) # (\Operacion[0]~input_o\ $ (\Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|D~4_combout\);

-- Location: LCCOMB_X27_Y39_N0
\B_Control|D[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D\(1) = (!\Habilitar~input_o\ & (!\B_Control|FF1~q\ & \B_Control|D~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Habilitar~input_o\,
	datac => \B_Control|FF1~q\,
	datad => \B_Control|D~4_combout\,
	combout => \B_Control|D\(1));

-- Location: FF_X27_Y39_N1
\B_Control|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|D\(1),
	clrn => \Restablecer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF1~q\);

-- Location: LCCOMB_X27_Y39_N2
\B_Control|SaveCarry~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|SaveCarry~1_combout\ = (!\B_Control|SaveCarry~0_combout\ & \B_Control|FF1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|SaveCarry~0_combout\,
	datad => \B_Control|FF1~q\,
	combout => \B_Control|SaveCarry~1_combout\);

-- Location: FF_X31_Y40_N27
BR_Carry : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_ADDER|FA16|SCarry~0_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|SaveCarry~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BR_Carry~q\);

-- Location: LCCOMB_X27_Y40_N24
\B_Control|B_SeleccionOpera|MULT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|B_SeleccionOpera|MULT~0_combout\ = (!\Operacion[1]~input_o\ & !\Operacion[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Operacion[1]~input_o\,
	datad => \Operacion[3]~input_o\,
	combout => \B_Control|B_SeleccionOpera|MULT~0_combout\);

-- Location: LCCOMB_X31_Y40_N4
\B_Control|CarryOutput\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|CarryOutput~combout\ = (\Operacion[0]~input_o\ & (!\Operacion[2]~input_o\ & (\BR_Carry~q\ & \B_Control|B_SeleccionOpera|MULT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[0]~input_o\,
	datab => \Operacion[2]~input_o\,
	datac => \BR_Carry~q\,
	datad => \B_Control|B_SeleccionOpera|MULT~0_combout\,
	combout => \B_Control|CarryOutput~combout\);

-- Location: LCCOMB_X30_Y40_N12
\B_ADDER|FA1|ResultBit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA1|ResultBit~0_combout\ = \B_SelectorMP|SignalOUT[0]~0_combout\ $ (\Numero_2[0]~input_o\ $ (((!\B_Control|Restar~1_combout\ & \B_Control|CarryOutput~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \B_SelectorMP|SignalOUT[0]~0_combout\,
	datac => \Numero_2[0]~input_o\,
	datad => \B_Control|CarryOutput~combout\,
	combout => \B_ADDER|FA1|ResultBit~0_combout\);

-- Location: LCCOMB_X31_Y38_N0
\B_registroAQE|Din[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[9]~2_combout\ = (\B_ADDER|FA1|ResultBit~0_combout\ & \B_Control|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_ADDER|FA1|ResultBit~0_combout\,
	datab => \B_Control|FF3~q\,
	combout => \B_registroAQE|Din[9]~2_combout\);

-- Location: FF_X31_Y38_N1
\B_registroAQE|Registro9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[9]~2_combout\,
	asdata => \B_registroAQE|Registro10~q\,
	clrn => \B_registroAQE|ALT_INV_Reset_Mul~combout\,
	sload => \B_Control|FF4~q\,
	ena => \B_registroAQE|EregisA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro9~q\);

-- Location: LCCOMB_X32_Y39_N30
\B_registroAQE|Din[8]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[8]~15_combout\ = (\B_Control|FF4~q\ & (\B_registroAQE|Registro9~q\)) # (!\B_Control|FF4~q\ & ((\Numero_1[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro9~q\,
	datac => \B_Control|FF4~q\,
	datad => \Numero_1[7]~input_o\,
	combout => \B_registroAQE|Din[8]~15_combout\);

-- Location: FF_X32_Y39_N31
\B_registroAQE|Registro8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[8]~15_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro8~q\);

-- Location: LCCOMB_X32_Y39_N20
\B_registroAQE|Din[7]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[7]~14_combout\ = (\B_Control|FF4~q\ & (\B_registroAQE|Registro8~q\)) # (!\B_Control|FF4~q\ & ((\Numero_1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro8~q\,
	datab => \Numero_1[6]~input_o\,
	datac => \B_Control|FF4~q\,
	combout => \B_registroAQE|Din[7]~14_combout\);

-- Location: FF_X32_Y39_N21
\B_registroAQE|Registro7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[7]~14_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro7~q\);

-- Location: LCCOMB_X31_Y38_N16
\B_registroAQE|Din[6]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[6]~12_combout\ = (\B_Control|FF4~q\ & ((\B_registroAQE|Registro7~q\))) # (!\B_Control|FF4~q\ & (\Numero_1[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|FF4~q\,
	datac => \Numero_1[5]~input_o\,
	datad => \B_registroAQE|Registro7~q\,
	combout => \B_registroAQE|Din[6]~12_combout\);

-- Location: FF_X31_Y38_N17
\B_registroAQE|Registro6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[6]~12_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro6~q\);

-- Location: LCCOMB_X28_Y39_N10
\B_registroAQE|Din[5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[5]~10_combout\ = (\B_Control|FF4~q\ & (\B_registroAQE|Registro6~q\)) # (!\B_Control|FF4~q\ & ((\Numero_1[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro6~q\,
	datac => \B_Control|FF4~q\,
	datad => \Numero_1[4]~input_o\,
	combout => \B_registroAQE|Din[5]~10_combout\);

-- Location: FF_X29_Y39_N27
\B_registroAQE|Registro5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	asdata => \B_registroAQE|Din[5]~10_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	sload => VCC,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro5~q\);

-- Location: LCCOMB_X29_Y39_N28
\B_registroAQE|Din[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[4]~7_combout\ = (\B_Control|FF4~q\ & ((\B_registroAQE|Registro5~q\))) # (!\B_Control|FF4~q\ & (\Numero_1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|FF4~q\,
	datac => \Numero_1[3]~input_o\,
	datad => \B_registroAQE|Registro5~q\,
	combout => \B_registroAQE|Din[4]~7_combout\);

-- Location: FF_X29_Y39_N29
\B_registroAQE|Registro4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[4]~7_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro4~q\);

-- Location: LCCOMB_X29_Y39_N16
\B_registroAQE|Din[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[3]~6_combout\ = (\B_Control|FF4~q\ & (\B_registroAQE|Registro4~q\)) # (!\B_Control|FF4~q\ & ((\Numero_1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_registroAQE|Registro4~q\,
	datac => \Numero_1[2]~input_o\,
	datad => \B_Control|FF4~q\,
	combout => \B_registroAQE|Din[3]~6_combout\);

-- Location: FF_X29_Y39_N17
\B_registroAQE|Registro3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[3]~6_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro3~q\);

-- Location: LCCOMB_X29_Y40_N0
\B_registroAQE|Din[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[2]~4_combout\ = (\B_Control|FF4~q\ & ((\B_registroAQE|Registro3~q\))) # (!\B_Control|FF4~q\ & (\Numero_1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF4~q\,
	datac => \Numero_1[1]~input_o\,
	datad => \B_registroAQE|Registro3~q\,
	combout => \B_registroAQE|Din[2]~4_combout\);

-- Location: FF_X29_Y40_N1
\B_registroAQE|Registro2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[2]~4_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro2~q\);

-- Location: LCCOMB_X29_Y40_N6
\B_registroAQE|Din[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_registroAQE|Din[1]~0_combout\ = (\B_Control|FF4~q\ & (\B_registroAQE|Registro2~q\)) # (!\B_Control|FF4~q\ & ((\Numero_1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|FF4~q\,
	datac => \B_registroAQE|Registro2~q\,
	datad => \Numero_1[0]~input_o\,
	combout => \B_registroAQE|Din[1]~0_combout\);

-- Location: FF_X29_Y40_N7
\B_registroAQE|Registro1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_registroAQE|Din[1]~0_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_registroAQE|Eregistro~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_registroAQE|Registro1~q\);

-- Location: LCCOMB_X27_Y39_N16
\B_Control|Show_Foo[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|Show_Foo\(2) = (\Operacion[3]~input_o\ & (((\Operacion[0]~input_o\ & !\Operacion[2]~input_o\)))) # (!\Operacion[3]~input_o\ & (\Operacion[2]~input_o\ & (\Operacion[1]~input_o\ $ (\Operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|Show_Foo\(2));

-- Location: LCCOMB_X29_Y39_N4
\B_SelectorG|SignalOUT[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~2_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro1~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_2[0]~input_o\) # ((\Numero_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[0]~input_o\,
	datab => \B_registroAQE|Registro1~q\,
	datac => \B_Control|Show_Foo\(2),
	datad => \Numero_1[0]~input_o\,
	combout => \B_SelectorG|SignalOUT[0]~2_combout\);

-- Location: LCCOMB_X27_Y39_N30
\B_Control|Show_Foo~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|Show_Foo~0_combout\ = (\Operacion[3]~input_o\ & (((\Operacion[0]~input_o\ & !\Operacion[2]~input_o\)))) # (!\Operacion[3]~input_o\ & (\Operacion[1]~input_o\ & (!\Operacion[0]~input_o\ & \Operacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|Show_Foo~0_combout\);

-- Location: LCCOMB_X30_Y40_N30
\B_SelectorG|SignalOUT[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~1_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_1[1]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((\B_ADDER|FA1|ResultBit~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo~0_combout\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \Numero_1[1]~input_o\,
	datad => \B_ADDER|FA1|ResultBit~0_combout\,
	combout => \B_SelectorG|SignalOUT[0]~1_combout\);

-- Location: LCCOMB_X29_Y39_N10
\B_SelectorG|SignalOUT[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~3_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[0]~1_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT[0]~2_combout\,
	datad => \B_SelectorG|SignalOUT[0]~1_combout\,
	combout => \B_SelectorG|SignalOUT[0]~3_combout\);

-- Location: LCCOMB_X27_Y39_N6
\B_SelectorG|SignalOUT[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~4_combout\ = (\Operacion[3]~input_o\ & (!\Operacion[1]~input_o\ & !\Operacion[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datac => \Operacion[1]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT[0]~4_combout\);

-- Location: LCCOMB_X28_Y39_N20
\B_SelectorG|SignalOUT[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~5_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_2[1]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((!\Numero_2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[1]~input_o\,
	datab => \B_SelectorG|SignalOUT[0]~4_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_2[0]~input_o\,
	combout => \B_SelectorG|SignalOUT[0]~5_combout\);

-- Location: LCCOMB_X29_Y39_N8
\B_SelectorG|SignalOUT[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~7_combout\ = (\Numero_2[0]~input_o\ & \Numero_1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Numero_2[0]~input_o\,
	datad => \Numero_1[0]~input_o\,
	combout => \B_SelectorG|SignalOUT[0]~7_combout\);

-- Location: LCCOMB_X27_Y40_N12
\B_SelectorG|SignalOUT~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~6_combout\ = (\Operacion[1]~input_o\ & (!\Operacion[3]~input_o\ & (!\Operacion[0]~input_o\ & \Operacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT~6_combout\);

-- Location: LCCOMB_X29_Y39_N20
\B_SelectorG|SignalOUT[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[0]~8_combout\ = (\B_SelectorG|SignalOUT[0]~3_combout\) # ((\B_SelectorG|SignalOUT[0]~5_combout\) # ((\B_SelectorG|SignalOUT[0]~7_combout\ & \B_SelectorG|SignalOUT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~3_combout\,
	datab => \B_SelectorG|SignalOUT[0]~5_combout\,
	datac => \B_SelectorG|SignalOUT[0]~7_combout\,
	datad => \B_SelectorG|SignalOUT~6_combout\,
	combout => \B_SelectorG|SignalOUT[0]~8_combout\);

-- Location: LCCOMB_X27_Y39_N14
\B_Control|D[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D[0]~0_combout\ = (!\B_Control|FF1~q\ & !\B_Control|B_Counter|FF3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_Control|FF1~q\,
	datad => \B_Control|B_Counter|FF3~q\,
	combout => \B_Control|D[0]~0_combout\);

-- Location: FF_X29_Y39_N21
\B_R_Resultado|FF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[0]~8_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF0~q\);

-- Location: LCCOMB_X27_Y40_N22
\B_SelectorG|SignalOUT[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~13_combout\ = (\Numero_1[1]~input_o\ & \Numero_2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Numero_1[1]~input_o\,
	datad => \Numero_2[1]~input_o\,
	combout => \B_SelectorG|SignalOUT[1]~13_combout\);

-- Location: LCCOMB_X29_Y40_N30
\B_ADDER|FA2|ResultBit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_ADDER|FA2|ResultBit~0_combout\ = \Numero_2[1]~input_o\ $ (\B_ADDER|FA1|SCarry~0_combout\ $ (\B_SelectorMP|SignalOUT[1]~1_combout\ $ (\B_Control|Restar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[1]~input_o\,
	datab => \B_ADDER|FA1|SCarry~0_combout\,
	datac => \B_SelectorMP|SignalOUT[1]~1_combout\,
	datad => \B_Control|Restar~1_combout\,
	combout => \B_ADDER|FA2|ResultBit~0_combout\);

-- Location: LCCOMB_X27_Y40_N6
\B_SelectorG|SignalOUT[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~9_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_1[2]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((\B_ADDER|FA2|ResultBit~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \Numero_1[2]~input_o\,
	datad => \B_ADDER|FA2|ResultBit~0_combout\,
	combout => \B_SelectorG|SignalOUT[1]~9_combout\);

-- Location: LCCOMB_X28_Y40_N18
\B_SelectorG|SignalOUT[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~10_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro2~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_1[1]~input_o\) # ((\Numero_2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \Numero_1[1]~input_o\,
	datac => \B_registroAQE|Registro2~q\,
	datad => \Numero_2[1]~input_o\,
	combout => \B_SelectorG|SignalOUT[1]~10_combout\);

-- Location: LCCOMB_X27_Y40_N0
\B_SelectorG|SignalOUT[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~11_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[1]~9_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[1]~9_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[1]~10_combout\,
	combout => \B_SelectorG|SignalOUT[1]~11_combout\);

-- Location: LCCOMB_X28_Y39_N2
\B_SelectorG|SignalOUT[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~12_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & ((\Numero_2[2]~input_o\))) # (!\B_Control|Show_Foo~0_combout\ & (!\Numero_2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[1]~input_o\,
	datab => \B_SelectorG|SignalOUT[0]~4_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_2[2]~input_o\,
	combout => \B_SelectorG|SignalOUT[1]~12_combout\);

-- Location: LCCOMB_X27_Y40_N20
\B_SelectorG|SignalOUT[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[1]~14_combout\ = (\B_SelectorG|SignalOUT[1]~11_combout\) # ((\B_SelectorG|SignalOUT[1]~12_combout\) # ((\B_SelectorG|SignalOUT[1]~13_combout\ & \B_SelectorG|SignalOUT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[1]~13_combout\,
	datab => \B_SelectorG|SignalOUT[1]~11_combout\,
	datac => \B_SelectorG|SignalOUT[1]~12_combout\,
	datad => \B_SelectorG|SignalOUT~6_combout\,
	combout => \B_SelectorG|SignalOUT[1]~14_combout\);

-- Location: FF_X27_Y40_N21
\B_R_Resultado|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[1]~14_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF1~q\);

-- Location: LCCOMB_X29_Y39_N12
\B_SelectorG|SignalOUT[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~19_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & ((\Numero_2[3]~input_o\))) # (!\B_Control|Show_Foo~0_combout\ & (!\Numero_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~4_combout\,
	datab => \Numero_2[2]~input_o\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_2[3]~input_o\,
	combout => \B_SelectorG|SignalOUT[2]~19_combout\);

-- Location: LCCOMB_X29_Y39_N26
\B_SelectorG|SignalOUT[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~20_combout\ = (\Numero_1[2]~input_o\ & \Numero_2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[2]~input_o\,
	datad => \Numero_2[2]~input_o\,
	combout => \B_SelectorG|SignalOUT[2]~20_combout\);

-- Location: LCCOMB_X30_Y38_N18
\B_SelectorG|SignalOUT[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~15_combout\ = (!\B_Control|Show_Foo~0_combout\ & (\B_SelectorMP|SignalOUT[2]~2_combout\ $ (\B_SelectorSM|SignalOUT[2]~0_combout\ $ (\B_ADDER|FA2|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo~0_combout\,
	datab => \B_SelectorMP|SignalOUT[2]~2_combout\,
	datac => \B_SelectorSM|SignalOUT[2]~0_combout\,
	datad => \B_ADDER|FA2|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[2]~15_combout\);

-- Location: LCCOMB_X29_Y39_N22
\B_SelectorG|SignalOUT[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~16_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[2]~15_combout\) # ((\B_Control|Show_Foo~0_combout\ & \Numero_1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \Numero_1[3]~input_o\,
	datad => \B_SelectorG|SignalOUT[2]~15_combout\,
	combout => \B_SelectorG|SignalOUT[2]~16_combout\);

-- Location: LCCOMB_X29_Y40_N28
\B_SelectorG|SignalOUT[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~17_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro3~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_1[2]~input_o\) # ((\Numero_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[2]~input_o\,
	datab => \B_Control|Show_Foo\(2),
	datac => \Numero_2[2]~input_o\,
	datad => \B_registroAQE|Registro3~q\,
	combout => \B_SelectorG|SignalOUT[2]~17_combout\);

-- Location: LCCOMB_X29_Y39_N2
\B_SelectorG|SignalOUT[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~18_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[2]~16_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT[2]~16_combout\,
	datad => \B_SelectorG|SignalOUT[2]~17_combout\,
	combout => \B_SelectorG|SignalOUT[2]~18_combout\);

-- Location: LCCOMB_X29_Y39_N6
\B_SelectorG|SignalOUT[2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[2]~21_combout\ = (\B_SelectorG|SignalOUT[2]~19_combout\) # ((\B_SelectorG|SignalOUT[2]~18_combout\) # ((\B_SelectorG|SignalOUT~6_combout\ & \B_SelectorG|SignalOUT[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[2]~19_combout\,
	datab => \B_SelectorG|SignalOUT~6_combout\,
	datac => \B_SelectorG|SignalOUT[2]~20_combout\,
	datad => \B_SelectorG|SignalOUT[2]~18_combout\,
	combout => \B_SelectorG|SignalOUT[2]~21_combout\);

-- Location: FF_X29_Y39_N7
\B_R_Resultado|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[2]~21_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF2~q\);

-- Location: LCCOMB_X29_Y39_N24
\B_SelectorG|SignalOUT[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~22_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_2[4]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((!\Numero_2[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~4_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \Numero_2[4]~input_o\,
	datad => \Numero_2[3]~input_o\,
	combout => \B_SelectorG|SignalOUT[3]~22_combout\);

-- Location: LCCOMB_X30_Y38_N26
\B_SelectorG|SignalOUT[3]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~26_combout\ = (!\B_Control|Show_Foo~0_combout\ & (\B_SelectorMP|SignalOUT[3]~3_combout\ $ (\B_SelectorSM|SignalOUT[3]~1_combout\ $ (\B_ADDER|FA3|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo~0_combout\,
	datab => \B_SelectorMP|SignalOUT[3]~3_combout\,
	datac => \B_SelectorSM|SignalOUT[3]~1_combout\,
	datad => \B_ADDER|FA3|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[3]~26_combout\);

-- Location: LCCOMB_X29_Y39_N30
\B_SelectorG|SignalOUT[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~24_combout\ = (\B_Control|Show_Foo\(2) & (\B_registroAQE|Registro4~q\)) # (!\B_Control|Show_Foo\(2) & (((\Numero_1[3]~input_o\) # (\Numero_2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_registroAQE|Registro4~q\,
	datac => \Numero_1[3]~input_o\,
	datad => \Numero_2[3]~input_o\,
	combout => \B_SelectorG|SignalOUT[3]~24_combout\);

-- Location: LCCOMB_X30_Y39_N20
\B_SelectorG|SignalOUT[3]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~25_combout\ = (\B_Control|Show_Foo~0_combout\ & \Numero_1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_1[4]~input_o\,
	combout => \B_SelectorG|SignalOUT[3]~25_combout\);

-- Location: LCCOMB_X30_Y39_N30
\B_SelectorG|SignalOUT[3]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~27_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[3]~26_combout\) # ((\B_SelectorG|SignalOUT[3]~25_combout\)))) # (!\B_SelectorG|SignalOUT~0_combout\ & (((\B_SelectorG|SignalOUT[3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[3]~26_combout\,
	datab => \B_SelectorG|SignalOUT[3]~24_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[3]~25_combout\,
	combout => \B_SelectorG|SignalOUT[3]~27_combout\);

-- Location: LCCOMB_X29_Y39_N14
\B_SelectorG|SignalOUT[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~23_combout\ = (\B_SelectorG|SignalOUT~6_combout\ & (\Numero_1[3]~input_o\ & \Numero_2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_SelectorG|SignalOUT~6_combout\,
	datac => \Numero_1[3]~input_o\,
	datad => \Numero_2[3]~input_o\,
	combout => \B_SelectorG|SignalOUT[3]~23_combout\);

-- Location: LCCOMB_X30_Y39_N0
\B_SelectorG|SignalOUT[3]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[3]~28_combout\ = (\B_SelectorG|SignalOUT[3]~22_combout\) # ((\B_SelectorG|SignalOUT[3]~23_combout\) # ((!\B_Control|Show_Foo[0]~1_combout\ & \B_SelectorG|SignalOUT[3]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo[0]~1_combout\,
	datab => \B_SelectorG|SignalOUT[3]~22_combout\,
	datac => \B_SelectorG|SignalOUT[3]~27_combout\,
	datad => \B_SelectorG|SignalOUT[3]~23_combout\,
	combout => \B_SelectorG|SignalOUT[3]~28_combout\);

-- Location: FF_X30_Y39_N1
\B_R_Resultado|FF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[3]~28_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF3~q\);

-- Location: LCCOMB_X28_Y39_N26
\B_SelectorG|SignalOUT[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~34_combout\ = (\Numero_2[4]~input_o\ & \Numero_1[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[4]~input_o\,
	datad => \Numero_1[4]~input_o\,
	combout => \B_SelectorG|SignalOUT[4]~34_combout\);

-- Location: LCCOMB_X28_Y39_N4
\B_SelectorG|SignalOUT[4]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~33_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_2[5]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((!\Numero_2[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[5]~input_o\,
	datab => \B_SelectorG|SignalOUT[0]~4_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_2[4]~input_o\,
	combout => \B_SelectorG|SignalOUT[4]~33_combout\);

-- Location: LCCOMB_X28_Y39_N0
\B_SelectorG|SignalOUT[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~31_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro5~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_2[4]~input_o\) # ((\Numero_1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \Numero_2[4]~input_o\,
	datac => \B_registroAQE|Registro5~q\,
	datad => \Numero_1[4]~input_o\,
	combout => \B_SelectorG|SignalOUT[4]~31_combout\);

-- Location: LCCOMB_X28_Y39_N28
\B_SelectorG|SignalOUT[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~29_combout\ = (!\B_Control|Show_Foo~0_combout\ & (\B_SelectorSM|SignalOUT[4]~2_combout\ $ (\B_SelectorMP|SignalOUT[4]~4_combout\ $ (\B_ADDER|FA4|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorSM|SignalOUT[4]~2_combout\,
	datab => \B_SelectorMP|SignalOUT[4]~4_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \B_ADDER|FA4|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[4]~29_combout\);

-- Location: LCCOMB_X28_Y39_N22
\B_SelectorG|SignalOUT[4]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~30_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[4]~29_combout\) # ((\Numero_1[5]~input_o\ & \B_Control|Show_Foo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[5]~input_o\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \B_SelectorG|SignalOUT[4]~29_combout\,
	combout => \B_SelectorG|SignalOUT[4]~30_combout\);

-- Location: LCCOMB_X28_Y39_N14
\B_SelectorG|SignalOUT[4]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~32_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[4]~30_combout\) # ((\B_SelectorG|SignalOUT[4]~31_combout\ & !\B_SelectorG|SignalOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo[0]~1_combout\,
	datab => \B_SelectorG|SignalOUT[4]~31_combout\,
	datac => \B_SelectorG|SignalOUT[4]~30_combout\,
	datad => \B_SelectorG|SignalOUT~0_combout\,
	combout => \B_SelectorG|SignalOUT[4]~32_combout\);

-- Location: LCCOMB_X29_Y39_N0
\B_SelectorG|SignalOUT[4]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[4]~35_combout\ = (\B_SelectorG|SignalOUT[4]~33_combout\) # ((\B_SelectorG|SignalOUT[4]~32_combout\) # ((\B_SelectorG|SignalOUT[4]~34_combout\ & \B_SelectorG|SignalOUT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[4]~34_combout\,
	datab => \B_SelectorG|SignalOUT~6_combout\,
	datac => \B_SelectorG|SignalOUT[4]~33_combout\,
	datad => \B_SelectorG|SignalOUT[4]~32_combout\,
	combout => \B_SelectorG|SignalOUT[4]~35_combout\);

-- Location: FF_X29_Y39_N1
\B_R_Resultado|FF4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[4]~35_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF4~q\);

-- Location: LCCOMB_X28_Y39_N30
\B_SelectorG|SignalOUT[5]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~40_combout\ = (\Numero_2[5]~input_o\) # (\Numero_1[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[5]~input_o\,
	datac => \Numero_1[5]~input_o\,
	combout => \B_SelectorG|SignalOUT[5]~40_combout\);

-- Location: LCCOMB_X28_Y39_N12
\B_SelectorG|SignalOUT[5]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~41_combout\ = (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo\(2) & ((\B_registroAQE|Registro6~q\))) # (!\B_Control|Show_Foo\(2) & (\B_SelectorG|SignalOUT[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[5]~40_combout\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \B_Control|Show_Foo\(2),
	datad => \B_registroAQE|Registro6~q\,
	combout => \B_SelectorG|SignalOUT[5]~41_combout\);

-- Location: LCCOMB_X32_Y39_N8
\B_SelectorG|SignalOUT[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~36_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & ((\Numero_2[6]~input_o\))) # (!\B_Control|Show_Foo~0_combout\ & (!\Numero_2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~4_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \Numero_2[5]~input_o\,
	datad => \Numero_2[6]~input_o\,
	combout => \B_SelectorG|SignalOUT[5]~36_combout\);

-- Location: LCCOMB_X28_Y39_N16
\B_SelectorG|SignalOUT[5]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~37_combout\ = (\B_SelectorG|SignalOUT[5]~36_combout\) # ((\B_SelectorG|SignalOUT~6_combout\ & (\Numero_1[5]~input_o\ & \Numero_2[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~6_combout\,
	datab => \B_SelectorG|SignalOUT[5]~36_combout\,
	datac => \Numero_1[5]~input_o\,
	datad => \Numero_2[5]~input_o\,
	combout => \B_SelectorG|SignalOUT[5]~37_combout\);

-- Location: LCCOMB_X31_Y38_N18
\B_SelectorG|SignalOUT[5]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~38_combout\ = (!\B_Control|Show_Foo~0_combout\ & (\B_SelectorSM|SignalOUT[5]~3_combout\ $ (\B_ADDER|FA5|SCarry~0_combout\ $ (\B_SelectorMP|SignalOUT[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorSM|SignalOUT[5]~3_combout\,
	datab => \B_ADDER|FA5|SCarry~0_combout\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \B_SelectorMP|SignalOUT[5]~5_combout\,
	combout => \B_SelectorG|SignalOUT[5]~38_combout\);

-- Location: LCCOMB_X31_Y38_N10
\B_SelectorG|SignalOUT[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~39_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[5]~38_combout\) # ((\Numero_1[6]~input_o\ & \B_Control|Show_Foo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \Numero_1[6]~input_o\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \B_SelectorG|SignalOUT[5]~38_combout\,
	combout => \B_SelectorG|SignalOUT[5]~39_combout\);

-- Location: LCCOMB_X29_Y39_N18
\B_SelectorG|SignalOUT[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[5]~42_combout\ = (\B_SelectorG|SignalOUT[5]~37_combout\) # ((!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[5]~41_combout\) # (\B_SelectorG|SignalOUT[5]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[5]~41_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT[5]~37_combout\,
	datad => \B_SelectorG|SignalOUT[5]~39_combout\,
	combout => \B_SelectorG|SignalOUT[5]~42_combout\);

-- Location: FF_X29_Y39_N19
\B_R_Resultado|FF5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[5]~42_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF5~q\);

-- Location: LCCOMB_X32_Y39_N22
\B_SelectorG|SignalOUT[6]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~47_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & ((\Numero_2[7]~input_o\))) # (!\B_Control|Show_Foo~0_combout\ & (!\Numero_2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~4_combout\,
	datab => \Numero_2[6]~input_o\,
	datac => \B_Control|Show_Foo~0_combout\,
	datad => \Numero_2[7]~input_o\,
	combout => \B_SelectorG|SignalOUT[6]~47_combout\);

-- Location: LCCOMB_X32_Y39_N4
\B_SelectorG|SignalOUT[6]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~48_combout\ = (\Numero_1[6]~input_o\ & \Numero_2[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Numero_1[6]~input_o\,
	datad => \Numero_2[6]~input_o\,
	combout => \B_SelectorG|SignalOUT[6]~48_combout\);

-- Location: LCCOMB_X32_Y39_N18
\B_SelectorG|SignalOUT[6]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~45_combout\ = (\B_Control|Show_Foo\(2) & (\B_registroAQE|Registro7~q\)) # (!\B_Control|Show_Foo\(2) & (((\Numero_1[6]~input_o\) # (\Numero_2[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_registroAQE|Registro7~q\,
	datac => \Numero_1[6]~input_o\,
	datad => \Numero_2[6]~input_o\,
	combout => \B_SelectorG|SignalOUT[6]~45_combout\);

-- Location: LCCOMB_X31_Y38_N6
\B_SelectorG|SignalOUT[6]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~43_combout\ = (!\B_Control|Show_Foo~0_combout\ & (\B_SelectorMP|SignalOUT[6]~6_combout\ $ (\B_ADDER|FA6|SCarry~0_combout\ $ (\B_SelectorSM|SignalOUT[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT[6]~6_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \B_ADDER|FA6|SCarry~0_combout\,
	datad => \B_SelectorSM|SignalOUT[6]~4_combout\,
	combout => \B_SelectorG|SignalOUT[6]~43_combout\);

-- Location: LCCOMB_X32_Y39_N6
\B_SelectorG|SignalOUT[6]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~44_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[6]~43_combout\) # ((\Numero_1[7]~input_o\ & \B_Control|Show_Foo~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[7]~input_o\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[6]~43_combout\,
	combout => \B_SelectorG|SignalOUT[6]~44_combout\);

-- Location: LCCOMB_X32_Y39_N12
\B_SelectorG|SignalOUT[6]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~46_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[6]~44_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[6]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_SelectorG|SignalOUT[6]~45_combout\,
	datac => \B_Control|Show_Foo[0]~1_combout\,
	datad => \B_SelectorG|SignalOUT[6]~44_combout\,
	combout => \B_SelectorG|SignalOUT[6]~46_combout\);

-- Location: LCCOMB_X32_Y39_N24
\B_SelectorG|SignalOUT[6]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[6]~49_combout\ = (\B_SelectorG|SignalOUT[6]~47_combout\) # ((\B_SelectorG|SignalOUT[6]~46_combout\) # ((\B_SelectorG|SignalOUT~6_combout\ & \B_SelectorG|SignalOUT[6]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[6]~47_combout\,
	datab => \B_SelectorG|SignalOUT~6_combout\,
	datac => \B_SelectorG|SignalOUT[6]~48_combout\,
	datad => \B_SelectorG|SignalOUT[6]~46_combout\,
	combout => \B_SelectorG|SignalOUT[6]~49_combout\);

-- Location: FF_X32_Y39_N25
\B_R_Resultado|FF6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[6]~49_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF6~q\);

-- Location: LCCOMB_X32_Y39_N10
\B_SelectorG|SignalOUT[7]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~54_combout\ = (\Numero_2[7]~input_o\ & \Numero_1[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[7]~input_o\,
	datad => \Numero_1[7]~input_o\,
	combout => \B_SelectorG|SignalOUT[7]~54_combout\);

-- Location: LCCOMB_X32_Y39_N28
\B_SelectorG|SignalOUT[7]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~53_combout\ = (\B_SelectorG|SignalOUT[0]~4_combout\ & ((\B_Control|Show_Foo~0_combout\ & (\Numero_2[8]~input_o\)) # (!\B_Control|Show_Foo~0_combout\ & ((!\Numero_2[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[0]~4_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \Numero_2[8]~input_o\,
	datad => \Numero_2[7]~input_o\,
	combout => \B_SelectorG|SignalOUT[7]~53_combout\);

-- Location: LCCOMB_X32_Y39_N0
\B_SelectorG|SignalOUT[7]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~51_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro8~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_2[7]~input_o\) # ((\Numero_1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \Numero_2[7]~input_o\,
	datac => \B_registroAQE|Registro8~q\,
	datad => \Numero_1[7]~input_o\,
	combout => \B_SelectorG|SignalOUT[7]~51_combout\);

-- Location: LCCOMB_X32_Y39_N16
\B_SelectorG|SignalOUT[7]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~50_combout\ = (\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo~0_combout\ & ((\Numero_1[8]~input_o\))) # (!\B_Control|Show_Foo~0_combout\ & (\B_ADDER|FA8|ResultBit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_Control|Show_Foo~0_combout\,
	datac => \B_ADDER|FA8|ResultBit~0_combout\,
	datad => \Numero_1[8]~input_o\,
	combout => \B_SelectorG|SignalOUT[7]~50_combout\);

-- Location: LCCOMB_X32_Y39_N2
\B_SelectorG|SignalOUT[7]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~52_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[7]~50_combout\) # ((\B_SelectorG|SignalOUT[7]~51_combout\ & !\B_SelectorG|SignalOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo[0]~1_combout\,
	datab => \B_SelectorG|SignalOUT[7]~51_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[7]~50_combout\,
	combout => \B_SelectorG|SignalOUT[7]~52_combout\);

-- Location: LCCOMB_X32_Y39_N26
\B_SelectorG|SignalOUT[7]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[7]~55_combout\ = (\B_SelectorG|SignalOUT[7]~53_combout\) # ((\B_SelectorG|SignalOUT[7]~52_combout\) # ((\B_SelectorG|SignalOUT[7]~54_combout\ & \B_SelectorG|SignalOUT~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[7]~54_combout\,
	datab => \B_SelectorG|SignalOUT[7]~53_combout\,
	datac => \B_SelectorG|SignalOUT~6_combout\,
	datad => \B_SelectorG|SignalOUT[7]~52_combout\,
	combout => \B_SelectorG|SignalOUT[7]~55_combout\);

-- Location: FF_X32_Y39_N27
\B_R_Resultado|FF7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[7]~55_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF7~q\);

-- Location: LCCOMB_X30_Y39_N24
\B_SelectorG|SignalOUT~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~62_combout\ = (\Numero_2[8]~input_o\ & (\B_SelectorG|SignalOUT~6_combout\ & \Numero_1[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[8]~input_o\,
	datab => \B_SelectorG|SignalOUT~6_combout\,
	datad => \Numero_1[8]~input_o\,
	combout => \B_SelectorG|SignalOUT~62_combout\);

-- Location: LCCOMB_X27_Y40_N4
\B_SelectorG|SignalOUT~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~64_combout\ = (\Operacion[2]~input_o\ & (((!\Operacion[3]~input_o\)))) # (!\Operacion[2]~input_o\ & ((\Operacion[0]~input_o\) # ((\Operacion[1]~input_o\ & !\Operacion[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT~64_combout\);

-- Location: LCCOMB_X27_Y39_N12
\B_SelectorG|SignalOUT[14]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~63_combout\ = (\Operacion[3]~input_o\ & (!\Operacion[1]~input_o\ & (\Operacion[0]~input_o\ & !\Operacion[2]~input_o\))) # (!\Operacion[3]~input_o\ & (\Operacion[1]~input_o\ & (!\Operacion[0]~input_o\ & \Operacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT[14]~63_combout\);

-- Location: LCCOMB_X31_Y39_N4
\B_SelectorG|SignalOUT[8]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~65_combout\ = (\Numero_2[9]~input_o\ & ((\B_SelectorG|SignalOUT[14]~63_combout\) # ((!\B_SelectorG|SignalOUT~64_combout\ & !\Numero_2[8]~input_o\)))) # (!\Numero_2[9]~input_o\ & (!\B_SelectorG|SignalOUT~64_combout\ & 
-- (!\Numero_2[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datab => \B_SelectorG|SignalOUT~64_combout\,
	datac => \Numero_2[8]~input_o\,
	datad => \B_SelectorG|SignalOUT[14]~63_combout\,
	combout => \B_SelectorG|SignalOUT[8]~65_combout\);

-- Location: LCCOMB_X30_Y39_N10
\B_SelectorG|SignalOUT[8]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~60_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro9~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_2[8]~input_o\) # ((\Numero_1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[8]~input_o\,
	datab => \Numero_1[8]~input_o\,
	datac => \B_Control|Show_Foo\(2),
	datad => \B_registroAQE|Registro9~q\,
	combout => \B_SelectorG|SignalOUT[8]~60_combout\);

-- Location: LCCOMB_X27_Y40_N28
\B_SelectorG|SignalOUT[8]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~56_combout\ = (\Operacion[1]~input_o\ & ((\Operacion[3]~input_o\ & (\Operacion[0]~input_o\ & !\Operacion[2]~input_o\)) # (!\Operacion[3]~input_o\ & (!\Operacion[0]~input_o\ & \Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT[8]~56_combout\);

-- Location: LCCOMB_X27_Y40_N10
\B_SelectorG|SignalOUT~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~58_combout\ = (\Operacion[3]~input_o\ & (!\Operacion[2]~input_o\ & ((\Operacion[0]~input_o\) # (!\Operacion[1]~input_o\)))) # (!\Operacion[3]~input_o\ & (\Operacion[2]~input_o\ & ((\Operacion[1]~input_o\) # 
-- (\Operacion[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT~58_combout\);

-- Location: LCCOMB_X31_Y39_N22
\B_SelectorG|SignalOUT[8]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~57_combout\ = \B_Control|Restar~1_combout\ $ (\B_SelectorMP|SignalOUT~8_combout\ $ (\Numero_2[8]~input_o\ $ (\B_ADDER|FA8|SCarry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \B_SelectorMP|SignalOUT~8_combout\,
	datac => \Numero_2[8]~input_o\,
	datad => \B_ADDER|FA8|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[8]~57_combout\);

-- Location: LCCOMB_X31_Y39_N20
\B_SelectorG|SignalOUT[8]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~59_combout\ = (\B_SelectorG|SignalOUT[8]~56_combout\ & ((\Numero_1[9]~input_o\) # ((!\B_SelectorG|SignalOUT~58_combout\ & \B_SelectorG|SignalOUT[8]~57_combout\)))) # (!\B_SelectorG|SignalOUT[8]~56_combout\ & 
-- (!\B_SelectorG|SignalOUT~58_combout\ & (\B_SelectorG|SignalOUT[8]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[8]~56_combout\,
	datab => \B_SelectorG|SignalOUT~58_combout\,
	datac => \B_SelectorG|SignalOUT[8]~57_combout\,
	datad => \Numero_1[9]~input_o\,
	combout => \B_SelectorG|SignalOUT[8]~59_combout\);

-- Location: LCCOMB_X31_Y39_N2
\B_SelectorG|SignalOUT[8]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~61_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[8]~59_combout\) # ((\B_SelectorG|SignalOUT[8]~60_combout\ & !\B_SelectorG|SignalOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[8]~60_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[8]~59_combout\,
	combout => \B_SelectorG|SignalOUT[8]~61_combout\);

-- Location: LCCOMB_X31_Y39_N8
\B_SelectorG|SignalOUT[8]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[8]~66_combout\ = (\B_SelectorG|SignalOUT~62_combout\) # ((\B_SelectorG|SignalOUT[8]~61_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[8]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_SelectorG|SignalOUT~62_combout\,
	datac => \B_SelectorG|SignalOUT[8]~65_combout\,
	datad => \B_SelectorG|SignalOUT[8]~61_combout\,
	combout => \B_SelectorG|SignalOUT[8]~66_combout\);

-- Location: FF_X31_Y39_N9
\B_R_Resultado|FF8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[8]~66_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF8~q\);

-- Location: LCCOMB_X31_Y39_N24
\B_SelectorG|SignalOUT[9]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~72_combout\ = (\Numero_2[9]~input_o\ & (((\Numero_2[10]~input_o\ & \B_SelectorG|SignalOUT[14]~63_combout\)))) # (!\Numero_2[9]~input_o\ & (((\Numero_2[10]~input_o\ & \B_SelectorG|SignalOUT[14]~63_combout\)) # 
-- (!\B_SelectorG|SignalOUT~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datab => \B_SelectorG|SignalOUT~64_combout\,
	datac => \Numero_2[10]~input_o\,
	datad => \B_SelectorG|SignalOUT[14]~63_combout\,
	combout => \B_SelectorG|SignalOUT[9]~72_combout\);

-- Location: LCCOMB_X31_Y39_N14
\B_SelectorG|SignalOUT~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~71_combout\ = (\Numero_2[9]~input_o\ & (\B_SelectorG|SignalOUT~6_combout\ & \Numero_1[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datac => \B_SelectorG|SignalOUT~6_combout\,
	datad => \Numero_1[9]~input_o\,
	combout => \B_SelectorG|SignalOUT~71_combout\);

-- Location: LCCOMB_X31_Y39_N26
\B_SelectorG|SignalOUT[9]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~69_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro10~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_2[9]~input_o\) # ((\Numero_1[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datab => \B_Control|Show_Foo\(2),
	datac => \Numero_1[9]~input_o\,
	datad => \B_registroAQE|Registro10~q\,
	combout => \B_SelectorG|SignalOUT[9]~69_combout\);

-- Location: LCCOMB_X31_Y39_N18
\B_SelectorG|SignalOUT[9]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~67_combout\ = \Numero_2[9]~input_o\ $ (\B_SelectorMP|SignalOUT~9_combout\ $ (\B_ADDER|FA9|SCarry~0_combout\ $ (\B_Control|Restar~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[9]~input_o\,
	datab => \B_SelectorMP|SignalOUT~9_combout\,
	datac => \B_ADDER|FA9|SCarry~0_combout\,
	datad => \B_Control|Restar~1_combout\,
	combout => \B_SelectorG|SignalOUT[9]~67_combout\);

-- Location: LCCOMB_X31_Y39_N16
\B_SelectorG|SignalOUT[9]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~68_combout\ = (\B_SelectorG|SignalOUT~58_combout\ & (\Numero_1[10]~input_o\ & (\B_SelectorG|SignalOUT[8]~56_combout\))) # (!\B_SelectorG|SignalOUT~58_combout\ & ((\B_SelectorG|SignalOUT[9]~67_combout\) # ((\Numero_1[10]~input_o\ 
-- & \B_SelectorG|SignalOUT[8]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~58_combout\,
	datab => \Numero_1[10]~input_o\,
	datac => \B_SelectorG|SignalOUT[8]~56_combout\,
	datad => \B_SelectorG|SignalOUT[9]~67_combout\,
	combout => \B_SelectorG|SignalOUT[9]~68_combout\);

-- Location: LCCOMB_X31_Y39_N28
\B_SelectorG|SignalOUT[9]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~70_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[9]~68_combout\) # ((\B_SelectorG|SignalOUT[9]~69_combout\ & !\B_SelectorG|SignalOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[9]~69_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[9]~68_combout\,
	combout => \B_SelectorG|SignalOUT[9]~70_combout\);

-- Location: LCCOMB_X31_Y39_N6
\B_SelectorG|SignalOUT[9]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[9]~73_combout\ = (\B_SelectorG|SignalOUT~71_combout\) # ((\B_SelectorG|SignalOUT[9]~70_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[9]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_SelectorG|SignalOUT[9]~72_combout\,
	datac => \B_SelectorG|SignalOUT~71_combout\,
	datad => \B_SelectorG|SignalOUT[9]~70_combout\,
	combout => \B_SelectorG|SignalOUT[9]~73_combout\);

-- Location: FF_X31_Y39_N7
\B_R_Resultado|FF9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[9]~73_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF9~q\);

-- Location: LCCOMB_X28_Y39_N6
\B_SelectorG|SignalOUT[10]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~79_combout\ = (\B_SelectorG|SignalOUT[14]~63_combout\ & ((\Numero_2[11]~input_o\) # ((!\B_SelectorG|SignalOUT~64_combout\ & !\Numero_2[10]~input_o\)))) # (!\B_SelectorG|SignalOUT[14]~63_combout\ & 
-- (!\B_SelectorG|SignalOUT~64_combout\ & ((!\Numero_2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[14]~63_combout\,
	datab => \B_SelectorG|SignalOUT~64_combout\,
	datac => \Numero_2[11]~input_o\,
	datad => \Numero_2[10]~input_o\,
	combout => \B_SelectorG|SignalOUT[10]~79_combout\);

-- Location: LCCOMB_X30_Y39_N4
\B_SelectorG|SignalOUT~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~78_combout\ = (\Numero_2[10]~input_o\ & (\B_SelectorG|SignalOUT~6_combout\ & \Numero_1[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[10]~input_o\,
	datac => \B_SelectorG|SignalOUT~6_combout\,
	datad => \Numero_1[10]~input_o\,
	combout => \B_SelectorG|SignalOUT~78_combout\);

-- Location: LCCOMB_X30_Y39_N16
\B_SelectorG|SignalOUT[10]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~76_combout\ = (\B_Control|Show_Foo\(2) & (\B_registroAQE|Registro11~q\)) # (!\B_Control|Show_Foo\(2) & (((\Numero_1[10]~input_o\) # (\Numero_2[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro11~q\,
	datab => \Numero_1[10]~input_o\,
	datac => \B_Control|Show_Foo\(2),
	datad => \Numero_2[10]~input_o\,
	combout => \B_SelectorG|SignalOUT[10]~76_combout\);

-- Location: LCCOMB_X30_Y39_N12
\B_SelectorG|SignalOUT[10]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~74_combout\ = \B_Control|Restar~1_combout\ $ (\B_SelectorMP|SignalOUT~10_combout\ $ (\B_ADDER|FA10|SCarry~0_combout\ $ (\Numero_2[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \B_SelectorMP|SignalOUT~10_combout\,
	datac => \B_ADDER|FA10|SCarry~0_combout\,
	datad => \Numero_2[10]~input_o\,
	combout => \B_SelectorG|SignalOUT[10]~74_combout\);

-- Location: LCCOMB_X30_Y39_N18
\B_SelectorG|SignalOUT[10]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~75_combout\ = (\B_SelectorG|SignalOUT[8]~56_combout\ & ((\Numero_1[11]~input_o\) # ((!\B_SelectorG|SignalOUT~58_combout\ & \B_SelectorG|SignalOUT[10]~74_combout\)))) # (!\B_SelectorG|SignalOUT[8]~56_combout\ & 
-- (!\B_SelectorG|SignalOUT~58_combout\ & ((\B_SelectorG|SignalOUT[10]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[8]~56_combout\,
	datab => \B_SelectorG|SignalOUT~58_combout\,
	datac => \Numero_1[11]~input_o\,
	datad => \B_SelectorG|SignalOUT[10]~74_combout\,
	combout => \B_SelectorG|SignalOUT[10]~75_combout\);

-- Location: LCCOMB_X30_Y39_N6
\B_SelectorG|SignalOUT[10]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~77_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[10]~75_combout\) # ((\B_SelectorG|SignalOUT[10]~76_combout\ & !\B_SelectorG|SignalOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo[0]~1_combout\,
	datab => \B_SelectorG|SignalOUT[10]~76_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[10]~75_combout\,
	combout => \B_SelectorG|SignalOUT[10]~77_combout\);

-- Location: LCCOMB_X30_Y39_N22
\B_SelectorG|SignalOUT[10]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[10]~80_combout\ = (\B_SelectorG|SignalOUT~78_combout\) # ((\B_SelectorG|SignalOUT[10]~77_combout\) # ((\B_SelectorG|SignalOUT[10]~79_combout\ & !\B_SelectorG|SignalOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[10]~79_combout\,
	datab => \B_SelectorG|SignalOUT~78_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[10]~77_combout\,
	combout => \B_SelectorG|SignalOUT[10]~80_combout\);

-- Location: FF_X30_Y39_N23
\B_R_Resultado|FF10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[10]~80_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF10~q\);

-- Location: LCCOMB_X30_Y39_N28
\B_SelectorG|SignalOUT[11]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~84_combout\ = (\Numero_1[11]~input_o\) # (\Numero_2[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[11]~input_o\,
	datac => \Numero_2[11]~input_o\,
	combout => \B_SelectorG|SignalOUT[11]~84_combout\);

-- Location: LCCOMB_X31_Y39_N30
\B_SelectorG|SignalOUT[11]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~85_combout\ = (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo\(2) & (\B_registroAQE|Registro12~q\)) # (!\B_Control|Show_Foo\(2) & ((\B_SelectorG|SignalOUT[11]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_registroAQE|Registro12~q\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[11]~84_combout\,
	combout => \B_SelectorG|SignalOUT[11]~85_combout\);

-- Location: LCCOMB_X30_Y39_N2
\B_SelectorG|SignalOUT~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~81_combout\ = (\Numero_1[11]~input_o\ & \Numero_2[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_1[11]~input_o\,
	datac => \Numero_2[11]~input_o\,
	combout => \B_SelectorG|SignalOUT~81_combout\);

-- Location: LCCOMB_X28_Y39_N24
\B_SelectorG|SignalOUT[11]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~82_combout\ = (\B_SelectorG|SignalOUT[14]~63_combout\ & ((\Numero_2[12]~input_o\) # ((!\B_SelectorG|SignalOUT~64_combout\ & !\Numero_2[11]~input_o\)))) # (!\B_SelectorG|SignalOUT[14]~63_combout\ & 
-- (!\B_SelectorG|SignalOUT~64_combout\ & (!\Numero_2[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[14]~63_combout\,
	datab => \B_SelectorG|SignalOUT~64_combout\,
	datac => \Numero_2[11]~input_o\,
	datad => \Numero_2[12]~input_o\,
	combout => \B_SelectorG|SignalOUT[11]~82_combout\);

-- Location: LCCOMB_X28_Y39_N18
\B_SelectorG|SignalOUT[11]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~83_combout\ = (\B_SelectorG|SignalOUT~81_combout\ & ((\B_SelectorG|SignalOUT~6_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[11]~82_combout\)))) # (!\B_SelectorG|SignalOUT~81_combout\ & 
-- (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[11]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~81_combout\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \B_SelectorG|SignalOUT~6_combout\,
	datad => \B_SelectorG|SignalOUT[11]~82_combout\,
	combout => \B_SelectorG|SignalOUT[11]~83_combout\);

-- Location: LCCOMB_X31_Y39_N12
\B_SelectorG|SignalOUT[11]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~86_combout\ = \B_Control|Restar~1_combout\ $ (\B_SelectorMP|SignalOUT~11_combout\ $ (\Numero_2[11]~input_o\ $ (\B_ADDER|FA11|SCarry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Restar~1_combout\,
	datab => \B_SelectorMP|SignalOUT~11_combout\,
	datac => \Numero_2[11]~input_o\,
	datad => \B_ADDER|FA11|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[11]~86_combout\);

-- Location: LCCOMB_X31_Y39_N10
\B_SelectorG|SignalOUT[11]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~87_combout\ = (\B_SelectorG|SignalOUT[8]~56_combout\ & ((\Numero_1[12]~input_o\) # ((!\B_SelectorG|SignalOUT~58_combout\ & \B_SelectorG|SignalOUT[11]~86_combout\)))) # (!\B_SelectorG|SignalOUT[8]~56_combout\ & 
-- (!\B_SelectorG|SignalOUT~58_combout\ & ((\B_SelectorG|SignalOUT[11]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[8]~56_combout\,
	datab => \B_SelectorG|SignalOUT~58_combout\,
	datac => \Numero_1[12]~input_o\,
	datad => \B_SelectorG|SignalOUT[11]~86_combout\,
	combout => \B_SelectorG|SignalOUT[11]~87_combout\);

-- Location: LCCOMB_X31_Y39_N0
\B_SelectorG|SignalOUT[11]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[11]~88_combout\ = (\B_SelectorG|SignalOUT[11]~83_combout\) # ((!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[11]~85_combout\) # (\B_SelectorG|SignalOUT[11]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[11]~85_combout\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT[11]~83_combout\,
	datad => \B_SelectorG|SignalOUT[11]~87_combout\,
	combout => \B_SelectorG|SignalOUT[11]~88_combout\);

-- Location: FF_X31_Y39_N1
\B_R_Resultado|FF11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[11]~88_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF11~q\);

-- Location: LCCOMB_X32_Y40_N28
\B_SelectorG|SignalOUT[12]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~92_combout\ = (\Numero_2[12]~input_o\) # (\Numero_1[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[12]~input_o\,
	datad => \Numero_1[12]~input_o\,
	combout => \B_SelectorG|SignalOUT[12]~92_combout\);

-- Location: LCCOMB_X32_Y40_N26
\B_SelectorG|SignalOUT[12]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~93_combout\ = (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo\(2) & ((\B_registroAQE|Registro13~q\))) # (!\B_Control|Show_Foo\(2) & (\B_SelectorG|SignalOUT[12]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_SelectorG|SignalOUT[12]~92_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_registroAQE|Registro13~q\,
	combout => \B_SelectorG|SignalOUT[12]~93_combout\);

-- Location: LCCOMB_X32_Y40_N16
\B_SelectorG|SignalOUT[12]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~90_combout\ = (\B_SelectorG|SignalOUT~64_combout\ & (((\B_SelectorG|SignalOUT[14]~63_combout\ & \Numero_2[13]~input_o\)))) # (!\B_SelectorG|SignalOUT~64_combout\ & (((\B_SelectorG|SignalOUT[14]~63_combout\ & 
-- \Numero_2[13]~input_o\)) # (!\Numero_2[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~64_combout\,
	datab => \Numero_2[12]~input_o\,
	datac => \B_SelectorG|SignalOUT[14]~63_combout\,
	datad => \Numero_2[13]~input_o\,
	combout => \B_SelectorG|SignalOUT[12]~90_combout\);

-- Location: LCCOMB_X32_Y40_N18
\B_SelectorG|SignalOUT~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~89_combout\ = (\Numero_2[12]~input_o\ & \Numero_1[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[12]~input_o\,
	datad => \Numero_1[12]~input_o\,
	combout => \B_SelectorG|SignalOUT~89_combout\);

-- Location: LCCOMB_X32_Y40_N2
\B_SelectorG|SignalOUT[12]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~91_combout\ = (\B_SelectorG|SignalOUT~6_combout\ & ((\B_SelectorG|SignalOUT~89_combout\) # ((\B_SelectorG|SignalOUT[12]~90_combout\ & !\B_SelectorG|SignalOUT~0_combout\)))) # (!\B_SelectorG|SignalOUT~6_combout\ & 
-- (\B_SelectorG|SignalOUT[12]~90_combout\ & (!\B_SelectorG|SignalOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~6_combout\,
	datab => \B_SelectorG|SignalOUT[12]~90_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT~89_combout\,
	combout => \B_SelectorG|SignalOUT[12]~91_combout\);

-- Location: LCCOMB_X31_Y40_N22
\B_SelectorG|SignalOUT[12]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~94_combout\ = \Numero_2[12]~input_o\ $ (\B_SelectorMP|SignalOUT~12_combout\ $ (\B_Control|Restar~1_combout\ $ (\B_ADDER|FA12|SCarry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[12]~input_o\,
	datab => \B_SelectorMP|SignalOUT~12_combout\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA12|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[12]~94_combout\);

-- Location: LCCOMB_X32_Y40_N6
\B_SelectorG|SignalOUT[12]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~95_combout\ = (\Numero_1[13]~input_o\ & ((\B_SelectorG|SignalOUT[8]~56_combout\) # ((!\B_SelectorG|SignalOUT~58_combout\ & \B_SelectorG|SignalOUT[12]~94_combout\)))) # (!\Numero_1[13]~input_o\ & 
-- (((!\B_SelectorG|SignalOUT~58_combout\ & \B_SelectorG|SignalOUT[12]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[13]~input_o\,
	datab => \B_SelectorG|SignalOUT[8]~56_combout\,
	datac => \B_SelectorG|SignalOUT~58_combout\,
	datad => \B_SelectorG|SignalOUT[12]~94_combout\,
	combout => \B_SelectorG|SignalOUT[12]~95_combout\);

-- Location: LCCOMB_X32_Y40_N0
\B_SelectorG|SignalOUT[12]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[12]~96_combout\ = (\B_SelectorG|SignalOUT[12]~91_combout\) # ((!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[12]~93_combout\) # (\B_SelectorG|SignalOUT[12]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[12]~93_combout\,
	datab => \B_SelectorG|SignalOUT[12]~91_combout\,
	datac => \B_Control|Show_Foo[0]~1_combout\,
	datad => \B_SelectorG|SignalOUT[12]~95_combout\,
	combout => \B_SelectorG|SignalOUT[12]~96_combout\);

-- Location: FF_X32_Y40_N1
\B_R_Resultado|FF12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[12]~96_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF12~q\);

-- Location: LCCOMB_X29_Y40_N10
\B_SelectorG|SignalOUT[13]~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~103_combout\ = (\Numero_2[14]~input_o\ & ((\B_SelectorG|SignalOUT[14]~63_combout\) # ((!\B_SelectorG|SignalOUT~64_combout\ & !\Numero_2[13]~input_o\)))) # (!\Numero_2[14]~input_o\ & (!\B_SelectorG|SignalOUT~64_combout\ & 
-- ((!\Numero_2[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[14]~input_o\,
	datab => \B_SelectorG|SignalOUT~64_combout\,
	datac => \B_SelectorG|SignalOUT[14]~63_combout\,
	datad => \Numero_2[13]~input_o\,
	combout => \B_SelectorG|SignalOUT[13]~103_combout\);

-- Location: LCCOMB_X32_Y40_N14
\B_SelectorG|SignalOUT~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~102_combout\ = (\Numero_2[13]~input_o\ & (\B_SelectorG|SignalOUT~6_combout\ & \Numero_1[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[13]~input_o\,
	datac => \B_SelectorG|SignalOUT~6_combout\,
	datad => \Numero_1[13]~input_o\,
	combout => \B_SelectorG|SignalOUT~102_combout\);

-- Location: LCCOMB_X28_Y40_N28
\B_SelectorG|SignalOUT[13]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~99_combout\ = (\Numero_1[14]~input_o\ & \B_SelectorG|SignalOUT[8]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[14]~input_o\,
	datac => \B_SelectorG|SignalOUT[8]~56_combout\,
	combout => \B_SelectorG|SignalOUT[13]~99_combout\);

-- Location: LCCOMB_X28_Y38_N12
\B_SelectorG|SignalOUT[13]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~97_combout\ = (\Numero_2[13]~input_o\) # (\Numero_1[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Numero_2[13]~input_o\,
	datad => \Numero_1[13]~input_o\,
	combout => \B_SelectorG|SignalOUT[13]~97_combout\);

-- Location: LCCOMB_X28_Y38_N6
\B_SelectorG|SignalOUT[13]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~98_combout\ = (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_Control|Show_Foo\(2) & ((\B_registroAQE|Registro14~q\))) # (!\B_Control|Show_Foo\(2) & (\B_SelectorG|SignalOUT[13]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[13]~97_combout\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \B_Control|Show_Foo\(2),
	datad => \B_registroAQE|Registro14~q\,
	combout => \B_SelectorG|SignalOUT[13]~98_combout\);

-- Location: LCCOMB_X29_Y40_N16
\B_SelectorSM|SignalOUT[13]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[13]~5_combout\ = \Numero_2[13]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro0~q\,
	datab => \B_Control|Restar~0_combout\,
	datac => \B_registroAQE|Registro1~q\,
	datad => \Numero_2[13]~input_o\,
	combout => \B_SelectorSM|SignalOUT[13]~5_combout\);

-- Location: LCCOMB_X32_Y40_N10
\B_SelectorG|SignalOUT[13]~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~100_combout\ = (!\B_SelectorG|SignalOUT~58_combout\ & (\B_SelectorSM|SignalOUT[13]~5_combout\ $ (\B_SelectorMP|SignalOUT~13_combout\ $ (\B_ADDER|FA13|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorSM|SignalOUT[13]~5_combout\,
	datab => \B_SelectorMP|SignalOUT~13_combout\,
	datac => \B_SelectorG|SignalOUT~58_combout\,
	datad => \B_ADDER|FA13|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[13]~100_combout\);

-- Location: LCCOMB_X32_Y40_N12
\B_SelectorG|SignalOUT[13]~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~101_combout\ = (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[13]~99_combout\) # ((\B_SelectorG|SignalOUT[13]~98_combout\) # (\B_SelectorG|SignalOUT[13]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[13]~99_combout\,
	datab => \B_SelectorG|SignalOUT[13]~98_combout\,
	datac => \B_Control|Show_Foo[0]~1_combout\,
	datad => \B_SelectorG|SignalOUT[13]~100_combout\,
	combout => \B_SelectorG|SignalOUT[13]~101_combout\);

-- Location: LCCOMB_X32_Y40_N30
\B_SelectorG|SignalOUT[13]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[13]~104_combout\ = (\B_SelectorG|SignalOUT~102_combout\) # ((\B_SelectorG|SignalOUT[13]~101_combout\) # ((\B_SelectorG|SignalOUT[13]~103_combout\ & !\B_SelectorG|SignalOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[13]~103_combout\,
	datab => \B_SelectorG|SignalOUT~102_combout\,
	datac => \B_SelectorG|SignalOUT~0_combout\,
	datad => \B_SelectorG|SignalOUT[13]~101_combout\,
	combout => \B_SelectorG|SignalOUT[13]~104_combout\);

-- Location: FF_X32_Y40_N31
\B_R_Resultado|FF13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[13]~104_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF13~q\);

-- Location: LCCOMB_X28_Y40_N30
\B_SelectorG|SignalOUT[14]~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~111_combout\ = (\Numero_2[14]~input_o\ & \Numero_1[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[14]~input_o\,
	datad => \Numero_1[14]~input_o\,
	combout => \B_SelectorG|SignalOUT[14]~111_combout\);

-- Location: LCCOMB_X28_Y40_N16
\B_SelectorG|SignalOUT~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~112_combout\ = (\Operacion[2]~input_o\ & (!\Operacion[3]~input_o\ & ((\Operacion[0]~input_o\) # (!\Operacion[1]~input_o\)))) # (!\Operacion[2]~input_o\ & ((\Operacion[0]~input_o\) # (\Operacion[1]~input_o\ $ 
-- (\Operacion[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[0]~input_o\,
	datac => \Operacion[2]~input_o\,
	datad => \Operacion[3]~input_o\,
	combout => \B_SelectorG|SignalOUT~112_combout\);

-- Location: LCCOMB_X28_Y40_N20
\B_SelectorG|SignalOUT[14]~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~110_combout\ = (\Operacion[1]~input_o\ & (!\Operacion[2]~input_o\ & ((\Operacion[0]~input_o\) # (!\Operacion[3]~input_o\)))) # (!\Operacion[1]~input_o\ & (!\Operacion[3]~input_o\ & (\Operacion[0]~input_o\ $ 
-- (\Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[0]~input_o\,
	datac => \Operacion[2]~input_o\,
	datad => \Operacion[3]~input_o\,
	combout => \B_SelectorG|SignalOUT[14]~110_combout\);

-- Location: LCCOMB_X28_Y40_N2
\B_SelectorG|SignalOUT[14]~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~113_combout\ = (\B_SelectorG|SignalOUT[14]~111_combout\ & (((\Numero_1[15]~input_o\ & \B_SelectorG|SignalOUT[14]~110_combout\)) # (!\B_SelectorG|SignalOUT~112_combout\))) # (!\B_SelectorG|SignalOUT[14]~111_combout\ & 
-- (((\Numero_1[15]~input_o\ & \B_SelectorG|SignalOUT[14]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[14]~111_combout\,
	datab => \B_SelectorG|SignalOUT~112_combout\,
	datac => \Numero_1[15]~input_o\,
	datad => \B_SelectorG|SignalOUT[14]~110_combout\,
	combout => \B_SelectorG|SignalOUT[14]~113_combout\);

-- Location: LCCOMB_X28_Y40_N0
\B_SelectorG|SignalOUT[14]~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~106_combout\ = (\B_Control|Show_Foo\(2) & (((\B_registroAQE|Registro15~q\)))) # (!\B_Control|Show_Foo\(2) & ((\Numero_1[14]~input_o\) # ((\Numero_2[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[14]~input_o\,
	datab => \B_Control|Show_Foo\(2),
	datac => \B_registroAQE|Registro15~q\,
	datad => \Numero_2[14]~input_o\,
	combout => \B_SelectorG|SignalOUT[14]~106_combout\);

-- Location: LCCOMB_X28_Y40_N26
\B_SelectorG|SignalOUT[14]~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~105_combout\ = (\Numero_2[14]~input_o\ & (\B_SelectorG|SignalOUT[14]~63_combout\ & ((\Numero_2[15]~input_o\)))) # (!\Numero_2[14]~input_o\ & (((\B_SelectorG|SignalOUT[14]~63_combout\ & \Numero_2[15]~input_o\)) # 
-- (!\B_SelectorG|SignalOUT~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[14]~input_o\,
	datab => \B_SelectorG|SignalOUT[14]~63_combout\,
	datac => \B_SelectorG|SignalOUT~64_combout\,
	datad => \Numero_2[15]~input_o\,
	combout => \B_SelectorG|SignalOUT[14]~105_combout\);

-- Location: LCCOMB_X28_Y40_N14
\B_SelectorG|SignalOUT[14]~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~107_combout\ = (!\B_SelectorG|SignalOUT~0_combout\ & ((\B_SelectorG|SignalOUT[14]~105_combout\) # ((\B_SelectorG|SignalOUT[14]~106_combout\ & !\B_Control|Show_Foo[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT~0_combout\,
	datab => \B_SelectorG|SignalOUT[14]~106_combout\,
	datac => \B_SelectorG|SignalOUT[14]~105_combout\,
	datad => \B_Control|Show_Foo[0]~1_combout\,
	combout => \B_SelectorG|SignalOUT[14]~107_combout\);

-- Location: LCCOMB_X29_Y40_N4
\B_SelectorSM|SignalOUT[14]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[14]~6_combout\ = \Numero_2[14]~input_o\ $ ((((\B_registroAQE|Registro1~q\ & !\B_registroAQE|Registro0~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[14]~input_o\,
	datab => \B_registroAQE|Registro1~q\,
	datac => \B_registroAQE|Registro0~q\,
	datad => \B_Control|Restar~0_combout\,
	combout => \B_SelectorSM|SignalOUT[14]~6_combout\);

-- Location: LCCOMB_X27_Y40_N30
\B_SelectorG|SignalOUT~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT~108_combout\ = (!\Operacion[3]~input_o\ & (\Operacion[2]~input_o\ $ (((\Operacion[1]~input_o\) # (\Operacion[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \Operacion[3]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_SelectorG|SignalOUT~108_combout\);

-- Location: LCCOMB_X28_Y40_N6
\B_SelectorG|SignalOUT[14]~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~109_combout\ = (\B_SelectorG|SignalOUT~108_combout\ & (\B_SelectorSM|SignalOUT[14]~6_combout\ $ (\B_SelectorMP|SignalOUT~14_combout\ $ (\B_ADDER|FA14|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorSM|SignalOUT[14]~6_combout\,
	datab => \B_SelectorG|SignalOUT~108_combout\,
	datac => \B_SelectorMP|SignalOUT~14_combout\,
	datad => \B_ADDER|FA14|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[14]~109_combout\);

-- Location: LCCOMB_X28_Y40_N4
\B_SelectorG|SignalOUT[14]~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[14]~114_combout\ = (\B_SelectorG|SignalOUT[14]~107_combout\) # ((\B_SelectorG|SignalOUT[14]~109_combout\) # ((\B_Control|Show_Foo\(2) & \B_SelectorG|SignalOUT[14]~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_SelectorG|SignalOUT[14]~113_combout\,
	datac => \B_SelectorG|SignalOUT[14]~107_combout\,
	datad => \B_SelectorG|SignalOUT[14]~109_combout\,
	combout => \B_SelectorG|SignalOUT[14]~114_combout\);

-- Location: FF_X28_Y40_N5
\B_R_Resultado|FF14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[14]~114_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF14~q\);

-- Location: LCCOMB_X28_Y40_N8
\B_SelectorG|SignalOUT[15]~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~115_combout\ = (!\B_SelectorG|SignalOUT~112_combout\ & (\Numero_1[15]~input_o\ & \Numero_2[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B_SelectorG|SignalOUT~112_combout\,
	datac => \Numero_1[15]~input_o\,
	datad => \Numero_2[15]~input_o\,
	combout => \B_SelectorG|SignalOUT[15]~115_combout\);

-- Location: LCCOMB_X29_Y40_N2
\B_SelectorG|SignalOUT[15]~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~116_combout\ = (\B_Control|Show_Foo\(2) & ((\B_SelectorG|SignalOUT[15]~115_combout\) # ((\B_SelectorG|SignalOUT[14]~110_combout\ & \Numero_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[15]~115_combout\,
	datab => \B_SelectorG|SignalOUT[14]~110_combout\,
	datac => \B_Control|Show_Foo\(2),
	datad => \Numero_1[0]~input_o\,
	combout => \B_SelectorG|SignalOUT[15]~116_combout\);

-- Location: LCCOMB_X28_Y40_N24
\B_SelectorG|SignalOUT[15]~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~118_combout\ = (\B_Control|Show_Foo\(2) & (\B_registroAQE|Registro16~q\)) # (!\B_Control|Show_Foo\(2) & (((\Numero_1[15]~input_o\) # (\Numero_2[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|Show_Foo\(2),
	datab => \B_registroAQE|Registro16~q\,
	datac => \Numero_1[15]~input_o\,
	datad => \Numero_2[15]~input_o\,
	combout => \B_SelectorG|SignalOUT[15]~118_combout\);

-- Location: LCCOMB_X29_Y40_N14
\B_SelectorG|SignalOUT[15]~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~119_combout\ = (\Numero_2[15]~input_o\ & (!\B_Control|Show_Foo[0]~1_combout\ & ((\B_SelectorG|SignalOUT[15]~118_combout\)))) # (!\Numero_2[15]~input_o\ & (((!\B_Control|Show_Foo[0]~1_combout\ & 
-- \B_SelectorG|SignalOUT[15]~118_combout\)) # (!\B_SelectorG|SignalOUT~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_2[15]~input_o\,
	datab => \B_Control|Show_Foo[0]~1_combout\,
	datac => \B_SelectorG|SignalOUT~64_combout\,
	datad => \B_SelectorG|SignalOUT[15]~118_combout\,
	combout => \B_SelectorG|SignalOUT[15]~119_combout\);

-- Location: LCCOMB_X29_Y40_N20
\B_SelectorSM|SignalOUT[15]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorSM|SignalOUT[15]~7_combout\ = \Numero_2[15]~input_o\ $ ((((!\B_registroAQE|Registro0~q\ & \B_registroAQE|Registro1~q\)) # (!\B_Control|Restar~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_registroAQE|Registro0~q\,
	datab => \B_Control|Restar~0_combout\,
	datac => \B_registroAQE|Registro1~q\,
	datad => \Numero_2[15]~input_o\,
	combout => \B_SelectorSM|SignalOUT[15]~7_combout\);

-- Location: LCCOMB_X31_Y40_N14
\B_SelectorG|SignalOUT[15]~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~117_combout\ = (\B_SelectorG|SignalOUT~108_combout\ & (\B_SelectorMP|SignalOUT~15_combout\ $ (\B_SelectorSM|SignalOUT[15]~7_combout\ $ (\B_ADDER|FA15|SCarry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~15_combout\,
	datab => \B_SelectorSM|SignalOUT[15]~7_combout\,
	datac => \B_SelectorG|SignalOUT~108_combout\,
	datad => \B_ADDER|FA15|SCarry~0_combout\,
	combout => \B_SelectorG|SignalOUT[15]~117_combout\);

-- Location: LCCOMB_X32_Y40_N4
\B_SelectorG|SignalOUT[15]~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_SelectorG|SignalOUT[15]~120_combout\ = (\B_SelectorG|SignalOUT[15]~116_combout\) # ((\B_SelectorG|SignalOUT[15]~117_combout\) # ((!\B_SelectorG|SignalOUT~0_combout\ & \B_SelectorG|SignalOUT[15]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorG|SignalOUT[15]~116_combout\,
	datab => \B_SelectorG|SignalOUT~0_combout\,
	datac => \B_SelectorG|SignalOUT[15]~119_combout\,
	datad => \B_SelectorG|SignalOUT[15]~117_combout\,
	combout => \B_SelectorG|SignalOUT[15]~120_combout\);

-- Location: FF_X32_Y40_N5
\B_R_Resultado|FF15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_SelectorG|SignalOUT[15]~120_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Control|ALT_INV_D[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_R_Resultado|FF15~q\);

-- Location: LCCOMB_X27_Y39_N18
\B_Control|D[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D[0]~1_combout\ = (\Operacion[3]~input_o\ & (((\Operacion[2]~input_o\)))) # (!\Operacion[3]~input_o\ & (!\Operacion[1]~input_o\ & (!\Operacion[0]~input_o\ & !\Operacion[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[1]~input_o\,
	datac => \Operacion[0]~input_o\,
	datad => \Operacion[2]~input_o\,
	combout => \B_Control|D[0]~1_combout\);

-- Location: LCCOMB_X27_Y39_N28
\B_Control|D[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Control|D\(0) = (\B_Control|D[0]~0_combout\ & (!\B_Control|D[0]~1_combout\ & ((\B_Control|FF0~q\) # (!\Habilitar~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Habilitar~input_o\,
	datab => \B_Control|D[0]~0_combout\,
	datac => \B_Control|FF0~q\,
	datad => \B_Control|D[0]~1_combout\,
	combout => \B_Control|D\(0));

-- Location: FF_X27_Y39_N29
\B_Control|FF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Control|D\(0),
	clrn => \Restablecer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Control|FF0~q\);

-- Location: LCCOMB_X32_Y40_N8
\B_Banderas|SResultado_Z~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_Z~3_combout\ = (\B_R_Resultado|FF13~q\) # ((\B_R_Resultado|FF15~q\) # ((\B_R_Resultado|FF14~q\) # (\B_R_Resultado|FF12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_R_Resultado|FF13~q\,
	datab => \B_R_Resultado|FF15~q\,
	datac => \B_R_Resultado|FF14~q\,
	datad => \B_R_Resultado|FF12~q\,
	combout => \B_Banderas|SResultado_Z~3_combout\);

-- Location: LCCOMB_X27_Y40_N8
\B_Banderas|SResultado_Z~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_Z~0_combout\ = (\B_R_Resultado|FF2~q\) # ((\B_R_Resultado|FF3~q\) # ((\B_R_Resultado|FF1~q\) # (\B_R_Resultado|FF0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_R_Resultado|FF2~q\,
	datab => \B_R_Resultado|FF3~q\,
	datac => \B_R_Resultado|FF1~q\,
	datad => \B_R_Resultado|FF0~q\,
	combout => \B_Banderas|SResultado_Z~0_combout\);

-- Location: LCCOMB_X27_Y40_N26
\B_Banderas|SResultado_Z~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_Z~1_combout\ = (\B_R_Resultado|FF7~q\) # ((\B_R_Resultado|FF4~q\) # ((\B_R_Resultado|FF5~q\) # (\B_R_Resultado|FF6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_R_Resultado|FF7~q\,
	datab => \B_R_Resultado|FF4~q\,
	datac => \B_R_Resultado|FF5~q\,
	datad => \B_R_Resultado|FF6~q\,
	combout => \B_Banderas|SResultado_Z~1_combout\);

-- Location: LCCOMB_X27_Y40_N16
\B_Banderas|SResultado_Z~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_Z~2_combout\ = (\B_R_Resultado|FF9~q\) # ((\B_R_Resultado|FF10~q\) # ((\B_R_Resultado|FF8~q\) # (\B_R_Resultado|FF11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_R_Resultado|FF9~q\,
	datab => \B_R_Resultado|FF10~q\,
	datac => \B_R_Resultado|FF8~q\,
	datad => \B_R_Resultado|FF11~q\,
	combout => \B_Banderas|SResultado_Z~2_combout\);

-- Location: LCCOMB_X27_Y40_N18
\B_Banderas|SResultado_Z~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_Z~4_combout\ = (!\B_Banderas|SResultado_Z~3_combout\ & (!\B_Banderas|SResultado_Z~0_combout\ & (!\B_Banderas|SResultado_Z~1_combout\ & !\B_Banderas|SResultado_Z~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Banderas|SResultado_Z~3_combout\,
	datab => \B_Banderas|SResultado_Z~0_combout\,
	datac => \B_Banderas|SResultado_Z~1_combout\,
	datad => \B_Banderas|SResultado_Z~2_combout\,
	combout => \B_Banderas|SResultado_Z~4_combout\);

-- Location: LCCOMB_X30_Y40_N26
\B_Banderas|FF4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|FF4~0_combout\ = !\B_Control|D[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B_Control|D[0]~0_combout\,
	combout => \B_Banderas|FF4~0_combout\);

-- Location: FF_X30_Y40_N27
\B_Banderas|FF4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Banderas|FF4~0_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Banderas|FF4~q\);

-- Location: FF_X27_Y40_N19
\B_Banderas|FF0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Banderas|SResultado_Z~4_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Banderas|FF4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Banderas|FF0~q\);

-- Location: LCCOMB_X30_Y40_N16
\B_Banderas|SResultado_C\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_C~combout\ = (\Operacion[0]~input_o\ & (!\Operacion[2]~input_o\ & (\B_Control|B_SeleccionOpera|MULT~0_combout\ & \B_ADDER|FA16|SCarry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[0]~input_o\,
	datab => \Operacion[2]~input_o\,
	datac => \B_Control|B_SeleccionOpera|MULT~0_combout\,
	datad => \B_ADDER|FA16|SCarry~0_combout\,
	combout => \B_Banderas|SResultado_C~combout\);

-- Location: FF_X30_Y40_N17
\B_Banderas|FF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Banderas|SResultado_C~combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Banderas|FF4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Banderas|FF2~q\);

-- Location: LCCOMB_X32_Y40_N22
\B_Banderas|SResultado_O~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_O~1_combout\ = (\B_R_Resultado|FF15~q\ & (\Numero_1[15]~input_o\ $ (\Numero_2[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Numero_1[15]~input_o\,
	datab => \Numero_2[15]~input_o\,
	datac => \B_R_Resultado|FF15~q\,
	combout => \B_Banderas|SResultado_O~1_combout\);

-- Location: LCCOMB_X31_Y40_N20
\B_Banderas|SResultado_O~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_O~0_combout\ = (\B_SelectorMP|SignalOUT~15_combout\ & ((\B_ADDER|FA15|SCarry~0_combout\) # (\Numero_2[15]~input_o\ $ (\B_Control|Restar~1_combout\)))) # (!\B_SelectorMP|SignalOUT~15_combout\ & (\B_ADDER|FA15|SCarry~0_combout\ & 
-- (\Numero_2[15]~input_o\ $ (\B_Control|Restar~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_SelectorMP|SignalOUT~15_combout\,
	datab => \Numero_2[15]~input_o\,
	datac => \B_Control|Restar~1_combout\,
	datad => \B_ADDER|FA15|SCarry~0_combout\,
	combout => \B_Banderas|SResultado_O~0_combout\);

-- Location: LCCOMB_X31_Y40_N2
\B_Banderas|SResultado_O~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_O~2_combout\ = (\Operacion[1]~input_o\ & ((\Operacion[0]~input_o\ & (\B_Banderas|SResultado_O~1_combout\)) # (!\Operacion[0]~input_o\ & ((\B_Banderas|SResultado_O~0_combout\))))) # (!\Operacion[1]~input_o\ & 
-- (((\Operacion[0]~input_o\ & \B_Banderas|SResultado_O~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[1]~input_o\,
	datab => \B_Banderas|SResultado_O~1_combout\,
	datac => \Operacion[0]~input_o\,
	datad => \B_Banderas|SResultado_O~0_combout\,
	combout => \B_Banderas|SResultado_O~2_combout\);

-- Location: LCCOMB_X31_Y40_N8
\B_Banderas|SResultado_O~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_O~3_combout\ = (!\Operacion[3]~input_o\ & (!\Operacion[2]~input_o\ & \B_Banderas|SResultado_O~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Operacion[3]~input_o\,
	datab => \Operacion[2]~input_o\,
	datad => \B_Banderas|SResultado_O~2_combout\,
	combout => \B_Banderas|SResultado_O~3_combout\);

-- Location: FF_X31_Y40_N9
\B_Banderas|FF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Banderas|SResultado_O~3_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Banderas|FF4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Banderas|FF1~q\);

-- Location: LCCOMB_X30_Y40_N22
\B_Banderas|SResultado_N~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \B_Banderas|SResultado_N~0_combout\ = (\B_R_Resultado|FF15~q\ & ((\B_Control|B_SeleccionOpera|MULT~0_combout\ & ((\Operacion[2]~input_o\) # (\Operacion[0]~input_o\))) # (!\B_Control|B_SeleccionOpera|MULT~0_combout\ & (!\Operacion[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B_Control|B_SeleccionOpera|MULT~0_combout\,
	datab => \Operacion[2]~input_o\,
	datac => \B_R_Resultado|FF15~q\,
	datad => \Operacion[0]~input_o\,
	combout => \B_Banderas|SResultado_N~0_combout\);

-- Location: FF_X30_Y40_N23
\B_Banderas|FF3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj~inputclkctrl_outclk\,
	d => \B_Banderas|SResultado_N~0_combout\,
	clrn => \Restablecer~inputclkctrl_outclk\,
	ena => \B_Banderas|FF4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \B_Banderas|FF3~q\);

ww_ResultadoTotal(0) <= \ResultadoTotal[0]~output_o\;

ww_ResultadoTotal(1) <= \ResultadoTotal[1]~output_o\;

ww_ResultadoTotal(2) <= \ResultadoTotal[2]~output_o\;

ww_ResultadoTotal(3) <= \ResultadoTotal[3]~output_o\;

ww_ResultadoTotal(4) <= \ResultadoTotal[4]~output_o\;

ww_ResultadoTotal(5) <= \ResultadoTotal[5]~output_o\;

ww_ResultadoTotal(6) <= \ResultadoTotal[6]~output_o\;

ww_ResultadoTotal(7) <= \ResultadoTotal[7]~output_o\;

ww_ResultadoTotal(8) <= \ResultadoTotal[8]~output_o\;

ww_ResultadoTotal(9) <= \ResultadoTotal[9]~output_o\;

ww_ResultadoTotal(10) <= \ResultadoTotal[10]~output_o\;

ww_ResultadoTotal(11) <= \ResultadoTotal[11]~output_o\;

ww_ResultadoTotal(12) <= \ResultadoTotal[12]~output_o\;

ww_ResultadoTotal(13) <= \ResultadoTotal[13]~output_o\;

ww_ResultadoTotal(14) <= \ResultadoTotal[14]~output_o\;

ww_ResultadoTotal(15) <= \ResultadoTotal[15]~output_o\;

ww_Disponibilidad <= \Disponibilidad~output_o\;

ww_Resultado_Z <= \Resultado_Z~output_o\;

ww_Resultado_C <= \Resultado_C~output_o\;

ww_Resultado_O <= \Resultado_O~output_o\;

ww_Resultado_N <= \Resultado_N~output_o\;
END structure;


