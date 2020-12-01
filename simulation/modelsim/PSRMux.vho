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

-- DATE "12/01/2020 08:11:13"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PSRMux IS
    PORT (
	DataMd : IN std_logic_vector(4 DOWNTO 0);
	ALUStatus : IN std_logic_vector(3 DOWNTO 0);
	SelectPSR : IN std_logic;
	PSRMuxOut : OUT std_logic_vector(4 DOWNTO 0)
	);
END PSRMux;

-- Design Ports Information
-- PSRMuxOut[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSRMuxOut[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSRMuxOut[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSRMuxOut[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PSRMuxOut[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[0]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUStatus[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SelectPSR	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUStatus[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[2]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUStatus[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUStatus[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataMd[4]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PSRMux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DataMd : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_ALUStatus : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SelectPSR : std_logic;
SIGNAL ww_PSRMuxOut : std_logic_vector(4 DOWNTO 0);
SIGNAL \PSRMuxOut[0]~output_o\ : std_logic;
SIGNAL \PSRMuxOut[1]~output_o\ : std_logic;
SIGNAL \PSRMuxOut[2]~output_o\ : std_logic;
SIGNAL \PSRMuxOut[3]~output_o\ : std_logic;
SIGNAL \PSRMuxOut[4]~output_o\ : std_logic;
SIGNAL \SelectPSR~input_o\ : std_logic;
SIGNAL \ALUStatus[0]~input_o\ : std_logic;
SIGNAL \DataMd[0]~input_o\ : std_logic;
SIGNAL \PSRMuxOut~0_combout\ : std_logic;
SIGNAL \DataMd[1]~input_o\ : std_logic;
SIGNAL \ALUStatus[1]~input_o\ : std_logic;
SIGNAL \PSRMuxOut~1_combout\ : std_logic;
SIGNAL \DataMd[2]~input_o\ : std_logic;
SIGNAL \ALUStatus[2]~input_o\ : std_logic;
SIGNAL \PSRMuxOut~2_combout\ : std_logic;
SIGNAL \ALUStatus[3]~input_o\ : std_logic;
SIGNAL \DataMd[3]~input_o\ : std_logic;
SIGNAL \PSRMuxOut~3_combout\ : std_logic;
SIGNAL \DataMd[4]~input_o\ : std_logic;
SIGNAL \PSRMuxOut~4_combout\ : std_logic;

BEGIN

ww_DataMd <= DataMd;
ww_ALUStatus <= ALUStatus;
ww_SelectPSR <= SelectPSR;
PSRMuxOut <= ww_PSRMuxOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X22_Y0_N2
\PSRMuxOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PSRMuxOut~0_combout\,
	devoe => ww_devoe,
	o => \PSRMuxOut[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\PSRMuxOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PSRMuxOut~1_combout\,
	devoe => ww_devoe,
	o => \PSRMuxOut[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\PSRMuxOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PSRMuxOut~2_combout\,
	devoe => ww_devoe,
	o => \PSRMuxOut[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\PSRMuxOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PSRMuxOut~3_combout\,
	devoe => ww_devoe,
	o => \PSRMuxOut[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\PSRMuxOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PSRMuxOut~4_combout\,
	devoe => ww_devoe,
	o => \PSRMuxOut[4]~output_o\);

-- Location: IOIBUF_X26_Y0_N1
\SelectPSR~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SelectPSR,
	o => \SelectPSR~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\ALUStatus[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUStatus(0),
	o => \ALUStatus[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\DataMd[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(0),
	o => \DataMd[0]~input_o\);

-- Location: LCCOMB_X26_Y1_N24
\PSRMuxOut~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PSRMuxOut~0_combout\ = (\SelectPSR~input_o\ & ((\DataMd[0]~input_o\))) # (!\SelectPSR~input_o\ & (\ALUStatus[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SelectPSR~input_o\,
	datac => \ALUStatus[0]~input_o\,
	datad => \DataMd[0]~input_o\,
	combout => \PSRMuxOut~0_combout\);

-- Location: IOIBUF_X20_Y0_N1
\DataMd[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(1),
	o => \DataMd[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\ALUStatus[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUStatus(1),
	o => \ALUStatus[1]~input_o\);

-- Location: LCCOMB_X26_Y1_N10
\PSRMuxOut~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PSRMuxOut~1_combout\ = (\SelectPSR~input_o\ & (\DataMd[1]~input_o\)) # (!\SelectPSR~input_o\ & ((\ALUStatus[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMd[1]~input_o\,
	datab => \ALUStatus[1]~input_o\,
	datad => \SelectPSR~input_o\,
	combout => \PSRMuxOut~1_combout\);

-- Location: IOIBUF_X20_Y0_N8
\DataMd[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(2),
	o => \DataMd[2]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\ALUStatus[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUStatus(2),
	o => \ALUStatus[2]~input_o\);

-- Location: LCCOMB_X26_Y1_N28
\PSRMuxOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PSRMuxOut~2_combout\ = (\SelectPSR~input_o\ & (\DataMd[2]~input_o\)) # (!\SelectPSR~input_o\ & ((\ALUStatus[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataMd[2]~input_o\,
	datab => \ALUStatus[2]~input_o\,
	datad => \SelectPSR~input_o\,
	combout => \PSRMuxOut~2_combout\);

-- Location: IOIBUF_X12_Y0_N8
\ALUStatus[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ALUStatus(3),
	o => \ALUStatus[3]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\DataMd[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(3),
	o => \DataMd[3]~input_o\);

-- Location: LCCOMB_X26_Y1_N6
\PSRMuxOut~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PSRMuxOut~3_combout\ = (\SelectPSR~input_o\ & ((\DataMd[3]~input_o\))) # (!\SelectPSR~input_o\ & (\ALUStatus[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUStatus[3]~input_o\,
	datac => \DataMd[3]~input_o\,
	datad => \SelectPSR~input_o\,
	combout => \PSRMuxOut~3_combout\);

-- Location: IOIBUF_X33_Y16_N22
\DataMd[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataMd(4),
	o => \DataMd[4]~input_o\);

-- Location: LCCOMB_X26_Y1_N8
\PSRMuxOut~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PSRMuxOut~4_combout\ = (\DataMd[4]~input_o\ & \SelectPSR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataMd[4]~input_o\,
	datad => \SelectPSR~input_o\,
	combout => \PSRMuxOut~4_combout\);

ww_PSRMuxOut(0) <= \PSRMuxOut[0]~output_o\;

ww_PSRMuxOut(1) <= \PSRMuxOut[1]~output_o\;

ww_PSRMuxOut(2) <= \PSRMuxOut[2]~output_o\;

ww_PSRMuxOut(3) <= \PSRMuxOut[3]~output_o\;

ww_PSRMuxOut(4) <= \PSRMuxOut[4]~output_o\;
END structure;


