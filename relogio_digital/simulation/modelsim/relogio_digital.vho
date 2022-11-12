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

-- DATE "11/12/2022 14:40:43"

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
	DISPLAYS0 : OUT std_logic_vector(0 TO 6);
	DISPLAYS1 : OUT std_logic_vector(0 TO 6);
	DISPLAYM0 : OUT std_logic_vector(0 TO 6);
	DISPLAYM1 : OUT std_logic_vector(0 TO 6)
	);
END relogio_digital;

-- Design Ports Information
-- CLEAR	=>  Location: PIN_1
-- CLOCK	=>  Location: PIN_83
-- DISPLAYS0[6]	=>  Location: PIN_11
-- DISPLAYS0[4]	=>  Location: PIN_10
-- DISPLAYS0[3]	=>  Location: PIN_9
-- DISPLAYS0[2]	=>  Location: PIN_8
-- DISPLAYS0[1]	=>  Location: PIN_12
-- DISPLAYS0[5]	=>  Location: PIN_6
-- DISPLAYS0[0]	=>  Location: PIN_4
-- DISPLAYS1[5]	=>  Location: PIN_5
-- DISPLAYS1[2]	=>  Location: PIN_40
-- DISPLAYS1[0]	=>  Location: PIN_39
-- DISPLAYS1[6]	=>  Location: PIN_36
-- DISPLAYS1[4]	=>  Location: PIN_41
-- DISPLAYS1[1]	=>  Location: PIN_37
-- DISPLAYS1[3]	=>  Location: PIN_35
-- DISPLAYM1[2]	=>  Location: PIN_21
-- DISPLAYM1[5]	=>  Location: PIN_20
-- DISPLAYM1[0]	=>  Location: PIN_18
-- DISPLAYM1[6]	=>  Location: PIN_15
-- DISPLAYM1[4]	=>  Location: PIN_17
-- DISPLAYM1[1]	=>  Location: PIN_16
-- DISPLAYM1[3]	=>  Location: PIN_22
-- DISPLAYM0[6]	=>  Location: PIN_31
-- DISPLAYM0[4]	=>  Location: PIN_30
-- DISPLAYM0[3]	=>  Location: PIN_29
-- DISPLAYM0[2]	=>  Location: PIN_27
-- DISPLAYM0[1]	=>  Location: PIN_28
-- DISPLAYM0[5]	=>  Location: PIN_25
-- DISPLAYM0[0]	=>  Location: PIN_24

ARCHITECTURE structure OF relogio_digital IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_CLEAR : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_DISPLAYS0 : std_logic_vector(0 TO 6);
SIGNAL ww_DISPLAYS1 : std_logic_vector(0 TO 6);
SIGNAL ww_DISPLAYM0 : std_logic_vector(0 TO 6);
SIGNAL ww_DISPLAYM1 : std_logic_vector(0 TO 6);
SIGNAL \contador_segundos0|FFS1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS3|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos0|FFS2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux6~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux4~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux3~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux1~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux2~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux5~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux5~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors0|Mux0~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_segundos1|FFM1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux2~2_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux0~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux4~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux1~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux6~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadors1|Mux3~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS0|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux2~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux5~6_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS3|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos1|FFM1|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux0~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux4~3_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux1~4_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux6~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm1|Mux3~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \contador_minutos0|FFS2|AUX_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux6~8_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux4~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux3~10_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux1~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux2~5_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux5~9_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm0_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm1_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm2_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm3_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm4_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pterm5_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pxor_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pclk_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_pena_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_paclr_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \decodificadorm0|Mux0~7_papre_bus\ : std_logic_vector(51 DOWNTO 0);
SIGNAL \CLOCK~dataout\ : std_logic;
SIGNAL \CLEAR~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS2|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS3|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS1|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS0|AUX~dataout\ : std_logic;
SIGNAL \decodificadors0|Mux6~8_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux4~5_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux3~10_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux2~5_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux1~9_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux5~9_dataout\ : std_logic;
SIGNAL \decodificadors0|Mux0~7_dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM2|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM1|AUX~dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM0|AUX~dataout\ : std_logic;
SIGNAL \decodificadors1|Mux5~6_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux2~2_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux0~4_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux6~7_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux4~3_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux1~4_dataout\ : std_logic;
SIGNAL \decodificadors1|Mux3~8_dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS0|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS2|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS3|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS1|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM1|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM0|AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM2|AUX~dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux2~3_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux5~6_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux0~4_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux6~7_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux4~3_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux1~4_dataout\ : std_logic;
SIGNAL \decodificadorm1|Mux3~8_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux6~8_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux4~5_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux3~10_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux2~5_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux1~9_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux5~9_dataout\ : std_logic;
SIGNAL \decodificadorm0|Mux0~7_dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS3|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos0|FFS2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_segundos1|FFM1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS0|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS3|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos1|FFM1|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \contador_minutos0|FFS2|ALT_INV_AUX~dataout\ : std_logic;
SIGNAL \ALT_INV_CLEAR~dataout\ : std_logic;
SIGNAL \ALT_INV_CLOCK~dataout\ : std_logic;

BEGIN

ww_CLEAR <= CLEAR;
ww_CLOCK <= CLOCK;
DISPLAYS0 <= ww_DISPLAYS0;
DISPLAYS1 <= ww_DISPLAYS1;
DISPLAYM0 <= ww_DISPLAYM0;
DISPLAYM1 <= ww_DISPLAYM1;

\contador_segundos0|FFS1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS0|AUX~dataout\);

\contador_segundos0|FFS1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\);

\contador_segundos0|FFS1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos0|FFS1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\contador_segundos0|FFS0|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\contador_segundos0|FFS0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos0|FFS0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\);

\contador_segundos0|FFS3|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\);

\contador_segundos0|FFS3|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos0|FFS3|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS3|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM0|AUX~dataout\ & \contador_segundos1|FFM2|AUX~dataout\ & \contador_segundos1|FFM1|AUX~dataout\);

\contador_segundos1|FFM0|AUX_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\contador_segundos1|FFM0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos1|FFM0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\);

\contador_segundos0|FFS2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\contador_segundos0|FFS2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos0|FFS2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos0|FFS2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\ & \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM2|AUX~dataout\);

\contador_segundos1|FFM2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & \contador_segundos1|FFM2|AUX~dataout\);

\contador_segundos1|FFM2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\contador_segundos1|FFM2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos1|FFM2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\);

\decodificadors0|Mux6~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\);

\decodificadors0|Mux6~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\);

\decodificadors0|Mux6~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\);

\decodificadors0|Mux6~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux6~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux6~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\);

\decodificadors0|Mux4~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux4~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\);

\decodificadors0|Mux4~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux4~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux4~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux3~10_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux3~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux3~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux3~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux3~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux3~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux3~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux3~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux3~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux3~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux3~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux1~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux1~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux1~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux1~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux1~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux1~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux2~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux2~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux2~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux2~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux2~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux5~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux5~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & \contador_segundos0|FFS0|AUX~dataout\);

