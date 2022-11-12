-- Copyright (C) 1991-2010 Altera Corporation
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
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "11/12/2022 11:23:33"

-- 
-- Device: Altera EPM7128SLC84-7 Package PLCC84
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAX;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAX.MAX_COMPONENTS.ALL;

ENTITY 	relogio_digital IS
    PORT (
	CLEAR : IN std_logic;
	CLOCK : IN std_logic;
	SEG : OUT std_logic_vector(3 DOWNTO 0);
	MIN : OUT std_logic_vector(2 DOWNTO 0)
	);
END relogio_digital;

-- Design Ports Information
-- CLEAR	=>  Location: PIN_1
-- CLOCK	=>  Location: PIN_83
-- SEG[1]	=>  Location: PIN_12
-- MIN[2]	=>  Location: PIN_11
-- MIN[1]	=>  Location: PIN_10
-- SEG[2]	=>  Location: PIN_9
-- MIN[0]	=>  Location: PIN_8
-- SEG[3]	=>  Location: PIN_6
-- SEG[0]	=>  Location: PIN_5

ARCHITECTURE structure OF relogio_digital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_SEG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MIN : std_logic_vector(2 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos|FFM0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS3|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos|FFS0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLOCK~dataout\ : std_logic;
SIGNAL \CLEAR~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS2|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS3|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS0|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS1|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM1|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM0|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM2|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos|FFM0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS3|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos|FFS0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \ALT_INV_CLEAR~dataout\ : std_logic;
SIGNAL \ALT_INV_CLOCK~dataout\ : std_logic;

BEGIN

ww_CLEAR <= CLEAR;
ww_CLOCK <= CLOCK;
SEG <= ww_SEG;
MIN <= ww_MIN;

\contador_segundos|FFS1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos|FFS1|AUX~dataout\ & NOT \contador_segundos|FFS3|AUX~dataout\ & \contador_segundos|FFS0|AUX~dataout\);

\contador_segundos|FFS1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos|FFS1|AUX~dataout\ & NOT \contador_segundos|FFS3|AUX~dataout\ & NOT \contador_segundos|FFS0|AUX~dataout\);

\contador_segundos|FFS1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos|FFS1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos|FFM2|AUX~dataout\ & \contador_minutos|FFM1|AUX~dataout\ & \contador_minutos|FFM0|AUX~dataout\);

\contador_minutos|FFM2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos|FFM2|AUX~dataout\ & NOT \contador_minutos|FFM1|AUX~dataout\ & NOT \contador_minutos|FFM0|AUX~dataout\);

\contador_minutos|FFM2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos|FFM2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos|FFM1|AUX~dataout\ & NOT \contador_minutos|FFM0|AUX~dataout\ & \contador_minutos|FFM2|AUX~dataout\);

\contador_minutos|FFM1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos|FFM1|AUX~dataout\ & NOT \contador_minutos|FFM0|AUX~dataout\ & NOT \contador_minutos|FFM2|AUX~dataout\);

\contador_minutos|FFM1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos|FFM1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos|FFS0|AUX~dataout\ & \contador_segundos|FFS1|AUX~dataout\ & NOT \contador_segundos|FFS3|AUX~dataout\);

\contador_segundos|FFS2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos|FFS2|AUX~dataout\ & \contador_segundos|FFS3|AUX~dataout\);

\contador_segundos|FFS2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos|FFS2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos|FFM0|AUX~dataout\ & \contador_minutos|FFM2|AUX~dataout\ & \contador_minutos|FFM1|AUX~dataout\);

\contador_minutos|FFM0|AUX_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos|FFM0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos|FFM0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos|FFS3|AUX~dataout\ & \contador_segundos|FFS1|AUX~dataout\ & \contador_segundos|FFS0|AUX~dataout\ & \contador_segundos|FFS2|AUX~dataout\);

\contador_segundos|FFS3|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos|FFS3|AUX~dataout\ & NOT \contador_segundos|FFS1|AUX~dataout\ & NOT \contador_segundos|FFS0|AUX~dataout\ & NOT \contador_segundos|FFS2|AUX~dataout\);

\contador_segundos|FFS3|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos|FFS3|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS3|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos|FFS0|AUX~dataout\ & \contador_segundos|FFS3|AUX~dataout\ & \contador_segundos|FFS1|AUX~dataout\);

\contador_segundos|FFS0|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos|FFS2|AUX~dataout\ & NOT \contador_segundos|FFS0|AUX~dataout\ & \contador_segundos|FFS3|AUX~dataout\);

