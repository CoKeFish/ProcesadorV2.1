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

-- DATE "11/30/2020 22:08:26"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	DirRegister IS
    PORT (
	Clock : IN std_logic;
	ResetSystem : IN std_logic;
	Save : IN std_logic;
	InDir : IN std_logic_vector(15 DOWNTO 0);
	DirOut : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DirRegister;

-- Design Ports Information
-- DirOut[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DirOut[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetSystem	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Save	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[10]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[11]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[12]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[13]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InDir[15]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DirRegister IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_ResetSystem : std_logic;
SIGNAL ww_Save : std_logic;
SIGNAL ww_InDir : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DirOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \ResetSystem~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DirOut[0]~output_o\ : std_logic;
SIGNAL \DirOut[1]~output_o\ : std_logic;
SIGNAL \DirOut[2]~output_o\ : std_logic;
SIGNAL \DirOut[3]~output_o\ : std_logic;
SIGNAL \DirOut[4]~output_o\ : std_logic;
SIGNAL \DirOut[5]~output_o\ : std_logic;
SIGNAL \DirOut[6]~output_o\ : std_logic;
SIGNAL \DirOut[7]~output_o\ : std_logic;
SIGNAL \DirOut[8]~output_o\ : std_logic;
SIGNAL \DirOut[9]~output_o\ : std_logic;
SIGNAL \DirOut[10]~output_o\ : std_logic;
SIGNAL \DirOut[11]~output_o\ : std_logic;
SIGNAL \DirOut[12]~output_o\ : std_logic;
SIGNAL \DirOut[13]~output_o\ : std_logic;
SIGNAL \DirOut[14]~output_o\ : std_logic;
SIGNAL \DirOut[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \InDir[0]~input_o\ : std_logic;
SIGNAL \FF0~feeder_combout\ : std_logic;
SIGNAL \ResetSystem~input_o\ : std_logic;
SIGNAL \ResetSystem~inputclkctrl_outclk\ : std_logic;
SIGNAL \Save~input_o\ : std_logic;
SIGNAL \FF0~q\ : std_logic;
SIGNAL \InDir[1]~input_o\ : std_logic;
SIGNAL \FF1~feeder_combout\ : std_logic;
SIGNAL \FF1~q\ : std_logic;
SIGNAL \InDir[2]~input_o\ : std_logic;
SIGNAL \FF2~q\ : std_logic;
SIGNAL \InDir[3]~input_o\ : std_logic;
SIGNAL \FF3~feeder_combout\ : std_logic;
SIGNAL \FF3~q\ : std_logic;
SIGNAL \InDir[4]~input_o\ : std_logic;
SIGNAL \FF4~feeder_combout\ : std_logic;
SIGNAL \FF4~q\ : std_logic;
SIGNAL \InDir[5]~input_o\ : std_logic;
SIGNAL \FF5~feeder_combout\ : std_logic;
SIGNAL \FF5~q\ : std_logic;
SIGNAL \InDir[6]~input_o\ : std_logic;
SIGNAL \FF6~feeder_combout\ : std_logic;
SIGNAL \FF6~q\ : std_logic;
SIGNAL \InDir[7]~input_o\ : std_logic;
SIGNAL \FF7~q\ : std_logic;
SIGNAL \InDir[8]~input_o\ : std_logic;
SIGNAL \FF8~feeder_combout\ : std_logic;
SIGNAL \FF8~q\ : std_logic;
SIGNAL \InDir[9]~input_o\ : std_logic;
SIGNAL \FF9~q\ : std_logic;
SIGNAL \InDir[10]~input_o\ : std_logic;
SIGNAL \FF10~feeder_combout\ : std_logic;
SIGNAL \FF10~q\ : std_logic;
SIGNAL \InDir[11]~input_o\ : std_logic;
SIGNAL \FF11~feeder_combout\ : std_logic;
SIGNAL \FF11~q\ : std_logic;
SIGNAL \InDir[12]~input_o\ : std_logic;
SIGNAL \FF12~feeder_combout\ : std_logic;
SIGNAL \FF12~q\ : std_logic;
SIGNAL \InDir[13]~input_o\ : std_logic;
SIGNAL \FF13~q\ : std_logic;
SIGNAL \InDir[14]~input_o\ : std_logic;
SIGNAL \FF14~q\ : std_logic;
SIGNAL \InDir[15]~input_o\ : std_logic;
SIGNAL \FF15~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_ResetSystem <= ResetSystem;
ww_Save <= Save;
ww_InDir <= InDir;
DirOut <= ww_DirOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ResetSystem~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ResetSystem~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X24_Y31_N9
\DirOut[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0~q\,
	devoe => ww_devoe,
	o => \DirOut[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\DirOut[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1~q\,
	devoe => ww_devoe,
	o => \DirOut[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\DirOut[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2~q\,
	devoe => ww_devoe,
	o => \DirOut[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\DirOut[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF3~q\,
	devoe => ww_devoe,
	o => \DirOut[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\DirOut[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF4~q\,
	devoe => ww_devoe,
	o => \DirOut[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\DirOut[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF5~q\,
	devoe => ww_devoe,
	o => \DirOut[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\DirOut[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF6~q\,
	devoe => ww_devoe,
	o => \DirOut[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\DirOut[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF7~q\,
	devoe => ww_devoe,
	o => \DirOut[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\DirOut[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF8~q\,
	devoe => ww_devoe,
	o => \DirOut[8]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\DirOut[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF9~q\,
	devoe => ww_devoe,
	o => \DirOut[9]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\DirOut[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF10~q\,
	devoe => ww_devoe,
	o => \DirOut[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\DirOut[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF11~q\,
	devoe => ww_devoe,
	o => \DirOut[11]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\DirOut[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF12~q\,
	devoe => ww_devoe,
	o => \DirOut[12]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\DirOut[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF13~q\,
	devoe => ww_devoe,
	o => \DirOut[13]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\DirOut[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF14~q\,
	devoe => ww_devoe,
	o => \DirOut[14]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\DirOut[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF15~q\,
	devoe => ww_devoe,
	o => \DirOut[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N8
\InDir[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(0),
	o => \InDir[0]~input_o\);

-- Location: LCCOMB_X13_Y9_N16
\FF0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~feeder_combout\ = \InDir[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[0]~input_o\,
	combout => \FF0~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\ResetSystem~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResetSystem,
	o => \ResetSystem~input_o\);

-- Location: CLKCTRL_G19
\ResetSystem~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ResetSystem~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ResetSystem~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\Save~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Save,
	o => \Save~input_o\);

-- Location: FF_X13_Y9_N17
FF0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF0~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0~q\);

-- Location: IOIBUF_X22_Y0_N8
\InDir[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(1),
	o => \InDir[1]~input_o\);

-- Location: LCCOMB_X13_Y9_N26
\FF1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~feeder_combout\ = \InDir[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[1]~input_o\,
	combout => \FF1~feeder_combout\);

-- Location: FF_X13_Y9_N27
FF1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF1~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1~q\);

-- Location: IOIBUF_X26_Y0_N1
\InDir[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(2),
	o => \InDir[2]~input_o\);

-- Location: FF_X13_Y9_N29
FF2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[2]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2~q\);

-- Location: IOIBUF_X10_Y0_N8
\InDir[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(3),
	o => \InDir[3]~input_o\);

-- Location: LCCOMB_X13_Y9_N6
\FF3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF3~feeder_combout\ = \InDir[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[3]~input_o\,
	combout => \FF3~feeder_combout\);

-- Location: FF_X13_Y9_N7
FF3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF3~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF3~q\);

-- Location: IOIBUF_X12_Y0_N1
\InDir[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(4),
	o => \InDir[4]~input_o\);

-- Location: LCCOMB_X13_Y9_N0
\FF4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF4~feeder_combout\ = \InDir[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[4]~input_o\,
	combout => \FF4~feeder_combout\);

-- Location: FF_X13_Y9_N1
FF4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF4~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF4~q\);

-- Location: IOIBUF_X12_Y0_N8
\InDir[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(5),
	o => \InDir[5]~input_o\);

-- Location: LCCOMB_X13_Y9_N10
\FF5~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF5~feeder_combout\ = \InDir[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[5]~input_o\,
	combout => \FF5~feeder_combout\);

-- Location: FF_X13_Y9_N11
FF5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF5~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF5~q\);

-- Location: IOIBUF_X8_Y0_N1
\InDir[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(6),
	o => \InDir[6]~input_o\);

-- Location: LCCOMB_X13_Y9_N4
\FF6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF6~feeder_combout\ = \InDir[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[6]~input_o\,
	combout => \FF6~feeder_combout\);

-- Location: FF_X13_Y9_N5
FF6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF6~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF6~q\);

-- Location: IOIBUF_X12_Y31_N8
\InDir[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(7),
	o => \InDir[7]~input_o\);

-- Location: FF_X13_Y9_N15
FF7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[7]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF7~q\);

-- Location: IOIBUF_X20_Y0_N1
\InDir[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(8),
	o => \InDir[8]~input_o\);

-- Location: LCCOMB_X13_Y9_N24
\FF8~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF8~feeder_combout\ = \InDir[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[8]~input_o\,
	combout => \FF8~feeder_combout\);

-- Location: FF_X13_Y9_N25
FF8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF8~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF8~q\);

-- Location: IOIBUF_X20_Y0_N8
\InDir[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(9),
	o => \InDir[9]~input_o\);

-- Location: FF_X13_Y9_N3
FF9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[9]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF9~q\);

-- Location: IOIBUF_X29_Y0_N8
\InDir[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(10),
	o => \InDir[10]~input_o\);

-- Location: LCCOMB_X13_Y9_N20
\FF10~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF10~feeder_combout\ = \InDir[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[10]~input_o\,
	combout => \FF10~feeder_combout\);

-- Location: FF_X13_Y9_N21
FF10 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF10~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF10~q\);

-- Location: IOIBUF_X14_Y0_N8
\InDir[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(11),
	o => \InDir[11]~input_o\);

-- Location: LCCOMB_X13_Y9_N30
\FF11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF11~feeder_combout\ = \InDir[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[11]~input_o\,
	combout => \FF11~feeder_combout\);

-- Location: FF_X13_Y9_N31
FF11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF11~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF11~q\);

-- Location: IOIBUF_X24_Y0_N1
\InDir[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(12),
	o => \InDir[12]~input_o\);

-- Location: LCCOMB_X13_Y9_N8
\FF12~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF12~feeder_combout\ = \InDir[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \InDir[12]~input_o\,
	combout => \FF12~feeder_combout\);

-- Location: FF_X13_Y9_N9
FF12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \FF12~feeder_combout\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF12~q\);

-- Location: IOIBUF_X31_Y0_N8
\InDir[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(13),
	o => \InDir[13]~input_o\);

-- Location: FF_X13_Y9_N19
FF13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[13]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF13~q\);

-- Location: IOIBUF_X29_Y0_N1
\InDir[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(14),
	o => \InDir[14]~input_o\);

-- Location: FF_X13_Y9_N13
FF14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[14]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF14~q\);

-- Location: IOIBUF_X24_Y0_N8
\InDir[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_InDir(15),
	o => \InDir[15]~input_o\);

-- Location: FF_X13_Y9_N23
FF15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \InDir[15]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Save~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF15~q\);

ww_DirOut(0) <= \DirOut[0]~output_o\;

ww_DirOut(1) <= \DirOut[1]~output_o\;

ww_DirOut(2) <= \DirOut[2]~output_o\;

ww_DirOut(3) <= \DirOut[3]~output_o\;

ww_DirOut(4) <= \DirOut[4]~output_o\;

ww_DirOut(5) <= \DirOut[5]~output_o\;

ww_DirOut(6) <= \DirOut[6]~output_o\;

ww_DirOut(7) <= \DirOut[7]~output_o\;

ww_DirOut(8) <= \DirOut[8]~output_o\;

ww_DirOut(9) <= \DirOut[9]~output_o\;

ww_DirOut(10) <= \DirOut[10]~output_o\;

ww_DirOut(11) <= \DirOut[11]~output_o\;

ww_DirOut(12) <= \DirOut[12]~output_o\;

ww_DirOut(13) <= \DirOut[13]~output_o\;

ww_DirOut(14) <= \DirOut[14]~output_o\;

ww_DirOut(15) <= \DirOut[15]~output_o\;
END structure;