\decodificadors0|Mux5~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS1|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\);

\decodificadors0|Mux5~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux5~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux5~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux5~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux5~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\decodificadors1|Mux5~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux5~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux5~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS3|AUX~dataout\ & \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux0~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS2|AUX~dataout\ & \contador_segundos0|FFS3|AUX~dataout\);

\decodificadors0|Mux0~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS0|AUX~dataout\ & \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux0~7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\decodificadors0|Mux0~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors0|Mux0~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors0|Mux0~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM2|AUX~dataout\);

\contador_segundos1|FFM1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM0|AUX~dataout\ & \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM2|AUX~dataout\);

\contador_segundos1|FFM1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos0|FFS3|AUX~dataout\ & NOT \contador_segundos0|FFS0|AUX~dataout\ & NOT \contador_segundos0|FFS2|AUX~dataout\ & NOT \contador_segundos0|FFS1|AUX~dataout\);

\contador_segundos1|FFM1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_segundos1|FFM1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_segundos1|FFM1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & \contador_segundos1|FFM1|AUX~dataout\);

\decodificadors1|Mux2~2_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux2~2_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux2~2_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux0~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM2|AUX~dataout\ & \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux0~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\);

\decodificadors1|Mux0~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux0~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux0~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\);

\contador_minutos0|FFS1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\);

\contador_minutos0|FFS1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\contador_minutos0|FFS1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos0|FFS1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\decodificadors1|Mux4~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux4~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux4~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux4~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux1~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\ & \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux1~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\);

\decodificadors1|Mux1~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux1~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux1~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM2|AUX~dataout\);

\decodificadors1|Mux6~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM0|AUX~dataout\ & \contador_segundos1|FFM2|AUX~dataout\);

\decodificadors1|Mux6~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM1|AUX~dataout\ & \contador_segundos1|FFM2|AUX~dataout\);

\decodificadors1|Mux6~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux6~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux6~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM1|AUX~dataout\ & \contador_segundos1|FFM2|AUX~dataout\ & \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux3~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux3~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\);

\decodificadors1|Mux3~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_segundos1|FFM1|AUX~dataout\ & NOT \contador_segundos1|FFM2|AUX~dataout\);

\decodificadors1|Mux3~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadors1|Mux3~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadors1|Mux3~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM0|AUX~dataout\ & \contador_minutos1|FFM2|AUX~dataout\ & \contador_minutos1|FFM1|AUX~dataout\);

\contador_minutos1|FFM0|AUX_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\contador_minutos1|FFM0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos1|FFM0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\contador_minutos0|FFS0|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\contador_minutos0|FFS0|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\contador_minutos0|FFS0|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos0|FFS0|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS0|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & \contador_minutos1|FFM0|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\contador_minutos1|FFM2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\ & \contador_minutos1|FFM2|AUX~dataout\);

\contador_minutos1|FFM2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\contador_minutos1|FFM2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos1|FFM2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux2~3_pterm2_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux2~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux2~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux5~6_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM2|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux5~6_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM2|AUX~dataout\ & NOT \contador_minutos1|FFM1|AUX~dataout\);

\decodificadorm1|Mux5~6_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux5~6_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux5~6_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\);

\contador_minutos0|FFS3|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\);

\contador_minutos0|FFS3|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\contador_minutos0|FFS3|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos0|FFS3|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS3|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM0|AUX~dataout\ & NOT \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\contador_minutos1|FFM1|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM0|AUX~dataout\ & \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\contador_minutos1|FFM1|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\contador_minutos1|FFM1|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos1|FFM1|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos1|FFM1|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM2|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux0~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM2|AUX~dataout\ & \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux0~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\);

\decodificadorm1|Mux0~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux0~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux0~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM2|AUX~dataout\ & NOT \contador_minutos1|FFM1|AUX~dataout\);

\decodificadorm1|Mux4~3_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux4~3_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux4~3_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux4~3_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux1~4_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux1~4_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux1~4_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux1~4_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux1~4_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux6~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM0|AUX~dataout\ & \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux6~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM1|AUX~dataout\ & \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux6~7_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux6~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux6~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM1|AUX~dataout\ & \contador_minutos1|FFM2|AUX~dataout\ & \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux3~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux3~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos1|FFM2|AUX~dataout\ & NOT \contador_minutos1|FFM0|AUX~dataout\);

\decodificadorm1|Mux3~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos1|FFM1|AUX~dataout\ & NOT \contador_minutos1|FFM2|AUX~dataout\);

\decodificadorm1|Mux3~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm1|Mux3~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm1|Mux3~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS0|AUX~dataout\);

\contador_minutos0|FFS2|AUX_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\contador_minutos0|FFS2|AUX_pterm3_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_pclk_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_segundos1|FFM2|AUX~dataout\ & NOT \contador_segundos1|FFM0|AUX~dataout\ & NOT \contador_segundos1|FFM1|AUX~dataout\);

\contador_minutos0|FFS2|AUX_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\contador_minutos0|FFS2|AUX_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\contador_minutos0|FFS2|AUX_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS0|AUX~dataout\);

\decodificadorm0|Mux6~8_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\);

\decodificadorm0|Mux6~8_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\);

\decodificadorm0|Mux6~8_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\);

\decodificadorm0|Mux6~8_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux6~8_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux6~8_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\);

\decodificadorm0|Mux4~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux4~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\);

\decodificadorm0|Mux4~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux4~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux4~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux3~10_pterm0_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux3~10_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux3~10_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux3~10_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux3~10_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux3~10_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux3~10_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux3~10_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux3~10_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux3~10_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux3~10_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux1~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux1~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux1~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux1~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux1~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux1~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux2~5_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux2~5_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux2~5_pterm4_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux2~5_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux2~5_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux5~9_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux5~9_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & \contador_minutos0|FFS0|AUX~dataout\);

\decodificadorm0|Mux5~9_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS1|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\);

\decodificadorm0|Mux5~9_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux5~9_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux5~9_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_pterm0_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_pterm1_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS3|AUX~dataout\ & \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux0~7_pterm2_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS2|AUX~dataout\ & \contador_minutos0|FFS3|AUX~dataout\);

\decodificadorm0|Mux0~7_pterm3_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & NOT \contador_minutos0|FFS0|AUX~dataout\ & \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux0~7_pterm4_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc
& vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & \contador_minutos0|FFS0|AUX~dataout\ & NOT \contador_minutos0|FFS2|AUX~dataout\ & NOT \contador_minutos0|FFS3|AUX~dataout\ & NOT \contador_minutos0|FFS1|AUX~dataout\);