\contador_segundos|FFS0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos|FFS0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos|FFS0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\contador_segundos|FFS1|ALT_INV_AUX~dataout\ <= NOT \contador_segundos|FFS1|AUX~dataout\;
\contador_minutos|FFM2|ALT_INV_AUX~dataout\ <= NOT \contador_minutos|FFM2|AUX~dataout\;
\contador_minutos|FFM1|ALT_INV_AUX~dataout\ <= NOT \contador_minutos|FFM1|AUX~dataout\;
\contador_segundos|FFS2|ALT_INV_AUX~dataout\ <= NOT \contador_segundos|FFS2|AUX~dataout\;
\contador_minutos|FFM0|ALT_INV_AUX~dataout\ <= NOT \contador_minutos|FFM0|AUX~dataout\;
\contador_segundos|FFS3|ALT_INV_AUX~dataout\ <= NOT \contador_segundos|FFS3|AUX~dataout\;
\contador_segundos|FFS0|ALT_INV_AUX~dataout\ <= NOT \contador_segundos|FFS0|AUX~dataout\;
\ALT_INV_CLEAR~dataout\ <= NOT \CLEAR~dataout\;
\ALT_INV_CLOCK~dataout\ <= NOT \CLOCK~dataout\;

-- Location: PIN_83
\CLOCK~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLOCK,
	dataout => \CLOCK~dataout\);

-- Location: PIN_1
\CLEAR~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "input",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLEAR,
	dataout => \CLEAR~dataout\);

-- Location: LC8
\contador_segundos|FFS2|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos|FFS2|AUX_pterm0_bus\,
	pterm1 => \contador_segundos|FFS2|AUX_pterm1_bus\,
	pterm2 => \contador_segundos|FFS2|AUX_pterm2_bus\,
	pterm3 => \contador_segundos|FFS2|AUX_pterm3_bus\,
	pterm4 => \contador_segundos|FFS2|AUX_pterm4_bus\,
	pterm5 => \contador_segundos|FFS2|AUX_pterm5_bus\,
	pxor => \contador_segundos|FFS2|AUX_pxor_bus\,
	pclk => \contador_segundos|FFS2|AUX_pclk_bus\,
	papre => \contador_segundos|FFS2|AUX_papre_bus\,
	paclr => \contador_segundos|FFS2|AUX_paclr_bus\,
	pena => \contador_segundos|FFS2|AUX_pena_bus\,
	dataout => \contador_segundos|FFS2|AUX~dataout\);

-- Location: LC13
\contador_segundos|FFS3|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos|FFS3|AUX_pterm0_bus\,
	pterm1 => \contador_segundos|FFS3|AUX_pterm1_bus\,
	pterm2 => \contador_segundos|FFS3|AUX_pterm2_bus\,
	pterm3 => \contador_segundos|FFS3|AUX_pterm3_bus\,
	pterm4 => \contador_segundos|FFS3|AUX_pterm4_bus\,
	pterm5 => \contador_segundos|FFS3|AUX_pterm5_bus\,
	pxor => \contador_segundos|FFS3|AUX_pxor_bus\,
	pclk => \contador_segundos|FFS3|AUX_pclk_bus\,
	papre => \contador_segundos|FFS3|AUX_papre_bus\,
	paclr => \contador_segundos|FFS3|AUX_paclr_bus\,
	pena => \contador_segundos|FFS3|AUX_pena_bus\,
	dataout => \contador_segundos|FFS3|AUX~dataout\);

-- Location: LC14
\contador_segundos|FFS0|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos|FFS0|AUX_pterm0_bus\,
	pterm1 => \contador_segundos|FFS0|AUX_pterm1_bus\,
	pterm2 => \contador_segundos|FFS0|AUX_pterm2_bus\,
	pterm3 => \contador_segundos|FFS0|AUX_pterm3_bus\,
	pterm4 => \contador_segundos|FFS0|AUX_pterm4_bus\,
	pterm5 => \contador_segundos|FFS0|AUX_pterm5_bus\,
	pxor => \contador_segundos|FFS0|AUX_pxor_bus\,
	pclk => \contador_segundos|FFS0|AUX_pclk_bus\,
	papre => \contador_segundos|FFS0|AUX_papre_bus\,
	paclr => \contador_segundos|FFS0|AUX_paclr_bus\,
	pena => \contador_segundos|FFS0|AUX_pena_bus\,
	dataout => \contador_segundos|FFS0|AUX~dataout\);

