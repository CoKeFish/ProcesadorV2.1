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

-- DATE "11/30/2020 22:32:44"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ProgramCounterMUX IS
    PORT (
	DataMd : IN std_logic_vector(15 DOWNTO 0);
	DataGPR : IN std_logic_vector(15 DOWNTO 0);
	SelectPC : IN std_logic;
	PCMUXOut : OUT std_logic_vector(15 DOWNTO 0)
	);
END ProgramCounterMUX;

-- Design Ports Information
-- PCMUXOut[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[1]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[5]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[8]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[10]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[11]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[14]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCMUXOut[15]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelectPC	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[4]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[5]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[6]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[8]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[10]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[11]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[13]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[14]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[15]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataGPR[15]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ProgramCounterMUX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DataMd : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DataGPR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SelectPC : std_logic;
SIGNAL ww_PCMUXOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \PCMUXOut[0]~output_o\ : std_logic;
SIGNAL \PCMUXOut[1]~output_o\ : std_logic;
SIGNAL \PCMUXOut[2]~output_o\ : std_logic;
SIGNAL \PCMUXOut[3]~output_o\ : std_logic;
SIGNAL \PCMUXOut[4]~output_o\ : std_logic;
SIGNAL \PCMUXOut[5]~output_o\ : std_logic;
SIGNAL \PCMUXOut[6]~output_o\ : std_logic;
SIGNAL \PCMUXOut[7]~output_o\ : std_logic;
SIGNAL \PCMUXOut[8]~output_o\ : std_logic;
SIGNAL \PCMUXOut[9]~output_o\ : std_logic;
SIGNAL \PCMUXOut[10]~output_o\ : std_logic;
SIGNAL \PCMUXOut[11]~output_o\ : std_logic;
SIGNAL \PCMUXOut[12]~output_o\ : std_logic;
SIGNAL \PCMUXOut[13]~output_o\ : std_logic;
SIGNAL \PCMUXOut[14]~output_o\ : std_logic;
SIGNAL \PCMUXOut[15]~output_o\ : std_logic;
SIGNAL \DataMd[0]~input_o\ : std_logic;
SIGNAL \DataGPR[0]~input_o\ : std_logic;
SIGNAL \SelectPC~input_o\ : std_logic;
SIGNAL \PCMUXOut~0_combout\ : std_logic;
SIGNAL \DataGPR[1]~input_o\ : std_logic;
SIGNAL \DataMd[1]~input_o\ : std_logic;
SIGNAL \PCMUXOut~1_combout\ : std_logic;
SIGNAL \DataGPR[2]~input_o\ : std_logic;
SIGNAL \DataMd[2]~input_o\ : std_logic;
SIGNAL \PCMUXOut~2_combout\ : std_logic;
SIGNAL \DataGPR[3]~input_o\ : std_logic;
SIGNAL \DataMd[3]~input_o\ : std_logic;
SIGNAL \PCMUXOut~3_combout\ : std_logic;
SIGNAL \DataMd[4]~input_o\ : std_logic;
SIGNAL \DataGPR[4]~input_o\ : std_logic;
SIGNAL \PCMUXOut~4_combout\ : std_logic;
SIGNAL \DataGPR[5]~input_o\ : std_logic;
SIGNAL \DataMd[5]~input_o\ : std_logic;
SIGNAL \PCMUXOut~5_combout\ : std_logic;
SIGNAL \DataMd[6]~input_o\ : std_logic;
SIGNAL \DataGPR[6]~input_o\ : std_logic;
SIGNAL \PCMUXOut~6_combout\ : std_logic;
SIGNAL \DataMd[7]~input_o\ : std_logic;
SIGNAL \DataGPR[7]~input_o\ : std_logic;
SIGNAL \PCMUXOut~7_combout\ : std_logic;
SIGNAL \DataMd[8]~input_o\ : std_logic;
SIGNAL \DataGPR[8]~input_o\ : std_logic;
SIGNAL \PCMUXOut~8_combout\ : std_logic;
SIGNAL \DataGPR[9]~input_o\ : std_logic;
SIGNAL \DataMd[9]~input_o\ : std_logic;
SIGNAL \PCMUXOut~9_combout\ : std_logic;
SIGNAL \DataGPR[10]~input_o\ : std_logic;
SIGNAL \DataMd[10]~input_o\ : std_logic;
SIGNAL \PCMUXOut~10_combout\ : std_logic;
SIGNAL \DataGPR[11]~input_o\ : std_logic;
SIGNAL \DataMd[11]~input_o\ : std_logic;
SIGNAL \PCMUXOut~11_combout\ : std_logic;
SIGNAL \DataGPR[12]~input_o\ : std_logic;
SIGNAL \DataMd[12]~input_o\ : std_logic;
SIGNAL \PCMUXOut~12_combout\ : std_logic;
SIGNAL \DataGPR[13]~input_o\ : std_logic;
SIGNAL \DataMd[13]~input_o\ : std_logic;
SIGNAL \PCMUXOut~13_combout\ : std_logic;
SIGNAL \DataMd[14]~input_o\ : std_logic;
SIGNAL \DataGPR[14]~input_o\ : std_logic;
SIGNAL \PCMUXOut~14_combout\ : std_logic;
SIGNAL \DataGPR[15]~input_o\ : std_logic;
SIGNAL \DataMd[15]~input_o\ : std_logic;
SIGNAL \PCMUXOut~15_combout\ : std_logic;

BEGIN

ww_DataMd <= DataMd;
ww_DataGPR <= DataGPR;
ww_SelectPC <= SelectPC;
PCMUXOut <= ww_PCMUXOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X10_Y0_N2
\PCMUXOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~0_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\PCMUXOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~1_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\PCMUXOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~2_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\PCMUXOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~3_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\PCMUXOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~4_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\PCMUXOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~5_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[5]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\PCMUXOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~6_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[6]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\PCMUXOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~7_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\PCMUXOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~8_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[8]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\PCMUXOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~9_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[9]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\PCMUXOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~10_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\PCMUXOut[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~11_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\PCMUXOut[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~12_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[12]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\PCMUXOut[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~13_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[13]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\PCMUXOut[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~14_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[14]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\PCMUXOut[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PCMUXOut~15_combout\,
	devoe => ww_devoe,
	o => \PCMUXOut[15]~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\DataMd[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(0),
	o => \DataMd[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\DataGPR[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(0),
	o => \DataGPR[0]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\SelectPC~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelectPC,
	o => \SelectPC~input_o\);

-- Location: LCCOMB_X23_Y1_N8
\PCMUXOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~0_combout\ = (\SelectPC~input_o\ & (\DataMd[0]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataMd[0]~input_o\,
	datac => \DataGPR[0]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\DataGPR[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(1),
	o => \DataGPR[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\DataMd[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(1),
	o => \DataMd[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N10
\PCMUXOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~1_combout\ = (\SelectPC~input_o\ & ((\DataMd[1]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[1]~input_o\,
	datac => \DataMd[1]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~1_combout\);

-- Location: IOIBUF_X31_Y0_N22
\DataGPR[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(2),
	o => \DataGPR[2]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\DataMd[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(2),
	o => \DataMd[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N4
\PCMUXOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~2_combout\ = (\SelectPC~input_o\ & ((\DataMd[2]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataGPR[2]~input_o\,
	datac => \DataMd[2]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~2_combout\);

-- Location: IOIBUF_X25_Y0_N1
\DataGPR[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(3),
	o => \DataGPR[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\DataMd[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(3),
	o => \DataMd[3]~input_o\);

-- Location: LCCOMB_X23_Y1_N30
\PCMUXOut~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~3_combout\ = (\SelectPC~input_o\ & ((\DataMd[3]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[3]~input_o\,
	datac => \DataMd[3]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~3_combout\);

-- Location: IOIBUF_X25_Y0_N8
\DataMd[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(4),
	o => \DataMd[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\DataGPR[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(4),
	o => \DataGPR[4]~input_o\);

-- Location: LCCOMB_X23_Y1_N16
\PCMUXOut~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~4_combout\ = (\SelectPC~input_o\ & (\DataMd[4]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataMd[4]~input_o\,
	datac => \DataGPR[4]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~4_combout\);

-- Location: IOIBUF_X16_Y0_N8
\DataGPR[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(5),
	o => \DataGPR[5]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\DataMd[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(5),
	o => \DataMd[5]~input_o\);

-- Location: LCCOMB_X23_Y1_N2
\PCMUXOut~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~5_combout\ = (\SelectPC~input_o\ & ((\DataMd[5]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[5]~input_o\,
	datac => \DataMd[5]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~5_combout\);

-- Location: IOIBUF_X23_Y0_N8
\DataMd[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(6),
	o => \DataMd[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\DataGPR[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(6),
	o => \DataGPR[6]~input_o\);

-- Location: LCCOMB_X23_Y1_N12
\PCMUXOut~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~6_combout\ = (\SelectPC~input_o\ & (\DataMd[6]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMd[6]~input_o\,
	datab => \DataGPR[6]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~6_combout\);

-- Location: IOIBUF_X31_Y0_N1
\DataMd[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(7),
	o => \DataMd[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\DataGPR[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(7),
	o => \DataGPR[7]~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\PCMUXOut~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~7_combout\ = (\SelectPC~input_o\ & (\DataMd[7]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMd[7]~input_o\,
	datab => \SelectPC~input_o\,
	datad => \DataGPR[7]~input_o\,
	combout => \PCMUXOut~7_combout\);

-- Location: IOIBUF_X41_Y0_N8
\DataMd[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(8),
	o => \DataMd[8]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\DataGPR[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(8),
	o => \DataGPR[8]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\PCMUXOut~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~8_combout\ = (\SelectPC~input_o\ & (\DataMd[8]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataMd[8]~input_o\,
	datac => \DataGPR[8]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~8_combout\);

-- Location: IOIBUF_X36_Y0_N8
\DataGPR[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(9),
	o => \DataGPR[9]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\DataMd[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(9),
	o => \DataMd[9]~input_o\);

-- Location: LCCOMB_X23_Y1_N26
\PCMUXOut~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~9_combout\ = (\SelectPC~input_o\ & ((\DataMd[9]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[9]~input_o\,
	datac => \DataMd[9]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~9_combout\);

-- Location: IOIBUF_X34_Y0_N8
\DataGPR[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(10),
	o => \DataGPR[10]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\DataMd[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(10),
	o => \DataMd[10]~input_o\);

-- Location: LCCOMB_X23_Y1_N20
\PCMUXOut~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~10_combout\ = (\SelectPC~input_o\ & ((\DataMd[10]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[10]~input_o\,
	datac => \DataMd[10]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~10_combout\);

-- Location: IOIBUF_X43_Y0_N8
\DataGPR[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(11),
	o => \DataGPR[11]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\DataMd[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(11),
	o => \DataMd[11]~input_o\);

-- Location: LCCOMB_X23_Y1_N14
\PCMUXOut~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~11_combout\ = (\SelectPC~input_o\ & ((\DataMd[11]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataGPR[11]~input_o\,
	datac => \DataMd[11]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~11_combout\);

-- Location: IOIBUF_X7_Y0_N15
\DataGPR[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(12),
	o => \DataGPR[12]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\DataMd[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(12),
	o => \DataMd[12]~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\PCMUXOut~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~12_combout\ = (\SelectPC~input_o\ & ((\DataMd[12]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[12]~input_o\,
	datab => \DataMd[12]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~12_combout\);

-- Location: IOIBUF_X23_Y0_N1
\DataGPR[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(13),
	o => \DataGPR[13]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\DataMd[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(13),
	o => \DataMd[13]~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\PCMUXOut~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~13_combout\ = (\SelectPC~input_o\ & ((\DataMd[13]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataGPR[13]~input_o\,
	datac => \DataMd[13]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~13_combout\);

-- Location: IOIBUF_X29_Y0_N1
\DataMd[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(14),
	o => \DataMd[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\DataGPR[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(14),
	o => \DataGPR[14]~input_o\);

-- Location: LCCOMB_X23_Y1_N28
\PCMUXOut~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~14_combout\ = (\SelectPC~input_o\ & (\DataMd[14]~input_o\)) # (!\SelectPC~input_o\ & ((\DataGPR[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMd[14]~input_o\,
	datac => \DataGPR[14]~input_o\,
	datad => \SelectPC~input_o\,
	combout => \PCMUXOut~14_combout\);

-- Location: IOIBUF_X52_Y15_N1
\DataGPR[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataGPR(15),
	o => \DataGPR[15]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\DataMd[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(15),
	o => \DataMd[15]~input_o\);

-- Location: LCCOMB_X51_Y15_N0
\PCMUXOut~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PCMUXOut~15_combout\ = (\SelectPC~input_o\ & ((\DataMd[15]~input_o\))) # (!\SelectPC~input_o\ & (\DataGPR[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataGPR[15]~input_o\,
	datac => \SelectPC~input_o\,
	datad => \DataMd[15]~input_o\,
	combout => \PCMUXOut~15_combout\);

ww_PCMUXOut(0) <= \PCMUXOut[0]~output_o\;

ww_PCMUXOut(1) <= \PCMUXOut[1]~output_o\;

ww_PCMUXOut(2) <= \PCMUXOut[2]~output_o\;

ww_PCMUXOut(3) <= \PCMUXOut[3]~output_o\;

ww_PCMUXOut(4) <= \PCMUXOut[4]~output_o\;

ww_PCMUXOut(5) <= \PCMUXOut[5]~output_o\;

ww_PCMUXOut(6) <= \PCMUXOut[6]~output_o\;

ww_PCMUXOut(7) <= \PCMUXOut[7]~output_o\;

ww_PCMUXOut(8) <= \PCMUXOut[8]~output_o\;

ww_PCMUXOut(9) <= \PCMUXOut[9]~output_o\;

ww_PCMUXOut(10) <= \PCMUXOut[10]~output_o\;

ww_PCMUXOut(11) <= \PCMUXOut[11]~output_o\;

ww_PCMUXOut(12) <= \PCMUXOut[12]~output_o\;

ww_PCMUXOut(13) <= \PCMUXOut[13]~output_o\;

ww_PCMUXOut(14) <= \PCMUXOut[14]~output_o\;

ww_PCMUXOut(15) <= \PCMUXOut[15]~output_o\;
END structure;