\decodificadorm0|Mux0~7_pterm5_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_pxor_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_pclk_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_pena_bus\ <= (vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & 
vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc & vcc);

\decodificadorm0|Mux0~7_paclr_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\decodificadorm0|Mux0~7_papre_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);
\contador_segundos0|FFS1|ALT_INV_AUX~dataout\ <= NOT \contador_segundos0|FFS1|AUX~dataout\;
\contador_segundos0|FFS0|ALT_INV_AUX~dataout\ <= NOT \contador_segundos0|FFS0|AUX~dataout\;
\contador_segundos0|FFS3|ALT_INV_AUX~dataout\ <= NOT \contador_segundos0|FFS3|AUX~dataout\;
\contador_segundos1|FFM0|ALT_INV_AUX~dataout\ <= NOT \contador_segundos1|FFM0|AUX~dataout\;
\contador_segundos0|FFS2|ALT_INV_AUX~dataout\ <= NOT \contador_segundos0|FFS2|AUX~dataout\;
\contador_segundos1|FFM2|ALT_INV_AUX~dataout\ <= NOT \contador_segundos1|FFM2|AUX~dataout\;
\contador_segundos1|FFM1|ALT_INV_AUX~dataout\ <= NOT \contador_segundos1|FFM1|AUX~dataout\;
\contador_minutos0|FFS1|ALT_INV_AUX~dataout\ <= NOT \contador_minutos0|FFS1|AUX~dataout\;
\contador_minutos1|FFM0|ALT_INV_AUX~dataout\ <= NOT \contador_minutos1|FFM0|AUX~dataout\;
\contador_minutos0|FFS0|ALT_INV_AUX~dataout\ <= NOT \contador_minutos0|FFS0|AUX~dataout\;
\contador_minutos1|FFM2|ALT_INV_AUX~dataout\ <= NOT \contador_minutos1|FFM2|AUX~dataout\;
\contador_minutos0|FFS3|ALT_INV_AUX~dataout\ <= NOT \contador_minutos0|FFS3|AUX~dataout\;
\contador_minutos1|FFM1|ALT_INV_AUX~dataout\ <= NOT \contador_minutos1|FFM1|AUX~dataout\;
\contador_minutos0|FFS2|ALT_INV_AUX~dataout\ <= NOT \contador_minutos0|FFS2|AUX~dataout\;
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

-- Location: LC9
\contador_segundos0|FFS2|AUX\ : max_mcell
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
	pterm0 => \contador_segundos0|FFS2|AUX_pterm0_bus\,
	pterm1 => \contador_segundos0|FFS2|AUX_pterm1_bus\,
	pterm2 => \contador_segundos0|FFS2|AUX_pterm2_bus\,
	pterm3 => \contador_segundos0|FFS2|AUX_pterm3_bus\,
	pterm4 => \contador_segundos0|FFS2|AUX_pterm4_bus\,
	pterm5 => \contador_segundos0|FFS2|AUX_pterm5_bus\,
	pxor => \contador_segundos0|FFS2|AUX_pxor_bus\,
	pclk => \contador_segundos0|FFS2|AUX_pclk_bus\,
	papre => \contador_segundos0|FFS2|AUX_papre_bus\,
	paclr => \contador_segundos0|FFS2|AUX_paclr_bus\,
	pena => \contador_segundos0|FFS2|AUX_pena_bus\,
	dataout => \contador_segundos0|FFS2|AUX~dataout\);

-- Location: LC7
\contador_segundos0|FFS3|AUX\ : max_mcell
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
	pterm0 => \contador_segundos0|FFS3|AUX_pterm0_bus\,
	pterm1 => \contador_segundos0|FFS3|AUX_pterm1_bus\,
	pterm2 => \contador_segundos0|FFS3|AUX_pterm2_bus\,
	pterm3 => \contador_segundos0|FFS3|AUX_pterm3_bus\,
	pterm4 => \contador_segundos0|FFS3|AUX_pterm4_bus\,
	pterm5 => \contador_segundos0|FFS3|AUX_pterm5_bus\,
	pxor => \contador_segundos0|FFS3|AUX_pxor_bus\,
	pclk => \contador_segundos0|FFS3|AUX_pclk_bus\,
	papre => \contador_segundos0|FFS3|AUX_papre_bus\,
	paclr => \contador_segundos0|FFS3|AUX_paclr_bus\,
	pena => \contador_segundos0|FFS3|AUX_pena_bus\,
	dataout => \contador_segundos0|FFS3|AUX~dataout\);

-- Location: LC10
\contador_segundos0|FFS1|AUX\ : max_mcell
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
	pterm0 => \contador_segundos0|FFS1|AUX_pterm0_bus\,
	pterm1 => \contador_segundos0|FFS1|AUX_pterm1_bus\,
	pterm2 => \contador_segundos0|FFS1|AUX_pterm2_bus\,
	pterm3 => \contador_segundos0|FFS1|AUX_pterm3_bus\,
	pterm4 => \contador_segundos0|FFS1|AUX_pterm4_bus\,
	pterm5 => \contador_segundos0|FFS1|AUX_pterm5_bus\,
	pxor => \contador_segundos0|FFS1|AUX_pxor_bus\,
	pclk => \contador_segundos0|FFS1|AUX_pclk_bus\,
	papre => \contador_segundos0|FFS1|AUX_papre_bus\,
	paclr => \contador_segundos0|FFS1|AUX_paclr_bus\,
	pena => \contador_segundos0|FFS1|AUX_pena_bus\,
	dataout => \contador_segundos0|FFS1|AUX~dataout\);

-- Location: LC12
\contador_segundos0|FFS0|AUX\ : max_mcell
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
	pterm0 => \contador_segundos0|FFS0|AUX_pterm0_bus\,
	pterm1 => \contador_segundos0|FFS0|AUX_pterm1_bus\,
	pterm2 => \contador_segundos0|FFS0|AUX_pterm2_bus\,
	pterm3 => \contador_segundos0|FFS0|AUX_pterm3_bus\,
	pterm4 => \contador_segundos0|FFS0|AUX_pterm4_bus\,
	pterm5 => \contador_segundos0|FFS0|AUX_pterm5_bus\,
	pxor => \contador_segundos0|FFS0|AUX_pxor_bus\,
	pclk => \contador_segundos0|FFS0|AUX_pclk_bus\,
	papre => \contador_segundos0|FFS0|AUX_papre_bus\,
	paclr => \contador_segundos0|FFS0|AUX_paclr_bus\,
	pena => \contador_segundos0|FFS0|AUX_pena_bus\,
	dataout => \contador_segundos0|FFS0|AUX~dataout\);