-- Location: LC3
\contador_segundos|FFS1|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos|FFS1|AUX_pterm0_bus\,
	pterm1 => \contador_segundos|FFS1|AUX_pterm1_bus\,
	pterm2 => \contador_segundos|FFS1|AUX_pterm2_bus\,
	pterm3 => \contador_segundos|FFS1|AUX_pterm3_bus\,
	pterm4 => \contador_segundos|FFS1|AUX_pterm4_bus\,
	pterm5 => \contador_segundos|FFS1|AUX_pterm5_bus\,
	pxor => \contador_segundos|FFS1|AUX_pxor_bus\,
	pclk => \contador_segundos|FFS1|AUX_pclk_bus\,
	papre => \contador_segundos|FFS1|AUX_papre_bus\,
	paclr => \contador_segundos|FFS1|AUX_paclr_bus\,
	pena => \contador_segundos|FFS1|AUX_pena_bus\,
	dataout => \contador_segundos|FFS1|AUX~dataout\);

-- Location: LC6
\contador_minutos|FFM1|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos|FFM1|AUX_pterm0_bus\,
	pterm1 => \contador_minutos|FFM1|AUX_pterm1_bus\,
	pterm2 => \contador_minutos|FFM1|AUX_pterm2_bus\,
	pterm3 => \contador_minutos|FFM1|AUX_pterm3_bus\,
	pterm4 => \contador_minutos|FFM1|AUX_pterm4_bus\,
	pterm5 => \contador_minutos|FFM1|AUX_pterm5_bus\,
	pxor => \contador_minutos|FFM1|AUX_pxor_bus\,
	pclk => \contador_minutos|FFM1|AUX_pclk_bus\,
	papre => \contador_minutos|FFM1|AUX_papre_bus\,
	paclr => \contador_minutos|FFM1|AUX_paclr_bus\,
	pena => \contador_minutos|FFM1|AUX_pena_bus\,
	dataout => \contador_minutos|FFM1|AUX~dataout\);

-- Location: LC11
\contador_minutos|FFM0|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos|FFM0|AUX_pterm0_bus\,
	pterm1 => \contador_minutos|FFM0|AUX_pterm1_bus\,
	pterm2 => \contador_minutos|FFM0|AUX_pterm2_bus\,
	pterm3 => \contador_minutos|FFM0|AUX_pterm3_bus\,
	pterm4 => \contador_minutos|FFM0|AUX_pterm4_bus\,
	pterm5 => \contador_minutos|FFM0|AUX_pterm5_bus\,
	pxor => \contador_minutos|FFM0|AUX_pxor_bus\,
	pclk => \contador_minutos|FFM0|AUX_pclk_bus\,
	papre => \contador_minutos|FFM0|AUX_papre_bus\,
	paclr => \contador_minutos|FFM0|AUX_paclr_bus\,
	pena => \contador_minutos|FFM0|AUX_pena_bus\,
	dataout => \contador_minutos|FFM0|AUX~dataout\);

-- Location: LC5
\contador_minutos|FFM2|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_CLOCK~dataout\,
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos|FFM2|AUX_pterm0_bus\,
	pterm1 => \contador_minutos|FFM2|AUX_pterm1_bus\,
	pterm2 => \contador_minutos|FFM2|AUX_pterm2_bus\,
	pterm3 => \contador_minutos|FFM2|AUX_pterm3_bus\,
	pterm4 => \contador_minutos|FFM2|AUX_pterm4_bus\,
	pterm5 => \contador_minutos|FFM2|AUX_pterm5_bus\,
	pxor => \contador_minutos|FFM2|AUX_pxor_bus\,
	pclk => \contador_minutos|FFM2|AUX_pclk_bus\,
	papre => \contador_minutos|FFM2|AUX_papre_bus\,
	paclr => \contador_minutos|FFM2|AUX_paclr_bus\,
	pena => \contador_minutos|FFM2|AUX_pena_bus\,
	dataout => \contador_minutos|FFM2|AUX~dataout\);

-- Location: PIN_12
\SEG[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_segundos|FFS1|AUX~dataout\,
	oe => VCC,
	padio => ww_SEG(1));

-- Location: PIN_11
\MIN[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_minutos|FFM2|AUX~dataout\,
	oe => VCC,
	padio => ww_MIN(2));

-- Location: PIN_10
\MIN[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_minutos|FFM1|AUX~dataout\,
	oe => VCC,
	padio => ww_MIN(1));

-- Location: PIN_9
\SEG[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_segundos|FFS2|AUX~dataout\,
	oe => VCC,
	padio => ww_SEG(2));

-- Location: PIN_8
\MIN[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_minutos|FFM0|AUX~dataout\,
	oe => VCC,
	padio => ww_MIN(0));

-- Location: PIN_6
\SEG[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_segundos|FFS3|AUX~dataout\,
	oe => VCC,
	padio => ww_SEG(3));

-- Location: PIN_5
\SEG[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \contador_segundos|FFS0|AUX~dataout\,
	oe => VCC,
	padio => ww_SEG(0));
END structure;


