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

-- DATE "11/23/2020 19:05:48"

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

ENTITY 	GeneralPR IS
    PORT (
	Clock : IN std_logic;
	ResetSystem : IN std_logic;
	SaveRDT : IN std_logic;
	DMD : IN std_logic_vector(15 DOWNTO 0);
	InstRDT : OUT std_logic_vector(15 DOWNTO 0)
	);
END GeneralPR;

-- Design Ports Information
-- InstRDT[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[9]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[11]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[13]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[14]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- InstRDT[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ResetSystem	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaveRDT	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[9]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[10]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[11]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[12]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[13]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[14]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMD[15]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF GeneralPR IS
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
SIGNAL ww_SaveRDT : std_logic;
SIGNAL ww_DMD : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_InstRDT : std_logic_vector(15 DOWNTO 0);
SIGNAL \ResetSystem~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \InstRDT[0]~output_o\ : std_logic;
SIGNAL \InstRDT[1]~output_o\ : std_logic;
SIGNAL \InstRDT[2]~output_o\ : std_logic;
SIGNAL \InstRDT[3]~output_o\ : std_logic;
SIGNAL \InstRDT[4]~output_o\ : std_logic;
SIGNAL \InstRDT[5]~output_o\ : std_logic;
SIGNAL \InstRDT[6]~output_o\ : std_logic;
SIGNAL \InstRDT[7]~output_o\ : std_logic;
SIGNAL \InstRDT[8]~output_o\ : std_logic;
SIGNAL \InstRDT[9]~output_o\ : std_logic;
SIGNAL \InstRDT[10]~output_o\ : std_logic;
SIGNAL \InstRDT[11]~output_o\ : std_logic;
SIGNAL \InstRDT[12]~output_o\ : std_logic;
SIGNAL \InstRDT[13]~output_o\ : std_logic;
SIGNAL \InstRDT[14]~output_o\ : std_logic;
SIGNAL \InstRDT[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \DMD[0]~input_o\ : std_logic;
SIGNAL \FF0~feeder_combout\ : std_logic;
SIGNAL \ResetSystem~input_o\ : std_logic;
SIGNAL \ResetSystem~inputclkctrl_outclk\ : std_logic;
SIGNAL \SaveRDT~input_o\ : std_logic;
SIGNAL \FF0~q\ : std_logic;
SIGNAL \DMD[1]~input_o\ : std_logic;
SIGNAL \FF1~feeder_combout\ : std_logic;
SIGNAL \FF1~q\ : std_logic;
SIGNAL \DMD[2]~input_o\ : std_logic;
SIGNAL \FF2~q\ : std_logic;
SIGNAL \DMD[3]~input_o\ : std_logic;
SIGNAL \FF3~feeder_combout\ : std_logic;
SIGNAL \FF3~q\ : std_logic;
SIGNAL \DMD[4]~input_o\ : std_logic;
SIGNAL \FF4~feeder_combout\ : std_logic;
SIGNAL \FF4~q\ : std_logic;
SIGNAL \DMD[5]~input_o\ : std_logic;
SIGNAL \FF5~feeder_combout\ : std_logic;
SIGNAL \FF5~q\ : std_logic;
SIGNAL \DMD[6]~input_o\ : std_logic;
SIGNAL \FF6~feeder_combout\ : std_logic;
SIGNAL \FF6~q\ : std_logic;
SIGNAL \DMD[7]~input_o\ : std_logic;
SIGNAL \FF7~q\ : std_logic;
SIGNAL \DMD[8]~input_o\ : std_logic;
SIGNAL \FF8~feeder_combout\ : std_logic;
SIGNAL \FF8~q\ : std_logic;
SIGNAL \DMD[9]~input_o\ : std_logic;
SIGNAL \FF9~q\ : std_logic;
SIGNAL \DMD[10]~input_o\ : std_logic;
SIGNAL \FF10~feeder_combout\ : std_logic;
SIGNAL \FF10~q\ : std_logic;
SIGNAL \DMD[11]~input_o\ : std_logic;
SIGNAL \FF11~feeder_combout\ : std_logic;
SIGNAL \FF11~q\ : std_logic;
SIGNAL \DMD[12]~input_o\ : std_logic;
SIGNAL \FF12~feeder_combout\ : std_logic;
SIGNAL \FF12~q\ : std_logic;
SIGNAL \DMD[13]~input_o\ : std_logic;
SIGNAL \FF13~q\ : std_logic;
SIGNAL \DMD[14]~input_o\ : std_logic;
SIGNAL \FF14~q\ : std_logic;
SIGNAL \DMD[15]~input_o\ : std_logic;
SIGNAL \FF15~q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_ResetSystem <= ResetSystem;
ww_SaveRDT <= SaveRDT;
ww_DMD <= DMD;
InstRDT <= ww_InstRDT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ResetSystem~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ResetSystem~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

-- Location: IOOBUF_X24_Y31_N9
\InstRDT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF0~q\,
	devoe => ww_devoe,
	o => \InstRDT[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\InstRDT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1~q\,
	devoe => ww_devoe,
	o => \InstRDT[1]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\InstRDT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2~q\,
	devoe => ww_devoe,
	o => \InstRDT[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\InstRDT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF3~q\,
	devoe => ww_devoe,
	o => \InstRDT[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\InstRDT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF4~q\,
	devoe => ww_devoe,
	o => \InstRDT[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\InstRDT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF5~q\,
	devoe => ww_devoe,
	o => \InstRDT[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\InstRDT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF6~q\,
	devoe => ww_devoe,
	o => \InstRDT[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\InstRDT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF7~q\,
	devoe => ww_devoe,
	o => \InstRDT[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\InstRDT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF8~q\,
	devoe => ww_devoe,
	o => \InstRDT[8]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\InstRDT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF9~q\,
	devoe => ww_devoe,
	o => \InstRDT[9]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\InstRDT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF10~q\,
	devoe => ww_devoe,
	o => \InstRDT[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\InstRDT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF11~q\,
	devoe => ww_devoe,
	o => \InstRDT[11]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\InstRDT[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF12~q\,
	devoe => ww_devoe,
	o => \InstRDT[12]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\InstRDT[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF13~q\,
	devoe => ww_devoe,
	o => \InstRDT[13]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\InstRDT[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF14~q\,
	devoe => ww_devoe,
	o => \InstRDT[14]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\InstRDT[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FF15~q\,
	devoe => ww_devoe,
	o => \InstRDT[15]~output_o\);

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
\DMD[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(0),
	o => \DMD[0]~input_o\);

-- Location: LCCOMB_X13_Y9_N16
\FF0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF0~feeder_combout\ = \DMD[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[0]~input_o\,
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
\SaveRDT~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SaveRDT,
	o => \SaveRDT~input_o\);

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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF0~q\);

-- Location: IOIBUF_X22_Y0_N8
\DMD[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(1),
	o => \DMD[1]~input_o\);

-- Location: LCCOMB_X13_Y9_N26
\FF1~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF1~feeder_combout\ = \DMD[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[1]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1~q\);

-- Location: IOIBUF_X26_Y0_N1
\DMD[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(2),
	o => \DMD[2]~input_o\);

-- Location: FF_X13_Y9_N29
FF2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[2]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2~q\);

-- Location: IOIBUF_X10_Y0_N8
\DMD[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(3),
	o => \DMD[3]~input_o\);

-- Location: LCCOMB_X13_Y9_N6
\FF3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF3~feeder_combout\ = \DMD[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[3]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF3~q\);

-- Location: IOIBUF_X12_Y0_N1
\DMD[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(4),
	o => \DMD[4]~input_o\);

-- Location: LCCOMB_X13_Y9_N0
\FF4~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF4~feeder_combout\ = \DMD[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[4]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF4~q\);

-- Location: IOIBUF_X12_Y0_N8
\DMD[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(5),
	o => \DMD[5]~input_o\);

-- Location: LCCOMB_X13_Y9_N10
\FF5~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF5~feeder_combout\ = \DMD[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[5]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF5~q\);

-- Location: IOIBUF_X8_Y0_N1
\DMD[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(6),
	o => \DMD[6]~input_o\);

-- Location: LCCOMB_X13_Y9_N4
\FF6~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF6~feeder_combout\ = \DMD[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[6]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF6~q\);

-- Location: IOIBUF_X12_Y31_N8
\DMD[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(7),
	o => \DMD[7]~input_o\);

-- Location: FF_X13_Y9_N15
FF7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[7]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF7~q\);

-- Location: IOIBUF_X20_Y0_N1
\DMD[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(8),
	o => \DMD[8]~input_o\);

-- Location: LCCOMB_X13_Y9_N24
\FF8~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF8~feeder_combout\ = \DMD[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[8]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF8~q\);

-- Location: IOIBUF_X20_Y0_N8
\DMD[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(9),
	o => \DMD[9]~input_o\);

-- Location: FF_X13_Y9_N3
FF9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[9]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF9~q\);

-- Location: IOIBUF_X29_Y0_N8
\DMD[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(10),
	o => \DMD[10]~input_o\);

-- Location: LCCOMB_X13_Y9_N20
\FF10~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF10~feeder_combout\ = \DMD[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[10]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF10~q\);

-- Location: IOIBUF_X14_Y0_N8
\DMD[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(11),
	o => \DMD[11]~input_o\);

-- Location: LCCOMB_X13_Y9_N30
\FF11~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF11~feeder_combout\ = \DMD[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[11]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF11~q\);

-- Location: IOIBUF_X24_Y0_N1
\DMD[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(12),
	o => \DMD[12]~input_o\);

-- Location: LCCOMB_X13_Y9_N8
\FF12~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FF12~feeder_combout\ = \DMD[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DMD[12]~input_o\,
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
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF12~q\);

-- Location: IOIBUF_X31_Y0_N8
\DMD[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(13),
	o => \DMD[13]~input_o\);

-- Location: FF_X13_Y9_N19
FF13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[13]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF13~q\);

-- Location: IOIBUF_X29_Y0_N1
\DMD[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(14),
	o => \DMD[14]~input_o\);

-- Location: FF_X13_Y9_N13
FF14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[14]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF14~q\);

-- Location: IOIBUF_X24_Y0_N8
\DMD[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DMD(15),
	o => \DMD[15]~input_o\);

-- Location: FF_X13_Y9_N23
FF15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \DMD[15]~input_o\,
	clrn => \ResetSystem~inputclkctrl_outclk\,
	sload => VCC,
	ena => \SaveRDT~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF15~q\);

ww_InstRDT(0) <= \InstRDT[0]~output_o\;

ww_InstRDT(1) <= \InstRDT[1]~output_o\;

ww_InstRDT(2) <= \InstRDT[2]~output_o\;

ww_InstRDT(3) <= \InstRDT[3]~output_o\;

ww_InstRDT(4) <= \InstRDT[4]~output_o\;

ww_InstRDT(5) <= \InstRDT[5]~output_o\;

ww_InstRDT(6) <= \InstRDT[6]~output_o\;

ww_InstRDT(7) <= \InstRDT[7]~output_o\;

ww_InstRDT(8) <= \InstRDT[8]~output_o\;

ww_InstRDT(9) <= \InstRDT[9]~output_o\;

ww_InstRDT(10) <= \InstRDT[10]~output_o\;

ww_InstRDT(11) <= \InstRDT[11]~output_o\;

ww_InstRDT(12) <= \InstRDT[12]~output_o\;

ww_InstRDT(13) <= \InstRDT[13]~output_o\;

ww_InstRDT(14) <= \InstRDT[14]~output_o\;

ww_InstRDT(15) <= \InstRDT[15]~output_o\;
END structure;