-- Location: LC5
\decodificadors0|Mux6~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux6~8_pterm0_bus\,
	pterm1 => \decodificadors0|Mux6~8_pterm1_bus\,
	pterm2 => \decodificadors0|Mux6~8_pterm2_bus\,
	pterm3 => \decodificadors0|Mux6~8_pterm3_bus\,
	pterm4 => \decodificadors0|Mux6~8_pterm4_bus\,
	pterm5 => \decodificadors0|Mux6~8_pterm5_bus\,
	pxor => \decodificadors0|Mux6~8_pxor_bus\,
	pclk => \decodificadors0|Mux6~8_pclk_bus\,
	papre => \decodificadors0|Mux6~8_papre_bus\,
	paclr => \decodificadors0|Mux6~8_paclr_bus\,
	pena => \decodificadors0|Mux6~8_pena_bus\,
	dataout => \decodificadors0|Mux6~8_dataout\);

-- Location: LC6
\decodificadors0|Mux4~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux4~5_pterm0_bus\,
	pterm1 => \decodificadors0|Mux4~5_pterm1_bus\,
	pterm2 => \decodificadors0|Mux4~5_pterm2_bus\,
	pterm3 => \decodificadors0|Mux4~5_pterm3_bus\,
	pterm4 => \decodificadors0|Mux4~5_pterm4_bus\,
	pterm5 => \decodificadors0|Mux4~5_pterm5_bus\,
	pxor => \decodificadors0|Mux4~5_pxor_bus\,
	pclk => \decodificadors0|Mux4~5_pclk_bus\,
	papre => \decodificadors0|Mux4~5_papre_bus\,
	paclr => \decodificadors0|Mux4~5_paclr_bus\,
	pena => \decodificadors0|Mux4~5_pena_bus\,
	dataout => \decodificadors0|Mux4~5_dataout\);

-- Location: LC8
\decodificadors0|Mux3~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux3~10_pterm0_bus\,
	pterm1 => \decodificadors0|Mux3~10_pterm1_bus\,
	pterm2 => \decodificadors0|Mux3~10_pterm2_bus\,
	pterm3 => \decodificadors0|Mux3~10_pterm3_bus\,
	pterm4 => \decodificadors0|Mux3~10_pterm4_bus\,
	pterm5 => \decodificadors0|Mux3~10_pterm5_bus\,
	pxor => \decodificadors0|Mux3~10_pxor_bus\,
	pclk => \decodificadors0|Mux3~10_pclk_bus\,
	papre => \decodificadors0|Mux3~10_papre_bus\,
	paclr => \decodificadors0|Mux3~10_paclr_bus\,
	pena => \decodificadors0|Mux3~10_pena_bus\,
	dataout => \decodificadors0|Mux3~10_dataout\);

-- Location: LC11
\decodificadors0|Mux2~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux2~5_pterm0_bus\,
	pterm1 => \decodificadors0|Mux2~5_pterm1_bus\,
	pterm2 => \decodificadors0|Mux2~5_pterm2_bus\,
	pterm3 => \decodificadors0|Mux2~5_pterm3_bus\,
	pterm4 => \decodificadors0|Mux2~5_pterm4_bus\,
	pterm5 => \decodificadors0|Mux2~5_pterm5_bus\,
	pxor => \decodificadors0|Mux2~5_pxor_bus\,
	pclk => \decodificadors0|Mux2~5_pclk_bus\,
	papre => \decodificadors0|Mux2~5_papre_bus\,
	paclr => \decodificadors0|Mux2~5_paclr_bus\,
	pena => \decodificadors0|Mux2~5_pena_bus\,
	dataout => \decodificadors0|Mux2~5_dataout\);

-- Location: LC3
\decodificadors0|Mux1~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux1~9_pterm0_bus\,
	pterm1 => \decodificadors0|Mux1~9_pterm1_bus\,
	pterm2 => \decodificadors0|Mux1~9_pterm2_bus\,
	pterm3 => \decodificadors0|Mux1~9_pterm3_bus\,
	pterm4 => \decodificadors0|Mux1~9_pterm4_bus\,
	pterm5 => \decodificadors0|Mux1~9_pterm5_bus\,
	pxor => \decodificadors0|Mux1~9_pxor_bus\,
	pclk => \decodificadors0|Mux1~9_pclk_bus\,
	papre => \decodificadors0|Mux1~9_papre_bus\,
	paclr => \decodificadors0|Mux1~9_paclr_bus\,
	pena => \decodificadors0|Mux1~9_pena_bus\,
	dataout => \decodificadors0|Mux1~9_dataout\);

-- Location: LC13
\decodificadors0|Mux5~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux5~9_pterm0_bus\,
	pterm1 => \decodificadors0|Mux5~9_pterm1_bus\,
	pterm2 => \decodificadors0|Mux5~9_pterm2_bus\,
	pterm3 => \decodificadors0|Mux5~9_pterm3_bus\,
	pterm4 => \decodificadors0|Mux5~9_pterm4_bus\,
	pterm5 => \decodificadors0|Mux5~9_pterm5_bus\,
	pxor => \decodificadors0|Mux5~9_pxor_bus\,
	pclk => \decodificadors0|Mux5~9_pclk_bus\,
	papre => \decodificadors0|Mux5~9_papre_bus\,
	paclr => \decodificadors0|Mux5~9_paclr_bus\,
	pena => \decodificadors0|Mux5~9_pena_bus\,
	dataout => \decodificadors0|Mux5~9_dataout\);

-- Location: LC16
\decodificadors0|Mux0~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors0|Mux0~7_pterm0_bus\,
	pterm1 => \decodificadors0|Mux0~7_pterm1_bus\,
	pterm2 => \decodificadors0|Mux0~7_pterm2_bus\,
	pterm3 => \decodificadors0|Mux0~7_pterm3_bus\,
	pterm4 => \decodificadors0|Mux0~7_pterm4_bus\,
	pterm5 => \decodificadors0|Mux0~7_pterm5_bus\,
	pxor => \decodificadors0|Mux0~7_pxor_bus\,
	pclk => \decodificadors0|Mux0~7_pclk_bus\,
	papre => \decodificadors0|Mux0~7_papre_bus\,
	paclr => \decodificadors0|Mux0~7_paclr_bus\,
	pena => \decodificadors0|Mux0~7_pena_bus\,
	dataout => \decodificadors0|Mux0~7_dataout\);

-- Location: LC2
\contador_segundos1|FFM2|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos1|FFM2|AUX_pterm0_bus\,
	pterm1 => \contador_segundos1|FFM2|AUX_pterm1_bus\,
	pterm2 => \contador_segundos1|FFM2|AUX_pterm2_bus\,
	pterm3 => \contador_segundos1|FFM2|AUX_pterm3_bus\,
	pterm4 => \contador_segundos1|FFM2|AUX_pterm4_bus\,
	pterm5 => \contador_segundos1|FFM2|AUX_pterm5_bus\,
	pxor => \contador_segundos1|FFM2|AUX_pxor_bus\,
	pclk => \contador_segundos1|FFM2|AUX_pclk_bus\,
	papre => \contador_segundos1|FFM2|AUX_papre_bus\,
	paclr => \contador_segundos1|FFM2|AUX_paclr_bus\,
	pena => \contador_segundos1|FFM2|AUX_pena_bus\,
	dataout => \contador_segundos1|FFM2|AUX~dataout\);

-- Location: LC4
\contador_segundos1|FFM1|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos1|FFM1|AUX_pterm0_bus\,
	pterm1 => \contador_segundos1|FFM1|AUX_pterm1_bus\,
	pterm2 => \contador_segundos1|FFM1|AUX_pterm2_bus\,
	pterm3 => \contador_segundos1|FFM1|AUX_pterm3_bus\,
	pterm4 => \contador_segundos1|FFM1|AUX_pterm4_bus\,
	pterm5 => \contador_segundos1|FFM1|AUX_pterm5_bus\,
	pxor => \contador_segundos1|FFM1|AUX_pxor_bus\,
	pclk => \contador_segundos1|FFM1|AUX_pclk_bus\,
	papre => \contador_segundos1|FFM1|AUX_papre_bus\,
	paclr => \contador_segundos1|FFM1|AUX_paclr_bus\,
	pena => \contador_segundos1|FFM1|AUX_pena_bus\,
	dataout => \contador_segundos1|FFM1|AUX~dataout\);

-- Location: LC1
\contador_segundos1|FFM0|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_segundos1|FFM0|AUX_pterm0_bus\,
	pterm1 => \contador_segundos1|FFM0|AUX_pterm1_bus\,
	pterm2 => \contador_segundos1|FFM0|AUX_pterm2_bus\,
	pterm3 => \contador_segundos1|FFM0|AUX_pterm3_bus\,
	pterm4 => \contador_segundos1|FFM0|AUX_pterm4_bus\,
	pterm5 => \contador_segundos1|FFM0|AUX_pterm5_bus\,
	pxor => \contador_segundos1|FFM0|AUX_pxor_bus\,
	pclk => \contador_segundos1|FFM0|AUX_pclk_bus\,
	papre => \contador_segundos1|FFM0|AUX_papre_bus\,
	paclr => \contador_segundos1|FFM0|AUX_paclr_bus\,
	pena => \contador_segundos1|FFM0|AUX_pena_bus\,
	dataout => \contador_segundos1|FFM0|AUX~dataout\);

-- Location: LC14
\decodificadors1|Mux5~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux5~6_pterm0_bus\,
	pterm1 => \decodificadors1|Mux5~6_pterm1_bus\,
	pterm2 => \decodificadors1|Mux5~6_pterm2_bus\,
	pterm3 => \decodificadors1|Mux5~6_pterm3_bus\,
	pterm4 => \decodificadors1|Mux5~6_pterm4_bus\,
	pterm5 => \decodificadors1|Mux5~6_pterm5_bus\,
	pxor => \decodificadors1|Mux5~6_pxor_bus\,
	pclk => \decodificadors1|Mux5~6_pclk_bus\,
	papre => \decodificadors1|Mux5~6_papre_bus\,
	paclr => \decodificadors1|Mux5~6_paclr_bus\,
	pena => \decodificadors1|Mux5~6_pena_bus\,
	dataout => \decodificadors1|Mux5~6_dataout\);

-- Location: LC51
\decodificadors1|Mux2~2\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux2~2_pterm0_bus\,
	pterm1 => \decodificadors1|Mux2~2_pterm1_bus\,
	pterm2 => \decodificadors1|Mux2~2_pterm2_bus\,
	pterm3 => \decodificadors1|Mux2~2_pterm3_bus\,
	pterm4 => \decodificadors1|Mux2~2_pterm4_bus\,
	pterm5 => \decodificadors1|Mux2~2_pterm5_bus\,
	pxor => \decodificadors1|Mux2~2_pxor_bus\,
	pclk => \decodificadors1|Mux2~2_pclk_bus\,
	papre => \decodificadors1|Mux2~2_papre_bus\,
	paclr => \decodificadors1|Mux2~2_paclr_bus\,
	pena => \decodificadors1|Mux2~2_pena_bus\,
	dataout => \decodificadors1|Mux2~2_dataout\);

-- Location: LC53
\decodificadors1|Mux0~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux0~4_pterm0_bus\,
	pterm1 => \decodificadors1|Mux0~4_pterm1_bus\,
	pterm2 => \decodificadors1|Mux0~4_pterm2_bus\,
	pterm3 => \decodificadors1|Mux0~4_pterm3_bus\,
	pterm4 => \decodificadors1|Mux0~4_pterm4_bus\,
	pterm5 => \decodificadors1|Mux0~4_pterm5_bus\,
	pxor => \decodificadors1|Mux0~4_pxor_bus\,
	pclk => \decodificadors1|Mux0~4_pclk_bus\,
	papre => \decodificadors1|Mux0~4_papre_bus\,
	paclr => \decodificadors1|Mux0~4_paclr_bus\,
	pena => \decodificadors1|Mux0~4_pena_bus\,
	dataout => \decodificadors1|Mux0~4_dataout\);

-- Location: LC57
\decodificadors1|Mux6~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux6~7_pterm0_bus\,
	pterm1 => \decodificadors1|Mux6~7_pterm1_bus\,
	pterm2 => \decodificadors1|Mux6~7_pterm2_bus\,
	pterm3 => \decodificadors1|Mux6~7_pterm3_bus\,
	pterm4 => \decodificadors1|Mux6~7_pterm4_bus\,
	pterm5 => \decodificadors1|Mux6~7_pterm5_bus\,
	pxor => \decodificadors1|Mux6~7_pxor_bus\,
	pclk => \decodificadors1|Mux6~7_pclk_bus\,
	papre => \decodificadors1|Mux6~7_papre_bus\,
	paclr => \decodificadors1|Mux6~7_paclr_bus\,
	pena => \decodificadors1|Mux6~7_pena_bus\,
	dataout => \decodificadors1|Mux6~7_dataout\);

-- Location: LC49
\decodificadors1|Mux4~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux4~3_pterm0_bus\,
	pterm1 => \decodificadors1|Mux4~3_pterm1_bus\,
	pterm2 => \decodificadors1|Mux4~3_pterm2_bus\,
	pterm3 => \decodificadors1|Mux4~3_pterm3_bus\,
	pterm4 => \decodificadors1|Mux4~3_pterm4_bus\,
	pterm5 => \decodificadors1|Mux4~3_pterm5_bus\,
	pxor => \decodificadors1|Mux4~3_pxor_bus\,
	pclk => \decodificadors1|Mux4~3_pclk_bus\,
	papre => \decodificadors1|Mux4~3_papre_bus\,
	paclr => \decodificadors1|Mux4~3_paclr_bus\,
	pena => \decodificadors1|Mux4~3_pena_bus\,
	dataout => \decodificadors1|Mux4~3_dataout\);

-- Location: LC56
\decodificadors1|Mux1~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux1~4_pterm0_bus\,
	pterm1 => \decodificadors1|Mux1~4_pterm1_bus\,
	pterm2 => \decodificadors1|Mux1~4_pterm2_bus\,
	pterm3 => \decodificadors1|Mux1~4_pterm3_bus\,
	pterm4 => \decodificadors1|Mux1~4_pterm4_bus\,
	pterm5 => \decodificadors1|Mux1~4_pterm5_bus\,
	pxor => \decodificadors1|Mux1~4_pxor_bus\,
	pclk => \decodificadors1|Mux1~4_pclk_bus\,
	papre => \decodificadors1|Mux1~4_papre_bus\,
	paclr => \decodificadors1|Mux1~4_paclr_bus\,
	pena => \decodificadors1|Mux1~4_pena_bus\,
	dataout => \decodificadors1|Mux1~4_dataout\);

-- Location: LC59
\decodificadors1|Mux3~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadors1|Mux3~8_pterm0_bus\,
	pterm1 => \decodificadors1|Mux3~8_pterm1_bus\,
	pterm2 => \decodificadors1|Mux3~8_pterm2_bus\,
	pterm3 => \decodificadors1|Mux3~8_pterm3_bus\,
	pterm4 => \decodificadors1|Mux3~8_pterm4_bus\,
	pterm5 => \decodificadors1|Mux3~8_pterm5_bus\,
	pxor => \decodificadors1|Mux3~8_pxor_bus\,
	pclk => \decodificadors1|Mux3~8_pclk_bus\,
	papre => \decodificadors1|Mux3~8_papre_bus\,
	paclr => \decodificadors1|Mux3~8_paclr_bus\,
	pena => \decodificadors1|Mux3~8_pena_bus\,
	dataout => \decodificadors1|Mux3~8_dataout\);

-- Location: LC23
\contador_minutos0|FFS0|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos0|FFS0|AUX_pterm0_bus\,
	pterm1 => \contador_minutos0|FFS0|AUX_pterm1_bus\,
	pterm2 => \contador_minutos0|FFS0|AUX_pterm2_bus\,
	pterm3 => \contador_minutos0|FFS0|AUX_pterm3_bus\,
	pterm4 => \contador_minutos0|FFS0|AUX_pterm4_bus\,
	pterm5 => \contador_minutos0|FFS0|AUX_pterm5_bus\,
	pxor => \contador_minutos0|FFS0|AUX_pxor_bus\,
	pclk => \contador_minutos0|FFS0|AUX_pclk_bus\,
	papre => \contador_minutos0|FFS0|AUX_papre_bus\,
	paclr => \contador_minutos0|FFS0|AUX_paclr_bus\,
	pena => \contador_minutos0|FFS0|AUX_pena_bus\,
	dataout => \contador_minutos0|FFS0|AUX~dataout\);

-- Location: LC20
\contador_minutos0|FFS2|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos0|FFS2|AUX_pterm0_bus\,
	pterm1 => \contador_minutos0|FFS2|AUX_pterm1_bus\,
	pterm2 => \contador_minutos0|FFS2|AUX_pterm2_bus\,
	pterm3 => \contador_minutos0|FFS2|AUX_pterm3_bus\,
	pterm4 => \contador_minutos0|FFS2|AUX_pterm4_bus\,
	pterm5 => \contador_minutos0|FFS2|AUX_pterm5_bus\,
	pxor => \contador_minutos0|FFS2|AUX_pxor_bus\,
	pclk => \contador_minutos0|FFS2|AUX_pclk_bus\,
	papre => \contador_minutos0|FFS2|AUX_papre_bus\,
	paclr => \contador_minutos0|FFS2|AUX_paclr_bus\,
	pena => \contador_minutos0|FFS2|AUX_pena_bus\,
	dataout => \contador_minutos0|FFS2|AUX~dataout\);

-- Location: LC22
\contador_minutos0|FFS3|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos0|FFS3|AUX_pterm0_bus\,
	pterm1 => \contador_minutos0|FFS3|AUX_pterm1_bus\,
	pterm2 => \contador_minutos0|FFS3|AUX_pterm2_bus\,
	pterm3 => \contador_minutos0|FFS3|AUX_pterm3_bus\,
	pterm4 => \contador_minutos0|FFS3|AUX_pterm4_bus\,
	pterm5 => \contador_minutos0|FFS3|AUX_pterm5_bus\,
	pxor => \contador_minutos0|FFS3|AUX_pxor_bus\,
	pclk => \contador_minutos0|FFS3|AUX_pclk_bus\,
	papre => \contador_minutos0|FFS3|AUX_papre_bus\,
	paclr => \contador_minutos0|FFS3|AUX_paclr_bus\,
	pena => \contador_minutos0|FFS3|AUX_pena_bus\,
	dataout => \contador_minutos0|FFS3|AUX~dataout\);

-- Location: LC18
\contador_minutos0|FFS1|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos0|FFS1|AUX_pterm0_bus\,
	pterm1 => \contador_minutos0|FFS1|AUX_pterm1_bus\,
	pterm2 => \contador_minutos0|FFS1|AUX_pterm2_bus\,
	pterm3 => \contador_minutos0|FFS1|AUX_pterm3_bus\,
	pterm4 => \contador_minutos0|FFS1|AUX_pterm4_bus\,
	pterm5 => \contador_minutos0|FFS1|AUX_pterm5_bus\,
	pxor => \contador_minutos0|FFS1|AUX_pxor_bus\,
	pclk => \contador_minutos0|FFS1|AUX_pclk_bus\,
	papre => \contador_minutos0|FFS1|AUX_papre_bus\,
	paclr => \contador_minutos0|FFS1|AUX_paclr_bus\,
	pena => \contador_minutos0|FFS1|AUX_pena_bus\,
	dataout => \contador_minutos0|FFS1|AUX~dataout\);

-- Location: LC26
\contador_minutos1|FFM1|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos1|FFM1|AUX_pterm0_bus\,
	pterm1 => \contador_minutos1|FFM1|AUX_pterm1_bus\,
	pterm2 => \contador_minutos1|FFM1|AUX_pterm2_bus\,
	pterm3 => \contador_minutos1|FFM1|AUX_pterm3_bus\,
	pterm4 => \contador_minutos1|FFM1|AUX_pterm4_bus\,
	pterm5 => \contador_minutos1|FFM1|AUX_pterm5_bus\,
	pxor => \contador_minutos1|FFM1|AUX_pxor_bus\,
	pclk => \contador_minutos1|FFM1|AUX_pclk_bus\,
	papre => \contador_minutos1|FFM1|AUX_papre_bus\,
	paclr => \contador_minutos1|FFM1|AUX_paclr_bus\,
	pena => \contador_minutos1|FFM1|AUX_pena_bus\,
	dataout => \contador_minutos1|FFM1|AUX~dataout\);

-- Location: LC30
\contador_minutos1|FFM0|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "tff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos1|FFM0|AUX_pterm0_bus\,
	pterm1 => \contador_minutos1|FFM0|AUX_pterm1_bus\,
	pterm2 => \contador_minutos1|FFM0|AUX_pterm2_bus\,
	pterm3 => \contador_minutos1|FFM0|AUX_pterm3_bus\,
	pterm4 => \contador_minutos1|FFM0|AUX_pterm4_bus\,
	pterm5 => \contador_minutos1|FFM0|AUX_pterm5_bus\,
	pxor => \contador_minutos1|FFM0|AUX_pxor_bus\,
	pclk => \contador_minutos1|FFM0|AUX_pclk_bus\,
	papre => \contador_minutos1|FFM0|AUX_papre_bus\,
	paclr => \contador_minutos1|FFM0|AUX_paclr_bus\,
	pena => \contador_minutos1|FFM0|AUX_pena_bus\,
	dataout => \contador_minutos1|FFM0|AUX~dataout\);

-- Location: LC28
\contador_minutos1|FFM2|AUX\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "reg",
	pexp_mode => "off",
	power_up => "low",
	register_mode => "dff")
-- pragma translate_on
PORT MAP (
	aclr => \ALT_INV_CLEAR~dataout\,
	pterm0 => \contador_minutos1|FFM2|AUX_pterm0_bus\,
	pterm1 => \contador_minutos1|FFM2|AUX_pterm1_bus\,
	pterm2 => \contador_minutos1|FFM2|AUX_pterm2_bus\,
	pterm3 => \contador_minutos1|FFM2|AUX_pterm3_bus\,
	pterm4 => \contador_minutos1|FFM2|AUX_pterm4_bus\,
	pterm5 => \contador_minutos1|FFM2|AUX_pterm5_bus\,
	pxor => \contador_minutos1|FFM2|AUX_pxor_bus\,
	pclk => \contador_minutos1|FFM2|AUX_pclk_bus\,
	papre => \contador_minutos1|FFM2|AUX_papre_bus\,
	paclr => \contador_minutos1|FFM2|AUX_paclr_bus\,
	pena => \contador_minutos1|FFM2|AUX_pena_bus\,
	dataout => \contador_minutos1|FFM2|AUX~dataout\);

-- Location: LC19
\decodificadorm1|Mux2~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux2~3_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux2~3_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux2~3_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux2~3_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux2~3_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux2~3_pterm5_bus\,
	pxor => \decodificadorm1|Mux2~3_pxor_bus\,
	pclk => \decodificadorm1|Mux2~3_pclk_bus\,
	papre => \decodificadorm1|Mux2~3_papre_bus\,
	paclr => \decodificadorm1|Mux2~3_paclr_bus\,
	pena => \decodificadorm1|Mux2~3_pena_bus\,
	dataout => \decodificadorm1|Mux2~3_dataout\);

-- Location: LC21
\decodificadorm1|Mux5~6\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux5~6_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux5~6_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux5~6_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux5~6_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux5~6_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux5~6_pterm5_bus\,
	pxor => \decodificadorm1|Mux5~6_pxor_bus\,
	pclk => \decodificadorm1|Mux5~6_pclk_bus\,
	papre => \decodificadorm1|Mux5~6_papre_bus\,
	paclr => \decodificadorm1|Mux5~6_paclr_bus\,
	pena => \decodificadorm1|Mux5~6_pena_bus\,
	dataout => \decodificadorm1|Mux5~6_dataout\);

-- Location: LC24
\decodificadorm1|Mux0~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux0~4_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux0~4_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux0~4_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux0~4_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux0~4_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux0~4_pterm5_bus\,
	pxor => \decodificadorm1|Mux0~4_pxor_bus\,
	pclk => \decodificadorm1|Mux0~4_pclk_bus\,
	papre => \decodificadorm1|Mux0~4_papre_bus\,
	paclr => \decodificadorm1|Mux0~4_paclr_bus\,
	pena => \decodificadorm1|Mux0~4_pena_bus\,
	dataout => \decodificadorm1|Mux0~4_dataout\);

-- Location: LC29
\decodificadorm1|Mux6~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux6~7_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux6~7_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux6~7_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux6~7_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux6~7_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux6~7_pterm5_bus\,
	pxor => \decodificadorm1|Mux6~7_pxor_bus\,
	pclk => \decodificadorm1|Mux6~7_pclk_bus\,
	papre => \decodificadorm1|Mux6~7_papre_bus\,
	paclr => \decodificadorm1|Mux6~7_paclr_bus\,
	pena => \decodificadorm1|Mux6~7_pena_bus\,
	dataout => \decodificadorm1|Mux6~7_dataout\);

-- Location: LC25
\decodificadorm1|Mux4~3\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux4~3_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux4~3_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux4~3_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux4~3_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux4~3_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux4~3_pterm5_bus\,
	pxor => \decodificadorm1|Mux4~3_pxor_bus\,
	pclk => \decodificadorm1|Mux4~3_pclk_bus\,
	papre => \decodificadorm1|Mux4~3_papre_bus\,
	paclr => \decodificadorm1|Mux4~3_paclr_bus\,
	pena => \decodificadorm1|Mux4~3_pena_bus\,
	dataout => \decodificadorm1|Mux4~3_dataout\);

-- Location: LC27
\decodificadorm1|Mux1~4\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux1~4_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux1~4_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux1~4_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux1~4_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux1~4_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux1~4_pterm5_bus\,
	pxor => \decodificadorm1|Mux1~4_pxor_bus\,
	pclk => \decodificadorm1|Mux1~4_pclk_bus\,
	papre => \decodificadorm1|Mux1~4_papre_bus\,
	paclr => \decodificadorm1|Mux1~4_paclr_bus\,
	pena => \decodificadorm1|Mux1~4_pena_bus\,
	dataout => \decodificadorm1|Mux1~4_dataout\);

-- Location: LC17
\decodificadorm1|Mux3~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm1|Mux3~8_pterm0_bus\,
	pterm1 => \decodificadorm1|Mux3~8_pterm1_bus\,
	pterm2 => \decodificadorm1|Mux3~8_pterm2_bus\,
	pterm3 => \decodificadorm1|Mux3~8_pterm3_bus\,
	pterm4 => \decodificadorm1|Mux3~8_pterm4_bus\,
	pterm5 => \decodificadorm1|Mux3~8_pterm5_bus\,
	pxor => \decodificadorm1|Mux3~8_pxor_bus\,
	pclk => \decodificadorm1|Mux3~8_pclk_bus\,
	papre => \decodificadorm1|Mux3~8_papre_bus\,
	paclr => \decodificadorm1|Mux3~8_paclr_bus\,
	pena => \decodificadorm1|Mux3~8_pena_bus\,
	dataout => \decodificadorm1|Mux3~8_dataout\);

-- Location: LC35
\decodificadorm0|Mux6~8\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "normal",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux6~8_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux6~8_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux6~8_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux6~8_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux6~8_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux6~8_pterm5_bus\,
	pxor => \decodificadorm0|Mux6~8_pxor_bus\,
	pclk => \decodificadorm0|Mux6~8_pclk_bus\,
	papre => \decodificadorm0|Mux6~8_papre_bus\,
	paclr => \decodificadorm0|Mux6~8_paclr_bus\,
	pena => \decodificadorm0|Mux6~8_pena_bus\,
	dataout => \decodificadorm0|Mux6~8_dataout\);

-- Location: LC37
\decodificadorm0|Mux4~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux4~5_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux4~5_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux4~5_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux4~5_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux4~5_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux4~5_pterm5_bus\,
	pxor => \decodificadorm0|Mux4~5_pxor_bus\,
	pclk => \decodificadorm0|Mux4~5_pclk_bus\,
	papre => \decodificadorm0|Mux4~5_papre_bus\,
	paclr => \decodificadorm0|Mux4~5_paclr_bus\,
	pena => \decodificadorm0|Mux4~5_pena_bus\,
	dataout => \decodificadorm0|Mux4~5_dataout\);

-- Location: LC38
\decodificadorm0|Mux3~10\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux3~10_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux3~10_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux3~10_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux3~10_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux3~10_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux3~10_pterm5_bus\,
	pxor => \decodificadorm0|Mux3~10_pxor_bus\,
	pclk => \decodificadorm0|Mux3~10_pclk_bus\,
	papre => \decodificadorm0|Mux3~10_papre_bus\,
	paclr => \decodificadorm0|Mux3~10_paclr_bus\,
	pena => \decodificadorm0|Mux3~10_pena_bus\,
	dataout => \decodificadorm0|Mux3~10_dataout\);

-- Location: LC43
\decodificadorm0|Mux2~5\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux2~5_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux2~5_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux2~5_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux2~5_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux2~5_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux2~5_pterm5_bus\,
	pxor => \decodificadorm0|Mux2~5_pxor_bus\,
	pclk => \decodificadorm0|Mux2~5_pclk_bus\,
	papre => \decodificadorm0|Mux2~5_papre_bus\,
	paclr => \decodificadorm0|Mux2~5_paclr_bus\,
	pena => \decodificadorm0|Mux2~5_pena_bus\,
	dataout => \decodificadorm0|Mux2~5_dataout\);

-- Location: LC40
\decodificadorm0|Mux1~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux1~9_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux1~9_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux1~9_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux1~9_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux1~9_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux1~9_pterm5_bus\,
	pxor => \decodificadorm0|Mux1~9_pxor_bus\,
	pclk => \decodificadorm0|Mux1~9_pclk_bus\,
	papre => \decodificadorm0|Mux1~9_papre_bus\,
	paclr => \decodificadorm0|Mux1~9_paclr_bus\,
	pena => \decodificadorm0|Mux1~9_pena_bus\,
	dataout => \decodificadorm0|Mux1~9_dataout\);

-- Location: LC45
\decodificadorm0|Mux5~9\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux5~9_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux5~9_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux5~9_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux5~9_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux5~9_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux5~9_pterm5_bus\,
	pxor => \decodificadorm0|Mux5~9_pxor_bus\,
	pclk => \decodificadorm0|Mux5~9_pclk_bus\,
	papre => \decodificadorm0|Mux5~9_papre_bus\,
	paclr => \decodificadorm0|Mux5~9_paclr_bus\,
	pena => \decodificadorm0|Mux5~9_pena_bus\,
	dataout => \decodificadorm0|Mux5~9_dataout\);

-- Location: LC46
\decodificadorm0|Mux0~7\ : max_mcell
-- pragma translate_off
GENERIC MAP (
	operation_mode => "invert",
	output_mode => "comb",
	pexp_mode => "off")
-- pragma translate_on
PORT MAP (
	pterm0 => \decodificadorm0|Mux0~7_pterm0_bus\,
	pterm1 => \decodificadorm0|Mux0~7_pterm1_bus\,
	pterm2 => \decodificadorm0|Mux0~7_pterm2_bus\,
	pterm3 => \decodificadorm0|Mux0~7_pterm3_bus\,
	pterm4 => \decodificadorm0|Mux0~7_pterm4_bus\,
	pterm5 => \decodificadorm0|Mux0~7_pterm5_bus\,
	pxor => \decodificadorm0|Mux0~7_pxor_bus\,
	pclk => \decodificadorm0|Mux0~7_pclk_bus\,
	papre => \decodificadorm0|Mux0~7_papre_bus\,
	paclr => \decodificadorm0|Mux0~7_paclr_bus\,
	pena => \decodificadorm0|Mux0~7_pena_bus\,
	dataout => \decodificadorm0|Mux0~7_dataout\);

-- Location: PIN_11
\DISPLAYS0[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux6~8_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(6));

-- Location: PIN_10
\DISPLAYS0[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux4~5_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(4));

-- Location: PIN_9
\DISPLAYS0[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux3~10_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(3));

-- Location: PIN_8
\DISPLAYS0[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux2~5_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(2));

-- Location: PIN_12
\DISPLAYS0[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux1~9_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(1));

-- Location: PIN_6
\DISPLAYS0[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux5~9_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(5));

-- Location: PIN_4
\DISPLAYS0[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors0|Mux0~7_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS0(0));

-- Location: PIN_5
\DISPLAYS1[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux5~6_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(5));

-- Location: PIN_40
\DISPLAYS1[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux2~2_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(2));

-- Location: PIN_39
\DISPLAYS1[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux0~4_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(0));

-- Location: PIN_36
\DISPLAYS1[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux6~7_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(6));

-- Location: PIN_41
\DISPLAYS1[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux4~3_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(4));

-- Location: PIN_37
\DISPLAYS1[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux1~4_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(1));

-- Location: PIN_35
\DISPLAYS1[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadors1|Mux3~8_dataout\,
	oe => VCC,
	padio => ww_DISPLAYS1(3));

-- Location: PIN_21
\DISPLAYM1[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux2~3_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(2));

-- Location: PIN_20
\DISPLAYM1[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux5~6_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(5));

-- Location: PIN_18
\DISPLAYM1[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux0~4_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(0));

-- Location: PIN_15
\DISPLAYM1[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux6~7_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(6));

-- Location: PIN_17
\DISPLAYM1[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux4~3_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(4));

-- Location: PIN_16
\DISPLAYM1[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux1~4_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(1));

-- Location: PIN_22
\DISPLAYM1[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm1|Mux3~8_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM1(3));

-- Location: PIN_31
\DISPLAYM0[6]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux6~8_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(6));

-- Location: PIN_30
\DISPLAYM0[4]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux4~5_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(4));

-- Location: PIN_29
\DISPLAYM0[3]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux3~10_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(3));

-- Location: PIN_27
\DISPLAYM0[2]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux2~5_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(2));

-- Location: PIN_28
\DISPLAYM0[1]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux1~9_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(1));

-- Location: PIN_25
\DISPLAYM0[5]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux5~9_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(5));

-- Location: PIN_24
\DISPLAYM0[0]~I\ : max_io
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	operation_mode => "output",
	weak_pull_up => "false")
-- pragma translate_on
PORT MAP (
	datain => \decodificadorm0|Mux0~7_dataout\,
	oe => VCC,
	padio => ww_DISPLAYM0(0));
END structure;


