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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "12/08/2016 11:40:28"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MIPS_MULTICICLO IS
    PORT (
	Clock : IN std_logic;
	OpALU : OUT std_logic_vector(1 DOWNTO 0);
	OrigBALU : OUT std_logic_vector(2 DOWNTO 0);
	OrigPC : OUT std_logic_vector(1 DOWNTO 0);
	OrigAALU : OUT std_logic;
	EscreveReg : OUT std_logic;
	RegDst : OUT std_logic;
	MemparaReg : OUT std_logic;
	EscrevePC : OUT std_logic;
	EscrevePCBeq : OUT std_logic;
	IouD : OUT std_logic;
	EscreveMem : OUT std_logic;
	LeMem : OUT std_logic;
	EscreveIR : OUT std_logic;
	EscrevePCBne : OUT std_logic;
	CtlEnd : OUT std_logic_vector(1 DOWNTO 0);
	Opcode_ALU : OUT std_logic_vector(3 DOWNTO 0);
	A_ALU : OUT std_logic_vector(31 DOWNTO 0);
	B_ALU : OUT std_logic_vector(31 DOWNTO 0);
	PC : OUT std_logic_vector(31 DOWNTO 0);
	RI : OUT std_logic_vector(31 DOWNTO 0);
	RDM : OUT std_logic_vector(31 DOWNTO 0);
	SaidaALU : OUT std_logic_vector(31 DOWNTO 0)
	);
END MIPS_MULTICICLO;

-- Design Ports Information
-- OpALU[0]	=>  Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OpALU[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigBALU[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigBALU[1]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigBALU[2]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigPC[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigPC[1]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OrigAALU	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscreveReg	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RegDst	=>  Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MemparaReg	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscrevePC	=>  Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscrevePCBeq	=>  Location: PIN_AA29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- IouD	=>  Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscreveMem	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LeMem	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscreveIR	=>  Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- EscrevePCBne	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CtlEnd[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CtlEnd[1]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Opcode_ALU[0]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Opcode_ALU[1]	=>  Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Opcode_ALU[2]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Opcode_ALU[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[0]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[1]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[2]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[3]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[4]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[5]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[6]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[7]	=>  Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[8]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[9]	=>  Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[10]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[11]	=>  Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[12]	=>  Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[13]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[14]	=>  Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[15]	=>  Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[16]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[17]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[18]	=>  Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[19]	=>  Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[20]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[21]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[22]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[23]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[24]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[25]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[26]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[27]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[28]	=>  Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[29]	=>  Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[30]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A_ALU[31]	=>  Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[0]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[3]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[4]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[5]	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[6]	=>  Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[7]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[8]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[9]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[10]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[11]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[12]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[13]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[14]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[15]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[16]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[17]	=>  Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[18]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[19]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[20]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[21]	=>  Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[22]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[23]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[24]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[25]	=>  Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[26]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[27]	=>  Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[28]	=>  Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[29]	=>  Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[30]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B_ALU[31]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[0]	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[1]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[2]	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[4]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[5]	=>  Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[6]	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[7]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[8]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[9]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[10]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[11]	=>  Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[12]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[13]	=>  Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[14]	=>  Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[15]	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[16]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[17]	=>  Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[18]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[19]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[20]	=>  Location: PIN_Y28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[21]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[22]	=>  Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[23]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[24]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[25]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[26]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[27]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[28]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[29]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[30]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC[31]	=>  Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[0]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[1]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[2]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[3]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[4]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[5]	=>  Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[6]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[7]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[8]	=>  Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[9]	=>  Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[10]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[11]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[12]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[13]	=>  Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[14]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[15]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[16]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[17]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[18]	=>  Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[19]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[20]	=>  Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[21]	=>  Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[22]	=>  Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[23]	=>  Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[24]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[25]	=>  Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[26]	=>  Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[27]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[28]	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[29]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[30]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RI[31]	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[0]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[1]	=>  Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[2]	=>  Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[3]	=>  Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[4]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[5]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[6]	=>  Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[7]	=>  Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[8]	=>  Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[9]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[10]	=>  Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[11]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[12]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[13]	=>  Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[14]	=>  Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[15]	=>  Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[16]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[17]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[18]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[19]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[20]	=>  Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[21]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[22]	=>  Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[23]	=>  Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[24]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[25]	=>  Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[26]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[27]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[28]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[29]	=>  Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[30]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RDM[31]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[0]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[1]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[2]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[3]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[4]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[5]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[6]	=>  Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[7]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[8]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[9]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[10]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[11]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[12]	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[13]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[14]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[15]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[16]	=>  Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[17]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[18]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[19]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[20]	=>  Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[21]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[22]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[23]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[24]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[25]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[26]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[27]	=>  Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[28]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[29]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[30]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SaidaALU[31]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MIPS_MULTICICLO IS
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
SIGNAL ww_OpALU : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OrigBALU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OrigPC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_OrigAALU : std_logic;
SIGNAL ww_EscreveReg : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_MemparaReg : std_logic;
SIGNAL ww_EscrevePC : std_logic;
SIGNAL ww_EscrevePCBeq : std_logic;
SIGNAL ww_IouD : std_logic;
SIGNAL ww_EscreveMem : std_logic;
SIGNAL ww_LeMem : std_logic;
SIGNAL ww_EscreveIR : std_logic;
SIGNAL ww_EscrevePCBne : std_logic;
SIGNAL ww_CtlEnd : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Opcode_ALU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_A_ALU : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B_ALU : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RI : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RDM : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SaidaALU : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLE|microCodigo_instance|Mux20~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ULA|Add1~6_combout\ : std_logic;
SIGNAL \ULA|Add1~16_combout\ : std_logic;
SIGNAL \ULA|Add1~22_combout\ : std_logic;
SIGNAL \ULA|Add1~34_combout\ : std_logic;
SIGNAL \ULA|Add2~6_combout\ : std_logic;
SIGNAL \ULA|Add2~8_combout\ : std_logic;
SIGNAL \ULA|Add2~24_combout\ : std_logic;
SIGNAL \ULA|Add2~28_combout\ : std_logic;
SIGNAL \ULA|Add2~30_combout\ : std_logic;
SIGNAL \ULA|Add2~32_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux9~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~4_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~45_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~49_combout\ : std_logic;
SIGNAL \ULA|Mux31~11_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~63_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ULA|Mux29~7_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~46_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~89_combout\ : std_logic;
SIGNAL \ULA|Mux27~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ULA|Mux23~0_combout\ : std_logic;
SIGNAL \ULA|Mux23~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ULA|Mux23~4_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ULA|Mux21~2_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~83_combout\ : std_logic;
SIGNAL \ULA|Mux20~0_combout\ : std_logic;
SIGNAL \ULA|Mux20~1_combout\ : std_logic;
SIGNAL \ULA|Mux20~4_combout\ : std_logic;
SIGNAL \ULA|Mux18~4_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~115_combout\ : std_logic;
SIGNAL \ULA|Mux16~9_combout\ : std_logic;
SIGNAL \ULA|Mux16~10_combout\ : std_logic;
SIGNAL \ULA|Mux15~1_combout\ : std_logic;
SIGNAL \ULA|Mux13~5_combout\ : std_logic;
SIGNAL \ULA|Mux11~6_combout\ : std_logic;
SIGNAL \ULA|Mux10~2_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \ULA|Mux9~20_combout\ : std_logic;
SIGNAL \ULA|Mux8~2_combout\ : std_logic;
SIGNAL \ULA|Mux7~4_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \ULA|Mux6~4_combout\ : std_logic;
SIGNAL \ULA|Mux5~5_combout\ : std_logic;
SIGNAL \ULA|Mux4~10_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \ULA|Mux3~11_combout\ : std_logic;
SIGNAL \ULA|Mux3~12_combout\ : std_logic;
SIGNAL \ULA|Mux3~13_combout\ : std_logic;
SIGNAL \ULA|resposta~64_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \ULA|Mux1~5_combout\ : std_logic;
SIGNAL \ULA|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~17_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux12~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|Equal0~4_combout\ : std_logic;
SIGNAL \ULA|Equal0~5_combout\ : std_logic;
SIGNAL \ULA|Equal0~6_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux3~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLE|somador_instance|Add0~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux1~3_combout\ : std_logic;
SIGNAL \BREG|process_0~0_combout\ : std_logic;
SIGNAL \BREG|process_0~1_combout\ : std_logic;
SIGNAL \ULA|resposta~66_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~122_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux7~3_combout\ : std_logic;
SIGNAL \ULA|Mux29~13_combout\ : std_logic;
SIGNAL \ULA|resposta~67_combout\ : std_logic;
SIGNAL \ULA|resposta~71_combout\ : std_logic;
SIGNAL \ULA|resposta~72_combout\ : std_logic;
SIGNAL \ULA|resposta~73_combout\ : std_logic;
SIGNAL \ULA|resposta~74_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~91_combout\ : std_logic;
SIGNAL \ULA|resposta~76_combout\ : std_logic;
SIGNAL \ULA|resposta~78_combout\ : std_logic;
SIGNAL \ULA|resposta~80_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~157_combout\ : std_logic;
SIGNAL \ULA|resposta~81_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~126_combout\ : std_logic;
SIGNAL \ULA|Mux16~15_combout\ : std_logic;
SIGNAL \ULA|Mux12~9_combout\ : std_logic;
SIGNAL \ULA|resposta~85_combout\ : std_logic;
SIGNAL \ULA|resposta~86_combout\ : std_logic;
SIGNAL \ULA|resposta~88_combout\ : std_logic;
SIGNAL \ULA|resposta~89_combout\ : std_logic;
SIGNAL \ULA|resposta~90_combout\ : std_logic;
SIGNAL \ULA|resposta~92_combout\ : std_logic;
SIGNAL \ULA|resposta~93_combout\ : std_logic;
SIGNAL \ULA|resposta~94_combout\ : std_logic;
SIGNAL \ULA|resposta~96_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~5_combout\ : std_logic;
SIGNAL \REG_A_32|estado_out[18]~feeder_combout\ : std_logic;
SIGNAL \REG_A_32|estado_out[26]~feeder_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux31~0_combout\ : std_logic;
SIGNAL \PC_32|estado_out[4]~2_combout\ : std_logic;
SIGNAL \PC_32|estado_out[5]~3_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux19~0_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[7]~7_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux15~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux30~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux11~0_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[3]~3_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[4]~4_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~54_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~55_combout\ : std_logic;
SIGNAL \RDM_32|estado_out[12]~feeder_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~118_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~96_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux5~0_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[16]~16_combout\ : std_logic;
SIGNAL \PC_32|estado_out[17]~15_combout\ : std_logic;
SIGNAL \PC_32|estado_out[20]~26_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux4~0_combout\ : std_logic;
SIGNAL \ULA|Equal0~10_combout\ : std_logic;
SIGNAL \ULA|Equal0~3_combout\ : std_logic;
SIGNAL \MUX_B|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|Mux9~15_combout\ : std_logic;
SIGNAL \ULA|Mux9~14_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux7~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Mux3~24_combout\ : std_logic;
SIGNAL \PC_32|estado_out[18]~16_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux17~0_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[18]~18_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[18]~18_combout\ : std_logic;
SIGNAL \RDM_32|estado_out[20]~feeder_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[20]~20_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[21]~21_combout\ : std_logic;
SIGNAL \MUX_B|Mux9~0_combout\ : std_logic;
SIGNAL \PC_32|estado_out[22]~20_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[24]~24_combout\ : std_logic;
SIGNAL \ULA|Mux28~8_combout\ : std_logic;
SIGNAL \MUX_B|Mux6~0_combout\ : std_logic;
SIGNAL \PC_32|estado_out[2]~0_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~119_combout\ : std_logic;
SIGNAL \PC_32|estado_out[26]~24_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[26]~26_combout\ : std_logic;
SIGNAL \ULA|Mux28~9_combout\ : std_logic;
SIGNAL \ULA|Mux5~2_combout\ : std_logic;
SIGNAL \MUX_B|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Add2~51\ : std_logic;
SIGNAL \ULA|Add2~52_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~43_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~84_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~92_combout\ : std_logic;
SIGNAL \ULA|Mux28~25_combout\ : std_logic;
SIGNAL \MUX_B|Mux3~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux4~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux10~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux11~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux12~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux14~0_combout\ : std_logic;
SIGNAL \PC_32|estado_out[15]~13_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[15]~15_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[29]~29_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux0~0_combout\ : std_logic;
SIGNAL \PC_32|estado_out[28]~27_combout\ : std_logic;
SIGNAL \ULA|Equal0~0_combout\ : std_logic;
SIGNAL \ULA|Equal0~1_combout\ : std_logic;
SIGNAL \ULA|Mux3~28_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \MUX_B|Mux2~0_combout\ : std_logic;
SIGNAL \ULA|resposta~95_combout\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux2~0_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[29]~29_combout\ : std_logic;
SIGNAL \ULA|Mux3~25_combout\ : std_logic;
SIGNAL \ULA|Mux3~17_combout\ : std_logic;
SIGNAL \ULA|Add2~53\ : std_logic;
SIGNAL \ULA|Add2~55\ : std_logic;
SIGNAL \ULA|Add2~57\ : std_logic;
SIGNAL \ULA|Add2~58_combout\ : std_logic;
SIGNAL \ULA|resposta~65_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~67_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~25_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~68_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~113_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \PC_32|estado_out[13]~11_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[13]~13_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \ULA|ShiftRight1~26_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~42_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~104_combout\ : std_logic;
SIGNAL \MUX_B|Mux16~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux16~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux15~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux15~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~34_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~35_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~105_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~27_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~101_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~102_combout\ : std_logic;
SIGNAL \ULA|Mux22~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~72_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~86_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~94_combout\ : std_logic;
SIGNAL \ULA|Mux28~12_combout\ : std_logic;
SIGNAL \ULA|Add1~28_combout\ : std_logic;
SIGNAL \ULA|Mux17~0_combout\ : std_logic;
SIGNAL \ULA|Mux17~1_combout\ : std_logic;
SIGNAL \ULA|Mux17~2_combout\ : std_logic;
SIGNAL \ULA|Mux17~4_combout\ : std_logic;
SIGNAL \ULA|Mux28~7_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \MUX_B|Mux22~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux24~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux24~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux23~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux23~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux21~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux21~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \MUX_B|Mux25~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux25~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux26~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux26~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \MUX_B|Mux29~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux29~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ULA|Mux17~3_combout\ : std_logic;
SIGNAL \ULA|Mux17~5_combout\ : std_logic;
SIGNAL \ULA|Mux17~6_combout\ : std_logic;
SIGNAL \ULA|Mux17~7_combout\ : std_logic;
SIGNAL \ULA|Mux17~combout\ : std_logic;
SIGNAL \PC_32|estado_out[14]~12_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[14]~14_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \REG_A_32|estado_out[20]~feeder_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~51_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~67_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~39_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~38_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~65_combout\ : std_logic;
SIGNAL \PC_32|estado_out[3]~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~60_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~66_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~68_combout\ : std_logic;
SIGNAL \ULA|Mux9~9_combout\ : std_logic;
SIGNAL \ULA|Add1~40_combout\ : std_logic;
SIGNAL \ULA|Mux11~2_combout\ : std_logic;
SIGNAL \ULA|Mux11~3_combout\ : std_logic;
SIGNAL \ULA|Add2~37\ : std_logic;
SIGNAL \ULA|Add2~39\ : std_logic;
SIGNAL \ULA|Add2~40_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~160_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~159_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ULA|Mux11~9_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~41_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~92_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~90_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~91_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~93_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[4]~4_combout\ : std_logic;
SIGNAL \ULA|Mux9~23_combout\ : std_logic;
SIGNAL \ULA|Mux9~12_combout\ : std_logic;
SIGNAL \ULA|Mux11~4_combout\ : std_logic;
SIGNAL \ULA|Mux11~5_combout\ : std_logic;
SIGNAL \ULA|Mux11~7_combout\ : std_logic;
SIGNAL \ULA|Mux11~8_combout\ : std_logic;
SIGNAL \ULA|Mux11~combout\ : std_logic;
SIGNAL \PC_32|estado_out[20]~18_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[20]~20_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \PC_32|estado_out[11]~9_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[11]~11_combout\ : std_logic;
SIGNAL \PC_32|estado_out[12]~10_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[12]~12_combout\ : std_logic;
SIGNAL \PC_32|estado_out[9]~7_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[9]~9_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ULA|Mux31~5_combout\ : std_logic;
SIGNAL \ULA|Mux3~26_combout\ : std_logic;
SIGNAL \ULA|Mux2~6_combout\ : std_logic;
SIGNAL \ULA|Mux28~6_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~144_combout\ : std_logic;
SIGNAL \ULA|Mux2~2_combout\ : std_logic;
SIGNAL \ULA|Mux2~3_combout\ : std_logic;
SIGNAL \ULA|Mux2~4_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \ULA|Mux2~5_combout\ : std_logic;
SIGNAL \ULA|Mux2~7_combout\ : std_logic;
SIGNAL \ULA|Mux2~8_combout\ : std_logic;
SIGNAL \ULA|Mux2~9_combout\ : std_logic;
SIGNAL \ULA|Mux2~10_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~85_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~93_combout\ : std_logic;
SIGNAL \ULA|Add1~57\ : std_logic;
SIGNAL \ULA|Add1~58_combout\ : std_logic;
SIGNAL \ULA|Mux2~11_combout\ : std_logic;
SIGNAL \ULA|Mux2~12_combout\ : std_logic;
SIGNAL \ULA|Mux2~13_combout\ : std_logic;
SIGNAL \ULA|Equal0~2_combout\ : std_logic;
SIGNAL \PC_DESVIOS|PCenable~1_combout\ : std_logic;
SIGNAL \PC_32|estado_out[28]~28_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[31]~31_combout\ : std_logic;
SIGNAL \ULA|Add1~59\ : std_logic;
SIGNAL \ULA|Add1~61\ : std_logic;
SIGNAL \ULA|Add1~62_combout\ : std_logic;
SIGNAL \ULA|Mux0~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux20~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux20~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~149_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~150_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~151_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~152_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~153_combout\ : std_logic;
SIGNAL \MUX_B|Mux28~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux28~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~158_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~154_combout\ : std_logic;
SIGNAL \ULA|Mux31~20_combout\ : std_logic;
SIGNAL \ULA|Add2~59\ : std_logic;
SIGNAL \ULA|Add2~61\ : std_logic;
SIGNAL \ULA|Add2~62_combout\ : std_logic;
SIGNAL \ULA|Mux31~21_combout\ : std_logic;
SIGNAL \ULA|Mux31~19_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~87_combout\ : std_logic;
SIGNAL \ULA|Mux31~18_combout\ : std_logic;
SIGNAL \ULA|Mux0~2_combout\ : std_logic;
SIGNAL \ULA|Mux0~3_combout\ : std_logic;
SIGNAL \ULA|Mux0~4_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[31]~31_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[30]~30_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \REG_B_32|estado_out[6]~feeder_combout\ : std_logic;
SIGNAL \MUX_B|Mux18~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux18~1_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \REG_A_32|estado_out[7]~feeder_combout\ : std_logic;
SIGNAL \PC_32|estado_out[7]~5_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[7]~7_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[5]~5_combout\ : std_logic;
SIGNAL \ULA|Add1~3\ : std_logic;
SIGNAL \ULA|Add1~5\ : std_logic;
SIGNAL \ULA|Add1~7\ : std_logic;
SIGNAL \ULA|Add1~9\ : std_logic;
SIGNAL \ULA|Add1~11\ : std_logic;
SIGNAL \ULA|Add1~13\ : std_logic;
SIGNAL \ULA|Add1~15\ : std_logic;
SIGNAL \ULA|Add1~17\ : std_logic;
SIGNAL \ULA|Add1~19\ : std_logic;
SIGNAL \ULA|Add1~21\ : std_logic;
SIGNAL \ULA|Add1~23\ : std_logic;
SIGNAL \ULA|Add1~25\ : std_logic;
SIGNAL \ULA|Add1~27\ : std_logic;
SIGNAL \ULA|Add1~29\ : std_logic;
SIGNAL \ULA|Add1~31\ : std_logic;
SIGNAL \ULA|Add1~33\ : std_logic;
SIGNAL \ULA|Add1~35\ : std_logic;
SIGNAL \ULA|Add1~37\ : std_logic;
SIGNAL \ULA|Add1~39\ : std_logic;
SIGNAL \ULA|Add1~41\ : std_logic;
SIGNAL \ULA|Add1~43\ : std_logic;
SIGNAL \ULA|Add1~45\ : std_logic;
SIGNAL \ULA|Add1~47\ : std_logic;
SIGNAL \ULA|Add1~49\ : std_logic;
SIGNAL \ULA|Add1~51\ : std_logic;
SIGNAL \ULA|Add1~53\ : std_logic;
SIGNAL \ULA|Add1~55\ : std_logic;
SIGNAL \ULA|Add1~56_combout\ : std_logic;
SIGNAL \ULA|Mux3~21_combout\ : std_logic;
SIGNAL \ULA|Mux3~22_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux3~0_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[28]~28_combout\ : std_logic;
SIGNAL \ULA|Mux28~24_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~112_combout\ : std_logic;
SIGNAL \ULA|Mux3~27_combout\ : std_logic;
SIGNAL \ULA|Mux3~15_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \MUX_B|Mux27~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux27~1_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \ULA|Mux3~14_combout\ : std_logic;
SIGNAL \ULA|Mux3~16_combout\ : std_logic;
SIGNAL \ULA|Add2~56_combout\ : std_logic;
SIGNAL \ULA|Mux3~18_combout\ : std_logic;
SIGNAL \ULA|Mux3~19_combout\ : std_logic;
SIGNAL \ULA|Mux3~20_combout\ : std_logic;
SIGNAL \ULA|Mux3~23_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[28]~28_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \MUX_B|Mux0~0_combout\ : std_logic;
SIGNAL \ULA|Add1~54_combout\ : std_logic;
SIGNAL \ULA|Mux4~4_combout\ : std_logic;
SIGNAL \ULA|Mux4~5_combout\ : std_logic;
SIGNAL \ULA|Mux4~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~84_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~56_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~57_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~85_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~125_combout\ : std_logic;
SIGNAL \ULA|Mux7~13_combout\ : std_logic;
SIGNAL \ULA|Mux7~5_combout\ : std_logic;
SIGNAL \ULA|Mux4~7_combout\ : std_logic;
SIGNAL \MUX_B|Mux31~1_combout\ : std_logic;
SIGNAL \MUX_B|Mux30~1_combout\ : std_logic;
SIGNAL \ULA|Mux14~0_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ULA|Mux4~14_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \ULA|Mux4~8_combout\ : std_logic;
SIGNAL \ULA|Mux4~9_combout\ : std_logic;
SIGNAL \ULA|Mux4~15_combout\ : std_logic;
SIGNAL \ULA|Mux4~11_combout\ : std_logic;
SIGNAL \ULA|Add2~54_combout\ : std_logic;
SIGNAL \ULA|Mux4~12_combout\ : std_logic;
SIGNAL \ULA|Mux4~13_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[27]~27_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \ULA|ShiftRight1~40_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~41_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~39_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~78_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~111_combout\ : std_logic;
SIGNAL \ULA|Mux5~6_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~121_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~162_combout\ : std_logic;
SIGNAL \ULA|Mux5~3_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~161_combout\ : std_logic;
SIGNAL \ULA|Mux5~4_combout\ : std_logic;
SIGNAL \ULA|Mux5~7_combout\ : std_logic;
SIGNAL \ULA|Mux5~8_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~79_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~47_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~82_combout\ : std_logic;
SIGNAL \ULA|resposta~91_combout\ : std_logic;
SIGNAL \ULA|Add1~52_combout\ : std_logic;
SIGNAL \ULA|Mux5~0_combout\ : std_logic;
SIGNAL \ULA|Mux5~1_combout\ : std_logic;
SIGNAL \ULA|Mux5~9_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[26]~26_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \ULA|ShiftRight0~42_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~78_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~40_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~80_combout\ : std_logic;
SIGNAL \ULA|Add1~48_combout\ : std_logic;
SIGNAL \ULA|Mux7~2_combout\ : std_logic;
SIGNAL \ULA|Mux7~3_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[22]~22_combout\ : std_logic;
SIGNAL \ULA|Add2~41\ : std_logic;
SIGNAL \ULA|Add2~43\ : std_logic;
SIGNAL \ULA|Add2~45\ : std_logic;
SIGNAL \ULA|Add2~47\ : std_logic;
SIGNAL \ULA|Add2~48_combout\ : std_logic;
SIGNAL \ULA|Mux7~6_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \ULA|Mux7~7_combout\ : std_logic;
SIGNAL \MUX_B|Mux7~0_combout\ : std_logic;
SIGNAL \ULA|Mux7~8_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~44_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~123_combout\ : std_logic;
SIGNAL \ULA|Mux7~9_combout\ : std_logic;
SIGNAL \ULA|Mux7~10_combout\ : std_logic;
SIGNAL \ULA|Mux7~11_combout\ : std_logic;
SIGNAL \ULA|Mux7~12_combout\ : std_logic;
SIGNAL \PC_32|estado_out[24]~22_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[24]~24_combout\ : std_logic;
SIGNAL \ULA|Add2~49\ : std_logic;
SIGNAL \ULA|Add2~50_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~66_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~69_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~124_combout\ : std_logic;
SIGNAL \MUX_B|Mux26~2_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~156_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \ULA|Mux6~5_combout\ : std_logic;
SIGNAL \ULA|Mux6~6_combout\ : std_logic;
SIGNAL \ULA|Mux6~11_combout\ : std_logic;
SIGNAL \ULA|Mux6~7_combout\ : std_logic;
SIGNAL \ULA|Mux6~8_combout\ : std_logic;
SIGNAL \ULA|Mux6~9_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~28_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~29_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~81_combout\ : std_logic;
SIGNAL \ULA|Add1~50_combout\ : std_logic;
SIGNAL \ULA|Mux6~2_combout\ : std_logic;
SIGNAL \ULA|Mux6~3_combout\ : std_logic;
SIGNAL \ULA|Mux6~10_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[25]~25_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \PC_32|estado_out[23]~21_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[23]~23_combout\ : std_logic;
SIGNAL \ULA|Mux9~13_combout\ : std_logic;
SIGNAL \ULA|Add2~46_combout\ : std_logic;
SIGNAL \ULA|Mux9~11_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \ULA|Mux8~3_combout\ : std_logic;
SIGNAL \ULA|Mux8~4_combout\ : std_logic;
SIGNAL \ULA|Mux9~10_combout\ : std_logic;
SIGNAL \ULA|Mux8~5_combout\ : std_logic;
SIGNAL \ULA|Mux8~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~43_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~59_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~76_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~77_combout\ : std_logic;
SIGNAL \ULA|Add1~46_combout\ : std_logic;
SIGNAL \ULA|Mux8~0_combout\ : std_logic;
SIGNAL \ULA|Mux8~1_combout\ : std_logic;
SIGNAL \ULA|Mux8~7_combout\ : std_logic;
SIGNAL \ULA|Mux8~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[23]~23_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \ULA|resposta~87_combout\ : std_logic;
SIGNAL \ULA|Add1~44_combout\ : std_logic;
SIGNAL \ULA|Mux9~16_combout\ : std_logic;
SIGNAL \ULA|Mux9~17_combout\ : std_logic;
SIGNAL \ULA|Add2~44_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~90_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~103_combout\ : std_logic;
SIGNAL \ULA|Mux9~24_combout\ : std_logic;
SIGNAL \ULA|Mux9~18_combout\ : std_logic;
SIGNAL \ULA|Mux9~19_combout\ : std_logic;
SIGNAL \ULA|Mux9~21_combout\ : std_logic;
SIGNAL \ULA|Mux9~22_combout\ : std_logic;
SIGNAL \ULA|Mux9~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[22]~22_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \PC_32|estado_out[19]~17_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[19]~19_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~61_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~58_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~63_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~64_combout\ : std_logic;
SIGNAL \ULA|resposta~84_combout\ : std_logic;
SIGNAL \ULA|Add1~38_combout\ : std_logic;
SIGNAL \ULA|Mux12~2_combout\ : std_logic;
SIGNAL \ULA|Mux12~3_combout\ : std_logic;
SIGNAL \ULA|Add2~38_combout\ : std_logic;
SIGNAL \ULA|Mux12~4_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~86_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~87_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~88_combout\ : std_logic;
SIGNAL \ULA|Mux12~5_combout\ : std_logic;
SIGNAL \ULA|Mux12~6_combout\ : std_logic;
SIGNAL \ULA|Mux12~7_combout\ : std_logic;
SIGNAL \ULA|Mux12~8_combout\ : std_logic;
SIGNAL \ULA|Mux12~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[19]~19_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \ULA|Mux30~19_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~46_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~47_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~155_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~48_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~52_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~116_combout\ : std_logic;
SIGNAL \ULA|Mux15~3_combout\ : std_logic;
SIGNAL \ULA|Mux15~6_combout\ : std_logic;
SIGNAL \ULA|Mux15~5_combout\ : std_logic;
SIGNAL \ULA|Add1~32_combout\ : std_logic;
SIGNAL \ULA|Mux15~4_combout\ : std_logic;
SIGNAL \ULA|Mux15~7_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ULA|Mux15~0_combout\ : std_logic;
SIGNAL \ULA|Mux15~2_combout\ : std_logic;
SIGNAL \ULA|Mux15~8_combout\ : std_logic;
SIGNAL \PC_32|estado_out[16]~14_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[16]~16_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \PC_32|estado_out[8]~6_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[8]~8_combout\ : std_logic;
SIGNAL \PC_32|estado_out[6]~4_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[6]~6_combout\ : std_logic;
SIGNAL \ULA|Add2~1\ : std_logic;
SIGNAL \ULA|Add2~3\ : std_logic;
SIGNAL \ULA|Add2~5\ : std_logic;
SIGNAL \ULA|Add2~7\ : std_logic;
SIGNAL \ULA|Add2~9\ : std_logic;
SIGNAL \ULA|Add2~11\ : std_logic;
SIGNAL \ULA|Add2~13\ : std_logic;
SIGNAL \ULA|Add2~15\ : std_logic;
SIGNAL \ULA|Add2~17\ : std_logic;
SIGNAL \ULA|Add2~19\ : std_logic;
SIGNAL \ULA|Add2~21\ : std_logic;
SIGNAL \ULA|Add2~23\ : std_logic;
SIGNAL \ULA|Add2~25\ : std_logic;
SIGNAL \ULA|Add2~27\ : std_logic;
SIGNAL \ULA|Add2~29\ : std_logic;
SIGNAL \ULA|Add2~31\ : std_logic;
SIGNAL \ULA|Add2~33\ : std_logic;
SIGNAL \ULA|Add2~35\ : std_logic;
SIGNAL \ULA|Add2~36_combout\ : std_logic;
SIGNAL \ULA|Mux13~2_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~79_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~82_combout\ : std_logic;
SIGNAL \ULA|Mux13~3_combout\ : std_logic;
SIGNAL \ULA|Mux13~4_combout\ : std_logic;
SIGNAL \ULA|Mux13~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~80_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~44_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~45_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~48_combout\ : std_logic;
SIGNAL \ULA|resposta~83_combout\ : std_logic;
SIGNAL \ULA|Add1~36_combout\ : std_logic;
SIGNAL \ULA|Mux13~0_combout\ : std_logic;
SIGNAL \ULA|Mux13~1_combout\ : std_logic;
SIGNAL \ULA|Mux13~7_combout\ : std_logic;
SIGNAL \ULA|Mux13~combout\ : std_logic;
SIGNAL \ULA|Equal0~7_combout\ : std_logic;
SIGNAL \ULA|Equal0~8_combout\ : std_logic;
SIGNAL \ULA|Equal0~9_combout\ : std_logic;
SIGNAL \PC_DESVIOS|PCenable~0_combout\ : std_logic;
SIGNAL \PC_DESVIOS|PCenable~combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[17]~17_combout\ : std_logic;
SIGNAL \ULA|Add2~34_combout\ : std_logic;
SIGNAL \ULA|Mux14~6_combout\ : std_logic;
SIGNAL \ULA|Mux14~3_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~74_combout\ : std_logic;
SIGNAL \ULA|Mux14~4_combout\ : std_logic;
SIGNAL \ULA|Mux14~5_combout\ : std_logic;
SIGNAL \ULA|Mux14~7_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~70_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~30_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~31_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~88_combout\ : std_logic;
SIGNAL \ULA|resposta~82_combout\ : std_logic;
SIGNAL \ULA|Mux14~1_combout\ : std_logic;
SIGNAL \ULA|Mux14~2_combout\ : std_logic;
SIGNAL \ULA|Mux14~8_combout\ : std_logic;
SIGNAL \ULA|Mux14~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[17]~17_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \MUX_B|Mux1~0_combout\ : std_logic;
SIGNAL \ULA|Mux1~12_combout\ : std_logic;
SIGNAL \ULA|Add1~60_combout\ : std_logic;
SIGNAL \ULA|Mux1~4_combout\ : std_logic;
SIGNAL \ULA|Mux1~10_combout\ : std_logic;
SIGNAL \ULA|Mux1~13_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~117_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~164_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~146_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~145_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~147_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~163_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~148_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~165_combout\ : std_logic;
SIGNAL \ULA|Mux1~6_combout\ : std_logic;
SIGNAL \ULA|Mux1~7_combout\ : std_logic;
SIGNAL \ULA|Add2~60_combout\ : std_logic;
SIGNAL \ULA|Mux1~8_combout\ : std_logic;
SIGNAL \ULA|Mux1~9_combout\ : std_logic;
SIGNAL \ULA|Mux1~11_combout\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux1~0_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[30]~30_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \PC_32|estado_out[27]~25_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[27]~27_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \ULA|Add2~42_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ULA|Mux10~3_combout\ : std_logic;
SIGNAL \ULA|Mux10~4_combout\ : std_logic;
SIGNAL \ULA|Mux10~5_combout\ : std_logic;
SIGNAL \ULA|Mux10~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~69_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~70_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~71_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~89_combout\ : std_logic;
SIGNAL \ULA|Add1~42_combout\ : std_logic;
SIGNAL \ULA|Mux10~0_combout\ : std_logic;
SIGNAL \ULA|Mux10~1_combout\ : std_logic;
SIGNAL \ULA|Mux10~7_combout\ : std_logic;
SIGNAL \ULA|Mux10~combout\ : std_logic;
SIGNAL \PC_32|estado_out[21]~19_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[21]~21_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~108_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~109_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~120_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~62_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~106_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~53_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~107_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~114_combout\ : std_logic;
SIGNAL \ULA|Mux16~12_combout\ : std_logic;
SIGNAL \ULA|Mux16~16_combout\ : std_logic;
SIGNAL \ULA|Mux16~7_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ULA|Mux16~8_combout\ : std_logic;
SIGNAL \ULA|Mux16~11_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \ULA|Mux16~14_combout\ : std_logic;
SIGNAL \ULA|Add1~30_combout\ : std_logic;
SIGNAL \ULA|Mux16~6_combout\ : std_logic;
SIGNAL \ULA|Mux16~13_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[15]~15_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[14]~14_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \ULA|ShiftRight1~24_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~75_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~97_combout\ : std_logic;
SIGNAL \ULA|resposta~79_combout\ : std_logic;
SIGNAL \ULA|Add1~26_combout\ : std_logic;
SIGNAL \ULA|Mux18~0_combout\ : std_logic;
SIGNAL \ULA|Mux18~1_combout\ : std_logic;
SIGNAL \ULA|Add2~26_combout\ : std_logic;
SIGNAL \ULA|Mux18~2_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ULA|Mux18~3_combout\ : std_logic;
SIGNAL \ULA|Mux18~5_combout\ : std_logic;
SIGNAL \ULA|Mux18~6_combout\ : std_logic;
SIGNAL \ULA|Mux18~7_combout\ : std_logic;
SIGNAL \ULA|Mux18~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[13]~13_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \REG_B_32|estado_out[5]~feeder_combout\ : std_logic;
SIGNAL \MUX_B|Mux19~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux19~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~31_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~32_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~94_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~95_combout\ : std_logic;
SIGNAL \ULA|Mux19~2_combout\ : std_logic;
SIGNAL \ULA|Mux19~4_combout\ : std_logic;
SIGNAL \ULA|Mux19~3_combout\ : std_logic;
SIGNAL \ULA|Mux19~5_combout\ : std_logic;
SIGNAL \ULA|Mux19~6_combout\ : std_logic;
SIGNAL \ULA|Add1~24_combout\ : std_logic;
SIGNAL \ULA|Mux19~0_combout\ : std_logic;
SIGNAL \ULA|Mux19~1_combout\ : std_logic;
SIGNAL \ULA|Mux19~7_combout\ : std_logic;
SIGNAL \ULA|Mux19~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[12]~12_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \MUX_B|Mux17~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux17~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~51_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~52_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~83_combout\ : std_logic;
SIGNAL \ULA|resposta~77_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ULA|Mux20~3_combout\ : std_logic;
SIGNAL \ULA|Mux20~5_combout\ : std_logic;
SIGNAL \ULA|Add2~22_combout\ : std_logic;
SIGNAL \ULA|Mux20~2_combout\ : std_logic;
SIGNAL \ULA|Mux20~6_combout\ : std_logic;
SIGNAL \ULA|Mux22~0_combout\ : std_logic;
SIGNAL \ULA|Mux20~7_combout\ : std_logic;
SIGNAL \ULA|Mux20~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[11]~11_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \MUX_B|Mux14~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~81_combout\ : std_logic;
SIGNAL \PC_32|estado_out[10]~8_combout\ : std_logic;
SIGNAL \ULA|resposta~75_combout\ : std_logic;
SIGNAL \ULA|Add1~20_combout\ : std_logic;
SIGNAL \ULA|Mux21~0_combout\ : std_logic;
SIGNAL \ULA|Mux21~1_combout\ : std_logic;
SIGNAL \ULA|Add2~20_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[10]~10_combout\ : std_logic;
SIGNAL \ULA|Mux21~4_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \ULA|Mux21~3_combout\ : std_logic;
SIGNAL \ULA|Mux21~5_combout\ : std_logic;
SIGNAL \ULA|Mux21~6_combout\ : std_logic;
SIGNAL \ULA|Mux21~7_combout\ : std_logic;
SIGNAL \ULA|Mux21~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[10]~10_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \ULA|ShiftRight0~50_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~72_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~71_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~73_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~60_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~61_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~62_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~64_combout\ : std_logic;
SIGNAL \ULA|Add1~18_combout\ : std_logic;
SIGNAL \ULA|Mux22~2_combout\ : std_logic;
SIGNAL \ULA|Mux22~3_combout\ : std_logic;
SIGNAL \ULA|Add2~18_combout\ : std_logic;
SIGNAL \ULA|Mux22~4_combout\ : std_logic;
SIGNAL \ULA|Mux22~6_combout\ : std_logic;
SIGNAL \ULA|Mux22~5_combout\ : std_logic;
SIGNAL \ULA|Mux22~7_combout\ : std_logic;
SIGNAL \ULA|Mux22~8_combout\ : std_logic;
SIGNAL \ULA|Mux22~9_combout\ : std_logic;
SIGNAL \ULA|Mux22~combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[9]~9_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[8]~8_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux10~1_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux10~3_combout\ : std_logic;
SIGNAL \ULA|Mux3~10_combout\ : std_logic;
SIGNAL \ULA|Mux28~10_combout\ : std_logic;
SIGNAL \ULA|Mux24~3_combout\ : std_logic;
SIGNAL \ULA|Add1~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~11_combout\ : std_logic;
SIGNAL \ULA|Mux24~12_combout\ : std_logic;
SIGNAL \ULA|Mux24~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~8_combout\ : std_logic;
SIGNAL \ULA|Add2~14_combout\ : std_logic;
SIGNAL \ULA|Mux24~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~110_combout\ : std_logic;
SIGNAL \ULA|Mux24~5_combout\ : std_logic;
SIGNAL \ULA|Mux24~7_combout\ : std_logic;
SIGNAL \ULA|Mux24~9_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~49_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~50_combout\ : std_logic;
SIGNAL \ULA|Mux24~2_combout\ : std_logic;
SIGNAL \ULA|Mux24~4_combout\ : std_logic;
SIGNAL \ULA|Mux24~10_combout\ : std_logic;
SIGNAL \ULA|Mux24~13_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[7]~7_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[3]~3_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~73_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~74_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~75_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ULA|resposta~70_combout\ : std_logic;
SIGNAL \ULA|Add1~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~7_combout\ : std_logic;
SIGNAL \ULA|Mux25~8_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~32_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~33_combout\ : std_logic;
SIGNAL \ULA|Add2~12_combout\ : std_logic;
SIGNAL \ULA|Mux25~0_combout\ : std_logic;
SIGNAL \ULA|Mux25~2_combout\ : std_logic;
SIGNAL \ULA|Mux25~1_combout\ : std_logic;
SIGNAL \ULA|Mux25~3_combout\ : std_logic;
SIGNAL \ULA|Mux25~4_combout\ : std_logic;
SIGNAL \ULA|Mux25~5_combout\ : std_logic;
SIGNAL \ULA|Mux25~6_combout\ : std_logic;
SIGNAL \ULA|Mux25~9_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[6]~6_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[5]~5_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \MUX_ORIGPC|Mux30~0_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[1]~1_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~37_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~36_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~38_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~77_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~20_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~21_combout\ : std_logic;
SIGNAL \ULA|Mux29~2_combout\ : std_logic;
SIGNAL \ULA|Mux29~3_combout\ : std_logic;
SIGNAL \ULA|Add2~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~5_combout\ : std_logic;
SIGNAL \ULA|Mux29~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~6_combout\ : std_logic;
SIGNAL \ULA|Mux29~8_combout\ : std_logic;
SIGNAL \ULA|Mux29~9_combout\ : std_logic;
SIGNAL \MUX_B|Mux29~2_combout\ : std_logic;
SIGNAL \ULA|resposta~62_combout\ : std_logic;
SIGNAL \ULA|Add1~4_combout\ : std_logic;
SIGNAL \ULA|Mux29~10_combout\ : std_logic;
SIGNAL \ULA|Mux29~11_combout\ : std_logic;
SIGNAL \ULA|Mux29~12_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[2]~2_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[0]~0_combout\ : std_logic;
SIGNAL \ULA|Add1~1\ : std_logic;
SIGNAL \ULA|Add1~2_combout\ : std_logic;
SIGNAL \ULA|Mux30~17_combout\ : std_logic;
SIGNAL \ULA|Mux30~6_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ULA|Mux30~18_combout\ : std_logic;
SIGNAL \ULA|Mux30~7_combout\ : std_logic;
SIGNAL \ULA|Mux30~8_combout\ : std_logic;
SIGNAL \ULA|Mux30~9_combout\ : std_logic;
SIGNAL \ULA|Mux30~10_combout\ : std_logic;
SIGNAL \ULA|Add2~2_combout\ : std_logic;
SIGNAL \ULA|Mux30~11_combout\ : std_logic;
SIGNAL \ULA|Mux30~12_combout\ : std_logic;
SIGNAL \ULA|Mux30~13_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~57_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~23_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~58_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~59_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~65_combout\ : std_logic;
SIGNAL \ULA|Mux30~14_combout\ : std_logic;
SIGNAL \ULA|Mux30~15_combout\ : std_logic;
SIGNAL \ULA|Mux30~16_combout\ : std_logic;
SIGNAL \RDM_32|estado_out[1]~feeder_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[1]~1_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \MUX_REGDST|Saida_5bits[4]~4_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \MUX_REGDST|Saida_5bits[3]~3_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \MUX_REGDST|Saida_5bits[2]~2_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux10~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux8~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux8~1_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux8~2_combout\ : std_logic;
SIGNAL \ULA|Mux28~11_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~33_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~34_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~35_combout\ : std_logic;
SIGNAL \ULA|Add2~16_combout\ : std_logic;
SIGNAL \ULA|Mux23~2_combout\ : std_logic;
SIGNAL \ULA|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ULA|Mux23~3_combout\ : std_logic;
SIGNAL \ULA|Mux23~5_combout\ : std_logic;
SIGNAL \ULA|Mux23~6_combout\ : std_logic;
SIGNAL \ULA|Mux23~7_combout\ : std_logic;
SIGNAL \ULA|Mux23~combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[6]~6_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[5]~5_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[4]~4_combout\ : std_logic;
SIGNAL \MUX_REGDST|Saida_5bits[1]~1_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \MUX_REGDST|Saida_5bits[0]~0_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[2]~2_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~76_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~99_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~100_combout\ : std_logic;
SIGNAL \ULA|Mux26~12_combout\ : std_logic;
SIGNAL \ULA|Mux26~5_combout\ : std_logic;
SIGNAL \ULA|Mux26~3_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~98_combout\ : std_logic;
SIGNAL \ULA|Mux26~2_combout\ : std_logic;
SIGNAL \ULA|Mux26~4_combout\ : std_logic;
SIGNAL \ULA|Add2~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~6_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~55_combout\ : std_logic;
SIGNAL \ULA|ShiftRight1~22_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~56_combout\ : std_logic;
SIGNAL \ULA|Mux26~7_combout\ : std_logic;
SIGNAL \ULA|Mux26~8_combout\ : std_logic;
SIGNAL \ULA|Add1~10_combout\ : std_logic;
SIGNAL \ULA|resposta~63_combout\ : std_logic;
SIGNAL \ULA|Mux26~9_combout\ : std_logic;
SIGNAL \ULA|Mux26~10_combout\ : std_logic;
SIGNAL \ULA|Mux26~11_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[3]~3_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ULA|Mux9~8_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~28_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~29_combout\ : std_logic;
SIGNAL \ULA|Mux27~0_combout\ : std_logic;
SIGNAL \ULA|Mux27~2_combout\ : std_logic;
SIGNAL \ULA|Mux27~3_combout\ : std_logic;
SIGNAL \ULA|Mux27~4_combout\ : std_logic;
SIGNAL \ULA|Mux27~5_combout\ : std_logic;
SIGNAL \ULA|Mux27~6_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ULA|resposta~69_combout\ : std_logic;
SIGNAL \ULA|Add1~8_combout\ : std_logic;
SIGNAL \ULA|Mux27~7_combout\ : std_logic;
SIGNAL \ULA|Mux27~8_combout\ : std_logic;
SIGNAL \ULA|Mux27~9_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[2]~2_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux10~2_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux7~2_combout\ : std_logic;
SIGNAL \ULA|Mux2~14_combout\ : std_logic;
SIGNAL \ULA|resposta~68_combout\ : std_logic;
SIGNAL \ULA|Mux28~21_combout\ : std_logic;
SIGNAL \ULA|Mux28~22_combout\ : std_logic;
SIGNAL \ULA|Mux28~15_combout\ : std_logic;
SIGNAL \ULA|Mux28~17_combout\ : std_logic;
SIGNAL \ULA|Mux28~16_combout\ : std_logic;
SIGNAL \ULA|Mux28~18_combout\ : std_logic;
SIGNAL \ULA|Mux28~19_combout\ : std_logic;
SIGNAL \ULA|Mux28~13_combout\ : std_logic;
SIGNAL \ULA|Mux28~14_combout\ : std_logic;
SIGNAL \ULA|Mux28~20_combout\ : std_logic;
SIGNAL \ULA|Mux28~23_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[1]~1_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux1~2_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|rom1|Mux3~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux1~1_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux1~4_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux6~0_combout\ : std_logic;
SIGNAL \MUXIouD|Saida_8bits_IouD[0]~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux9~2_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux9~0_combout\ : std_logic;
SIGNAL \CONTROLE_ALU|Mux9~3_combout\ : std_logic;
SIGNAL \ULA|Mux31~23_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~54_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~53_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~36_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~37_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~30_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~127_combout\ : std_logic;
SIGNAL \ULA|ShiftRight0~128_combout\ : std_logic;
SIGNAL \ULA|Mux31~6_combout\ : std_logic;
SIGNAL \ULA|Add1~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~22_combout\ : std_logic;
SIGNAL \ULA|Mux31~7_combout\ : std_logic;
SIGNAL \ULA|Mux31~8_combout\ : std_logic;
SIGNAL \ULA|Mux31~9_combout\ : std_logic;
SIGNAL \ULA|Add2~0_combout\ : std_logic;
SIGNAL \ULA|Mux31~13_combout\ : std_logic;
SIGNAL \ULA|Mux31~14_combout\ : std_logic;
SIGNAL \ULA|Mux31~10_combout\ : std_logic;
SIGNAL \ULA|Mux31~12_combout\ : std_logic;
SIGNAL \ULA|Mux31~15_combout\ : std_logic;
SIGNAL \ULA|Mux31~16_combout\ : std_logic;
SIGNAL \MUX_MEMPARAREG|Saida_32bits[0]~0_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux3~3_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux3~4_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux3~1_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux0~1_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux0~2_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux1~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~2_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~3_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~1_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~4_combout\ : std_logic;
SIGNAL \CONTROLE|enderecamento_instance|mux|Mux2~6_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux20~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux3~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux13~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux3~1_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux9~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux10~0_combout\ : std_logic;
SIGNAL \CONTROLE|microCodigo_instance|Mux2~0_combout\ : std_logic;
SIGNAL \BREG|bregfile_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \PC_32|estado_out[25]~23_combout\ : std_logic;
SIGNAL \MUX_A|Saida_32bits_ALU[25]~25_combout\ : std_logic;
SIGNAL \MUX_B|Mux31~0_combout\ : std_logic;
SIGNAL \MUX_B|Mux8~0_combout\ : std_logic;
SIGNAL \RDM_32|estado_out[13]~feeder_combout\ : std_logic;
SIGNAL \RI_32|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RDM_32|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_A_32|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_B_32|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_ULA|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \PC_32|estado_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \CONTROLE|microPC_instance|estado_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\ : std_logic_vector(0 TO 1);
SIGNAL \CONTROLE|microCodigo_instance|microInstrucao.microCmds\ : std_logic_vector(0 TO 17);

BEGIN

ww_Clock <= Clock;
OpALU <= ww_OpALU;
OrigBALU <= ww_OrigBALU;
OrigPC <= ww_OrigPC;
OrigAALU <= ww_OrigAALU;
EscreveReg <= ww_EscreveReg;
RegDst <= ww_RegDst;
MemparaReg <= ww_MemparaReg;
EscrevePC <= ww_EscrevePC;
EscrevePCBeq <= ww_EscrevePCBeq;
IouD <= ww_IouD;
EscreveMem <= ww_EscreveMem;
LeMem <= ww_LeMem;
EscreveIR <= ww_EscreveIR;
EscrevePCBne <= ww_EscrevePCBne;
CtlEnd <= ww_CtlEnd;
Opcode_ALU <= ww_Opcode_ALU;
A_ALU <= ww_A_ALU;
B_ALU <= ww_B_ALU;
PC <= ww_PC;
RI <= ww_RI;
RDM <= ww_RDM;
SaidaALU <= ww_SaidaALU;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\REG_B_32|estado_out\(31) & \REG_B_32|estado_out\(30) & \REG_B_32|estado_out\(29) & \REG_B_32|estado_out\(28) & \REG_B_32|estado_out\(27) & \REG_B_32|estado_out\(26) & 
\REG_B_32|estado_out\(11) & \REG_B_32|estado_out\(10) & \REG_B_32|estado_out\(9) & \REG_B_32|estado_out\(8) & \REG_B_32|estado_out\(7) & \REG_B_32|estado_out\(6) & \REG_B_32|estado_out\(5) & \REG_B_32|estado_out\(4) & 
\REG_B_32|estado_out\(3) & \REG_B_32|estado_out\(2) & \REG_B_32|estado_out\(1) & \REG_B_32|estado_out\(0));

\MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUXIouD|Saida_8bits_IouD[7]~7_combout\ & \MUXIouD|Saida_8bits_IouD[6]~6_combout\ & \MUXIouD|Saida_8bits_IouD[5]~5_combout\ & \MUXIouD|Saida_8bits_IouD[4]~4_combout\ & 
\MUXIouD|Saida_8bits_IouD[3]~3_combout\ & \MUXIouD|Saida_8bits_IouD[2]~2_combout\ & \MUXIouD|Saida_8bits_IouD[1]~1_combout\ & \MUXIouD|Saida_8bits_IouD[0]~0_combout\);

\MEM|altsyncram_component|auto_generated|q_a\(0) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEM|altsyncram_component|auto_generated|q_a\(1) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEM|altsyncram_component|auto_generated|q_a\(2) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEM|altsyncram_component|auto_generated|q_a\(3) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEM|altsyncram_component|auto_generated|q_a\(4) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEM|altsyncram_component|auto_generated|q_a\(5) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEM|altsyncram_component|auto_generated|q_a\(6) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEM|altsyncram_component|auto_generated|q_a\(7) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\MEM|altsyncram_component|auto_generated|q_a\(8) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\MEM|altsyncram_component|auto_generated|q_a\(9) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\MEM|altsyncram_component|auto_generated|q_a\(10) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\MEM|altsyncram_component|auto_generated|q_a\(11) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\MEM|altsyncram_component|auto_generated|q_a\(26) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\MEM|altsyncram_component|auto_generated|q_a\(27) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\MEM|altsyncram_component|auto_generated|q_a\(28) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\MEM|altsyncram_component|auto_generated|q_a\(29) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\MEM|altsyncram_component|auto_generated|q_a\(30) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\MEM|altsyncram_component|auto_generated|q_a\(31) <= \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\MUX_MEMPARAREG|Saida_32bits[31]~31_combout\ & \MUX_MEMPARAREG|Saida_32bits[30]~30_combout\ & \MUX_MEMPARAREG|Saida_32bits[29]~29_combout\ & \MUX_MEMPARAREG|Saida_32bits[28]~28_combout\
& \MUX_MEMPARAREG|Saida_32bits[27]~27_combout\ & \MUX_MEMPARAREG|Saida_32bits[26]~26_combout\ & \MUX_MEMPARAREG|Saida_32bits[25]~25_combout\ & \MUX_MEMPARAREG|Saida_32bits[24]~24_combout\ & \MUX_MEMPARAREG|Saida_32bits[23]~23_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[22]~22_combout\ & \MUX_MEMPARAREG|Saida_32bits[21]~21_combout\ & \MUX_MEMPARAREG|Saida_32bits[20]~20_combout\ & \MUX_MEMPARAREG|Saida_32bits[19]~19_combout\ & \MUX_MEMPARAREG|Saida_32bits[18]~18_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[17]~17_combout\ & \MUX_MEMPARAREG|Saida_32bits[16]~16_combout\ & \MUX_MEMPARAREG|Saida_32bits[15]~15_combout\ & \MUX_MEMPARAREG|Saida_32bits[14]~14_combout\ & \MUX_MEMPARAREG|Saida_32bits[13]~13_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[12]~12_combout\ & \MUX_MEMPARAREG|Saida_32bits[11]~11_combout\ & \MUX_MEMPARAREG|Saida_32bits[10]~10_combout\ & \MUX_MEMPARAREG|Saida_32bits[9]~9_combout\ & \MUX_MEMPARAREG|Saida_32bits[8]~8_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[7]~7_combout\ & \MUX_MEMPARAREG|Saida_32bits[6]~6_combout\ & \MUX_MEMPARAREG|Saida_32bits[5]~5_combout\ & \MUX_MEMPARAREG|Saida_32bits[4]~4_combout\ & \MUX_MEMPARAREG|Saida_32bits[3]~3_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[2]~2_combout\ & \MUX_MEMPARAREG|Saida_32bits[1]~1_combout\ & \MUX_MEMPARAREG|Saida_32bits[0]~0_combout\);

\BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUX_REGDST|Saida_5bits[4]~4_combout\ & \MUX_REGDST|Saida_5bits[3]~3_combout\ & \MUX_REGDST|Saida_5bits[2]~2_combout\ & \MUX_REGDST|Saida_5bits[1]~1_combout\ & 
\MUX_REGDST|Saida_5bits[0]~0_combout\);

\BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RI_32|estado_out\(25) & \RI_32|estado_out\(24) & \RI_32|estado_out\(23) & \RI_32|estado_out\(22) & \RI_32|estado_out\(21));

\BREG|bregfile_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a1\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a2\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a3\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a4\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a5\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a6\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a7\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a8\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a9\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a10\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a11\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a12\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a13\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a14\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a15\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a16\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a17\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a18\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a19\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a20\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a21\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a22\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a23\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a24\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a25\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a26\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a27\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a28\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a29\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a30\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\BREG|bregfile_rtl_0|auto_generated|ram_block1a31\ <= \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\MUX_MEMPARAREG|Saida_32bits[31]~31_combout\ & \MUX_MEMPARAREG|Saida_32bits[30]~30_combout\ & \MUX_MEMPARAREG|Saida_32bits[29]~29_combout\ & \MUX_MEMPARAREG|Saida_32bits[28]~28_combout\
& \MUX_MEMPARAREG|Saida_32bits[27]~27_combout\ & \MUX_MEMPARAREG|Saida_32bits[26]~26_combout\ & \MUX_MEMPARAREG|Saida_32bits[25]~25_combout\ & \MUX_MEMPARAREG|Saida_32bits[24]~24_combout\ & \MUX_MEMPARAREG|Saida_32bits[23]~23_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[22]~22_combout\ & \MUX_MEMPARAREG|Saida_32bits[21]~21_combout\ & \MUX_MEMPARAREG|Saida_32bits[20]~20_combout\ & \MUX_MEMPARAREG|Saida_32bits[19]~19_combout\ & \MUX_MEMPARAREG|Saida_32bits[18]~18_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[17]~17_combout\ & \MUX_MEMPARAREG|Saida_32bits[16]~16_combout\ & \MUX_MEMPARAREG|Saida_32bits[15]~15_combout\ & \MUX_MEMPARAREG|Saida_32bits[14]~14_combout\ & \MUX_MEMPARAREG|Saida_32bits[13]~13_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[12]~12_combout\ & \MUX_MEMPARAREG|Saida_32bits[11]~11_combout\ & \MUX_MEMPARAREG|Saida_32bits[10]~10_combout\ & \MUX_MEMPARAREG|Saida_32bits[9]~9_combout\ & \MUX_MEMPARAREG|Saida_32bits[8]~8_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[7]~7_combout\ & \MUX_MEMPARAREG|Saida_32bits[6]~6_combout\ & \MUX_MEMPARAREG|Saida_32bits[5]~5_combout\ & \MUX_MEMPARAREG|Saida_32bits[4]~4_combout\ & \MUX_MEMPARAREG|Saida_32bits[3]~3_combout\ & 
\MUX_MEMPARAREG|Saida_32bits[2]~2_combout\ & \MUX_MEMPARAREG|Saida_32bits[1]~1_combout\ & \MUX_MEMPARAREG|Saida_32bits[0]~0_combout\);

\BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MUX_REGDST|Saida_5bits[4]~4_combout\ & \MUX_REGDST|Saida_5bits[3]~3_combout\ & \MUX_REGDST|Saida_5bits[2]~2_combout\ & \MUX_REGDST|Saida_5bits[1]~1_combout\ & 
\MUX_REGDST|Saida_5bits[0]~0_combout\);

\BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RI_32|estado_out\(20) & \RI_32|estado_out\(19) & \RI_32|estado_out\(18) & \RI_32|estado_out\(17) & \RI_32|estado_out\(16));

\BREG|bregfile_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a1\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a2\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a3\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a4\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a5\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a6\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a7\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a8\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a9\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a10\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a11\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a12\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a13\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a14\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a15\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a16\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a17\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a18\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a19\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a20\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a21\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a22\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a23\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a24\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a25\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a26\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a27\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a28\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a29\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a30\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\BREG|bregfile_rtl_1|auto_generated|ram_block1a31\ <= \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\REG_B_32|estado_out\(25) & \REG_B_32|estado_out\(24) & \REG_B_32|estado_out\(23) & \REG_B_32|estado_out\(22) & \REG_B_32|estado_out\(21) & \REG_B_32|estado_out\(20) & 
\REG_B_32|estado_out\(19) & \REG_B_32|estado_out\(18) & \REG_B_32|estado_out\(17) & \REG_B_32|estado_out\(16) & \REG_B_32|estado_out\(15) & \REG_B_32|estado_out\(14) & \REG_B_32|estado_out\(13) & \REG_B_32|estado_out\(12));

\MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MUXIouD|Saida_8bits_IouD[7]~7_combout\ & \MUXIouD|Saida_8bits_IouD[6]~6_combout\ & \MUXIouD|Saida_8bits_IouD[5]~5_combout\ & \MUXIouD|Saida_8bits_IouD[4]~4_combout\ & 
\MUXIouD|Saida_8bits_IouD[3]~3_combout\ & \MUXIouD|Saida_8bits_IouD[2]~2_combout\ & \MUXIouD|Saida_8bits_IouD[1]~1_combout\ & \MUXIouD|Saida_8bits_IouD[0]~0_combout\);

\MEM|altsyncram_component|auto_generated|q_a\(12) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\MEM|altsyncram_component|auto_generated|q_a\(13) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\MEM|altsyncram_component|auto_generated|q_a\(14) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\MEM|altsyncram_component|auto_generated|q_a\(15) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\MEM|altsyncram_component|auto_generated|q_a\(16) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\MEM|altsyncram_component|auto_generated|q_a\(17) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\MEM|altsyncram_component|auto_generated|q_a\(18) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\MEM|altsyncram_component|auto_generated|q_a\(19) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\MEM|altsyncram_component|auto_generated|q_a\(20) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\MEM|altsyncram_component|auto_generated|q_a\(21) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);
\MEM|altsyncram_component|auto_generated|q_a\(22) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(10);
\MEM|altsyncram_component|auto_generated|q_a\(23) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(11);
\MEM|altsyncram_component|auto_generated|q_a\(24) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(12);
\MEM|altsyncram_component|auto_generated|q_a\(25) <= \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(13);

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\CONTROLE|microCodigo_instance|Mux20~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CONTROLE|microCodigo_instance|Mux20~0_combout\);

-- Location: LCCOMB_X68_Y33_N6
\ULA|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~6_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_B|Mux28~1_combout\ & (!\ULA|Add1~5\)) # (!\MUX_B|Mux28~1_combout\ & (\ULA|Add1~5\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_B|Mux28~1_combout\ & ((\ULA|Add1~5\) # 
-- (GND))) # (!\MUX_B|Mux28~1_combout\ & (!\ULA|Add1~5\))))
-- \ULA|Add1~7\ = CARRY((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\MUX_B|Mux28~1_combout\ & !\ULA|Add1~5\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_B|Mux28~1_combout\) # (!\ULA|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_B|Mux28~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~5\,
	combout => \ULA|Add1~6_combout\,
	cout => \ULA|Add1~7\);

-- Location: LCCOMB_X68_Y33_N16
\ULA|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~16_combout\ = ((\MUX_A|Saida_32bits_ALU[8]~8_combout\ $ (\MUX_B|Mux23~1_combout\ $ (\ULA|Add1~15\)))) # (GND)
-- \ULA|Add1~17\ = CARRY((\MUX_A|Saida_32bits_ALU[8]~8_combout\ & ((!\ULA|Add1~15\) # (!\MUX_B|Mux23~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[8]~8_combout\ & (!\MUX_B|Mux23~1_combout\ & !\ULA|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	datab => \MUX_B|Mux23~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~15\,
	combout => \ULA|Add1~16_combout\,
	cout => \ULA|Add1~17\);

-- Location: LCCOMB_X68_Y33_N22
\ULA|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~22_combout\ = (\MUX_A|Saida_32bits_ALU[11]~11_combout\ & ((\MUX_B|Mux20~1_combout\ & (!\ULA|Add1~21\)) # (!\MUX_B|Mux20~1_combout\ & (\ULA|Add1~21\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & ((\MUX_B|Mux20~1_combout\ & 
-- ((\ULA|Add1~21\) # (GND))) # (!\MUX_B|Mux20~1_combout\ & (!\ULA|Add1~21\))))
-- \ULA|Add1~23\ = CARRY((\MUX_A|Saida_32bits_ALU[11]~11_combout\ & (\MUX_B|Mux20~1_combout\ & !\ULA|Add1~21\)) # (!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & ((\MUX_B|Mux20~1_combout\) # (!\ULA|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[11]~11_combout\,
	datab => \MUX_B|Mux20~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~21\,
	combout => \ULA|Add1~22_combout\,
	cout => \ULA|Add1~23\);

-- Location: LCCOMB_X68_Y32_N2
\ULA|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~34_combout\ = (\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\MUX_B|Mux14~0_combout\ & (!\ULA|Add1~33\)) # (!\MUX_B|Mux14~0_combout\ & (\ULA|Add1~33\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\MUX_B|Mux14~0_combout\ & 
-- ((\ULA|Add1~33\) # (GND))) # (!\MUX_B|Mux14~0_combout\ & (!\ULA|Add1~33\))))
-- \ULA|Add1~35\ = CARRY((\MUX_A|Saida_32bits_ALU[17]~17_combout\ & (\MUX_B|Mux14~0_combout\ & !\ULA|Add1~33\)) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\MUX_B|Mux14~0_combout\) # (!\ULA|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	datab => \MUX_B|Mux14~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~33\,
	combout => \ULA|Add1~34_combout\,
	cout => \ULA|Add1~35\);

-- Location: LCCOMB_X70_Y35_N6
\ULA|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~6_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_B|Mux28~1_combout\ & (\ULA|Add2~5\ & VCC)) # (!\MUX_B|Mux28~1_combout\ & (!\ULA|Add2~5\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_B|Mux28~1_combout\ & (!\ULA|Add2~5\)) # 
-- (!\MUX_B|Mux28~1_combout\ & ((\ULA|Add2~5\) # (GND)))))
-- \ULA|Add2~7\ = CARRY((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_B|Mux28~1_combout\ & !\ULA|Add2~5\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((!\ULA|Add2~5\) # (!\MUX_B|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_B|Mux28~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~5\,
	combout => \ULA|Add2~6_combout\,
	cout => \ULA|Add2~7\);

-- Location: LCCOMB_X70_Y35_N8
\ULA|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~8_combout\ = ((\MUX_B|Mux27~1_combout\ $ (\MUX_A|Saida_32bits_ALU[4]~4_combout\ $ (!\ULA|Add2~7\)))) # (GND)
-- \ULA|Add2~9\ = CARRY((\MUX_B|Mux27~1_combout\ & ((\MUX_A|Saida_32bits_ALU[4]~4_combout\) # (!\ULA|Add2~7\))) # (!\MUX_B|Mux27~1_combout\ & (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & !\ULA|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datad => VCC,
	cin => \ULA|Add2~7\,
	combout => \ULA|Add2~8_combout\,
	cout => \ULA|Add2~9\);

-- Location: LCCOMB_X70_Y35_N24
\ULA|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~24_combout\ = ((\MUX_A|Saida_32bits_ALU[12]~12_combout\ $ (\MUX_B|Mux19~1_combout\ $ (!\ULA|Add2~23\)))) # (GND)
-- \ULA|Add2~25\ = CARRY((\MUX_A|Saida_32bits_ALU[12]~12_combout\ & ((\MUX_B|Mux19~1_combout\) # (!\ULA|Add2~23\))) # (!\MUX_A|Saida_32bits_ALU[12]~12_combout\ & (\MUX_B|Mux19~1_combout\ & !\ULA|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	datab => \MUX_B|Mux19~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~23\,
	combout => \ULA|Add2~24_combout\,
	cout => \ULA|Add2~25\);

-- Location: LCCOMB_X70_Y35_N28
\ULA|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~28_combout\ = ((\MUX_A|Saida_32bits_ALU[14]~14_combout\ $ (\MUX_B|Mux17~1_combout\ $ (!\ULA|Add2~27\)))) # (GND)
-- \ULA|Add2~29\ = CARRY((\MUX_A|Saida_32bits_ALU[14]~14_combout\ & ((\MUX_B|Mux17~1_combout\) # (!\ULA|Add2~27\))) # (!\MUX_A|Saida_32bits_ALU[14]~14_combout\ & (\MUX_B|Mux17~1_combout\ & !\ULA|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	datab => \MUX_B|Mux17~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~27\,
	combout => \ULA|Add2~28_combout\,
	cout => \ULA|Add2~29\);

-- Location: LCCOMB_X70_Y35_N30
\ULA|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~30_combout\ = (\MUX_B|Mux16~1_combout\ & ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (\ULA|Add2~29\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (!\ULA|Add2~29\)))) # (!\MUX_B|Mux16~1_combout\ & ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ 
-- & (!\ULA|Add2~29\)) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & ((\ULA|Add2~29\) # (GND)))))
-- \ULA|Add2~31\ = CARRY((\MUX_B|Mux16~1_combout\ & (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & !\ULA|Add2~29\)) # (!\MUX_B|Mux16~1_combout\ & ((!\ULA|Add2~29\) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux16~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	datad => VCC,
	cin => \ULA|Add2~29\,
	combout => \ULA|Add2~30_combout\,
	cout => \ULA|Add2~31\);

-- Location: LCCOMB_X70_Y34_N0
\ULA|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~32_combout\ = ((\MUX_B|Mux15~1_combout\ $ (\MUX_A|Saida_32bits_ALU[16]~16_combout\ $ (!\ULA|Add2~31\)))) # (GND)
-- \ULA|Add2~33\ = CARRY((\MUX_B|Mux15~1_combout\ & ((\MUX_A|Saida_32bits_ALU[16]~16_combout\) # (!\ULA|Add2~31\))) # (!\MUX_B|Mux15~1_combout\ & (\MUX_A|Saida_32bits_ALU[16]~16_combout\ & !\ULA|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	datad => VCC,
	cin => \ULA|Add2~31\,
	combout => \ULA|Add2~32_combout\,
	cout => \ULA|Add2~33\);

-- Location: M4K_X64_Y32
\BREG|bregfile_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS_MULTICICLO.ram0_bregMIPS_f1385cbe.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bregMIPS:BREG|altsyncram:bregfile_rtl_0|altsyncram_obm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \BREG|process_0~1_combout\,
	portbrewe => VCC,
	clk0 => \Clock~clkctrl_outclk\,
	portadatain => \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BREG|bregfile_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X66_Y35_N8
\CONTROLE_ALU|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux9~1_combout\ = (\RI_32|estado_out\(3) & (\RI_32|estado_out\(5) & \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(3),
	datab => \RI_32|estado_out\(5),
	datad => \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\,
	combout => \CONTROLE_ALU|Mux9~1_combout\);

-- Location: LCFF_X60_Y35_N25
\REG_A_32|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a9\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(9));

-- Location: LCFF_X61_Y35_N7
\REG_A_32|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_A_32|estado_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(18));

-- Location: LCFF_X69_Y33_N21
\REG_A_32|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_A_32|estado_out[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(26));

-- Location: LCFF_X69_Y34_N13
\REG_A_32|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a30\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(30));

-- Location: LCCOMB_X67_Y35_N6
\MUX_B|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux22~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(9))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \RI_32|estado_out\(9),
	datac => \REG_B_32|estado_out\(9),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux22~0_combout\);

-- Location: LCCOMB_X62_Y36_N4
\ULA|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~4_combout\ = (!\CONTROLE_ALU|Mux7~2_combout\ & ((!\MUX_A|Saida_32bits_ALU[0]~0_combout\) # (!\MUX_B|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux31~4_combout\);

-- Location: LCCOMB_X65_Y35_N10
\ULA|ShiftLeft0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~36_combout\ = (\MUX_A|Saida_32bits_ALU[5]~5_combout\) # ((\MUX_A|Saida_32bits_ALU[7]~7_combout\) # ((\MUX_A|Saida_32bits_ALU[6]~6_combout\) # (\MUX_A|Saida_32bits_ALU[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datab => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	datac => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	datad => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	combout => \ULA|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X69_Y36_N24
\ULA|ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~45_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\MUX_B|Mux14~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux14~0_combout\,
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|ShiftRight0~45_combout\);

-- Location: LCCOMB_X66_Y36_N12
\ULA|ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~49_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(22))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(22),
	datac => \REG_B_32|estado_out\(20),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight0~49_combout\);

-- Location: LCCOMB_X62_Y36_N2
\ULA|Mux31~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~11_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Add2~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & ((\MUX_B|Mux31~0_combout\) # ((\MUX_A|Saida_32bits_ALU[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datab => \ULA|Add2~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux31~11_combout\);

-- Location: LCCOMB_X62_Y39_N10
\ULA|ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~63_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux15~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \MUX_B|Mux16~1_combout\,
	combout => \ULA|ShiftRight0~63_combout\);

-- Location: LCCOMB_X68_Y37_N24
\ULA|ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~49_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux30~0_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \MUX_B|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux30~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux31~0_combout\,
	combout => \ULA|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X61_Y37_N24
\ULA|Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~7_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|Mux28~9_combout\) # ((\ULA|Mux28~8_combout\ & \ULA|Mux29~13_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|Mux28~9_combout\ & ((\ULA|Mux29~13_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux29~13_combout\,
	combout => \ULA|Mux29~7_combout\);

-- Location: LCCOMB_X60_Y35_N12
\ULA|ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~46_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(31))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(31))) # 
-- (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(31),
	datab => \REG_B_32|estado_out\(30),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~46_combout\);

-- Location: LCCOMB_X61_Y38_N8
\ULA|ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~89_combout\ = (\ULA|ShiftRight0~33_combout\) # (\ULA|ShiftRight0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ShiftRight0~33_combout\,
	datad => \ULA|ShiftRight0~34_combout\,
	combout => \ULA|ShiftRight0~89_combout\);

-- Location: LCCOMB_X65_Y38_N24
\ULA|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~1_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|Mux31~5_combout\ & \ULA|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftLeft0~55_combout\,
	combout => \ULA|Mux27~1_combout\);

-- Location: LCCOMB_X62_Y38_N16
\ULA|ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~59_combout\ = (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~57_combout\) # ((\ULA|ShiftLeft0~58_combout\) # (\ULA|ShiftLeft0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~57_combout\,
	datac => \ULA|ShiftLeft0~58_combout\,
	datad => \ULA|ShiftLeft0~56_combout\,
	combout => \ULA|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X67_Y33_N26
\ULA|ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~63_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux28~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux27~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux28~1_combout\,
	datad => \MUX_B|Mux27~1_combout\,
	combout => \ULA|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X67_Y38_N12
\ULA|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~72_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~16_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~72_combout\,
	datac => \ULA|Add1~16_combout\,
	datad => \ULA|Mux28~12_combout\,
	combout => \ULA|Mux23~0_combout\);

-- Location: LCCOMB_X67_Y38_N10
\ULA|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux23~0_combout\ & (\ULA|ShiftRight1~80_combout\)) # (!\ULA|Mux23~0_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~80_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux23~0_combout\,
	combout => \ULA|Mux23~1_combout\);

-- Location: LCCOMB_X66_Y39_N16
\ULA|ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~72_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~46_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftLeft0~71_combout\) # (\ULA|ShiftLeft0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~46_combout\,
	datac => \ULA|ShiftLeft0~71_combout\,
	datad => \ULA|ShiftLeft0~70_combout\,
	combout => \ULA|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X67_Y38_N6
\ULA|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~4_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[8]~8_combout\ $ (\MUX_B|Mux23~1_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[8]~8_combout\ & !\MUX_B|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \MUX_B|Mux23~1_combout\,
	combout => \ULA|Mux23~4_combout\);

-- Location: LCCOMB_X63_Y38_N28
\ULA|ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~75_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux24~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux22~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux24~1_combout\,
	combout => \ULA|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X60_Y36_N12
\ULA|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~2_combout\ = (\MUX_B|Mux21~1_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_A|Saida_32bits_ALU[10]~10_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_B|Mux21~1_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_A|Saida_32bits_ALU[10]~10_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux21~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	datac => \ULA|Mux28~8_combout\,
	datad => \ULA|Mux28~9_combout\,
	combout => \ULA|Mux21~2_combout\);

-- Location: LCCOMB_X66_Y33_N28
\ULA|ShiftRight1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~83_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\ULA|Mux28~24_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\ULA|Mux28~24_combout\ & (\ULA|ShiftRight1~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight1~57_combout\,
	datad => \REG_B_32|estado_out\(31),
	combout => \ULA|ShiftRight1~83_combout\);

-- Location: LCCOMB_X63_Y33_N28
\ULA|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~76_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~22_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~76_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Mux28~12_combout\,
	datad => \ULA|Add1~22_combout\,
	combout => \ULA|Mux20~0_combout\);

-- Location: LCCOMB_X63_Y33_N10
\ULA|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux20~0_combout\ & ((\ULA|ShiftRight1~91_combout\))) # (!\ULA|Mux20~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~91_combout\,
	datad => \ULA|Mux20~0_combout\,
	combout => \ULA|Mux20~1_combout\);

-- Location: LCCOMB_X65_Y31_N6
\ULA|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~4_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[11]~11_combout\ $ (\MUX_B|Mux20~1_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & !\MUX_B|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[11]~11_combout\,
	datab => \MUX_B|Mux20~1_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux20~4_combout\);

-- Location: LCCOMB_X62_Y38_N10
\ULA|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~4_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[13]~13_combout\ $ (\MUX_B|Mux18~1_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[13]~13_combout\ & !\MUX_B|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[13]~13_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux18~4_combout\);

-- Location: LCCOMB_X65_Y33_N20
\ULA|ShiftRight0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~115_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & (\MUX_B|Mux0~0_combout\ & !\ULA|ShiftRight1~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|ShiftRight1~72_combout\,
	combout => \ULA|ShiftRight0~115_combout\);

-- Location: LCCOMB_X65_Y37_N30
\ULA|Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~9_combout\ = (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ & ((\MUX_B|Mux16~1_combout\) # (\ULA|Mux3~10_combout\))) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (\MUX_B|Mux16~1_combout\ & \ULA|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	datab => \MUX_B|Mux16~1_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux16~9_combout\);

-- Location: LCCOMB_X65_Y33_N12
\ULA|Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~10_combout\ = (\ULA|Mux16~9_combout\) # ((\CONTROLE_ALU|Mux9~3_combout\ & \ULA|Add2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux16~9_combout\,
	datad => \ULA|Add2~30_combout\,
	combout => \ULA|Mux16~10_combout\);

-- Location: LCCOMB_X65_Y37_N6
\ULA|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~1_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux3~10_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux3~10_combout\ & (\MUX_B|Mux15~1_combout\ $ (!\MUX_A|Saida_32bits_ALU[16]~16_combout\))) # (!\ULA|Mux3~10_combout\ & 
-- ((\MUX_B|Mux15~1_combout\) # (\MUX_A|Saida_32bits_ALU[16]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	combout => \ULA|Mux15~1_combout\);

-- Location: LCCOMB_X61_Y35_N10
\ULA|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~5_combout\ = (\ULA|Mux9~8_combout\ & ((\MUX_A|Saida_32bits_ALU[18]~18_combout\ $ (!\MUX_B|Mux13~0_combout\)) # (!\ULA|Mux3~24_combout\))) # (!\ULA|Mux9~8_combout\ & (\ULA|Mux3~24_combout\ & ((\MUX_A|Saida_32bits_ALU[18]~18_combout\) # 
-- (\MUX_B|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~8_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	datad => \MUX_B|Mux13~0_combout\,
	combout => \ULA|Mux13~5_combout\);

-- Location: LCCOMB_X65_Y34_N24
\ULA|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~6_combout\ = (\ULA|Mux9~8_combout\ & ((\MUX_A|Saida_32bits_ALU[20]~20_combout\ $ (!\MUX_B|Mux11~0_combout\)) # (!\ULA|Mux3~24_combout\))) # (!\ULA|Mux9~8_combout\ & (\ULA|Mux3~24_combout\ & ((\MUX_A|Saida_32bits_ALU[20]~20_combout\) # 
-- (\MUX_B|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	datab => \MUX_B|Mux11~0_combout\,
	datac => \ULA|Mux9~8_combout\,
	datad => \ULA|Mux3~24_combout\,
	combout => \ULA|Mux11~6_combout\);

-- Location: LCCOMB_X66_Y34_N20
\ULA|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~2_combout\ = (\MUX_B|Mux10~0_combout\ & (\ULA|Mux9~8_combout\ & ((!\ULA|Mux3~24_combout\) # (!\MUX_A|Saida_32bits_ALU[21]~21_combout\)))) # (!\MUX_B|Mux10~0_combout\ & (\ULA|Mux9~8_combout\ $ (((!\MUX_A|Saida_32bits_ALU[21]~21_combout\ & 
-- \ULA|Mux3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux10~0_combout\,
	datab => \ULA|Mux9~8_combout\,
	datac => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	datad => \ULA|Mux3~24_combout\,
	combout => \ULA|Mux10~2_combout\);

-- Location: LCCOMB_X67_Y34_N12
\ULA|ShiftLeft0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~120_combout\ = (\ULA|ShiftLeft0~160_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(19),
	datab => \ULA|ShiftLeft0~160_combout\,
	datac => \REG_B_32|estado_out\(21),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X67_Y31_N18
\ULA|Mux9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~20_combout\ = (\ULA|Mux3~24_combout\ & ((\MUX_A|Saida_32bits_ALU[22]~22_combout\ & ((\MUX_B|Mux9~0_combout\) # (!\ULA|Mux9~8_combout\))) # (!\MUX_A|Saida_32bits_ALU[22]~22_combout\ & (\MUX_B|Mux9~0_combout\ $ (\ULA|Mux9~8_combout\))))) # 
-- (!\ULA|Mux3~24_combout\ & (((\ULA|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	datab => \MUX_B|Mux9~0_combout\,
	datac => \ULA|Mux3~24_combout\,
	datad => \ULA|Mux9~8_combout\,
	combout => \ULA|Mux9~20_combout\);

-- Location: LCCOMB_X66_Y34_N6
\ULA|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~2_combout\ = (\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (\ULA|Mux9~8_combout\ & ((!\ULA|Mux3~24_combout\) # (!\MUX_B|Mux8~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (\ULA|Mux9~8_combout\ $ (((!\MUX_B|Mux8~0_combout\ & 
-- \ULA|Mux3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	datab => \ULA|Mux9~8_combout\,
	datac => \MUX_B|Mux8~0_combout\,
	datad => \ULA|Mux3~24_combout\,
	combout => \ULA|Mux8~2_combout\);

-- Location: LCCOMB_X62_Y31_N10
\ULA|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~4_combout\ = (\MUX_A|Saida_32bits_ALU[24]~24_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_B|Mux7~0_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_A|Saida_32bits_ALU[24]~24_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_B|Mux7~0_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	datab => \MUX_B|Mux7~0_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux28~8_combout\,
	combout => \ULA|Mux7~4_combout\);

-- Location: LCCOMB_X66_Y39_N6
\ULA|ShiftLeft0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~132_combout\ = (\ULA|ShiftLeft0~69_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~72_combout\,
	datad => \ULA|ShiftLeft0~69_combout\,
	combout => \ULA|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X61_Y31_N2
\ULA|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~4_combout\ = (\ULA|Mux28~8_combout\ & ((\ULA|Mux28~9_combout\ & ((\MUX_B|Mux6~0_combout\) # (\MUX_A|Saida_32bits_ALU[25]~25_combout\))) # (!\ULA|Mux28~9_combout\ & (\MUX_B|Mux6~0_combout\ & \MUX_A|Saida_32bits_ALU[25]~25_combout\)))) # 
-- (!\ULA|Mux28~8_combout\ & (\ULA|Mux28~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux28~9_combout\,
	datac => \MUX_B|Mux6~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	combout => \ULA|Mux6~4_combout\);

-- Location: LCCOMB_X69_Y33_N28
\ULA|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~5_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux5~0_combout\ $ (\MUX_A|Saida_32bits_ALU[26]~26_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux5~0_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux5~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux5~5_combout\);

-- Location: LCCOMB_X59_Y35_N12
\ULA|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~10_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[27]~27_combout\ $ (\MUX_B|Mux4~0_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & !\MUX_B|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	datab => \MUX_B|Mux4~0_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux4~10_combout\);

-- Location: LCCOMB_X69_Y32_N12
\ULA|ShiftLeft0~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~142_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(25))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(25),
	datab => \REG_B_32|estado_out\(26),
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X69_Y32_N30
\ULA|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~11_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(27)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(28),
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \REG_B_32|estado_out\(27),
	combout => \ULA|Mux3~11_combout\);

-- Location: LCCOMB_X69_Y32_N4
\ULA|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~12_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & (\ULA|Mux3~11_combout\ & !\ULA|Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|Mux3~11_combout\,
	datad => \ULA|Mux28~6_combout\,
	combout => \ULA|Mux3~12_combout\);

-- Location: LCCOMB_X69_Y32_N26
\ULA|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~13_combout\ = (\ULA|Mux28~24_combout\ & (((\ULA|Mux28~6_combout\)))) # (!\ULA|Mux28~24_combout\ & ((\ULA|Mux3~12_combout\) # ((\ULA|ShiftLeft0~142_combout\ & \ULA|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~142_combout\,
	datab => \ULA|Mux28~6_combout\,
	datac => \ULA|Mux3~12_combout\,
	datad => \ULA|Mux28~24_combout\,
	combout => \ULA|Mux3~13_combout\);

-- Location: LCCOMB_X60_Y32_N0
\ULA|resposta~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~64_combout\ = (\MUX_A|Saida_32bits_ALU[28]~28_combout\) # ((\MUX_B|Mux14~1_combout\) # ((\REG_B_32|estado_out\(28) & \ULA|ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	datab => \REG_B_32|estado_out\(28),
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|resposta~64_combout\);

-- Location: LCCOMB_X62_Y38_N4
\ULA|ShiftLeft0~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~143_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~157_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~90_combout\,
	datad => \ULA|ShiftLeft0~157_combout\,
	combout => \ULA|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X69_Y34_N18
\ULA|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~5_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_B|Mux1~0_combout\ & (!\MUX_A|Saida_32bits_ALU[30]~30_combout\ & \ULA|Mux3~10_combout\)) # (!\MUX_B|Mux1~0_combout\ & 
-- (\MUX_A|Saida_32bits_ALU[30]~30_combout\ $ (!\ULA|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux1~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux1~5_combout\);

-- Location: LCCOMB_X60_Y34_N6
\ULA|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~0_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (\MUX_B|Mux0~0_combout\ & (!\ULA|Mux3~10_combout\))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux3~10_combout\ & ((!\MUX_A|Saida_32bits_ALU[31]~31_combout\) # (!\MUX_B|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	combout => \ULA|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y34_N10
\ULA|Mux31~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~17_combout\ = (\MUX_A|Saida_32bits_ALU[31]~31_combout\ & ((\CONTROLE_ALU|Mux7~2_combout\) # (!\MUX_B|Mux0~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[31]~31_combout\ & ((\MUX_B|Mux0~0_combout\) # (!\CONTROLE_ALU|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux31~17_combout\);

-- Location: LCCOMB_X65_Y32_N20
\CONTROLE|microCodigo_instance|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux12~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(0) & ((\CONTROLE|microPC_instance|estado_out\(2) & (\CONTROLE|microPC_instance|estado_out\(3) $ (\CONTROLE|microPC_instance|estado_out\(1)))) # 
-- (!\CONTROLE|microPC_instance|estado_out\(2) & (\CONTROLE|microPC_instance|estado_out\(3) & \CONTROLE|microPC_instance|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux12~0_combout\);

-- Location: LCCOMB_X65_Y39_N12
\CONTROLE|microCodigo_instance|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux8~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(0) & (!\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(2) $ (\CONTROLE|microPC_instance|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux8~0_combout\);

-- Location: LCCOMB_X63_Y34_N8
\ULA|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~4_combout\ = (!\ULA|Mux18~combout\ & (!\ULA|Mux19~combout\ & (!\ULA|Mux24~13_combout\ & !\ULA|Mux17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux18~combout\,
	datab => \ULA|Mux19~combout\,
	datac => \ULA|Mux24~13_combout\,
	datad => \ULA|Mux17~combout\,
	combout => \ULA|Equal0~4_combout\);

-- Location: LCCOMB_X62_Y34_N22
\ULA|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~5_combout\ = (!\ULA|Mux20~combout\ & (!\ULA|Mux15~8_combout\ & (!\ULA|Mux1~11_combout\ & !\ULA|Mux10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux20~combout\,
	datab => \ULA|Mux15~8_combout\,
	datac => \ULA|Mux1~11_combout\,
	datad => \ULA|Mux10~combout\,
	combout => \ULA|Equal0~5_combout\);

-- Location: LCCOMB_X62_Y34_N24
\ULA|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~6_combout\ = (!\ULA|Mux25~9_combout\ & (!\ULA|Mux22~combout\ & (\ULA|Equal0~4_combout\ & \ULA|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux25~9_combout\,
	datab => \ULA|Mux22~combout\,
	datac => \ULA|Equal0~4_combout\,
	datad => \ULA|Equal0~5_combout\,
	combout => \ULA|Equal0~6_combout\);

-- Location: LCFF_X65_Y37_N27
\REG_ULA|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(16));

-- Location: LCFF_X65_Y34_N7
\REG_ULA|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(20));

-- Location: LCFF_X66_Y34_N11
\REG_ULA|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(21));

-- Location: LCFF_X61_Y32_N11
\REG_ULA|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(29));

-- Location: LCCOMB_X65_Y36_N30
\CONTROLE|enderecamento_instance|mux|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux3~0_combout\ = (!\RI_32|estado_out\(28) & (!\RI_32|estado_out\(26) & !\RI_32|estado_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(28),
	datab => \RI_32|estado_out\(26),
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE|enderecamento_instance|mux|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y32_N30
\CONTROLE|enderecamento_instance|mux|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux0~0_combout\ = (\RI_32|estado_out\(28) & (((!\RI_32|estado_out\(27))))) # (!\RI_32|estado_out\(28) & (!\RI_32|estado_out\(26) & ((\RI_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(26),
	datab => \RI_32|estado_out\(28),
	datac => \RI_32|estado_out\(27),
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE|enderecamento_instance|mux|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y39_N16
\CONTROLE|somador_instance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|somador_instance|Add0~0_combout\ = \CONTROLE|microPC_instance|estado_out\(3) $ (((\CONTROLE|microPC_instance|estado_out\(2) & (\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(2),
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|somador_instance|Add0~0_combout\);

-- Location: LCCOMB_X65_Y39_N10
\CONTROLE|enderecamento_instance|mux|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux1~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & (\CONTROLE|microPC_instance|estado_out\(2) $ (((\CONTROLE|microPC_instance|estado_out\(1) & 
-- \CONTROLE|microPC_instance|estado_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(2),
	datab => \CONTROLE|microPC_instance|estado_out\(1),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	combout => \CONTROLE|enderecamento_instance|mux|Mux1~3_combout\);

-- Location: LCCOMB_X65_Y32_N18
\BREG|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BREG|process_0~0_combout\ = (\MUX_REGDST|Saida_5bits[2]~2_combout\) # ((\MUX_REGDST|Saida_5bits[4]~4_combout\) # ((\MUX_REGDST|Saida_5bits[3]~3_combout\) # (\MUX_REGDST|Saida_5bits[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_REGDST|Saida_5bits[2]~2_combout\,
	datab => \MUX_REGDST|Saida_5bits[4]~4_combout\,
	datac => \MUX_REGDST|Saida_5bits[3]~3_combout\,
	datad => \MUX_REGDST|Saida_5bits[1]~1_combout\,
	combout => \BREG|process_0~0_combout\);

-- Location: LCCOMB_X65_Y32_N6
\BREG|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BREG|process_0~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6) & ((\MUX_REGDST|Saida_5bits[0]~0_combout\) # (\BREG|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_REGDST|Saida_5bits[0]~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6),
	datad => \BREG|process_0~0_combout\,
	combout => \BREG|process_0~1_combout\);

-- Location: LCCOMB_X70_Y36_N4
\ULA|resposta~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~66_combout\ = (\MUX_B|Mux30~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(1)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \PC_32|estado_out\(1),
	datac => \REG_A_32|estado_out\(1),
	datad => \MUX_B|Mux30~0_combout\,
	combout => \ULA|resposta~66_combout\);

-- Location: LCCOMB_X67_Y32_N10
\ULA|ShiftRight0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~122_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15) & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(15),
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~122_combout\);

-- Location: LCCOMB_X66_Y32_N24
\CONTROLE_ALU|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux7~3_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & (!\RI_32|estado_out\(3) & (!\RI_32|estado_out\(4) & !\CONTROLE_ALU|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datab => \RI_32|estado_out\(3),
	datac => \RI_32|estado_out\(4),
	datad => \CONTROLE_ALU|Mux0~0_combout\,
	combout => \CONTROLE_ALU|Mux7~3_combout\);

-- Location: LCCOMB_X66_Y39_N0
\ULA|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~13_combout\ = (\MUX_B|Mux29~0_combout\) # ((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\RI_32|estado_out\(2) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux29~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \RI_32|estado_out\(2),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \ULA|Mux29~13_combout\);

-- Location: LCCOMB_X61_Y37_N6
\ULA|resposta~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~67_combout\ = (\MUX_B|Mux28~1_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux28~1_combout\,
	combout => \ULA|resposta~67_combout\);

-- Location: LCCOMB_X65_Y35_N6
\ULA|resposta~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~71_combout\ = (\MUX_B|Mux24~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(7))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(7),
	datac => \MUX_B|Mux24~1_combout\,
	datad => \PC_32|estado_out\(7),
	combout => \ULA|resposta~71_combout\);

-- Location: LCCOMB_X67_Y38_N14
\ULA|resposta~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~72_combout\ = (\MUX_B|Mux23~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(8)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \PC_32|estado_out\(8),
	datac => \REG_A_32|estado_out\(8),
	datad => \MUX_B|Mux23~1_combout\,
	combout => \ULA|resposta~72_combout\);

-- Location: LCCOMB_X59_Y35_N26
\ULA|resposta~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~73_combout\ = (\MUX_B|Mux22~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(9)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(9),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \MUX_B|Mux22~1_combout\,
	datad => \REG_A_32|estado_out\(9),
	combout => \ULA|resposta~73_combout\);

-- Location: LCCOMB_X59_Y35_N16
\ULA|resposta~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~74_combout\ = (\MUX_B|Mux22~1_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(9))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(9),
	datac => \MUX_B|Mux22~1_combout\,
	datad => \PC_32|estado_out\(9),
	combout => \ULA|resposta~74_combout\);

-- Location: LCCOMB_X66_Y33_N12
\ULA|ShiftRight1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~91_combout\ = (\ULA|ShiftRight1~83_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(15),
	datad => \ULA|ShiftRight1~83_combout\,
	combout => \ULA|ShiftRight1~91_combout\);

-- Location: LCCOMB_X65_Y31_N2
\ULA|resposta~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~76_combout\ = (\MUX_B|Mux20~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(11))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(11),
	datac => \MUX_B|Mux20~1_combout\,
	datad => \PC_32|estado_out\(11),
	combout => \ULA|resposta~76_combout\);

-- Location: LCCOMB_X65_Y31_N26
\ULA|resposta~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~78_combout\ = (\MUX_B|Mux19~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(12))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(12),
	datac => \MUX_B|Mux19~1_combout\,
	datad => \PC_32|estado_out\(12),
	combout => \ULA|resposta~78_combout\);

-- Location: LCCOMB_X67_Y33_N0
\ULA|resposta~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~80_combout\ = (\MUX_B|Mux18~1_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(13)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(13),
	datab => \MUX_B|Mux18~1_combout\,
	datac => \REG_A_32|estado_out\(13),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|resposta~80_combout\);

-- Location: LCCOMB_X62_Y38_N6
\ULA|ShiftLeft0~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~157_combout\ = (\ULA|ShiftLeft0~59_combout\) # ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~59_combout\,
	datad => \ULA|Mux14~0_combout\,
	combout => \ULA|ShiftLeft0~157_combout\);

-- Location: LCCOMB_X67_Y31_N10
\ULA|resposta~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~81_combout\ = (\MUX_B|Mux17~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(14)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \PC_32|estado_out\(14),
	datac => \REG_A_32|estado_out\(14),
	datad => \MUX_B|Mux17~1_combout\,
	combout => \ULA|resposta~81_combout\);

-- Location: LCCOMB_X68_Y38_N12
\ULA|ShiftRight0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~126_combout\ = (\ULA|ShiftLeft0~47_combout\ & ((\ULA|ShiftRight1~39_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datab => \ULA|ShiftRight1~39_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftLeft0~47_combout\,
	combout => \ULA|ShiftRight0~126_combout\);

-- Location: LCCOMB_X65_Y33_N24
\ULA|Mux16~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~15_combout\ = (!\ULA|ShiftLeft0~40_combout\ & (!\ULA|ShiftLeft0~43_combout\ & ((\ULA|ShiftRight0~115_combout\) # (\ULA|ShiftRight0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~40_combout\,
	datab => \ULA|ShiftLeft0~43_combout\,
	datac => \ULA|ShiftRight0~115_combout\,
	datad => \ULA|ShiftRight0~114_combout\,
	combout => \ULA|Mux16~15_combout\);

-- Location: LCCOMB_X62_Y33_N20
\ULA|Mux12~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~9_combout\ = (!\ULA|ShiftLeft0~40_combout\ & (\ULA|ShiftLeft0~52_combout\ & (!\ULA|Mux28~24_combout\ & !\ULA|ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~40_combout\,
	datab => \ULA|ShiftLeft0~52_combout\,
	datac => \ULA|Mux28~24_combout\,
	datad => \ULA|ShiftLeft0~43_combout\,
	combout => \ULA|Mux12~9_combout\);

-- Location: LCCOMB_X65_Y34_N10
\ULA|resposta~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~85_combout\ = (\MUX_B|Mux11~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(20))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \MUX_B|Mux11~0_combout\,
	datac => \REG_A_32|estado_out\(20),
	datad => \PC_32|estado_out\(20),
	combout => \ULA|resposta~85_combout\);

-- Location: LCCOMB_X67_Y31_N20
\ULA|resposta~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~86_combout\ = (\MUX_B|Mux10~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(21))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(21),
	datab => \PC_32|estado_out\(21),
	datac => \MUX_B|Mux10~0_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|resposta~86_combout\);

-- Location: LCCOMB_X66_Y31_N22
\ULA|resposta~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~88_combout\ = (\MUX_B|Mux8~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(23)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(23),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(23),
	datad => \MUX_B|Mux8~0_combout\,
	combout => \ULA|resposta~88_combout\);

-- Location: LCCOMB_X67_Y31_N6
\ULA|resposta~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~89_combout\ = (\MUX_B|Mux7~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(24))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(24),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \PC_32|estado_out\(24),
	datad => \MUX_B|Mux7~0_combout\,
	combout => \ULA|resposta~89_combout\);

-- Location: LCCOMB_X66_Y31_N28
\ULA|resposta~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~90_combout\ = (\MUX_B|Mux6~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(25)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(25),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(25),
	datad => \MUX_B|Mux6~0_combout\,
	combout => \ULA|resposta~90_combout\);

-- Location: LCCOMB_X66_Y33_N10
\ULA|resposta~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~92_combout\ = (\MUX_B|Mux4~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(27)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(27),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(27),
	datad => \MUX_B|Mux4~0_combout\,
	combout => \ULA|resposta~92_combout\);

-- Location: LCCOMB_X62_Y32_N14
\ULA|resposta~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~93_combout\ = \MUX_B|Mux3~0_combout\ $ (((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(28))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux3~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(28),
	datad => \PC_32|estado_out\(28),
	combout => \ULA|resposta~93_combout\);

-- Location: LCCOMB_X62_Y32_N30
\ULA|resposta~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~94_combout\ = (\MUX_B|Mux3~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(28)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(28),
	datab => \REG_A_32|estado_out\(28),
	datac => \MUX_B|Mux3~0_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|resposta~94_combout\);

-- Location: LCCOMB_X66_Y31_N30
\ULA|resposta~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~96_combout\ = (\MUX_B|Mux2~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(29)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(29),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(29),
	datad => \MUX_B|Mux2~0_combout\,
	combout => \ULA|resposta~96_combout\);

-- Location: LCCOMB_X65_Y39_N0
\CONTROLE|enderecamento_instance|mux|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~5_combout\ = (\RI_32|estado_out\(31) & (\CONTROLE|enderecamento_instance|mux|Mux3~2_combout\ & !\RI_32|estado_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(31),
	datab => \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\,
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~5_combout\);

-- Location: LCCOMB_X61_Y35_N6
\REG_A_32|estado_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_A_32|estado_out[18]~feeder_combout\ = \BREG|bregfile_rtl_0|auto_generated|ram_block1a18\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_0|auto_generated|ram_block1a18\,
	combout => \REG_A_32|estado_out[18]~feeder_combout\);

-- Location: LCCOMB_X69_Y33_N20
\REG_A_32|estado_out[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_A_32|estado_out[26]~feeder_combout\ = \BREG|bregfile_rtl_0|auto_generated|ram_block1a26\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_0|auto_generated|ram_block1a26\,
	combout => \REG_A_32|estado_out[26]~feeder_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y36_N8
\MUX_ORIGPC|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux31~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(0)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux31~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \ULA|Mux31~16_combout\,
	datac => \REG_ULA|estado_out\(0),
	combout => \MUX_ORIGPC|Mux31~0_combout\);

-- Location: LCCOMB_X63_Y31_N24
\PC_32|estado_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[4]~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(4))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux27~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(4),
	datad => \ULA|Mux27~9_combout\,
	combout => \PC_32|estado_out[4]~2_combout\);

-- Location: LCCOMB_X61_Y31_N12
\PC_32|estado_out[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[5]~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(5))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux26~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(5),
	datad => \ULA|Mux26~11_combout\,
	combout => \PC_32|estado_out[5]~3_combout\);

-- Location: LCCOMB_X67_Y32_N12
\CONTROLE|microCodigo_instance|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux19~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(0) & (\CONTROLE|microPC_instance|estado_out\(1) & (\CONTROLE|microPC_instance|estado_out\(2) $ (\CONTROLE|microPC_instance|estado_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux19~0_combout\);

-- Location: LCCOMB_X67_Y32_N14
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE|microCodigo_instance|Mux19~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0));

-- Location: LCCOMB_X65_Y36_N0
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux8~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11));

-- Location: LCCOMB_X65_Y36_N2
\MUXIouD|Saida_8bits_IouD[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[7]~7_combout\ = (\PC_32|estado_out\(7)) # (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(7),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[7]~7_combout\);

-- Location: LCCOMB_X66_Y35_N4
\CONTROLE|microCodigo_instance|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux15~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(2) & ((\CONTROLE|microPC_instance|estado_out\(0) & (!\CONTROLE|microPC_instance|estado_out\(3) & !\CONTROLE|microPC_instance|estado_out\(1))) # 
-- (!\CONTROLE|microPC_instance|estado_out\(0) & ((\CONTROLE|microPC_instance|estado_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(2),
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux15~0_combout\);

-- Location: LCCOMB_X67_Y35_N0
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|Mux15~0_combout\,
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4));

-- Location: LCCOMB_X67_Y39_N0
\MUX_B|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux30~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(1)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(1),
	datad => \RI_32|estado_out\(1),
	combout => \MUX_B|Mux30~0_combout\);

-- Location: LCFF_X65_Y32_N13
\RDM_32|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(2));

-- Location: LCFF_X65_Y36_N19
\RDM_32|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(3));

-- Location: LCCOMB_X63_Y39_N30
\CONTROLE|microCodigo_instance|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux11~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(1) & (!\CONTROLE|microPC_instance|estado_out\(3) & (!\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(1),
	datab => \CONTROLE|microPC_instance|estado_out\(3),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux11~0_combout\);

-- Location: LCCOMB_X63_Y32_N0
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datad => \CONTROLE|microCodigo_instance|Mux11~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8));

-- Location: LCCOMB_X65_Y36_N18
\MUX_MEMPARAREG|Saida_32bits[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[3]~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(3)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(3),
	datac => \RDM_32|estado_out\(3),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[3]~3_combout\);

-- Location: LCFF_X65_Y36_N9
\RDM_32|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(4));

-- Location: LCCOMB_X63_Y31_N28
\MUX_MEMPARAREG|Saida_32bits[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[4]~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(4)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(4),
	datac => \RDM_32|estado_out\(4),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[4]~4_combout\);

-- Location: LCCOMB_X62_Y36_N30
\ULA|ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~54_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(18)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(17),
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \REG_B_32|estado_out\(18),
	combout => \ULA|ShiftRight1~54_combout\);

-- Location: LCCOMB_X62_Y36_N28
\ULA|ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~55_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftRight1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \ULA|ShiftRight1~54_combout\,
	datac => \MUX_B|Mux14~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~55_combout\);

-- Location: LCCOMB_X63_Y31_N30
\RDM_32|estado_out[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RDM_32|estado_out[12]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(12),
	combout => \RDM_32|estado_out[12]~feeder_combout\);

-- Location: LCFF_X63_Y31_N31
\RDM_32|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RDM_32|estado_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(12));

-- Location: LCCOMB_X66_Y35_N12
\CONTROLE|microCodigo_instance|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux14~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(2) & (!\CONTROLE|microPC_instance|estado_out\(1) & !\CONTROLE|microPC_instance|estado_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(2),
	datab => \CONTROLE|microPC_instance|estado_out\(1),
	datad => \CONTROLE|microPC_instance|estado_out\(3),
	combout => \CONTROLE|microCodigo_instance|Mux14~0_combout\);

-- Location: LCCOMB_X67_Y35_N12
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \CONTROLE|microCodigo_instance|Mux14~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5));

-- Location: LCCOMB_X66_Y33_N2
\ULA|ShiftRight0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~118_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~118_combout\);

-- Location: LCCOMB_X67_Y34_N30
\ULA|ShiftRight0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~96_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~27_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~27_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight0~50_combout\,
	datad => \ULA|ShiftRight0~118_combout\,
	combout => \ULA|ShiftRight0~96_combout\);

-- Location: LCCOMB_X63_Y39_N8
\CONTROLE|microCodigo_instance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux5~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3) & (!\CONTROLE|microPC_instance|estado_out\(0) & ((\CONTROLE|microPC_instance|estado_out\(2)) # (!\CONTROLE|microPC_instance|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(1),
	datab => \CONTROLE|microPC_instance|estado_out\(3),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y39_N14
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|Mux5~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14));

-- Location: LCFF_X63_Y32_N19
\RDM_32|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(16));

-- Location: LCCOMB_X63_Y32_N2
\MUX_MEMPARAREG|Saida_32bits[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[16]~16_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(16)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(16),
	datab => \RDM_32|estado_out\(16),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[16]~16_combout\);

-- Location: LCCOMB_X61_Y34_N6
\PC_32|estado_out[17]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[17]~15_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(17))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux14~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(17),
	datad => \ULA|Mux14~combout\,
	combout => \PC_32|estado_out[17]~15_combout\);

-- Location: LCCOMB_X62_Y31_N30
\PC_32|estado_out[20]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[20]~26_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	combout => \PC_32|estado_out[20]~26_combout\);

-- Location: LCCOMB_X65_Y39_N20
\CONTROLE|microCodigo_instance|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux4~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(2)) # ((\CONTROLE|microPC_instance|estado_out\(1)) # (\CONTROLE|microPC_instance|estado_out\(0) $ (\CONTROLE|microPC_instance|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(2),
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y39_N22
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((!\CONTROLE|microCodigo_instance|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15),
	datac => \CONTROLE|microCodigo_instance|Mux4~0_combout\,
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15));

-- Location: LCCOMB_X61_Y37_N10
\ULA|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~10_combout\ = (!\ULA|Mux29~12_combout\ & !\ULA|Mux28~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux29~12_combout\,
	datac => \ULA|Mux28~23_combout\,
	combout => \ULA|Equal0~10_combout\);

-- Location: LCCOMB_X63_Y36_N18
\ULA|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~3_combout\ = (!\ULA|Mux21~combout\ & (!\ULA|Mux16~13_combout\ & (!\ULA|Mux30~16_combout\ & !\ULA|Mux23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux21~combout\,
	datab => \ULA|Mux16~13_combout\,
	datac => \ULA|Mux30~16_combout\,
	datad => \ULA|Mux23~combout\,
	combout => \ULA|Equal0~3_combout\);

-- Location: LCCOMB_X69_Y32_N20
\MUX_B|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux13~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \REG_B_32|estado_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \REG_B_32|estado_out\(18),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux13~0_combout\);

-- Location: LCCOMB_X65_Y34_N28
\ULA|Mux9~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~15_combout\ = (\CONTROLE_ALU|Mux9~3_combout\) # ((\CONTROLE_ALU|Mux8~2_combout\) # (\CONTROLE_ALU|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datad => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux9~15_combout\);

-- Location: LCCOMB_X62_Y33_N24
\ULA|Mux9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~14_combout\ = (\CONTROLE_ALU|Mux8~2_combout\) # ((!\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux3~10_combout\ & !\CONTROLE_ALU|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \CONTROLE_ALU|Mux8~2_combout\,
	combout => \ULA|Mux9~14_combout\);

-- Location: LCCOMB_X67_Y32_N28
\CONTROLE|microCodigo_instance|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux7~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(0) & (!\CONTROLE|microPC_instance|estado_out\(2) & (!\CONTROLE|microPC_instance|estado_out\(3) & !\CONTROLE|microPC_instance|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux7~0_combout\);

-- Location: LCCOMB_X67_Y32_N24
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	datab => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datad => \CONTROLE|microCodigo_instance|Mux7~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12));

-- Location: LCFF_X67_Y35_N29
\RI_32|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(5));

-- Location: LCCOMB_X66_Y35_N10
\CONTROLE_ALU|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux0~0_combout\ = (\RI_32|estado_out\(2) & (((!\RI_32|estado_out\(1))) # (!\RI_32|estado_out\(5)))) # (!\RI_32|estado_out\(2) & ((\RI_32|estado_out\(5)) # ((\RI_32|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(2),
	datab => \RI_32|estado_out\(5),
	datac => \RI_32|estado_out\(1),
	datad => \RI_32|estado_out\(0),
	combout => \CONTROLE_ALU|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y34_N30
\ULA|Mux3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~24_combout\ = (\CONTROLE_ALU|Mux10~2_combout\ & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (!\CONTROLE_ALU|Mux9~3_combout\ & !\CONTROLE_ALU|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~2_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \CONTROLE_ALU|Mux0~0_combout\,
	combout => \ULA|Mux3~24_combout\);

-- Location: LCCOMB_X61_Y34_N0
\PC_32|estado_out[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[18]~16_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(18))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux13~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(18),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux13~combout\,
	combout => \PC_32|estado_out[18]~16_combout\);

-- Location: LCFF_X61_Y34_N1
\PC_32|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[18]~16_combout\,
	sdata => \RI_32|estado_out\(16),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(18));

-- Location: LCCOMB_X66_Y36_N0
\CONTROLE|microCodigo_instance|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux17~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(0)) # ((!\CONTROLE|microPC_instance|estado_out\(1) & !\CONTROLE|microPC_instance|estado_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(1),
	datad => \CONTROLE|microPC_instance|estado_out\(3),
	combout => \CONTROLE|microCodigo_instance|Mux17~0_combout\);

-- Location: LCCOMB_X66_Y36_N6
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((!\CONTROLE|microCodigo_instance|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datad => \CONTROLE|microCodigo_instance|Mux17~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2));

-- Location: LCCOMB_X61_Y35_N16
\MUX_A|Saida_32bits_ALU[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[18]~18_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(18))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(18),
	datab => \PC_32|estado_out\(18),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[18]~18_combout\);

-- Location: LCFF_X61_Y35_N17
\RDM_32|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(18));

-- Location: LCFF_X61_Y35_N25
\REG_ULA|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(18));

-- Location: LCCOMB_X61_Y35_N22
\MUX_MEMPARAREG|Saida_32bits[18]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[18]~18_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(18))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDM_32|estado_out\(18),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datad => \REG_ULA|estado_out\(18),
	combout => \MUX_MEMPARAREG|Saida_32bits[18]~18_combout\);

-- Location: LCCOMB_X63_Y31_N10
\RDM_32|estado_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RDM_32|estado_out[20]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(20),
	combout => \RDM_32|estado_out[20]~feeder_combout\);

-- Location: LCFF_X63_Y31_N11
\RDM_32|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RDM_32|estado_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(20));

-- Location: LCCOMB_X63_Y31_N6
\MUX_MEMPARAREG|Saida_32bits[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[20]~20_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(20)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(20),
	datac => \RDM_32|estado_out\(20),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[20]~20_combout\);

-- Location: LCFF_X65_Y32_N25
\RDM_32|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(21));

-- Location: LCCOMB_X65_Y32_N16
\MUX_MEMPARAREG|Saida_32bits[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[21]~21_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(21)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(21),
	datab => \RDM_32|estado_out\(21),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[21]~21_combout\);

-- Location: LCCOMB_X67_Y31_N2
\MUX_B|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux9~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \REG_B_32|estado_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \REG_B_32|estado_out\(22),
	combout => \MUX_B|Mux9~0_combout\);

-- Location: LCCOMB_X61_Y34_N10
\PC_32|estado_out[22]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[22]~20_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(22)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux9~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~combout\,
	datab => \REG_ULA|estado_out\(22),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[22]~20_combout\);

-- Location: LCFF_X61_Y34_N11
\PC_32|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[22]~20_combout\,
	sdata => \RI_32|estado_out\(20),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(22));

-- Location: LCFF_X63_Y32_N23
\RDM_32|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(24));

-- Location: LCCOMB_X63_Y32_N10
\MUX_MEMPARAREG|Saida_32bits[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[24]~24_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(24)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(24),
	datab => \RDM_32|estado_out\(24),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[24]~24_combout\);

-- Location: LCCOMB_X66_Y35_N30
\ULA|Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~8_combout\ = (!\CONTROLE_ALU|Mux9~3_combout\ & (((\CONTROLE_ALU|Mux0~0_combout\) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))) # (!\CONTROLE_ALU|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~2_combout\,
	datab => \CONTROLE_ALU|Mux0~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux28~8_combout\);

-- Location: LCCOMB_X67_Y34_N14
\MUX_B|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux6~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- (\REG_B_32|estado_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(25),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y34_N20
\PC_32|estado_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[2]~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux29~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(2),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux29~12_combout\,
	combout => \PC_32|estado_out[2]~0_combout\);

-- Location: LCFF_X67_Y34_N21
\PC_32|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[2]~0_combout\,
	sdata => \RI_32|estado_out\(0),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(2));

-- Location: LCCOMB_X67_Y34_N0
\ULA|ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~44_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & !\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \ULA|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X67_Y34_N10
\ULA|ShiftRight0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~119_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(2),
	datac => \PC_32|estado_out\(2),
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftRight0~119_combout\);

-- Location: LCCOMB_X61_Y33_N18
\PC_32|estado_out[26]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[26]~24_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(26))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(26),
	datad => \ULA|Mux5~9_combout\,
	combout => \PC_32|estado_out[26]~24_combout\);

-- Location: LCFF_X61_Y33_N19
\PC_32|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[26]~24_combout\,
	sdata => \RI_32|estado_out\(24),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(26));

-- Location: LCCOMB_X69_Y33_N26
\MUX_A|Saida_32bits_ALU[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[26]~26_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(26))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(26),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(26),
	combout => \MUX_A|Saida_32bits_ALU[26]~26_combout\);

-- Location: LCCOMB_X62_Y32_N18
\ULA|Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~9_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & ((\CONTROLE_ALU|Mux7~3_combout\) # ((\CONTROLE_ALU|Mux10~3_combout\ & !\CONTROLE_ALU|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~3_combout\,
	datab => \CONTROLE_ALU|Mux10~3_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux28~9_combout\);

-- Location: LCCOMB_X69_Y33_N14
\ULA|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~2_combout\ = (\MUX_B|Mux5~0_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_A|Saida_32bits_ALU[26]~26_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_B|Mux5~0_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_A|Saida_32bits_ALU[26]~26_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux5~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	datac => \ULA|Mux28~8_combout\,
	datad => \ULA|Mux28~9_combout\,
	combout => \ULA|Mux5~2_combout\);

-- Location: LCCOMB_X69_Y33_N18
\MUX_B|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux5~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- ((\REG_B_32|estado_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \RI_32|estado_out\(15),
	datac => \REG_B_32|estado_out\(26),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y34_N18
\ULA|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~50_combout\ = (\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((\MUX_B|Mux6~0_combout\ & (\ULA|Add2~49\ & VCC)) # (!\MUX_B|Mux6~0_combout\ & (!\ULA|Add2~49\)))) # (!\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((\MUX_B|Mux6~0_combout\ & 
-- (!\ULA|Add2~49\)) # (!\MUX_B|Mux6~0_combout\ & ((\ULA|Add2~49\) # (GND)))))
-- \ULA|Add2~51\ = CARRY((\MUX_A|Saida_32bits_ALU[25]~25_combout\ & (!\MUX_B|Mux6~0_combout\ & !\ULA|Add2~49\)) # (!\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((!\ULA|Add2~49\) # (!\MUX_B|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	datab => \MUX_B|Mux6~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~49\,
	combout => \ULA|Add2~50_combout\,
	cout => \ULA|Add2~51\);

-- Location: LCCOMB_X70_Y34_N20
\ULA|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~52_combout\ = ((\MUX_A|Saida_32bits_ALU[26]~26_combout\ $ (\MUX_B|Mux5~0_combout\ $ (!\ULA|Add2~51\)))) # (GND)
-- \ULA|Add2~53\ = CARRY((\MUX_A|Saida_32bits_ALU[26]~26_combout\ & ((\MUX_B|Mux5~0_combout\) # (!\ULA|Add2~51\))) # (!\MUX_A|Saida_32bits_ALU[26]~26_combout\ & (\MUX_B|Mux5~0_combout\ & !\ULA|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	datab => \MUX_B|Mux5~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~51\,
	combout => \ULA|Add2~52_combout\,
	cout => \ULA|Add2~53\);

-- Location: LCCOMB_X67_Y36_N2
\ULA|ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~43_combout\ = (\ULA|ShiftRight0~41_combout\) # (\ULA|ShiftRight0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~41_combout\,
	datac => \ULA|ShiftRight0~42_combout\,
	combout => \ULA|ShiftRight0~43_combout\);

-- Location: LCCOMB_X68_Y36_N10
\ULA|ShiftRight1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~84_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\ULA|Mux28~24_combout\ & (\REG_B_32|estado_out\(31))) # (!\ULA|Mux28~24_combout\ & ((\ULA|ShiftRight0~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datab => \REG_B_32|estado_out\(31),
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \ULA|ShiftRight0~43_combout\,
	combout => \ULA|ShiftRight1~84_combout\);

-- Location: LCCOMB_X68_Y36_N30
\ULA|ShiftRight1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~92_combout\ = (\ULA|ShiftRight1~84_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftRight1~84_combout\,
	combout => \ULA|ShiftRight1~92_combout\);

-- Location: LCCOMB_X67_Y33_N28
\ULA|Mux28~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~25_combout\ = (!\CONTROLE_ALU|Mux7~2_combout\ & (((\CONTROLE_ALU|Mux10~3_combout\ & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))) # (!\CONTROLE_ALU|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~3_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux28~25_combout\);

-- Location: LCCOMB_X69_Y32_N24
\MUX_B|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux3~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\REG_B_32|estado_out\(28) & 
-- ((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(28),
	datab => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y33_N22
\MUX_B|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux4~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \REG_B_32|estado_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \REG_B_32|estado_out\(27),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y31_N4
\MUX_B|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux10~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \REG_B_32|estado_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \REG_B_32|estado_out\(21),
	combout => \MUX_B|Mux10~0_combout\);

-- Location: LCCOMB_X65_Y34_N30
\MUX_B|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux11~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \REG_B_32|estado_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \REG_B_32|estado_out\(20),
	combout => \MUX_B|Mux11~0_combout\);

-- Location: LCCOMB_X67_Y34_N16
\MUX_B|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux12~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- (\REG_B_32|estado_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(19),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux12~0_combout\);

-- Location: LCCOMB_X69_Y36_N26
\MUX_B|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux14~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\REG_B_32|estado_out\(17) & 
-- (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(17),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux14~0_combout\);

-- Location: LCCOMB_X67_Y34_N2
\PC_32|estado_out[15]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[15]~13_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux16~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux16~13_combout\,
	combout => \PC_32|estado_out[15]~13_combout\);

-- Location: LCFF_X67_Y34_N3
\PC_32|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[15]~13_combout\,
	sdata => \RI_32|estado_out\(13),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(15));

-- Location: LCCOMB_X66_Y37_N22
\MUX_A|Saida_32bits_ALU[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[15]~15_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(15),
	combout => \MUX_A|Saida_32bits_ALU[15]~15_combout\);

-- Location: LCFF_X63_Y32_N29
\RDM_32|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(29));

-- Location: LCCOMB_X63_Y32_N28
\MUX_MEMPARAREG|Saida_32bits[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[29]~29_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(29)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(29),
	datac => \RDM_32|estado_out\(29),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[29]~29_combout\);

-- Location: LCFF_X69_Y33_N13
\REG_A_32|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a31\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(31));

-- Location: LCCOMB_X60_Y34_N16
\MUX_ORIGPC|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux0~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(31))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(31),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux0~4_combout\,
	combout => \MUX_ORIGPC|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y34_N18
\PC_32|estado_out[28]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[28]~27_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14)) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[28]~27_combout\);

-- Location: LCCOMB_X62_Y34_N30
\ULA|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~0_combout\ = (!\ULA|Mux27~9_combout\ & (!\ULA|Mux0~4_combout\ & !\ULA|Mux3~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux27~9_combout\,
	datac => \ULA|Mux0~4_combout\,
	datad => \ULA|Mux3~23_combout\,
	combout => \ULA|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y35_N6
\ULA|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~1_combout\ = (!\ULA|Mux7~12_combout\ & (!\ULA|Mux6~10_combout\ & (!\ULA|Mux4~13_combout\ & !\ULA|Mux5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~12_combout\,
	datab => \ULA|Mux6~10_combout\,
	datac => \ULA|Mux4~13_combout\,
	datad => \ULA|Mux5~9_combout\,
	combout => \ULA|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y32_N22
\ULA|Mux3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~28_combout\ = (\CONTROLE_ALU|Mux10~3_combout\ & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (\CONTROLE_ALU|Mux7~2_combout\ & !\CONTROLE_ALU|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~3_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux3~28_combout\);

-- Location: LCFF_X66_Y31_N9
\REG_A_32|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a29\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(29));

-- Location: M4K_X64_Y33
\BREG|bregfile_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/MIPS_MULTICICLO.ram0_bregMIPS_f1385cbe.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bregMIPS:BREG|altsyncram:bregfile_rtl_1|altsyncram_obm1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \BREG|process_0~1_combout\,
	portbrewe => VCC,
	clk0 => \Clock~clkctrl_outclk\,
	portadatain => \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \BREG|bregfile_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCFF_X67_Y36_N11
\REG_B_32|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a29\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(29));

-- Location: LCCOMB_X69_Y32_N6
\MUX_B|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux2~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- ((\REG_B_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \REG_B_32|estado_out\(29),
	combout => \MUX_B|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y31_N8
\ULA|resposta~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~95_combout\ = \MUX_B|Mux2~0_combout\ $ (((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(29)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(29),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(29),
	datad => \MUX_B|Mux2~0_combout\,
	combout => \ULA|resposta~95_combout\);

-- Location: LCCOMB_X62_Y34_N10
\MUX_ORIGPC|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux2~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(29))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(29),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux2~13_combout\,
	combout => \MUX_ORIGPC|Mux2~0_combout\);

-- Location: LCFF_X62_Y34_N11
\PC_32|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux2~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_32|estado_out[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(29));

-- Location: LCCOMB_X66_Y31_N26
\MUX_A|Saida_32bits_ALU[29]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[29]~29_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(29))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(29),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(29),
	combout => \MUX_A|Saida_32bits_ALU[29]~29_combout\);

-- Location: LCCOMB_X61_Y32_N28
\ULA|Mux3~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~25_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & ((!\CONTROLE_ALU|Mux10~3_combout\) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux10~3_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux3~25_combout\);

-- Location: LCCOMB_X61_Y32_N30
\ULA|Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~17_combout\ = (!\ULA|Mux28~8_combout\ & (((!\ULA|ShiftLeft0~45_combout\) # (!\ULA|Mux28~9_combout\)) # (!\ULA|Mux3~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux3~25_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|ShiftLeft0~45_combout\,
	combout => \ULA|Mux3~17_combout\);

-- Location: LCCOMB_X70_Y34_N22
\ULA|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~54_combout\ = (\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\MUX_B|Mux4~0_combout\ & (\ULA|Add2~53\ & VCC)) # (!\MUX_B|Mux4~0_combout\ & (!\ULA|Add2~53\)))) # (!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\MUX_B|Mux4~0_combout\ & 
-- (!\ULA|Add2~53\)) # (!\MUX_B|Mux4~0_combout\ & ((\ULA|Add2~53\) # (GND)))))
-- \ULA|Add2~55\ = CARRY((\MUX_A|Saida_32bits_ALU[27]~27_combout\ & (!\MUX_B|Mux4~0_combout\ & !\ULA|Add2~53\)) # (!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((!\ULA|Add2~53\) # (!\MUX_B|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	datab => \MUX_B|Mux4~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~53\,
	combout => \ULA|Add2~54_combout\,
	cout => \ULA|Add2~55\);

-- Location: LCCOMB_X70_Y34_N24
\ULA|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~56_combout\ = ((\MUX_A|Saida_32bits_ALU[28]~28_combout\ $ (\MUX_B|Mux3~0_combout\ $ (!\ULA|Add2~55\)))) # (GND)
-- \ULA|Add2~57\ = CARRY((\MUX_A|Saida_32bits_ALU[28]~28_combout\ & ((\MUX_B|Mux3~0_combout\) # (!\ULA|Add2~55\))) # (!\MUX_A|Saida_32bits_ALU[28]~28_combout\ & (\MUX_B|Mux3~0_combout\ & !\ULA|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	datab => \MUX_B|Mux3~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~55\,
	combout => \ULA|Add2~56_combout\,
	cout => \ULA|Add2~57\);

-- Location: LCCOMB_X70_Y34_N26
\ULA|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~58_combout\ = (\MUX_A|Saida_32bits_ALU[29]~29_combout\ & ((\MUX_B|Mux2~0_combout\ & (\ULA|Add2~57\ & VCC)) # (!\MUX_B|Mux2~0_combout\ & (!\ULA|Add2~57\)))) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & ((\MUX_B|Mux2~0_combout\ & 
-- (!\ULA|Add2~57\)) # (!\MUX_B|Mux2~0_combout\ & ((\ULA|Add2~57\) # (GND)))))
-- \ULA|Add2~59\ = CARRY((\MUX_A|Saida_32bits_ALU[29]~29_combout\ & (!\MUX_B|Mux2~0_combout\ & !\ULA|Add2~57\)) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & ((!\ULA|Add2~57\) # (!\MUX_B|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	datab => \MUX_B|Mux2~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~57\,
	combout => \ULA|Add2~58_combout\,
	cout => \ULA|Add2~59\);

-- Location: LCCOMB_X69_Y32_N22
\ULA|resposta~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~65_combout\ = (\MUX_A|Saida_32bits_ALU[29]~29_combout\) # ((\MUX_B|Mux14~1_combout\) # ((\REG_B_32|estado_out\(29) & \ULA|ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(29),
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|resposta~65_combout\);

-- Location: LCCOMB_X67_Y33_N16
\ULA|ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~67_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux0~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\MUX_B|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \MUX_B|Mux14~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight0~67_combout\);

-- Location: LCCOMB_X67_Y36_N10
\ULA|ShiftRight1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~25_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(30))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(30),
	datac => \REG_B_32|estado_out\(29),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~25_combout\);

-- Location: LCCOMB_X67_Y32_N4
\ULA|ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~68_combout\ = (\ULA|ShiftRight0~67_combout\) # ((\ULA|ShiftLeft0~44_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \ULA|ShiftRight1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight0~67_combout\,
	datad => \ULA|ShiftRight1~25_combout\,
	combout => \ULA|ShiftRight0~68_combout\);

-- Location: LCCOMB_X66_Y32_N28
\ULA|ShiftRight0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~113_combout\ = (!\ULA|Mux28~24_combout\ & \ULA|ShiftRight0~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datad => \ULA|ShiftRight0~68_combout\,
	combout => \ULA|ShiftRight0~113_combout\);

-- Location: LCFF_X67_Y33_N1
\REG_A_32|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(13));

-- Location: LCCOMB_X63_Y31_N0
\PC_32|estado_out[13]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[13]~11_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(13))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(13),
	datad => \ULA|Mux18~combout\,
	combout => \PC_32|estado_out[13]~11_combout\);

-- Location: LCFF_X63_Y31_N1
\PC_32|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[13]~11_combout\,
	sdata => \RI_32|estado_out\(11),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(13));

-- Location: LCCOMB_X67_Y33_N2
\MUX_A|Saida_32bits_ALU[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[13]~13_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(13))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(13),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(13),
	combout => \MUX_A|Saida_32bits_ALU[13]~13_combout\);

-- Location: LCFF_X66_Y32_N23
\REG_A_32|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(14));

-- Location: LCCOMB_X62_Y36_N0
\ULA|ShiftRight1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~26_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(20)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_B_32|estado_out\(18),
	datac => \REG_B_32|estado_out\(20),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~26_combout\);

-- Location: LCCOMB_X65_Y34_N4
\ULA|ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~42_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_B_32|estado_out\(19),
	datac => \REG_B_32|estado_out\(21),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~42_combout\);

-- Location: LCCOMB_X61_Y38_N24
\ULA|ShiftRight0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~104_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight1~42_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \ULA|ShiftRight1~26_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight1~42_combout\,
	combout => \ULA|ShiftRight0~104_combout\);

-- Location: LCCOMB_X68_Y35_N18
\MUX_B|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux16~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(15)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \REG_B_32|estado_out\(15),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux16~0_combout\);

-- Location: LCCOMB_X68_Y35_N24
\MUX_B|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux16~1_combout\ = (\MUX_B|Mux16~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & \RI_32|estado_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \RI_32|estado_out\(13),
	datad => \MUX_B|Mux16~0_combout\,
	combout => \MUX_B|Mux16~1_combout\);

-- Location: LCCOMB_X68_Y35_N8
\MUX_B|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux15~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(15)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \REG_B_32|estado_out\(16),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux15~0_combout\);

-- Location: LCCOMB_X68_Y35_N30
\MUX_B|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux15~1_combout\ = (\MUX_B|Mux15~0_combout\) # ((\RI_32|estado_out\(14) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(14),
	datab => \MUX_B|Mux15~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux15~1_combout\);

-- Location: LCCOMB_X61_Y39_N16
\ULA|ShiftRight1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~34_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # ((\MUX_B|Mux15~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- ((\MUX_B|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \MUX_B|Mux17~1_combout\,
	combout => \ULA|ShiftRight1~34_combout\);

-- Location: LCCOMB_X62_Y39_N30
\ULA|ShiftRight1~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~35_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight1~34_combout\ & (\MUX_B|Mux14~0_combout\)) # (!\ULA|ShiftRight1~34_combout\ & ((\MUX_B|Mux16~1_combout\))))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~0_combout\,
	datab => \MUX_B|Mux16~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight1~34_combout\,
	combout => \ULA|ShiftRight1~35_combout\);

-- Location: LCCOMB_X62_Y39_N20
\ULA|ShiftRight0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~105_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~104_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~104_combout\,
	datad => \ULA|ShiftRight1~35_combout\,
	combout => \ULA|ShiftRight0~105_combout\);

-- Location: LCCOMB_X67_Y36_N4
\ULA|ShiftRight1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~27_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(24))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(24),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(22),
	combout => \ULA|ShiftRight1~27_combout\);

-- Location: LCCOMB_X67_Y36_N0
\ULA|ShiftRight0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~101_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~43_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight1~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~43_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight1~27_combout\,
	datad => \ULA|ShiftRight0~118_combout\,
	combout => \ULA|ShiftRight0~101_combout\);

-- Location: LCCOMB_X67_Y37_N20
\ULA|ShiftRight0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~102_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~101_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight1~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~119_combout\,
	datac => \ULA|ShiftRight1~41_combout\,
	datad => \ULA|ShiftRight0~101_combout\,
	combout => \ULA|ShiftRight0~102_combout\);

-- Location: LCCOMB_X63_Y36_N10
\ULA|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~1_combout\ = (\ULA|Mux28~11_combout\ & ((\CONTROLE_ALU|Mux8~2_combout\))) # (!\ULA|Mux28~11_combout\ & (\MUX_A|Saida_32bits_ALU[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \CONTROLE_ALU|Mux8~2_combout\,
	datad => \ULA|Mux28~11_combout\,
	combout => \ULA|Mux22~1_combout\);

-- Location: LCCOMB_X63_Y37_N6
\ULA|ShiftRight1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~72_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\) # ((\MUX_A|Saida_32bits_ALU[2]~2_combout\) # (\MUX_A|Saida_32bits_ALU[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~72_combout\);

-- Location: LCCOMB_X63_Y37_N20
\ULA|ShiftRight1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~86_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\REG_B_32|estado_out\(31))))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight1~72_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\ULA|ShiftRight1~72_combout\ & 
-- (\REG_B_32|estado_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \REG_B_32|estado_out\(30),
	datac => \REG_B_32|estado_out\(31),
	datad => \ULA|ShiftRight1~72_combout\,
	combout => \ULA|ShiftRight1~86_combout\);

-- Location: LCCOMB_X67_Y31_N8
\ULA|ShiftRight1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~94_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- \ULA|ShiftRight1~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \ULA|ShiftRight1~86_combout\,
	combout => \ULA|ShiftRight1~94_combout\);

-- Location: LCCOMB_X65_Y33_N26
\ULA|Mux28~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~12_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|ShiftLeft0~40_combout\) # ((\ULA|ShiftLeft0~43_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\CONTROLE_ALU|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~40_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|ShiftLeft0~43_combout\,
	combout => \ULA|Mux28~12_combout\);

-- Location: LCCOMB_X68_Y33_N28
\ULA|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~28_combout\ = ((\MUX_A|Saida_32bits_ALU[14]~14_combout\ $ (\MUX_B|Mux17~1_combout\ $ (\ULA|Add1~27\)))) # (GND)
-- \ULA|Add1~29\ = CARRY((\MUX_A|Saida_32bits_ALU[14]~14_combout\ & ((!\ULA|Add1~27\) # (!\MUX_B|Mux17~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[14]~14_combout\ & (!\MUX_B|Mux17~1_combout\ & !\ULA|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	datab => \MUX_B|Mux17~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~27\,
	combout => \ULA|Add1~28_combout\,
	cout => \ULA|Add1~29\);

-- Location: LCCOMB_X67_Y31_N30
\ULA|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~81_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~28_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~81_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Mux28~12_combout\,
	datad => \ULA|Add1~28_combout\,
	combout => \ULA|Mux17~0_combout\);

-- Location: LCCOMB_X67_Y31_N16
\ULA|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux17~0_combout\ & ((\ULA|ShiftRight1~94_combout\))) # (!\ULA|Mux17~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~94_combout\,
	datad => \ULA|Mux17~0_combout\,
	combout => \ULA|Mux17~1_combout\);

-- Location: LCCOMB_X63_Y34_N4
\ULA|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~2_combout\ = (\MUX_A|Saida_32bits_ALU[14]~14_combout\ & ((\ULA|Mux28~9_combout\) # ((\ULA|Mux28~8_combout\ & \MUX_B|Mux17~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[14]~14_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_B|Mux17~1_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \MUX_B|Mux17~1_combout\,
	combout => \ULA|Mux17~2_combout\);

-- Location: LCCOMB_X68_Y34_N8
\ULA|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~4_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_B|Mux17~1_combout\ & (!\MUX_A|Saida_32bits_ALU[14]~14_combout\ & \ULA|Mux3~10_combout\)) # (!\MUX_B|Mux17~1_combout\ & 
-- (\MUX_A|Saida_32bits_ALU[14]~14_combout\ $ (!\ULA|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux17~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux17~4_combout\);

-- Location: LCCOMB_X63_Y35_N2
\ULA|Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~7_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|ShiftLeft0~43_combout\ & !\ULA|ShiftLeft0~40_combout\)) # (!\ULA|Mux3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux28~7_combout\);

-- Location: LCCOMB_X68_Y34_N0
\ULA|ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~91_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # ((\MUX_B|Mux19~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (\MUX_B|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux17~1_combout\,
	datad => \MUX_B|Mux19~1_combout\,
	combout => \ULA|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X68_Y34_N22
\ULA|ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~92_combout\ = (\ULA|ShiftLeft0~91_combout\ & ((\MUX_B|Mux20~1_combout\) # ((!\MUX_A|Saida_32bits_ALU[0]~0_combout\)))) # (!\ULA|ShiftLeft0~91_combout\ & (((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \MUX_B|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux20~1_combout\,
	datab => \ULA|ShiftLeft0~91_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux18~1_combout\,
	combout => \ULA|ShiftLeft0~92_combout\);

-- Location: LCFF_X68_Y35_N21
\REG_B_32|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a8\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(8));

-- Location: LCFF_X67_Y35_N7
\REG_B_32|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a9\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(9));

-- Location: LCFF_X66_Y38_N15
\REG_B_32|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a10\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(10));

-- Location: LCFF_X67_Y35_N25
\REG_B_32|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a11\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(11));

-- Location: M4K_X64_Y35
\MEM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000028000F0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000017FF8400108000002A000A8002702094002402088800102082B0048C0123000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "InicializacaoMemoria.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM_MIPS:MEM|altsyncram:altsyncram_component|altsyncram_lce1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10),
	clk0 => \Clock~clkctrl_outclk\,
	portadatain => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X67_Y35_N3
\RI_32|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(7));

-- Location: LCCOMB_X67_Y35_N20
\MUX_B|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux22~1_combout\ = (\MUX_B|Mux22~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(7) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux22~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(7),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux22~1_combout\);

-- Location: LCCOMB_X67_Y35_N2
\MUX_B|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux24~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(7)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \REG_B_32|estado_out\(7),
	datac => \RI_32|estado_out\(7),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux24~0_combout\);

-- Location: LCCOMB_X67_Y35_N26
\MUX_B|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux24~1_combout\ = (\MUX_B|Mux24~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\RI_32|estado_out\(5) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \MUX_B|Mux24~0_combout\,
	datac => \RI_32|estado_out\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux24~1_combout\);

-- Location: LCFF_X68_Y35_N27
\RI_32|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(8));

-- Location: LCCOMB_X68_Y35_N20
\MUX_B|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux23~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(8))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(8),
	datac => \REG_B_32|estado_out\(8),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux23~0_combout\);

-- Location: LCFF_X68_Y37_N13
\RI_32|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(6));

-- Location: LCCOMB_X68_Y35_N10
\MUX_B|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux23~1_combout\ = (\MUX_B|Mux23~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & \RI_32|estado_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \MUX_B|Mux23~0_combout\,
	datad => \RI_32|estado_out\(6),
	combout => \MUX_B|Mux23~1_combout\);

-- Location: LCCOMB_X66_Y38_N0
\MUX_B|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux21~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(10)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(10),
	datab => \RI_32|estado_out\(10),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux21~0_combout\);

-- Location: LCCOMB_X66_Y38_N22
\MUX_B|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux21~1_combout\ = (\MUX_B|Mux21~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(8),
	datad => \MUX_B|Mux21~0_combout\,
	combout => \MUX_B|Mux21~1_combout\);

-- Location: LCCOMB_X68_Y34_N12
\ULA|ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~78_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_A|Saida_32bits_ALU[1]~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux23~1_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux21~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux23~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux21~1_combout\,
	combout => \ULA|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X68_Y34_N10
\ULA|ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~79_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~78_combout\ & ((\MUX_B|Mux24~1_combout\))) # (!\ULA|ShiftLeft0~78_combout\ & (\MUX_B|Mux22~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftLeft0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux22~1_combout\,
	datac => \MUX_B|Mux24~1_combout\,
	datad => \ULA|ShiftLeft0~78_combout\,
	combout => \ULA|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X68_Y34_N28
\ULA|ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~93_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~79_combout\))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~92_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftLeft0~79_combout\,
	combout => \ULA|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X68_Y37_N12
\MUX_B|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux25~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(6)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(6),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \RI_32|estado_out\(6),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux25~0_combout\);

-- Location: LCCOMB_X68_Y37_N0
\MUX_B|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux25~1_combout\ = (\MUX_B|Mux25~0_combout\) # ((\RI_32|estado_out\(4) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \MUX_B|Mux25~0_combout\,
	combout => \MUX_B|Mux25~1_combout\);

-- Location: LCCOMB_X67_Y35_N28
\MUX_B|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux26~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(5))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(5),
	datad => \REG_B_32|estado_out\(5),
	combout => \MUX_B|Mux26~0_combout\);

-- Location: LCCOMB_X67_Y35_N18
\MUX_B|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux26~1_combout\ = (\MUX_B|Mux26~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(3),
	datad => \MUX_B|Mux26~0_combout\,
	combout => \MUX_B|Mux26~1_combout\);

-- Location: LCCOMB_X68_Y37_N16
\ULA|ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~62_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux26~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux25~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux26~1_combout\,
	combout => \ULA|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X66_Y35_N28
\MUX_B|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux29~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(0) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(2)) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(2),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(0),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux29~0_combout\);

-- Location: LCCOMB_X67_Y35_N8
\MUX_B|Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux29~1_combout\ = (\MUX_B|Mux29~0_combout\) # ((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(2),
	datad => \MUX_B|Mux29~0_combout\,
	combout => \MUX_B|Mux29~1_combout\);

-- Location: LCCOMB_X68_Y37_N6
\ULA|ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~50_combout\ = (\ULA|ShiftLeft0~49_combout\) # ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux29~1_combout\ & !\MUX_A|Saida_32bits_ALU[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~49_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux29~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X68_Y37_N30
\ULA|ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~64_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~50_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~63_combout\) # ((\ULA|ShiftLeft0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~63_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~62_combout\,
	datad => \ULA|ShiftLeft0~50_combout\,
	combout => \ULA|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X68_Y34_N26
\ULA|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~64_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~93_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftLeft0~64_combout\,
	combout => \ULA|Mux17~3_combout\);

-- Location: LCCOMB_X68_Y34_N18
\ULA|Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~5_combout\ = (\ULA|Mux17~4_combout\ & (((\ULA|Mux17~3_combout\) # (!\ULA|Mux28~7_combout\)))) # (!\ULA|Mux17~4_combout\ & (\ULA|ShiftRight0~126_combout\ & (\ULA|Mux28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~126_combout\,
	datab => \ULA|Mux17~4_combout\,
	datac => \ULA|Mux28~7_combout\,
	datad => \ULA|Mux17~3_combout\,
	combout => \ULA|Mux17~5_combout\);

-- Location: LCCOMB_X63_Y34_N18
\ULA|Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~6_combout\ = (\ULA|Mux28~8_combout\ & (((\ULA|Mux17~2_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux17~2_combout\ & ((\ULA|Mux17~5_combout\))) # (!\ULA|Mux17~2_combout\ & (\ULA|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add2~28_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux17~2_combout\,
	datad => \ULA|Mux17~5_combout\,
	combout => \ULA|Mux17~6_combout\);

-- Location: LCCOMB_X63_Y34_N0
\ULA|Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~7_combout\ = (\ULA|Mux22~0_combout\ & ((\ULA|Mux22~1_combout\ & (\ULA|Mux17~1_combout\)) # (!\ULA|Mux22~1_combout\ & ((\ULA|Mux17~6_combout\))))) # (!\ULA|Mux22~0_combout\ & (!\ULA|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~0_combout\,
	datab => \ULA|Mux22~1_combout\,
	datac => \ULA|Mux17~1_combout\,
	datad => \ULA|Mux17~6_combout\,
	combout => \ULA|Mux17~7_combout\);

-- Location: LCCOMB_X63_Y34_N22
\ULA|Mux17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux17~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux17~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux17~7_combout\ & (\ULA|ShiftRight0~105_combout\)) # (!\ULA|Mux17~7_combout\ & ((\ULA|ShiftRight0~102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|ShiftRight0~105_combout\,
	datac => \ULA|ShiftRight0~102_combout\,
	datad => \ULA|Mux17~7_combout\,
	combout => \ULA|Mux17~combout\);

-- Location: LCCOMB_X61_Y34_N22
\PC_32|estado_out[14]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[14]~12_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(14))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux17~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(14),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux17~combout\,
	combout => \PC_32|estado_out[14]~12_combout\);

-- Location: LCFF_X61_Y34_N23
\PC_32|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[14]~12_combout\,
	sdata => \RI_32|estado_out\(12),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(14));

-- Location: LCCOMB_X66_Y32_N22
\MUX_A|Saida_32bits_ALU[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[14]~14_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(14))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(14),
	datad => \PC_32|estado_out\(14),
	combout => \MUX_A|Saida_32bits_ALU[14]~14_combout\);

-- Location: LCCOMB_X65_Y35_N2
\ULA|ShiftLeft0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~38_combout\ = (\MUX_A|Saida_32bits_ALU[16]~16_combout\) # ((\MUX_A|Saida_32bits_ALU[15]~15_combout\) # ((\MUX_A|Saida_32bits_ALU[13]~13_combout\) # (\MUX_A|Saida_32bits_ALU[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	datab => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	datac => \MUX_A|Saida_32bits_ALU[13]~13_combout\,
	datad => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	combout => \ULA|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X65_Y34_N8
\REG_A_32|estado_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_A_32|estado_out[20]~feeder_combout\ = \BREG|bregfile_rtl_0|auto_generated|ram_block1a20\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_0|auto_generated|ram_block1a20\,
	combout => \REG_A_32|estado_out[20]~feeder_combout\);

-- Location: LCFF_X65_Y34_N9
\REG_A_32|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_A_32|estado_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(20));

-- Location: LCCOMB_X66_Y36_N26
\ULA|ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~51_combout\ = (\ULA|ShiftRight0~49_combout\) # ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \ULA|ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~49_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight0~50_combout\,
	combout => \ULA|ShiftRight0~51_combout\);

-- Location: LCCOMB_X67_Y37_N4
\ULA|ShiftRight1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~67_combout\ = (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~43_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftRight0~43_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftRight0~51_combout\,
	combout => \ULA|ShiftRight1~67_combout\);

-- Location: LCCOMB_X67_Y36_N12
\ULA|ShiftRight0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~39_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(26))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(26),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(24),
	combout => \ULA|ShiftRight0~39_combout\);

-- Location: LCCOMB_X67_Y34_N6
\ULA|ShiftRight0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~38_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(27))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_B_32|estado_out\(27),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(25),
	combout => \ULA|ShiftRight0~38_combout\);

-- Location: LCCOMB_X67_Y37_N24
\ULA|ShiftRight1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~65_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~38_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \ULA|ShiftRight0~39_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftRight0~38_combout\,
	combout => \ULA|ShiftRight1~65_combout\);

-- Location: LCCOMB_X61_Y37_N0
\PC_32|estado_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[3]~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(3)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux28~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~23_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \REG_ULA|estado_out\(3),
	combout => \PC_32|estado_out[3]~1_combout\);

-- Location: LCFF_X61_Y37_N1
\PC_32|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[3]~1_combout\,
	sdata => \RI_32|estado_out\(1),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(3));

-- Location: LCCOMB_X68_Y38_N16
\ULA|ShiftRight1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~60_combout\ = (\REG_B_32|estado_out\(31) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(3),
	datac => \PC_32|estado_out\(3),
	datad => \REG_B_32|estado_out\(31),
	combout => \ULA|ShiftRight1~60_combout\);

-- Location: LCCOMB_X67_Y37_N18
\ULA|ShiftRight1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~66_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~65_combout\) # (\ULA|ShiftRight1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight1~65_combout\,
	datad => \ULA|ShiftRight1~60_combout\,
	combout => \ULA|ShiftRight1~66_combout\);

-- Location: LCCOMB_X67_Y37_N10
\ULA|ShiftRight1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~68_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight1~67_combout\) # (\ULA|ShiftRight1~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight1~67_combout\,
	datad => \ULA|ShiftRight1~66_combout\,
	combout => \ULA|ShiftRight1~68_combout\);

-- Location: LCCOMB_X66_Y37_N10
\ULA|Mux9~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~9_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((!\ULA|Mux31~5_combout\))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (\CONTROLE_ALU|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux9~9_combout\);

-- Location: LCCOMB_X68_Y32_N8
\ULA|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~40_combout\ = ((\MUX_A|Saida_32bits_ALU[20]~20_combout\ $ (\MUX_B|Mux11~0_combout\ $ (\ULA|Add1~39\)))) # (GND)
-- \ULA|Add1~41\ = CARRY((\MUX_A|Saida_32bits_ALU[20]~20_combout\ & ((!\ULA|Add1~39\) # (!\MUX_B|Mux11~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[20]~20_combout\ & (!\MUX_B|Mux11~0_combout\ & !\ULA|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	datab => \MUX_B|Mux11~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~39\,
	combout => \ULA|Add1~40_combout\,
	cout => \ULA|Add1~41\);

-- Location: LCCOMB_X65_Y34_N0
\ULA|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~2_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~85_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~40_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~85_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Mux9~9_combout\,
	datad => \ULA|Add1~40_combout\,
	combout => \ULA|Mux11~2_combout\);

-- Location: LCCOMB_X65_Y34_N14
\ULA|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~3_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux11~2_combout\ & ((\ULA|ShiftRight1~68_combout\))) # (!\ULA|Mux11~2_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~68_combout\,
	datad => \ULA|Mux11~2_combout\,
	combout => \ULA|Mux11~3_combout\);

-- Location: LCCOMB_X70_Y34_N4
\ULA|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~36_combout\ = ((\MUX_B|Mux13~0_combout\ $ (\MUX_A|Saida_32bits_ALU[18]~18_combout\ $ (!\ULA|Add2~35\)))) # (GND)
-- \ULA|Add2~37\ = CARRY((\MUX_B|Mux13~0_combout\ & ((\MUX_A|Saida_32bits_ALU[18]~18_combout\) # (!\ULA|Add2~35\))) # (!\MUX_B|Mux13~0_combout\ & (\MUX_A|Saida_32bits_ALU[18]~18_combout\ & !\ULA|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux13~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	datad => VCC,
	cin => \ULA|Add2~35\,
	combout => \ULA|Add2~36_combout\,
	cout => \ULA|Add2~37\);

-- Location: LCCOMB_X70_Y34_N6
\ULA|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~38_combout\ = (\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((\MUX_B|Mux12~0_combout\ & (\ULA|Add2~37\ & VCC)) # (!\MUX_B|Mux12~0_combout\ & (!\ULA|Add2~37\)))) # (!\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((\MUX_B|Mux12~0_combout\ & 
-- (!\ULA|Add2~37\)) # (!\MUX_B|Mux12~0_combout\ & ((\ULA|Add2~37\) # (GND)))))
-- \ULA|Add2~39\ = CARRY((\MUX_A|Saida_32bits_ALU[19]~19_combout\ & (!\MUX_B|Mux12~0_combout\ & !\ULA|Add2~37\)) # (!\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((!\ULA|Add2~37\) # (!\MUX_B|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	datab => \MUX_B|Mux12~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~37\,
	combout => \ULA|Add2~38_combout\,
	cout => \ULA|Add2~39\);

-- Location: LCCOMB_X70_Y34_N8
\ULA|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~40_combout\ = ((\MUX_B|Mux11~0_combout\ $ (\MUX_A|Saida_32bits_ALU[20]~20_combout\ $ (!\ULA|Add2~39\)))) # (GND)
-- \ULA|Add2~41\ = CARRY((\MUX_B|Mux11~0_combout\ & ((\MUX_A|Saida_32bits_ALU[20]~20_combout\) # (!\ULA|Add2~39\))) # (!\MUX_B|Mux11~0_combout\ & (\MUX_A|Saida_32bits_ALU[20]~20_combout\ & !\ULA|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux11~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	datad => VCC,
	cin => \ULA|Add2~39\,
	combout => \ULA|Add2~40_combout\,
	cout => \ULA|Add2~41\);

-- Location: LCCOMB_X62_Y38_N2
\ULA|ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~99_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # ((\MUX_B|Mux17~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (\MUX_B|Mux15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \MUX_B|Mux17~1_combout\,
	combout => \ULA|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X62_Y38_N8
\ULA|ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~100_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~99_combout\ & (\MUX_B|Mux18~1_combout\)) # (!\ULA|ShiftLeft0~99_combout\ & ((\MUX_B|Mux16~1_combout\))))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftLeft0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datac => \MUX_B|Mux16~1_combout\,
	datad => \ULA|ShiftLeft0~99_combout\,
	combout => \ULA|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X67_Y34_N22
\ULA|ShiftLeft0~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~160_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & !\MUX_A|Saida_32bits_ALU[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~160_combout\);

-- Location: LCCOMB_X67_Y34_N28
\ULA|ShiftLeft0~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~159_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(0))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(0),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \PC_32|estado_out\(0),
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftLeft0~159_combout\);

-- Location: LCCOMB_X67_Y34_N24
\ULA|ShiftLeft0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~116_combout\ = (\ULA|ShiftLeft0~159_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(17)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(19),
	datab => \ULA|ShiftLeft0~159_combout\,
	datac => \REG_B_32|estado_out\(17),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X67_Y36_N8
\ULA|ShiftLeft0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~117_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(18)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(20),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(18),
	combout => \ULA|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X67_Y34_N18
\ULA|ShiftLeft0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~118_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~116_combout\) # ((\ULA|ShiftLeft0~160_combout\ & \ULA|ShiftLeft0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~160_combout\,
	datac => \ULA|ShiftLeft0~116_combout\,
	datad => \ULA|ShiftLeft0~117_combout\,
	combout => \ULA|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X62_Y38_N20
\ULA|ShiftLeft0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~119_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~100_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~100_combout\,
	datad => \ULA|ShiftLeft0~118_combout\,
	combout => \ULA|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X66_Y38_N10
\ULA|ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~85_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux21~1_combout\) # ((\MUX_A|Saida_32bits_ALU[0]~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- \MUX_B|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux21~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux19~1_combout\,
	combout => \ULA|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X66_Y38_N8
\ULA|ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~86_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~85_combout\ & ((\MUX_B|Mux22~1_combout\))) # (!\ULA|ShiftLeft0~85_combout\ & (\MUX_B|Mux20~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftLeft0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux20~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux22~1_combout\,
	datad => \ULA|ShiftLeft0~85_combout\,
	combout => \ULA|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X66_Y39_N8
\ULA|ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~70_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux26~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux26~1_combout\,
	datad => \MUX_B|Mux24~1_combout\,
	combout => \ULA|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X66_Y38_N26
\ULA|ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~87_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~71_combout\) # ((\ULA|ShiftLeft0~70_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~71_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~86_combout\,
	datad => \ULA|ShiftLeft0~70_combout\,
	combout => \ULA|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X65_Y38_N26
\ULA|Mux11~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~9_combout\ = (\ULA|ShiftLeft0~55_combout\ & (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\ULA|ShiftLeft0~43_combout\ & !\ULA|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~55_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux11~9_combout\);

-- Location: LCCOMB_X67_Y36_N16
\ULA|ShiftRight0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~41_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(29),
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(31),
	combout => \ULA|ShiftRight0~41_combout\);

-- Location: LCCOMB_X66_Y36_N8
\ULA|ShiftRight0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~92_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight0~41_combout\) # (\ULA|ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight0~41_combout\,
	datad => \ULA|ShiftRight0~42_combout\,
	combout => \ULA|ShiftRight0~92_combout\);

-- Location: LCCOMB_X66_Y36_N18
\ULA|ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~90_combout\ = (\ULA|ShiftRight0~119_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight0~38_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \ULA|ShiftRight0~119_combout\,
	datac => \ULA|ShiftRight0~38_combout\,
	datad => \ULA|ShiftRight0~39_combout\,
	combout => \ULA|ShiftRight0~90_combout\);

-- Location: LCCOMB_X65_Y38_N12
\ULA|ShiftRight0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~91_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~90_combout\) # ((\ULA|ShiftRight0~118_combout\ & \ULA|ShiftRight0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~118_combout\,
	datac => \ULA|ShiftRight0~51_combout\,
	datad => \ULA|ShiftRight0~90_combout\,
	combout => \ULA|ShiftRight0~91_combout\);

-- Location: LCCOMB_X65_Y38_N14
\ULA|ShiftRight0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~93_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight0~92_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftRight0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~92_combout\,
	datad => \ULA|ShiftRight0~91_combout\,
	combout => \ULA|ShiftRight0~93_combout\);

-- Location: LCCOMB_X67_Y33_N22
\MUX_A|Saida_32bits_ALU[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[4]~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(4))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(4),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(4),
	combout => \MUX_A|Saida_32bits_ALU[4]~4_combout\);

-- Location: LCCOMB_X61_Y37_N26
\ULA|Mux9~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~23_combout\ = (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	combout => \ULA|Mux9~23_combout\);

-- Location: LCCOMB_X63_Y35_N6
\ULA|Mux9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~12_combout\ = (\ULA|Mux3~10_combout\) # ((!\ULA|ShiftLeft0~43_combout\ & (!\ULA|ShiftLeft0~40_combout\ & \ULA|Mux9~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~43_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \ULA|ShiftLeft0~40_combout\,
	datad => \ULA|Mux9~23_combout\,
	combout => \ULA|Mux9~12_combout\);

-- Location: LCCOMB_X65_Y38_N30
\ULA|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~4_combout\ = (\ULA|Mux9~11_combout\ & ((\ULA|Mux9~12_combout\ & ((\ULA|ShiftRight0~93_combout\))) # (!\ULA|Mux9~12_combout\ & (\ULA|Mux11~9_combout\)))) # (!\ULA|Mux9~11_combout\ & (((!\ULA|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~11_combout\,
	datab => \ULA|Mux11~9_combout\,
	datac => \ULA|ShiftRight0~93_combout\,
	datad => \ULA|Mux9~12_combout\,
	combout => \ULA|Mux11~4_combout\);

-- Location: LCCOMB_X65_Y38_N0
\ULA|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~5_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux11~4_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux11~4_combout\ & (\ULA|ShiftLeft0~119_combout\)) # (!\ULA|Mux11~4_combout\ & ((\ULA|ShiftLeft0~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~10_combout\,
	datab => \ULA|ShiftLeft0~119_combout\,
	datac => \ULA|ShiftLeft0~87_combout\,
	datad => \ULA|Mux11~4_combout\,
	combout => \ULA|Mux11~5_combout\);

-- Location: LCCOMB_X65_Y34_N18
\ULA|Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~7_combout\ = (\ULA|Mux11~6_combout\ & (!\ULA|Mux3~24_combout\ & ((\ULA|Mux11~5_combout\)))) # (!\ULA|Mux11~6_combout\ & ((\ULA|Mux3~24_combout\) # ((\ULA|Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux11~6_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \ULA|Add2~40_combout\,
	datad => \ULA|Mux11~5_combout\,
	combout => \ULA|Mux11~7_combout\);

-- Location: LCCOMB_X65_Y34_N12
\ULA|Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~8_combout\ = (\ULA|Mux9~13_combout\ & ((\ULA|Mux9~14_combout\ & (\ULA|Mux11~3_combout\)) # (!\ULA|Mux9~14_combout\ & ((\ULA|Mux11~7_combout\))))) # (!\ULA|Mux9~13_combout\ & (!\ULA|Mux9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~13_combout\,
	datab => \ULA|Mux9~14_combout\,
	datac => \ULA|Mux11~3_combout\,
	datad => \ULA|Mux11~7_combout\,
	combout => \ULA|Mux11~8_combout\);

-- Location: LCCOMB_X65_Y34_N6
\ULA|Mux11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux11~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux11~8_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_A|Saida_32bits_ALU[20]~20_combout\ & ((\MUX_B|Mux11~0_combout\) # (!\ULA|Mux11~8_combout\))) # (!\MUX_A|Saida_32bits_ALU[20]~20_combout\ & 
-- (\MUX_B|Mux11~0_combout\ & !\ULA|Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	datab => \MUX_B|Mux11~0_combout\,
	datac => \ULA|Mux9~15_combout\,
	datad => \ULA|Mux11~8_combout\,
	combout => \ULA|Mux11~combout\);

-- Location: LCCOMB_X63_Y31_N14
\PC_32|estado_out[20]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[20]~18_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(20))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(20),
	datab => \ULA|Mux11~combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[20]~18_combout\);

-- Location: LCFF_X63_Y31_N15
\PC_32|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[20]~18_combout\,
	sdata => \RI_32|estado_out\(18),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(20));

-- Location: LCCOMB_X65_Y34_N26
\MUX_A|Saida_32bits_ALU[20]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[20]~20_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(20))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(20),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(20),
	combout => \MUX_A|Saida_32bits_ALU[20]~20_combout\);

-- Location: LCCOMB_X65_Y35_N16
\ULA|ShiftLeft0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~39_combout\ = (\MUX_A|Saida_32bits_ALU[18]~18_combout\) # ((\MUX_A|Saida_32bits_ALU[19]~19_combout\) # ((\MUX_A|Saida_32bits_ALU[20]~20_combout\) # (\MUX_A|Saida_32bits_ALU[17]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	datab => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	datac => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	datad => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	combout => \ULA|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X63_Y31_N8
\PC_32|estado_out[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[11]~9_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(11))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux20~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(11),
	datab => \ULA|Mux20~combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[11]~9_combout\);

-- Location: LCFF_X67_Y35_N5
\RI_32|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(9));

-- Location: LCFF_X63_Y31_N9
\PC_32|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[11]~9_combout\,
	sdata => \RI_32|estado_out\(9),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(11));

-- Location: LCFF_X66_Y31_N21
\REG_A_32|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a11\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(11));

-- Location: LCCOMB_X66_Y31_N20
\MUX_A|Saida_32bits_ALU[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[11]~11_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(11)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(11),
	datac => \REG_A_32|estado_out\(11),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[11]~11_combout\);

-- Location: LCCOMB_X63_Y31_N22
\PC_32|estado_out[12]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[12]~10_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(12))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(12),
	datab => \ULA|Mux19~combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[12]~10_combout\);

-- Location: LCFF_X63_Y31_N23
\PC_32|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[12]~10_combout\,
	sdata => \RI_32|estado_out\(10),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(12));

-- Location: LCFF_X66_Y31_N11
\REG_A_32|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(12));

-- Location: LCCOMB_X66_Y31_N10
\MUX_A|Saida_32bits_ALU[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[12]~12_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(12)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(12),
	datac => \REG_A_32|estado_out\(12),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[12]~12_combout\);

-- Location: LCCOMB_X61_Y34_N28
\PC_32|estado_out[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[9]~7_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(9))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux22~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(9),
	datad => \ULA|Mux22~combout\,
	combout => \PC_32|estado_out[9]~7_combout\);

-- Location: LCFF_X61_Y34_N29
\PC_32|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[9]~7_combout\,
	sdata => \RI_32|estado_out\(7),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(9));

-- Location: LCCOMB_X60_Y35_N2
\MUX_A|Saida_32bits_ALU[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[9]~9_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(9))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(9),
	datac => \PC_32|estado_out\(9),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[9]~9_combout\);

-- Location: LCCOMB_X65_Y35_N28
\ULA|ShiftLeft0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~37_combout\ = (\MUX_A|Saida_32bits_ALU[10]~10_combout\) # ((\MUX_A|Saida_32bits_ALU[11]~11_combout\) # ((\MUX_A|Saida_32bits_ALU[12]~12_combout\) # (\MUX_A|Saida_32bits_ALU[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	datab => \MUX_A|Saida_32bits_ALU[11]~11_combout\,
	datac => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	datad => \MUX_A|Saida_32bits_ALU[9]~9_combout\,
	combout => \ULA|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X65_Y35_N26
\ULA|ShiftLeft0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~40_combout\ = (\ULA|ShiftLeft0~36_combout\) # ((\ULA|ShiftLeft0~38_combout\) # ((\ULA|ShiftLeft0~39_combout\) # (\ULA|ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~36_combout\,
	datab => \ULA|ShiftLeft0~38_combout\,
	datac => \ULA|ShiftLeft0~39_combout\,
	datad => \ULA|ShiftLeft0~37_combout\,
	combout => \ULA|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X65_Y35_N20
\ULA|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~5_combout\ = (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & (!\ULA|ShiftLeft0~43_combout\ & !\ULA|ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux31~5_combout\);

-- Location: LCCOMB_X61_Y32_N18
\ULA|Mux3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~26_combout\ = ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (\CONTROLE_ALU|Mux10~3_combout\ & \ULA|Mux31~5_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \CONTROLE_ALU|Mux10~3_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux3~26_combout\);

-- Location: LCCOMB_X61_Y32_N8
\ULA|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~6_combout\ = (\ULA|Mux3~27_combout\ & (((\ULA|ShiftRight0~113_combout\ & \ULA|Mux3~26_combout\)))) # (!\ULA|Mux3~27_combout\ & (((!\ULA|Mux3~26_combout\)) # (!\ULA|resposta~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~27_combout\,
	datab => \ULA|resposta~65_combout\,
	datac => \ULA|ShiftRight0~113_combout\,
	datad => \ULA|Mux3~26_combout\,
	combout => \ULA|Mux2~6_combout\);

-- Location: LCCOMB_X68_Y35_N26
\ULA|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~6_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\) # ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|Mux28~6_combout\);

-- Location: LCCOMB_X69_Y32_N16
\ULA|ShiftLeft0~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~144_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(26)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(27),
	datab => \REG_B_32|estado_out\(26),
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftLeft0~144_combout\);

-- Location: LCCOMB_X69_Y32_N14
\ULA|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~2_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(28)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(29),
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \REG_B_32|estado_out\(28),
	combout => \ULA|Mux2~2_combout\);

-- Location: LCCOMB_X69_Y32_N28
\ULA|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~3_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & (\ULA|Mux2~2_combout\ & !\ULA|Mux28~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|Mux2~2_combout\,
	datad => \ULA|Mux28~6_combout\,
	combout => \ULA|Mux2~3_combout\);

-- Location: LCCOMB_X69_Y32_N18
\ULA|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~4_combout\ = (\ULA|Mux28~24_combout\ & (\ULA|Mux28~6_combout\)) # (!\ULA|Mux28~24_combout\ & ((\ULA|Mux2~3_combout\) # ((\ULA|Mux28~6_combout\ & \ULA|ShiftLeft0~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datab => \ULA|Mux28~6_combout\,
	datac => \ULA|ShiftLeft0~144_combout\,
	datad => \ULA|Mux2~3_combout\,
	combout => \ULA|Mux2~4_combout\);

-- Location: LCCOMB_X70_Y36_N28
\ULA|ShiftLeft0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~134_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(23)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(25),
	datab => \REG_B_32|estado_out\(23),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X70_Y36_N14
\ULA|ShiftLeft0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~133_combout\ = (\ULA|ShiftLeft0~159_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(22)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \REG_B_32|estado_out\(24),
	datac => \REG_B_32|estado_out\(22),
	datad => \ULA|ShiftLeft0~159_combout\,
	combout => \ULA|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X70_Y36_N6
\ULA|ShiftLeft0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~135_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~133_combout\) # ((\ULA|ShiftLeft0~134_combout\ & \ULA|ShiftLeft0~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~134_combout\,
	datac => \ULA|ShiftLeft0~133_combout\,
	datad => \ULA|ShiftLeft0~160_combout\,
	combout => \ULA|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X68_Y35_N0
\ULA|ShiftLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~105_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux17~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux15~1_combout\,
	datac => \MUX_B|Mux17~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X68_Y35_N14
\ULA|ShiftLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~106_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux16~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux16~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X67_Y34_N26
\ULA|ShiftLeft0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~121_combout\ = (\ULA|ShiftLeft0~120_combout\) # ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~159_combout\ & \ULA|ShiftLeft0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~120_combout\,
	datab => \ULA|ShiftLeft0~159_combout\,
	datac => \MUX_B|Mux14~1_combout\,
	datad => \ULA|ShiftLeft0~117_combout\,
	combout => \ULA|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X68_Y35_N12
\ULA|ShiftLeft0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~122_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~105_combout\) # ((\ULA|ShiftLeft0~106_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~105_combout\,
	datac => \ULA|ShiftLeft0~106_combout\,
	datad => \ULA|ShiftLeft0~121_combout\,
	combout => \ULA|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X69_Y32_N8
\ULA|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~5_combout\ = (\ULA|Mux28~24_combout\ & ((\ULA|Mux2~4_combout\ & ((\ULA|ShiftLeft0~122_combout\))) # (!\ULA|Mux2~4_combout\ & (\ULA|ShiftLeft0~135_combout\)))) # (!\ULA|Mux28~24_combout\ & (\ULA|Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datab => \ULA|Mux2~4_combout\,
	datac => \ULA|ShiftLeft0~135_combout\,
	datad => \ULA|ShiftLeft0~122_combout\,
	combout => \ULA|Mux2~5_combout\);

-- Location: LCCOMB_X61_Y32_N2
\ULA|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~7_combout\ = (\ULA|Mux3~25_combout\ & ((\ULA|Mux2~6_combout\ & ((\ULA|Mux2~5_combout\))) # (!\ULA|Mux2~6_combout\ & (\ULA|ShiftLeft0~143_combout\)))) # (!\ULA|Mux3~25_combout\ & (((\ULA|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~143_combout\,
	datab => \ULA|Mux3~25_combout\,
	datac => \ULA|Mux2~6_combout\,
	datad => \ULA|Mux2~5_combout\,
	combout => \ULA|Mux2~7_combout\);

-- Location: LCCOMB_X61_Y32_N12
\ULA|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~8_combout\ = (\ULA|Mux28~9_combout\ & (\ULA|Mux3~17_combout\ & ((\ULA|Mux2~7_combout\)))) # (!\ULA|Mux28~9_combout\ & (((\ULA|Add2~58_combout\)) # (!\ULA|Mux3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~9_combout\,
	datab => \ULA|Mux3~17_combout\,
	datac => \ULA|Add2~58_combout\,
	datad => \ULA|Mux2~7_combout\,
	combout => \ULA|Mux2~8_combout\);

-- Location: LCCOMB_X61_Y32_N6
\ULA|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~9_combout\ = (\ULA|Mux28~8_combout\ & ((\MUX_A|Saida_32bits_ALU[29]~29_combout\ & ((\MUX_B|Mux2~0_combout\) # (!\ULA|Mux2~8_combout\))) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & (\MUX_B|Mux2~0_combout\ & !\ULA|Mux2~8_combout\)))) # 
-- (!\ULA|Mux28~8_combout\ & (((\ULA|Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	datac => \MUX_B|Mux2~0_combout\,
	datad => \ULA|Mux2~8_combout\,
	combout => \ULA|Mux2~9_combout\);

-- Location: LCCOMB_X61_Y32_N20
\ULA|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~10_combout\ = (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux3~28_combout\ & (\ULA|resposta~95_combout\)) # (!\ULA|Mux3~28_combout\ & ((\ULA|Mux2~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux3~28_combout\,
	datac => \ULA|resposta~95_combout\,
	datad => \ULA|Mux2~9_combout\,
	combout => \ULA|Mux2~10_combout\);

-- Location: LCCOMB_X63_Y38_N24
\ULA|ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~47_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & !\MUX_A|Saida_32bits_ALU[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X68_Y38_N26
\ULA|ShiftRight1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~85_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftLeft0~47_combout\ & ((\ULA|ShiftRight1~25_combout\))) # (!\ULA|ShiftLeft0~47_combout\ & (\REG_B_32|estado_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \REG_B_32|estado_out\(31),
	datac => \ULA|ShiftRight1~25_combout\,
	datad => \ULA|ShiftLeft0~47_combout\,
	combout => \ULA|ShiftRight1~85_combout\);

-- Location: LCCOMB_X68_Y38_N18
\ULA|ShiftRight1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~93_combout\ = (\ULA|ShiftRight1~85_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftRight1~85_combout\,
	combout => \ULA|ShiftRight1~93_combout\);

-- Location: LCCOMB_X68_Y32_N24
\ULA|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~56_combout\ = ((\MUX_A|Saida_32bits_ALU[28]~28_combout\ $ (\MUX_B|Mux3~0_combout\ $ (\ULA|Add1~55\)))) # (GND)
-- \ULA|Add1~57\ = CARRY((\MUX_A|Saida_32bits_ALU[28]~28_combout\ & ((!\ULA|Add1~55\) # (!\MUX_B|Mux3~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[28]~28_combout\ & (!\MUX_B|Mux3~0_combout\ & !\ULA|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	datab => \MUX_B|Mux3~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~55\,
	combout => \ULA|Add1~56_combout\,
	cout => \ULA|Add1~57\);

-- Location: LCCOMB_X68_Y32_N26
\ULA|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~58_combout\ = (\MUX_B|Mux2~0_combout\ & ((\MUX_A|Saida_32bits_ALU[29]~29_combout\ & (!\ULA|Add1~57\)) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & ((\ULA|Add1~57\) # (GND))))) # (!\MUX_B|Mux2~0_combout\ & 
-- ((\MUX_A|Saida_32bits_ALU[29]~29_combout\ & (\ULA|Add1~57\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & (!\ULA|Add1~57\))))
-- \ULA|Add1~59\ = CARRY((\MUX_B|Mux2~0_combout\ & ((!\ULA|Add1~57\) # (!\MUX_A|Saida_32bits_ALU[29]~29_combout\))) # (!\MUX_B|Mux2~0_combout\ & (!\MUX_A|Saida_32bits_ALU[29]~29_combout\ & !\ULA|Add1~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux2~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	datad => VCC,
	cin => \ULA|Add1~57\,
	combout => \ULA|Add1~58_combout\,
	cout => \ULA|Add1~59\);

-- Location: LCCOMB_X67_Y38_N18
\ULA|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~11_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~96_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~58_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~96_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~58_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux2~11_combout\);

-- Location: LCCOMB_X67_Y38_N8
\ULA|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~12_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux2~11_combout\ & (\ULA|ShiftRight1~93_combout\)) # (!\ULA|Mux2~11_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|ShiftRight1~93_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux2~11_combout\,
	combout => \ULA|Mux2~12_combout\);

-- Location: LCCOMB_X61_Y32_N10
\ULA|Mux2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~13_combout\ = (\ULA|Mux2~10_combout\) # ((\ULA|Mux2~14_combout\ & \ULA|Mux2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux2~10_combout\,
	datad => \ULA|Mux2~12_combout\,
	combout => \ULA|Mux2~13_combout\);

-- Location: LCCOMB_X62_Y34_N28
\ULA|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~2_combout\ = (!\ULA|Mux26~11_combout\ & (\ULA|Equal0~0_combout\ & (\ULA|Equal0~1_combout\ & !\ULA|Mux2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux26~11_combout\,
	datab => \ULA|Equal0~0_combout\,
	datac => \ULA|Equal0~1_combout\,
	datad => \ULA|Mux2~13_combout\,
	combout => \ULA|Equal0~2_combout\);

-- Location: LCCOMB_X62_Y34_N6
\PC_DESVIOS|PCenable~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_DESVIOS|PCenable~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17) & (((!\ULA|Equal0~2_combout\) # (!\ULA|Equal0~9_combout\)) # (!\ULA|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17),
	datab => \ULA|Equal0~10_combout\,
	datac => \ULA|Equal0~9_combout\,
	datad => \ULA|Equal0~2_combout\,
	combout => \PC_DESVIOS|PCenable~1_combout\);

-- Location: LCCOMB_X62_Y34_N8
\PC_32|estado_out[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[28]~28_combout\ = (\PC_32|estado_out[28]~27_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15)) # ((\PC_DESVIOS|PCenable~0_combout\) # (\PC_DESVIOS|PCenable~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15),
	datab => \PC_32|estado_out[28]~27_combout\,
	datac => \PC_DESVIOS|PCenable~0_combout\,
	datad => \PC_DESVIOS|PCenable~1_combout\,
	combout => \PC_32|estado_out[28]~28_combout\);

-- Location: LCFF_X60_Y34_N17
\PC_32|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux0~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_32|estado_out[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(31));

-- Location: LCCOMB_X69_Y33_N12
\MUX_A|Saida_32bits_ALU[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[31]~31_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(31))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(31),
	datad => \PC_32|estado_out\(31),
	combout => \MUX_A|Saida_32bits_ALU[31]~31_combout\);

-- Location: LCCOMB_X68_Y32_N28
\ULA|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~60_combout\ = ((\MUX_A|Saida_32bits_ALU[30]~30_combout\ $ (\MUX_B|Mux1~0_combout\ $ (\ULA|Add1~59\)))) # (GND)
-- \ULA|Add1~61\ = CARRY((\MUX_A|Saida_32bits_ALU[30]~30_combout\ & ((!\ULA|Add1~59\) # (!\MUX_B|Mux1~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[30]~30_combout\ & (!\MUX_B|Mux1~0_combout\ & !\ULA|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	datab => \MUX_B|Mux1~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~59\,
	combout => \ULA|Add1~60_combout\,
	cout => \ULA|Add1~61\);

-- Location: LCCOMB_X68_Y32_N30
\ULA|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~62_combout\ = \MUX_A|Saida_32bits_ALU[31]~31_combout\ $ (\ULA|Add1~61\ $ (!\MUX_B|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	datad => \MUX_B|Mux0~0_combout\,
	cin => \ULA|Add1~61\,
	combout => \ULA|Add1~62_combout\);

-- Location: LCCOMB_X60_Y34_N24
\ULA|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux0~0_combout\ & ((!\CONTROLE_ALU|Mux9~3_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux0~0_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\ & 
-- ((\ULA|Add1~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Add1~62_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux0~1_combout\);

-- Location: LCCOMB_X67_Y35_N24
\MUX_B|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux20~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(11)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(11),
	datad => \RI_32|estado_out\(11),
	combout => \MUX_B|Mux20~0_combout\);

-- Location: LCCOMB_X67_Y35_N4
\MUX_B|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux20~1_combout\ = (\MUX_B|Mux20~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(9),
	datad => \MUX_B|Mux20~0_combout\,
	combout => \MUX_B|Mux20~1_combout\);

-- Location: LCCOMB_X69_Y35_N22
\ULA|ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~82_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_A|Saida_32bits_ALU[1]~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux22~1_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux22~1_combout\,
	datad => \MUX_B|Mux20~1_combout\,
	combout => \ULA|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X69_Y35_N28
\ULA|ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~83_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~82_combout\ & (\MUX_B|Mux23~1_combout\)) # (!\ULA|ShiftLeft0~82_combout\ & ((\MUX_B|Mux21~1_combout\))))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux23~1_combout\,
	datab => \MUX_B|Mux21~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftLeft0~82_combout\,
	combout => \ULA|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X69_Y35_N0
\ULA|ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~94_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_A|Saida_32bits_ALU[1]~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux18~1_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datac => \MUX_B|Mux16~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X69_Y35_N2
\ULA|ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~95_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~94_combout\ & ((\MUX_B|Mux19~1_combout\))) # (!\ULA|ShiftLeft0~94_combout\ & (\MUX_B|Mux17~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux17~1_combout\,
	datac => \MUX_B|Mux19~1_combout\,
	datad => \ULA|ShiftLeft0~94_combout\,
	combout => \ULA|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X69_Y35_N20
\ULA|ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~96_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~83_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~83_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftLeft0~95_combout\,
	combout => \ULA|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X69_Y35_N30
\ULA|ShiftLeft0~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~149_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(29))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(29),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(31),
	combout => \ULA|ShiftLeft0~149_combout\);

-- Location: LCCOMB_X69_Y35_N24
\ULA|ShiftLeft0~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~150_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(28))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \REG_B_32|estado_out\(28),
	datac => \REG_B_32|estado_out\(30),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~150_combout\);

-- Location: LCCOMB_X70_Y36_N24
\ULA|ShiftLeft0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~137_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(24))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(24),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(26),
	combout => \ULA|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X70_Y36_N12
\ULA|ShiftLeft0~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~139_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(25)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(27),
	datab => \REG_B_32|estado_out\(25),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X70_Y36_N10
\ULA|ShiftLeft0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~140_combout\ = (\ULA|ShiftLeft0~139_combout\) # ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \ULA|ShiftLeft0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftLeft0~137_combout\,
	datad => \ULA|ShiftLeft0~139_combout\,
	combout => \ULA|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X69_Y35_N6
\ULA|ShiftLeft0~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~151_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~140_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~149_combout\) # ((\ULA|ShiftLeft0~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~149_combout\,
	datac => \ULA|ShiftLeft0~150_combout\,
	datad => \ULA|ShiftLeft0~140_combout\,
	combout => \ULA|ShiftLeft0~151_combout\);

-- Location: LCCOMB_X69_Y35_N16
\ULA|ShiftLeft0~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~152_combout\ = (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftLeft0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datad => \ULA|ShiftLeft0~151_combout\,
	combout => \ULA|ShiftLeft0~152_combout\);

-- Location: LCCOMB_X68_Y34_N30
\ULA|ShiftLeft0~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~153_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~152_combout\) # ((\MUX_A|Saida_32bits_ALU[4]~4_combout\ & \ULA|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftLeft0~96_combout\,
	datad => \ULA|ShiftLeft0~152_combout\,
	combout => \ULA|ShiftLeft0~153_combout\);

-- Location: LCCOMB_X66_Y35_N26
\MUX_B|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux28~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\RI_32|estado_out\(1))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\RI_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(1),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \RI_32|estado_out\(3),
	combout => \MUX_B|Mux28~0_combout\);

-- Location: LCCOMB_X66_Y35_N24
\MUX_B|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux28~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\MUX_B|Mux28~0_combout\)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- (\REG_B_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(3),
	datad => \MUX_B|Mux28~0_combout\,
	combout => \MUX_B|Mux28~1_combout\);

-- Location: LCCOMB_X67_Y39_N8
\ULA|ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~51_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux29~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux28~1_combout\,
	datac => \MUX_B|Mux29~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X68_Y39_N8
\ULA|ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~65_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~51_combout\) # ((\ULA|Mux14~0_combout\ & \MUX_A|Saida_32bits_ALU[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux14~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \ULA|ShiftLeft0~51_combout\,
	combout => \ULA|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X68_Y37_N8
\ULA|ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~66_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \MUX_B|Mux25~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux26~1_combout\ & (\MUX_A|Saida_32bits_ALU[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux26~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux25~1_combout\,
	combout => \ULA|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X68_Y35_N22
\ULA|ShiftLeft0~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~158_combout\ = (\ULA|ShiftLeft0~65_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~67_combout\) # (\ULA|ShiftLeft0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~67_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~65_combout\,
	datad => \ULA|ShiftLeft0~66_combout\,
	combout => \ULA|ShiftLeft0~158_combout\);

-- Location: LCCOMB_X68_Y36_N26
\ULA|ShiftLeft0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~124_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(20)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(22),
	datab => \REG_B_32|estado_out\(20),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X69_Y36_N8
\ULA|ShiftLeft0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~127_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \REG_B_32|estado_out\(23),
	datad => \REG_B_32|estado_out\(21),
	combout => \ULA|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X69_Y36_N28
\ULA|ShiftLeft0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~128_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftLeft0~124_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~127_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \ULA|ShiftLeft0~124_combout\,
	datac => \ULA|ShiftLeft0~127_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X67_Y37_N16
\ULA|ShiftLeft0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~112_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\REG_B_32|estado_out\(18)) # (\MUX_A|Saida_32bits_ALU[1]~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(19) & 
-- ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(19),
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \REG_B_32|estado_out\(18),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X67_Y37_N14
\ULA|ShiftLeft0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~113_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\ULA|ShiftLeft0~112_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftLeft0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftLeft0~112_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X68_Y37_N22
\ULA|ShiftLeft0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~114_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftLeft0~113_combout\ & (\MUX_B|Mux15~1_combout\)) # (!\ULA|ShiftLeft0~113_combout\ & ((\MUX_B|Mux14~0_combout\))))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & 
-- (((\ULA|ShiftLeft0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux14~0_combout\,
	datad => \ULA|ShiftLeft0~113_combout\,
	combout => \ULA|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X69_Y36_N2
\ULA|ShiftLeft0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~129_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~114_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~128_combout\) # ((\MUX_B|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~128_combout\,
	datac => \ULA|ShiftLeft0~114_combout\,
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X60_Y34_N30
\ULA|ShiftLeft0~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~154_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_A|Saida_32bits_ALU[4]~4_combout\ & (\ULA|ShiftLeft0~158_combout\)) # (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\ULA|ShiftLeft0~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~158_combout\,
	datac => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datad => \ULA|ShiftLeft0~129_combout\,
	combout => \ULA|ShiftLeft0~154_combout\);

-- Location: LCCOMB_X60_Y34_N20
\ULA|Mux31~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~20_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (!\ULA|ShiftLeft0~45_combout\ & ((\ULA|ShiftLeft0~153_combout\) # (\ULA|ShiftLeft0~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|ShiftLeft0~45_combout\,
	datac => \ULA|ShiftLeft0~153_combout\,
	datad => \ULA|ShiftLeft0~154_combout\,
	combout => \ULA|Mux31~20_combout\);

-- Location: LCCOMB_X70_Y34_N28
\ULA|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~60_combout\ = ((\MUX_A|Saida_32bits_ALU[30]~30_combout\ $ (\MUX_B|Mux1~0_combout\ $ (!\ULA|Add2~59\)))) # (GND)
-- \ULA|Add2~61\ = CARRY((\MUX_A|Saida_32bits_ALU[30]~30_combout\ & ((\MUX_B|Mux1~0_combout\) # (!\ULA|Add2~59\))) # (!\MUX_A|Saida_32bits_ALU[30]~30_combout\ & (\MUX_B|Mux1~0_combout\ & !\ULA|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	datab => \MUX_B|Mux1~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~59\,
	combout => \ULA|Add2~60_combout\,
	cout => \ULA|Add2~61\);

-- Location: LCCOMB_X70_Y34_N30
\ULA|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~62_combout\ = \MUX_B|Mux0~0_combout\ $ (\ULA|Add2~61\ $ (\MUX_A|Saida_32bits_ALU[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B|Mux0~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	cin => \ULA|Add2~61\,
	combout => \ULA|Add2~62_combout\);

-- Location: LCCOMB_X60_Y34_N14
\ULA|Mux31~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~21_combout\ = (\ULA|Mux31~20_combout\) # ((!\CONTROLE_ALU|Mux7~2_combout\ & \ULA|Add2~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Mux31~20_combout\,
	datad => \ULA|Add2~62_combout\,
	combout => \ULA|Mux31~21_combout\);

-- Location: LCCOMB_X60_Y34_N26
\ULA|Mux31~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~19_combout\ = (\MUX_B|Mux0~0_combout\ & ((!\MUX_A|Saida_32bits_ALU[31]~31_combout\) # (!\CONTROLE_ALU|Mux7~2_combout\))) # (!\MUX_B|Mux0~0_combout\ & ((\MUX_A|Saida_32bits_ALU[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_B|Mux0~0_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	combout => \ULA|Mux31~19_combout\);

-- Location: LCCOMB_X65_Y37_N0
\ULA|ShiftRight1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~87_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\) # ((\ULA|ShiftRight1~72_combout\) # (!\ULA|Mux31~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftRight1~72_combout\,
	combout => \ULA|ShiftRight1~87_combout\);

-- Location: LCCOMB_X60_Y34_N0
\ULA|Mux31~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~18_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (\MUX_B|Mux0~0_combout\ & (!\ULA|ShiftRight1~87_combout\))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~87_combout\,
	datad => \ULA|Add2~62_combout\,
	combout => \ULA|Mux31~18_combout\);

-- Location: LCCOMB_X60_Y34_N28
\ULA|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~2_combout\ = (\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux31~18_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux31~19_combout\)))) # (!\ULA|Mux3~10_combout\ & (((\CONTROLE_ALU|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \ULA|Mux31~19_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux31~18_combout\,
	combout => \ULA|Mux0~2_combout\);

-- Location: LCCOMB_X60_Y34_N12
\ULA|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~3_combout\ = (\ULA|Mux3~10_combout\ & (((\ULA|Mux0~2_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\ULA|Mux0~2_combout\ & ((\ULA|Mux31~21_combout\))) # (!\ULA|Mux0~2_combout\ & (!\ULA|Mux31~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~17_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \ULA|Mux31~21_combout\,
	datad => \ULA|Mux0~2_combout\,
	combout => \ULA|Mux0~3_combout\);

-- Location: LCCOMB_X60_Y34_N22
\ULA|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux0~4_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux0~1_combout\)) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux0~1_combout\,
	datad => \ULA|Mux0~3_combout\,
	combout => \ULA|Mux0~4_combout\);

-- Location: LCFF_X60_Y34_N23
\REG_ULA|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(31));

-- Location: LCFF_X63_Y32_N25
\RDM_32|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(31));

-- Location: LCCOMB_X63_Y32_N24
\MUX_MEMPARAREG|Saida_32bits[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[31]~31_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(31)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(31),
	datac => \RDM_32|estado_out\(31),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[31]~31_combout\);

-- Location: LCFF_X67_Y35_N13
\REG_B_32|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(7));

-- Location: LCFF_X63_Y32_N15
\RDM_32|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(30));

-- Location: LCCOMB_X63_Y32_N14
\MUX_MEMPARAREG|Saida_32bits[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[30]~30_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(30)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(30),
	datac => \RDM_32|estado_out\(30),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[30]~30_combout\);

-- Location: LCCOMB_X68_Y37_N10
\REG_B_32|estado_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_B_32|estado_out[6]~feeder_combout\ = \BREG|bregfile_rtl_1|auto_generated|ram_block1a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_1|auto_generated|ram_block1a6\,
	combout => \REG_B_32|estado_out[6]~feeder_combout\);

-- Location: LCFF_X68_Y37_N11
\REG_B_32|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_B_32|estado_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(6));

-- Location: LCFF_X67_Y35_N11
\RI_32|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(11));

-- Location: LCCOMB_X68_Y35_N6
\MUX_B|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux18~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(13))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(13),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(13),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y35_N10
\MUX_B|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux18~1_combout\ = (\MUX_B|Mux18~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(11),
	datad => \MUX_B|Mux18~0_combout\,
	combout => \MUX_B|Mux18~1_combout\);

-- Location: LCCOMB_X65_Y35_N8
\REG_A_32|estado_out[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_A_32|estado_out[7]~feeder_combout\ = \BREG|bregfile_rtl_0|auto_generated|ram_block1a7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_0|auto_generated|ram_block1a7\,
	combout => \REG_A_32|estado_out[7]~feeder_combout\);

-- Location: LCFF_X65_Y35_N9
\REG_A_32|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_A_32|estado_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(7));

-- Location: LCCOMB_X63_Y31_N26
\PC_32|estado_out[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[7]~5_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(7))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux24~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(7),
	datad => \ULA|Mux24~13_combout\,
	combout => \PC_32|estado_out[7]~5_combout\);

-- Location: LCFF_X63_Y31_N27
\PC_32|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[7]~5_combout\,
	sdata => \RI_32|estado_out\(5),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(7));

-- Location: LCCOMB_X65_Y35_N22
\MUX_A|Saida_32bits_ALU[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[7]~7_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(7))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(7),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(7),
	combout => \MUX_A|Saida_32bits_ALU[7]~7_combout\);

-- Location: LCFF_X61_Y35_N9
\REG_A_32|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(5));

-- Location: LCCOMB_X61_Y35_N8
\MUX_A|Saida_32bits_ALU[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[5]~5_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(5)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(5),
	datac => \REG_A_32|estado_out\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[5]~5_combout\);

-- Location: LCCOMB_X68_Y33_N2
\ULA|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~2_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux30~0_combout\ & (!\ULA|Add1~1\)) # (!\MUX_B|Mux30~0_combout\ & (\ULA|Add1~1\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux30~0_combout\ & ((\ULA|Add1~1\) # 
-- (GND))) # (!\MUX_B|Mux30~0_combout\ & (!\ULA|Add1~1\))))
-- \ULA|Add1~3\ = CARRY((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux30~0_combout\ & !\ULA|Add1~1\)) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux30~0_combout\) # (!\ULA|Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux30~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~1\,
	combout => \ULA|Add1~2_combout\,
	cout => \ULA|Add1~3\);

-- Location: LCCOMB_X68_Y33_N4
\ULA|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~4_combout\ = ((\MUX_B|Mux29~1_combout\ $ (\MUX_A|Saida_32bits_ALU[2]~2_combout\ $ (\ULA|Add1~3\)))) # (GND)
-- \ULA|Add1~5\ = CARRY((\MUX_B|Mux29~1_combout\ & (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & !\ULA|Add1~3\)) # (!\MUX_B|Mux29~1_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\) # (!\ULA|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux29~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => VCC,
	cin => \ULA|Add1~3\,
	combout => \ULA|Add1~4_combout\,
	cout => \ULA|Add1~5\);

-- Location: LCCOMB_X68_Y33_N8
\ULA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~8_combout\ = ((\MUX_B|Mux27~1_combout\ $ (\MUX_A|Saida_32bits_ALU[4]~4_combout\ $ (\ULA|Add1~7\)))) # (GND)
-- \ULA|Add1~9\ = CARRY((\MUX_B|Mux27~1_combout\ & (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & !\ULA|Add1~7\)) # (!\MUX_B|Mux27~1_combout\ & ((\MUX_A|Saida_32bits_ALU[4]~4_combout\) # (!\ULA|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datad => VCC,
	cin => \ULA|Add1~7\,
	combout => \ULA|Add1~8_combout\,
	cout => \ULA|Add1~9\);

-- Location: LCCOMB_X68_Y33_N10
\ULA|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~10_combout\ = (\MUX_B|Mux26~1_combout\ & ((\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (!\ULA|Add1~9\)) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((\ULA|Add1~9\) # (GND))))) # (!\MUX_B|Mux26~1_combout\ & ((\MUX_A|Saida_32bits_ALU[5]~5_combout\ & 
-- (\ULA|Add1~9\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (!\ULA|Add1~9\))))
-- \ULA|Add1~11\ = CARRY((\MUX_B|Mux26~1_combout\ & ((!\ULA|Add1~9\) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\))) # (!\MUX_B|Mux26~1_combout\ & (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & !\ULA|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux26~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datad => VCC,
	cin => \ULA|Add1~9\,
	combout => \ULA|Add1~10_combout\,
	cout => \ULA|Add1~11\);

-- Location: LCCOMB_X68_Y33_N12
\ULA|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~12_combout\ = ((\MUX_A|Saida_32bits_ALU[6]~6_combout\ $ (\MUX_B|Mux25~1_combout\ $ (\ULA|Add1~11\)))) # (GND)
-- \ULA|Add1~13\ = CARRY((\MUX_A|Saida_32bits_ALU[6]~6_combout\ & ((!\ULA|Add1~11\) # (!\MUX_B|Mux25~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[6]~6_combout\ & (!\MUX_B|Mux25~1_combout\ & !\ULA|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	datab => \MUX_B|Mux25~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~11\,
	combout => \ULA|Add1~12_combout\,
	cout => \ULA|Add1~13\);

-- Location: LCCOMB_X68_Y33_N14
\ULA|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~14_combout\ = (\MUX_B|Mux24~1_combout\ & ((\MUX_A|Saida_32bits_ALU[7]~7_combout\ & (!\ULA|Add1~13\)) # (!\MUX_A|Saida_32bits_ALU[7]~7_combout\ & ((\ULA|Add1~13\) # (GND))))) # (!\MUX_B|Mux24~1_combout\ & ((\MUX_A|Saida_32bits_ALU[7]~7_combout\ & 
-- (\ULA|Add1~13\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[7]~7_combout\ & (!\ULA|Add1~13\))))
-- \ULA|Add1~15\ = CARRY((\MUX_B|Mux24~1_combout\ & ((!\ULA|Add1~13\) # (!\MUX_A|Saida_32bits_ALU[7]~7_combout\))) # (!\MUX_B|Mux24~1_combout\ & (!\MUX_A|Saida_32bits_ALU[7]~7_combout\ & !\ULA|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux24~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	datad => VCC,
	cin => \ULA|Add1~13\,
	combout => \ULA|Add1~14_combout\,
	cout => \ULA|Add1~15\);

-- Location: LCCOMB_X68_Y33_N18
\ULA|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~18_combout\ = (\MUX_B|Mux22~1_combout\ & ((\MUX_A|Saida_32bits_ALU[9]~9_combout\ & (!\ULA|Add1~17\)) # (!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & ((\ULA|Add1~17\) # (GND))))) # (!\MUX_B|Mux22~1_combout\ & ((\MUX_A|Saida_32bits_ALU[9]~9_combout\ & 
-- (\ULA|Add1~17\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & (!\ULA|Add1~17\))))
-- \ULA|Add1~19\ = CARRY((\MUX_B|Mux22~1_combout\ & ((!\ULA|Add1~17\) # (!\MUX_A|Saida_32bits_ALU[9]~9_combout\))) # (!\MUX_B|Mux22~1_combout\ & (!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & !\ULA|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux22~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[9]~9_combout\,
	datad => VCC,
	cin => \ULA|Add1~17\,
	combout => \ULA|Add1~18_combout\,
	cout => \ULA|Add1~19\);

-- Location: LCCOMB_X68_Y33_N20
\ULA|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~20_combout\ = ((\MUX_A|Saida_32bits_ALU[10]~10_combout\ $ (\MUX_B|Mux21~1_combout\ $ (\ULA|Add1~19\)))) # (GND)
-- \ULA|Add1~21\ = CARRY((\MUX_A|Saida_32bits_ALU[10]~10_combout\ & ((!\ULA|Add1~19\) # (!\MUX_B|Mux21~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[10]~10_combout\ & (!\MUX_B|Mux21~1_combout\ & !\ULA|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	datab => \MUX_B|Mux21~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~19\,
	combout => \ULA|Add1~20_combout\,
	cout => \ULA|Add1~21\);

-- Location: LCCOMB_X68_Y33_N24
\ULA|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~24_combout\ = ((\MUX_A|Saida_32bits_ALU[12]~12_combout\ $ (\MUX_B|Mux19~1_combout\ $ (\ULA|Add1~23\)))) # (GND)
-- \ULA|Add1~25\ = CARRY((\MUX_A|Saida_32bits_ALU[12]~12_combout\ & ((!\ULA|Add1~23\) # (!\MUX_B|Mux19~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[12]~12_combout\ & (!\MUX_B|Mux19~1_combout\ & !\ULA|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	datab => \MUX_B|Mux19~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~23\,
	combout => \ULA|Add1~24_combout\,
	cout => \ULA|Add1~25\);

-- Location: LCCOMB_X68_Y33_N26
\ULA|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~26_combout\ = (\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((\MUX_B|Mux18~1_combout\ & (!\ULA|Add1~25\)) # (!\MUX_B|Mux18~1_combout\ & (\ULA|Add1~25\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((\MUX_B|Mux18~1_combout\ & 
-- ((\ULA|Add1~25\) # (GND))) # (!\MUX_B|Mux18~1_combout\ & (!\ULA|Add1~25\))))
-- \ULA|Add1~27\ = CARRY((\MUX_A|Saida_32bits_ALU[13]~13_combout\ & (\MUX_B|Mux18~1_combout\ & !\ULA|Add1~25\)) # (!\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((\MUX_B|Mux18~1_combout\) # (!\ULA|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[13]~13_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datad => VCC,
	cin => \ULA|Add1~25\,
	combout => \ULA|Add1~26_combout\,
	cout => \ULA|Add1~27\);

-- Location: LCCOMB_X68_Y33_N30
\ULA|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~30_combout\ = (\MUX_B|Mux16~1_combout\ & ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (!\ULA|Add1~29\)) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & ((\ULA|Add1~29\) # (GND))))) # (!\MUX_B|Mux16~1_combout\ & 
-- ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (\ULA|Add1~29\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (!\ULA|Add1~29\))))
-- \ULA|Add1~31\ = CARRY((\MUX_B|Mux16~1_combout\ & ((!\ULA|Add1~29\) # (!\MUX_A|Saida_32bits_ALU[15]~15_combout\))) # (!\MUX_B|Mux16~1_combout\ & (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & !\ULA|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux16~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	datad => VCC,
	cin => \ULA|Add1~29\,
	combout => \ULA|Add1~30_combout\,
	cout => \ULA|Add1~31\);

-- Location: LCCOMB_X68_Y32_N0
\ULA|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~32_combout\ = ((\MUX_B|Mux15~1_combout\ $ (\MUX_A|Saida_32bits_ALU[16]~16_combout\ $ (\ULA|Add1~31\)))) # (GND)
-- \ULA|Add1~33\ = CARRY((\MUX_B|Mux15~1_combout\ & (\MUX_A|Saida_32bits_ALU[16]~16_combout\ & !\ULA|Add1~31\)) # (!\MUX_B|Mux15~1_combout\ & ((\MUX_A|Saida_32bits_ALU[16]~16_combout\) # (!\ULA|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	datad => VCC,
	cin => \ULA|Add1~31\,
	combout => \ULA|Add1~32_combout\,
	cout => \ULA|Add1~33\);

-- Location: LCCOMB_X68_Y32_N4
\ULA|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~36_combout\ = ((\MUX_A|Saida_32bits_ALU[18]~18_combout\ $ (\MUX_B|Mux13~0_combout\ $ (\ULA|Add1~35\)))) # (GND)
-- \ULA|Add1~37\ = CARRY((\MUX_A|Saida_32bits_ALU[18]~18_combout\ & ((!\ULA|Add1~35\) # (!\MUX_B|Mux13~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[18]~18_combout\ & (!\MUX_B|Mux13~0_combout\ & !\ULA|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	datab => \MUX_B|Mux13~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~35\,
	combout => \ULA|Add1~36_combout\,
	cout => \ULA|Add1~37\);

-- Location: LCCOMB_X68_Y32_N6
\ULA|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~38_combout\ = (\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((\MUX_B|Mux12~0_combout\ & (!\ULA|Add1~37\)) # (!\MUX_B|Mux12~0_combout\ & (\ULA|Add1~37\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((\MUX_B|Mux12~0_combout\ & 
-- ((\ULA|Add1~37\) # (GND))) # (!\MUX_B|Mux12~0_combout\ & (!\ULA|Add1~37\))))
-- \ULA|Add1~39\ = CARRY((\MUX_A|Saida_32bits_ALU[19]~19_combout\ & (\MUX_B|Mux12~0_combout\ & !\ULA|Add1~37\)) # (!\MUX_A|Saida_32bits_ALU[19]~19_combout\ & ((\MUX_B|Mux12~0_combout\) # (!\ULA|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	datab => \MUX_B|Mux12~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~37\,
	combout => \ULA|Add1~38_combout\,
	cout => \ULA|Add1~39\);

-- Location: LCCOMB_X68_Y32_N10
\ULA|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~42_combout\ = (\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((\MUX_B|Mux10~0_combout\ & (!\ULA|Add1~41\)) # (!\MUX_B|Mux10~0_combout\ & (\ULA|Add1~41\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((\MUX_B|Mux10~0_combout\ & 
-- ((\ULA|Add1~41\) # (GND))) # (!\MUX_B|Mux10~0_combout\ & (!\ULA|Add1~41\))))
-- \ULA|Add1~43\ = CARRY((\MUX_A|Saida_32bits_ALU[21]~21_combout\ & (\MUX_B|Mux10~0_combout\ & !\ULA|Add1~41\)) # (!\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((\MUX_B|Mux10~0_combout\) # (!\ULA|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	datab => \MUX_B|Mux10~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~41\,
	combout => \ULA|Add1~42_combout\,
	cout => \ULA|Add1~43\);

-- Location: LCCOMB_X68_Y32_N12
\ULA|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~44_combout\ = ((\MUX_A|Saida_32bits_ALU[22]~22_combout\ $ (\MUX_B|Mux9~0_combout\ $ (\ULA|Add1~43\)))) # (GND)
-- \ULA|Add1~45\ = CARRY((\MUX_A|Saida_32bits_ALU[22]~22_combout\ & ((!\ULA|Add1~43\) # (!\MUX_B|Mux9~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[22]~22_combout\ & (!\MUX_B|Mux9~0_combout\ & !\ULA|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	datab => \MUX_B|Mux9~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~43\,
	combout => \ULA|Add1~44_combout\,
	cout => \ULA|Add1~45\);

-- Location: LCCOMB_X68_Y32_N14
\ULA|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~46_combout\ = (\MUX_B|Mux8~0_combout\ & ((\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (!\ULA|Add1~45\)) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & ((\ULA|Add1~45\) # (GND))))) # (!\MUX_B|Mux8~0_combout\ & 
-- ((\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (\ULA|Add1~45\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (!\ULA|Add1~45\))))
-- \ULA|Add1~47\ = CARRY((\MUX_B|Mux8~0_combout\ & ((!\ULA|Add1~45\) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\))) # (!\MUX_B|Mux8~0_combout\ & (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & !\ULA|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux8~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	datad => VCC,
	cin => \ULA|Add1~45\,
	combout => \ULA|Add1~46_combout\,
	cout => \ULA|Add1~47\);

-- Location: LCCOMB_X68_Y32_N16
\ULA|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~48_combout\ = ((\MUX_B|Mux7~0_combout\ $ (\MUX_A|Saida_32bits_ALU[24]~24_combout\ $ (\ULA|Add1~47\)))) # (GND)
-- \ULA|Add1~49\ = CARRY((\MUX_B|Mux7~0_combout\ & (\MUX_A|Saida_32bits_ALU[24]~24_combout\ & !\ULA|Add1~47\)) # (!\MUX_B|Mux7~0_combout\ & ((\MUX_A|Saida_32bits_ALU[24]~24_combout\) # (!\ULA|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux7~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	datad => VCC,
	cin => \ULA|Add1~47\,
	combout => \ULA|Add1~48_combout\,
	cout => \ULA|Add1~49\);

-- Location: LCCOMB_X68_Y32_N18
\ULA|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~50_combout\ = (\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((\MUX_B|Mux6~0_combout\ & (!\ULA|Add1~49\)) # (!\MUX_B|Mux6~0_combout\ & (\ULA|Add1~49\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((\MUX_B|Mux6~0_combout\ & ((\ULA|Add1~49\) 
-- # (GND))) # (!\MUX_B|Mux6~0_combout\ & (!\ULA|Add1~49\))))
-- \ULA|Add1~51\ = CARRY((\MUX_A|Saida_32bits_ALU[25]~25_combout\ & (\MUX_B|Mux6~0_combout\ & !\ULA|Add1~49\)) # (!\MUX_A|Saida_32bits_ALU[25]~25_combout\ & ((\MUX_B|Mux6~0_combout\) # (!\ULA|Add1~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	datab => \MUX_B|Mux6~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~49\,
	combout => \ULA|Add1~50_combout\,
	cout => \ULA|Add1~51\);

-- Location: LCCOMB_X68_Y32_N20
\ULA|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~52_combout\ = ((\MUX_B|Mux5~0_combout\ $ (\MUX_A|Saida_32bits_ALU[26]~26_combout\ $ (\ULA|Add1~51\)))) # (GND)
-- \ULA|Add1~53\ = CARRY((\MUX_B|Mux5~0_combout\ & (\MUX_A|Saida_32bits_ALU[26]~26_combout\ & !\ULA|Add1~51\)) # (!\MUX_B|Mux5~0_combout\ & ((\MUX_A|Saida_32bits_ALU[26]~26_combout\) # (!\ULA|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux5~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	datad => VCC,
	cin => \ULA|Add1~51\,
	combout => \ULA|Add1~52_combout\,
	cout => \ULA|Add1~53\);

-- Location: LCCOMB_X68_Y32_N22
\ULA|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~54_combout\ = (\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\MUX_B|Mux4~0_combout\ & (!\ULA|Add1~53\)) # (!\MUX_B|Mux4~0_combout\ & (\ULA|Add1~53\ & VCC)))) # (!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\MUX_B|Mux4~0_combout\ & ((\ULA|Add1~53\) 
-- # (GND))) # (!\MUX_B|Mux4~0_combout\ & (!\ULA|Add1~53\))))
-- \ULA|Add1~55\ = CARRY((\MUX_A|Saida_32bits_ALU[27]~27_combout\ & (\MUX_B|Mux4~0_combout\ & !\ULA|Add1~53\)) # (!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\MUX_B|Mux4~0_combout\) # (!\ULA|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	datab => \MUX_B|Mux4~0_combout\,
	datad => VCC,
	cin => \ULA|Add1~53\,
	combout => \ULA|Add1~54_combout\,
	cout => \ULA|Add1~55\);

-- Location: LCCOMB_X62_Y32_N2
\ULA|Mux3~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~21_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~94_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~56_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~94_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~56_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux3~21_combout\);

-- Location: LCCOMB_X62_Y32_N20
\ULA|Mux3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~22_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux3~21_combout\ & (\ULA|ShiftRight1~92_combout\)) # (!\ULA|Mux3~21_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux3~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|ShiftRight1~92_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux3~21_combout\,
	combout => \ULA|Mux3~22_combout\);

-- Location: LCFF_X62_Y32_N15
\REG_A_32|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a28\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(28));

-- Location: LCCOMB_X62_Y34_N0
\MUX_ORIGPC|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux3~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(28))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux3~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(28),
	datad => \ULA|Mux3~23_combout\,
	combout => \MUX_ORIGPC|Mux3~0_combout\);

-- Location: LCFF_X62_Y34_N1
\PC_32|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux3~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_32|estado_out[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(28));

-- Location: LCCOMB_X62_Y32_N24
\MUX_A|Saida_32bits_ALU[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[28]~28_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(28))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(28),
	datac => \PC_32|estado_out\(28),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[28]~28_combout\);

-- Location: LCCOMB_X66_Y36_N14
\ULA|Mux28~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~24_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(2)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(2),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(2),
	datad => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	combout => \ULA|Mux28~24_combout\);

-- Location: LCCOMB_X66_Y36_N30
\ULA|ShiftRight0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~112_combout\ = (!\ULA|Mux28~24_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftRight0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|Mux28~24_combout\,
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \ULA|ShiftRight0~43_combout\,
	combout => \ULA|ShiftRight0~112_combout\);

-- Location: LCCOMB_X61_Y32_N24
\ULA|Mux3~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~27_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[4]~4_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & \CONTROLE_ALU|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux10~3_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux3~27_combout\);

-- Location: LCCOMB_X61_Y32_N14
\ULA|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~15_combout\ = (\ULA|Mux3~27_combout\ & (((\ULA|ShiftRight0~112_combout\ & \ULA|Mux3~26_combout\)))) # (!\ULA|Mux3~27_combout\ & (((!\ULA|Mux3~26_combout\)) # (!\ULA|resposta~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~64_combout\,
	datab => \ULA|ShiftRight0~112_combout\,
	datac => \ULA|Mux3~27_combout\,
	datad => \ULA|Mux3~26_combout\,
	combout => \ULA|Mux3~15_combout\);

-- Location: LCCOMB_X66_Y39_N14
\ULA|ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~53_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux30~0_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux30~0_combout\,
	datac => \MUX_B|Mux29~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X66_Y35_N0
\MUX_B|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux27~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\RI_32|estado_out\(2)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\RI_32|estado_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \RI_32|estado_out\(2),
	combout => \MUX_B|Mux27~0_combout\);

-- Location: LCCOMB_X66_Y35_N16
\MUX_B|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux27~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\MUX_B|Mux27~0_combout\)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- (\REG_B_32|estado_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(4),
	datad => \MUX_B|Mux27~0_combout\,
	combout => \MUX_B|Mux27~1_combout\);

-- Location: LCCOMB_X66_Y39_N2
\ULA|ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~54_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux28~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux27~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux28~1_combout\,
	datac => \MUX_B|Mux27~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X66_Y39_N22
\ULA|ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~55_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~46_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~53_combout\) # (\ULA|ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~46_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~53_combout\,
	datad => \ULA|ShiftLeft0~54_combout\,
	combout => \ULA|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X65_Y38_N10
\ULA|ShiftLeft0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~141_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~55_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~87_combout\,
	datad => \ULA|ShiftLeft0~55_combout\,
	combout => \ULA|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X68_Y36_N12
\ULA|ShiftLeft0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~130_combout\ = (\ULA|ShiftLeft0~160_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(22))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(24))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(22),
	datab => \REG_B_32|estado_out\(24),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \ULA|ShiftLeft0~160_combout\,
	combout => \ULA|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X69_Y36_N16
\ULA|ShiftLeft0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~131_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~130_combout\) # ((\ULA|ShiftLeft0~127_combout\ & \ULA|ShiftLeft0~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftLeft0~127_combout\,
	datac => \ULA|ShiftLeft0~159_combout\,
	datad => \ULA|ShiftLeft0~130_combout\,
	combout => \ULA|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X61_Y32_N0
\ULA|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~14_combout\ = (\ULA|Mux3~13_combout\ & (((\ULA|ShiftLeft0~119_combout\)) # (!\ULA|Mux28~24_combout\))) # (!\ULA|Mux3~13_combout\ & (\ULA|Mux28~24_combout\ & (\ULA|ShiftLeft0~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~13_combout\,
	datab => \ULA|Mux28~24_combout\,
	datac => \ULA|ShiftLeft0~131_combout\,
	datad => \ULA|ShiftLeft0~119_combout\,
	combout => \ULA|Mux3~14_combout\);

-- Location: LCCOMB_X61_Y32_N4
\ULA|Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~16_combout\ = (\ULA|Mux3~25_combout\ & ((\ULA|Mux3~15_combout\ & ((\ULA|Mux3~14_combout\))) # (!\ULA|Mux3~15_combout\ & (\ULA|ShiftLeft0~141_combout\)))) # (!\ULA|Mux3~25_combout\ & (\ULA|Mux3~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~25_combout\,
	datab => \ULA|Mux3~15_combout\,
	datac => \ULA|ShiftLeft0~141_combout\,
	datad => \ULA|Mux3~14_combout\,
	combout => \ULA|Mux3~16_combout\);

-- Location: LCCOMB_X62_Y32_N0
\ULA|Mux3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~18_combout\ = (\ULA|Mux3~17_combout\ & ((\ULA|Mux28~9_combout\ & (\ULA|Mux3~16_combout\)) # (!\ULA|Mux28~9_combout\ & ((\ULA|Add2~56_combout\))))) # (!\ULA|Mux3~17_combout\ & (!\ULA|Mux28~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~17_combout\,
	datab => \ULA|Mux28~9_combout\,
	datac => \ULA|Mux3~16_combout\,
	datad => \ULA|Add2~56_combout\,
	combout => \ULA|Mux3~18_combout\);

-- Location: LCCOMB_X62_Y32_N6
\ULA|Mux3~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~19_combout\ = (\ULA|Mux28~8_combout\ & ((\MUX_B|Mux3~0_combout\ & ((\MUX_A|Saida_32bits_ALU[28]~28_combout\) # (!\ULA|Mux3~18_combout\))) # (!\MUX_B|Mux3~0_combout\ & (\MUX_A|Saida_32bits_ALU[28]~28_combout\ & !\ULA|Mux3~18_combout\)))) # 
-- (!\ULA|Mux28~8_combout\ & (((\ULA|Mux3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux3~0_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	datad => \ULA|Mux3~18_combout\,
	combout => \ULA|Mux3~19_combout\);

-- Location: LCCOMB_X62_Y32_N12
\ULA|Mux3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~20_combout\ = (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux3~28_combout\ & (\ULA|resposta~93_combout\)) # (!\ULA|Mux3~28_combout\ & ((\ULA|Mux3~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~93_combout\,
	datab => \ULA|Mux3~28_combout\,
	datac => \CONTROLE_ALU|Mux8~2_combout\,
	datad => \ULA|Mux3~19_combout\,
	combout => \ULA|Mux3~20_combout\);

-- Location: LCCOMB_X62_Y32_N26
\ULA|Mux3~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~23_combout\ = (\ULA|Mux3~20_combout\) # ((\ULA|Mux2~14_combout\ & \ULA|Mux3~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux3~22_combout\,
	datad => \ULA|Mux3~20_combout\,
	combout => \ULA|Mux3~23_combout\);

-- Location: LCFF_X62_Y32_N27
\REG_ULA|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(28));

-- Location: LCFF_X63_Y32_N27
\RDM_32|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(28));

-- Location: LCCOMB_X63_Y32_N26
\MUX_MEMPARAREG|Saida_32bits[28]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[28]~28_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(28)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(28),
	datac => \RDM_32|estado_out\(28),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[28]~28_combout\);

-- Location: LCFF_X67_Y31_N23
\REG_B_32|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a31\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(31));

-- Location: LCCOMB_X67_Y31_N12
\MUX_B|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux0~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\REG_B_32|estado_out\(31) & 
-- (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \REG_B_32|estado_out\(31),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y33_N18
\ULA|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~4_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~92_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~54_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~92_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Mux9~9_combout\,
	datad => \ULA|Add1~54_combout\,
	combout => \ULA|Mux4~4_combout\);

-- Location: LCCOMB_X66_Y33_N20
\ULA|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~5_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux4~4_combout\ & (\ULA|ShiftRight1~91_combout\)) # (!\ULA|Mux4~4_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~91_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux4~4_combout\,
	combout => \ULA|Mux4~5_combout\);

-- Location: LCCOMB_X59_Y35_N18
\ULA|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~6_combout\ = (\MUX_A|Saida_32bits_ALU[27]~27_combout\ & ((\ULA|Mux28~9_combout\) # ((\ULA|Mux28~8_combout\ & \MUX_B|Mux4~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[27]~27_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_B|Mux4~0_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \MUX_B|Mux4~0_combout\,
	datad => \ULA|Mux28~9_combout\,
	combout => \ULA|Mux4~6_combout\);

-- Location: LCCOMB_X67_Y32_N8
\ULA|ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~84_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux0~0_combout\ & \MUX_A|Saida_32bits_ALU[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~84_combout\);

-- Location: LCCOMB_X66_Y36_N4
\ULA|ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~56_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(28))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(28),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(27),
	combout => \ULA|ShiftRight1~56_combout\);

-- Location: LCCOMB_X66_Y33_N24
\ULA|ShiftRight1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~57_combout\ = (\ULA|ShiftRight1~56_combout\) # ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \ULA|ShiftRight1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~56_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \ULA|ShiftRight1~25_combout\,
	combout => \ULA|ShiftRight1~57_combout\);

-- Location: LCCOMB_X67_Y32_N6
\ULA|ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~85_combout\ = (\ULA|ShiftRight0~122_combout\) # ((\ULA|ShiftRight0~84_combout\) # ((\ULA|ShiftRight0~118_combout\ & \ULA|ShiftRight1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~122_combout\,
	datab => \ULA|ShiftRight0~118_combout\,
	datac => \ULA|ShiftRight0~84_combout\,
	datad => \ULA|ShiftRight1~57_combout\,
	combout => \ULA|ShiftRight0~85_combout\);

-- Location: LCCOMB_X63_Y33_N4
\ULA|ShiftRight0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~125_combout\ = (\ULA|ShiftRight0~85_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (!\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((!\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \ULA|ShiftRight0~85_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|ShiftRight0~125_combout\);

-- Location: LCCOMB_X61_Y32_N26
\ULA|Mux7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~13_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Mux31~5_combout\) # (!\CONTROLE_ALU|Mux10~3_combout\)) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \CONTROLE_ALU|Mux10~3_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux7~13_combout\);

-- Location: LCCOMB_X68_Y35_N16
\ULA|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~5_combout\ = (\MUX_A|Saida_32bits_ALU[4]~4_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	combout => \ULA|Mux7~5_combout\);

-- Location: LCCOMB_X69_Y35_N12
\ULA|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~7_combout\ = (\ULA|Mux7~5_combout\ & (\ULA|ShiftLeft0~128_combout\)) # (!\ULA|Mux7~5_combout\ & (((\ULA|ShiftLeft0~140_combout\ & \ULA|ShiftLeft0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~128_combout\,
	datab => \ULA|ShiftLeft0~140_combout\,
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \ULA|Mux7~5_combout\,
	combout => \ULA|Mux4~7_combout\);

-- Location: LCCOMB_X67_Y39_N28
\MUX_B|Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux31~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(0))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\REG_B_32|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(0),
	datad => \REG_B_32|estado_out\(0),
	combout => \MUX_B|Mux31~1_combout\);

-- Location: LCCOMB_X67_Y39_N30
\MUX_B|Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux30~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(1))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\REG_B_32|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(1),
	datab => \REG_B_32|estado_out\(1),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux30~1_combout\);

-- Location: LCCOMB_X67_Y39_N2
\ULA|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux31~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \MUX_B|Mux31~1_combout\,
	datac => \MUX_B|Mux30~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|Mux14~0_combout\);

-- Location: LCCOMB_X66_Y39_N4
\ULA|ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~52_combout\ = (\ULA|ShiftLeft0~51_combout\) # ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \ULA|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftLeft0~51_combout\,
	datad => \ULA|Mux14~0_combout\,
	combout => \ULA|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X69_Y35_N26
\ULA|ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~67_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux27~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux24~1_combout\,
	datad => \MUX_B|Mux27~1_combout\,
	combout => \ULA|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X69_Y35_N18
\ULA|ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~84_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~67_combout\) # ((\ULA|ShiftLeft0~66_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~67_combout\,
	datac => \ULA|ShiftLeft0~66_combout\,
	datad => \ULA|ShiftLeft0~83_combout\,
	combout => \ULA|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X69_Y35_N10
\ULA|Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~14_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~52_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~52_combout\,
	datad => \ULA|ShiftLeft0~84_combout\,
	combout => \ULA|Mux4~14_combout\);

-- Location: LCCOMB_X62_Y35_N0
\ULA|ShiftLeft0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~115_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~95_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~95_combout\,
	datad => \ULA|ShiftLeft0~114_combout\,
	combout => \ULA|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X62_Y35_N12
\ULA|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~8_combout\ = (\ULA|Mux7~5_combout\ & (\ULA|Mux4~14_combout\)) # (!\ULA|Mux7~5_combout\ & ((\ULA|ShiftLeft0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~5_combout\,
	datac => \ULA|Mux4~14_combout\,
	datad => \ULA|ShiftLeft0~115_combout\,
	combout => \ULA|Mux4~8_combout\);

-- Location: LCCOMB_X62_Y35_N18
\ULA|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~9_combout\ = (\ULA|ShiftRight0~121_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|Mux4~7_combout\)))) # (!\ULA|ShiftRight0~121_combout\ & (((\ULA|Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~121_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \ULA|Mux4~7_combout\,
	datad => \ULA|Mux4~8_combout\,
	combout => \ULA|Mux4~9_combout\);

-- Location: LCCOMB_X62_Y35_N30
\ULA|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~15_combout\ = (!\ULA|ShiftLeft0~40_combout\ & (!\ULA|ShiftLeft0~43_combout\ & \ULA|Mux4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~40_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|Mux4~9_combout\,
	combout => \ULA|Mux4~15_combout\);

-- Location: LCCOMB_X62_Y35_N20
\ULA|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~11_combout\ = (\ULA|Mux4~10_combout\ & (((\ULA|Mux4~15_combout\) # (!\ULA|Mux7~13_combout\)))) # (!\ULA|Mux4~10_combout\ & (\ULA|ShiftRight0~125_combout\ & (\ULA|Mux7~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux4~10_combout\,
	datab => \ULA|ShiftRight0~125_combout\,
	datac => \ULA|Mux7~13_combout\,
	datad => \ULA|Mux4~15_combout\,
	combout => \ULA|Mux4~11_combout\);

-- Location: LCCOMB_X62_Y35_N10
\ULA|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~12_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|Mux4~6_combout\)) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux4~6_combout\ & (\ULA|Mux4~11_combout\)) # (!\ULA|Mux4~6_combout\ & ((\ULA|Add2~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux4~6_combout\,
	datac => \ULA|Mux4~11_combout\,
	datad => \ULA|Add2~54_combout\,
	combout => \ULA|Mux4~12_combout\);

-- Location: LCCOMB_X62_Y35_N16
\ULA|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux4~13_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux2~14_combout\ & (\ULA|Mux4~5_combout\))) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux4~12_combout\) # ((\ULA|Mux2~14_combout\ & \ULA|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux4~5_combout\,
	datad => \ULA|Mux4~12_combout\,
	combout => \ULA|Mux4~13_combout\);

-- Location: LCFF_X62_Y35_N17
\REG_ULA|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(27));

-- Location: LCFF_X63_Y32_N9
\RDM_32|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(27));

-- Location: LCCOMB_X63_Y32_N8
\MUX_MEMPARAREG|Saida_32bits[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[27]~27_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(27)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(27),
	datac => \RDM_32|estado_out\(27),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[27]~27_combout\);

-- Location: LCFF_X67_Y36_N9
\REG_B_32|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a27\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(27));

-- Location: LCCOMB_X67_Y36_N30
\ULA|ShiftRight1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~40_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(29))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(29),
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \REG_B_32|estado_out\(27),
	combout => \ULA|ShiftRight1~40_combout\);

-- Location: LCCOMB_X67_Y36_N20
\ULA|ShiftRight1~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~41_combout\ = (\ULA|ShiftRight1~40_combout\) # ((\ULA|ShiftRight1~24_combout\ & !\MUX_A|Saida_32bits_ALU[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~40_combout\,
	datac => \ULA|ShiftRight1~24_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~41_combout\);

-- Location: LCCOMB_X63_Y37_N30
\ULA|ShiftRight1~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~39_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(30),
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \REG_B_32|estado_out\(31),
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftRight1~39_combout\);

-- Location: LCCOMB_X63_Y37_N12
\ULA|ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~78_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux14~1_combout\) # (\ULA|ShiftRight1~39_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\MUX_B|Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \ULA|ShiftRight1~39_combout\,
	combout => \ULA|ShiftRight0~78_combout\);

-- Location: LCCOMB_X60_Y37_N16
\ULA|ShiftRight0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~111_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~78_combout\) # ((\ULA|ShiftRight0~118_combout\ & \ULA|ShiftRight1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~118_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight1~41_combout\,
	datad => \ULA|ShiftRight0~78_combout\,
	combout => \ULA|ShiftRight0~111_combout\);

-- Location: LCCOMB_X61_Y33_N16
\ULA|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~6_combout\ = (\ULA|Mux7~13_combout\ & ((\ULA|Mux5~5_combout\) # (\ULA|ShiftRight0~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux5~5_combout\,
	datab => \ULA|ShiftRight0~111_combout\,
	datac => \ULA|Mux7~13_combout\,
	combout => \ULA|Mux5~6_combout\);

-- Location: LCCOMB_X69_Y36_N4
\ULA|ShiftLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~108_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\MUX_A|Saida_32bits_ALU[0]~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(17))) # 
-- (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(17),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(18),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X69_Y36_N14
\ULA|ShiftLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~109_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|ShiftLeft0~108_combout\)) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~108_combout\ & \ULA|ShiftLeft0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \ULA|ShiftLeft0~108_combout\,
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X69_Y36_N12
\ULA|ShiftLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~110_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftLeft0~109_combout\ & ((\MUX_B|Mux16~1_combout\))) # (!\ULA|ShiftLeft0~109_combout\ & (\MUX_B|Mux15~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & 
-- (((\ULA|ShiftLeft0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftLeft0~109_combout\,
	datad => \MUX_B|Mux16~1_combout\,
	combout => \ULA|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X61_Y33_N0
\ULA|ShiftLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~111_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~92_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~92_combout\,
	datad => \ULA|ShiftLeft0~110_combout\,
	combout => \ULA|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X67_Y34_N4
\ULA|ShiftLeft0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~123_combout\ = (\ULA|ShiftLeft0~159_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(19),
	datab => \ULA|ShiftLeft0~159_combout\,
	datac => \REG_B_32|estado_out\(21),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X68_Y34_N24
\ULA|ShiftLeft0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~125_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~123_combout\) # ((\ULA|ShiftLeft0~124_combout\ & \ULA|ShiftLeft0~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~124_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \ULA|ShiftLeft0~123_combout\,
	datad => \ULA|ShiftLeft0~160_combout\,
	combout => \ULA|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X61_Y37_N12
\ULA|ShiftRight0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~121_combout\ = (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (!\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & 
-- ((!\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	combout => \ULA|ShiftRight0~121_combout\);

-- Location: LCCOMB_X70_Y36_N30
\ULA|ShiftLeft0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~138_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftLeft0~134_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftLeft0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftLeft0~137_combout\,
	datad => \ULA|ShiftLeft0~134_combout\,
	combout => \ULA|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X69_Y33_N8
\ULA|ShiftLeft0~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~162_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- ((\ULA|ShiftLeft0~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(15),
	datad => \ULA|ShiftLeft0~138_combout\,
	combout => \ULA|ShiftLeft0~162_combout\);

-- Location: LCCOMB_X61_Y33_N4
\ULA|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~3_combout\ = (\ULA|Mux7~5_combout\ & ((\ULA|ShiftLeft0~125_combout\) # ((!\ULA|ShiftRight0~121_combout\)))) # (!\ULA|Mux7~5_combout\ & (((\ULA|ShiftRight0~121_combout\ & \ULA|ShiftLeft0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~5_combout\,
	datab => \ULA|ShiftLeft0~125_combout\,
	datac => \ULA|ShiftRight0~121_combout\,
	datad => \ULA|ShiftLeft0~162_combout\,
	combout => \ULA|Mux5~3_combout\);

-- Location: LCCOMB_X60_Y36_N0
\ULA|ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~80_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~63_combout\) # ((\ULA|ShiftLeft0~62_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~63_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~62_combout\,
	datad => \ULA|ShiftLeft0~79_combout\,
	combout => \ULA|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X60_Y36_N24
\ULA|ShiftLeft0~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~161_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~50_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftLeft0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~50_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftLeft0~80_combout\,
	combout => \ULA|ShiftLeft0~161_combout\);

-- Location: LCCOMB_X61_Y33_N30
\ULA|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~4_combout\ = (\ULA|ShiftRight0~121_combout\ & (((\ULA|Mux5~3_combout\)))) # (!\ULA|ShiftRight0~121_combout\ & ((\ULA|Mux5~3_combout\ & ((\ULA|ShiftLeft0~161_combout\))) # (!\ULA|Mux5~3_combout\ & (\ULA|ShiftLeft0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~121_combout\,
	datab => \ULA|ShiftLeft0~111_combout\,
	datac => \ULA|Mux5~3_combout\,
	datad => \ULA|ShiftLeft0~161_combout\,
	combout => \ULA|Mux5~4_combout\);

-- Location: LCCOMB_X61_Y33_N2
\ULA|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~7_combout\ = (\ULA|Mux5~5_combout\ & (((!\ULA|ShiftLeft0~45_combout\ & \ULA|Mux5~4_combout\)) # (!\ULA|Mux5~6_combout\))) # (!\ULA|Mux5~5_combout\ & (((\ULA|Mux5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux5~5_combout\,
	datab => \ULA|ShiftLeft0~45_combout\,
	datac => \ULA|Mux5~6_combout\,
	datad => \ULA|Mux5~4_combout\,
	combout => \ULA|Mux5~7_combout\);

-- Location: LCCOMB_X61_Y33_N8
\ULA|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~8_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|Mux5~2_combout\)) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux5~2_combout\ & ((\ULA|Mux5~7_combout\))) # (!\ULA|Mux5~2_combout\ & (\ULA|Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux5~2_combout\,
	datac => \ULA|Add2~52_combout\,
	datad => \ULA|Mux5~7_combout\,
	combout => \ULA|Mux5~8_combout\);

-- Location: LCCOMB_X68_Y38_N24
\ULA|ShiftRight1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~79_combout\ = (!\MUX_B|Mux14~1_combout\ & (((!\MUX_A|Saida_32bits_ALU[3]~3_combout\) # (!\REG_B_32|estado_out\(31))) # (!\ULA|ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \REG_B_32|estado_out\(31),
	datac => \MUX_B|Mux14~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	combout => \ULA|ShiftRight1~79_combout\);

-- Location: LCCOMB_X60_Y35_N30
\ULA|ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~47_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight1~46_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~46_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight1~41_combout\,
	combout => \ULA|ShiftRight1~47_combout\);

-- Location: LCCOMB_X60_Y35_N10
\ULA|ShiftRight1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~82_combout\ = ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftRight1~47_combout\)) # (!\ULA|ShiftRight1~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~79_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftRight1~47_combout\,
	combout => \ULA|ShiftRight1~82_combout\);

-- Location: LCCOMB_X69_Y33_N22
\ULA|resposta~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~91_combout\ = (\MUX_B|Mux5~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(26))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(26),
	datab => \PC_32|estado_out\(26),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux5~0_combout\,
	combout => \ULA|resposta~91_combout\);

-- Location: LCCOMB_X69_Y33_N4
\ULA|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~91_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~52_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~91_combout\,
	datac => \ULA|Mux9~9_combout\,
	datad => \ULA|Add1~52_combout\,
	combout => \ULA|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y33_N6
\ULA|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux5~0_combout\ & ((\ULA|ShiftRight1~82_combout\))) # (!\ULA|Mux5~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~82_combout\,
	datad => \ULA|Mux5~0_combout\,
	combout => \ULA|Mux5~1_combout\);

-- Location: LCCOMB_X61_Y33_N22
\ULA|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux5~9_combout\ = (\ULA|Mux2~14_combout\ & ((\ULA|Mux5~1_combout\) # ((!\CONTROLE_ALU|Mux8~2_combout\ & \ULA|Mux5~8_combout\)))) # (!\ULA|Mux2~14_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~14_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux5~8_combout\,
	datad => \ULA|Mux5~1_combout\,
	combout => \ULA|Mux5~9_combout\);

-- Location: LCFF_X61_Y33_N23
\REG_ULA|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(26));

-- Location: LCFF_X63_Y32_N31
\RDM_32|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(26));

-- Location: LCCOMB_X63_Y32_N30
\MUX_MEMPARAREG|Saida_32bits[26]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[26]~26_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(26)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(26),
	datac => \RDM_32|estado_out\(26),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[26]~26_combout\);

-- Location: LCFF_X66_Y36_N29
\REG_B_32|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a28\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(28));

-- Location: LCCOMB_X66_Y36_N28
\ULA|ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~42_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(30))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(30),
	datac => \REG_B_32|estado_out\(28),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight0~42_combout\);

-- Location: LCCOMB_X68_Y38_N30
\ULA|ShiftRight1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~78_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~119_combout\ & ((\ULA|ShiftRight0~41_combout\) # (\ULA|ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~41_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~119_combout\,
	datad => \ULA|ShiftRight0~42_combout\,
	combout => \ULA|ShiftRight1~78_combout\);

-- Location: LCCOMB_X68_Y38_N8
\ULA|ShiftRight0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~40_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~38_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~39_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight0~38_combout\,
	datad => \ULA|ShiftRight0~118_combout\,
	combout => \ULA|ShiftRight0~40_combout\);

-- Location: LCCOMB_X68_Y38_N14
\ULA|ShiftRight1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~80_combout\ = ((\ULA|ShiftRight1~78_combout\) # ((\ULA|ShiftRight0~40_combout\ & !\MUX_A|Saida_32bits_ALU[3]~3_combout\))) # (!\ULA|ShiftRight1~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~79_combout\,
	datab => \ULA|ShiftRight1~78_combout\,
	datac => \ULA|ShiftRight0~40_combout\,
	datad => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	combout => \ULA|ShiftRight1~80_combout\);

-- Location: LCCOMB_X67_Y31_N26
\ULA|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~2_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~89_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~48_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~89_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~48_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux7~2_combout\);

-- Location: LCCOMB_X62_Y31_N4
\ULA|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~3_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux7~2_combout\ & ((\ULA|ShiftRight1~80_combout\))) # (!\ULA|Mux7~2_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~80_combout\,
	datad => \ULA|Mux7~2_combout\,
	combout => \ULA|Mux7~3_combout\);

-- Location: LCCOMB_X66_Y31_N0
\MUX_A|Saida_32bits_ALU[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[22]~22_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(22))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(22),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(22),
	combout => \MUX_A|Saida_32bits_ALU[22]~22_combout\);

-- Location: LCCOMB_X70_Y34_N10
\ULA|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~42_combout\ = (\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((\MUX_B|Mux10~0_combout\ & (\ULA|Add2~41\ & VCC)) # (!\MUX_B|Mux10~0_combout\ & (!\ULA|Add2~41\)))) # (!\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((\MUX_B|Mux10~0_combout\ & 
-- (!\ULA|Add2~41\)) # (!\MUX_B|Mux10~0_combout\ & ((\ULA|Add2~41\) # (GND)))))
-- \ULA|Add2~43\ = CARRY((\MUX_A|Saida_32bits_ALU[21]~21_combout\ & (!\MUX_B|Mux10~0_combout\ & !\ULA|Add2~41\)) # (!\MUX_A|Saida_32bits_ALU[21]~21_combout\ & ((!\ULA|Add2~41\) # (!\MUX_B|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	datab => \MUX_B|Mux10~0_combout\,
	datad => VCC,
	cin => \ULA|Add2~41\,
	combout => \ULA|Add2~42_combout\,
	cout => \ULA|Add2~43\);

-- Location: LCCOMB_X70_Y34_N12
\ULA|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~44_combout\ = ((\MUX_B|Mux9~0_combout\ $ (\MUX_A|Saida_32bits_ALU[22]~22_combout\ $ (!\ULA|Add2~43\)))) # (GND)
-- \ULA|Add2~45\ = CARRY((\MUX_B|Mux9~0_combout\ & ((\MUX_A|Saida_32bits_ALU[22]~22_combout\) # (!\ULA|Add2~43\))) # (!\MUX_B|Mux9~0_combout\ & (\MUX_A|Saida_32bits_ALU[22]~22_combout\ & !\ULA|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux9~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	datad => VCC,
	cin => \ULA|Add2~43\,
	combout => \ULA|Add2~44_combout\,
	cout => \ULA|Add2~45\);

-- Location: LCCOMB_X70_Y34_N14
\ULA|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~46_combout\ = (\MUX_B|Mux8~0_combout\ & ((\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (\ULA|Add2~45\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & (!\ULA|Add2~45\)))) # (!\MUX_B|Mux8~0_combout\ & ((\MUX_A|Saida_32bits_ALU[23]~23_combout\ & 
-- (!\ULA|Add2~45\)) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & ((\ULA|Add2~45\) # (GND)))))
-- \ULA|Add2~47\ = CARRY((\MUX_B|Mux8~0_combout\ & (!\MUX_A|Saida_32bits_ALU[23]~23_combout\ & !\ULA|Add2~45\)) # (!\MUX_B|Mux8~0_combout\ & ((!\ULA|Add2~45\) # (!\MUX_A|Saida_32bits_ALU[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux8~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	datad => VCC,
	cin => \ULA|Add2~45\,
	combout => \ULA|Add2~46_combout\,
	cout => \ULA|Add2~47\);

-- Location: LCCOMB_X70_Y34_N16
\ULA|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~48_combout\ = ((\MUX_B|Mux7~0_combout\ $ (\MUX_A|Saida_32bits_ALU[24]~24_combout\ $ (!\ULA|Add2~47\)))) # (GND)
-- \ULA|Add2~49\ = CARRY((\MUX_B|Mux7~0_combout\ & ((\MUX_A|Saida_32bits_ALU[24]~24_combout\) # (!\ULA|Add2~47\))) # (!\MUX_B|Mux7~0_combout\ & (\MUX_A|Saida_32bits_ALU[24]~24_combout\ & !\ULA|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux7~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	datad => VCC,
	cin => \ULA|Add2~47\,
	combout => \ULA|Add2~48_combout\,
	cout => \ULA|Add2~49\);

-- Location: LCCOMB_X62_Y31_N20
\ULA|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~6_combout\ = (\ULA|ShiftRight0~121_combout\ & ((\ULA|Mux7~5_combout\ & (\ULA|ShiftLeft0~118_combout\)) # (!\ULA|Mux7~5_combout\ & ((\ULA|ShiftLeft0~131_combout\))))) # (!\ULA|ShiftRight0~121_combout\ & (((\ULA|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~121_combout\,
	datab => \ULA|ShiftLeft0~118_combout\,
	datac => \ULA|Mux7~5_combout\,
	datad => \ULA|ShiftLeft0~131_combout\,
	combout => \ULA|Mux7~6_combout\);

-- Location: LCCOMB_X62_Y38_N22
\ULA|ShiftLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~101_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~86_combout\))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~100_combout\,
	datad => \ULA|ShiftLeft0~86_combout\,
	combout => \ULA|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X62_Y31_N14
\ULA|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~7_combout\ = (\ULA|ShiftRight0~121_combout\ & (((\ULA|Mux7~6_combout\)))) # (!\ULA|ShiftRight0~121_combout\ & ((\ULA|Mux7~6_combout\ & (\ULA|ShiftLeft0~132_combout\)) # (!\ULA|Mux7~6_combout\ & ((\ULA|ShiftLeft0~101_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~132_combout\,
	datab => \ULA|ShiftRight0~121_combout\,
	datac => \ULA|Mux7~6_combout\,
	datad => \ULA|ShiftLeft0~101_combout\,
	combout => \ULA|Mux7~7_combout\);

-- Location: LCCOMB_X67_Y31_N0
\MUX_B|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux7~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\REG_B_32|estado_out\(24) & 
-- (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \REG_B_32|estado_out\(24),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux7~0_combout\);

-- Location: LCCOMB_X62_Y31_N24
\ULA|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~8_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[24]~24_combout\ & (!\MUX_B|Mux7~0_combout\ & \ULA|Mux3~10_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[24]~24_combout\ & (\MUX_B|Mux7~0_combout\ $ (!\ULA|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	datac => \MUX_B|Mux7~0_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux7~8_combout\);

-- Location: LCCOMB_X68_Y38_N6
\ULA|ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~44_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~40_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \ULA|ShiftRight0~40_combout\,
	datad => \ULA|ShiftRight0~43_combout\,
	combout => \ULA|ShiftRight0~44_combout\);

-- Location: LCCOMB_X68_Y38_N20
\ULA|ShiftRight0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~123_combout\ = (\ULA|ShiftRight0~44_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (!\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((!\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(3),
	datac => \PC_32|estado_out\(3),
	datad => \ULA|ShiftRight0~44_combout\,
	combout => \ULA|ShiftRight0~123_combout\);

-- Location: LCCOMB_X62_Y31_N2
\ULA|Mux7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~9_combout\ = (\ULA|Mux7~13_combout\ & ((\ULA|Mux7~8_combout\) # (\ULA|ShiftRight0~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~8_combout\,
	datac => \ULA|Mux7~13_combout\,
	datad => \ULA|ShiftRight0~123_combout\,
	combout => \ULA|Mux7~9_combout\);

-- Location: LCCOMB_X62_Y31_N28
\ULA|Mux7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~10_combout\ = (\ULA|Mux7~8_combout\ & (((!\ULA|ShiftLeft0~45_combout\ & \ULA|Mux7~7_combout\)) # (!\ULA|Mux7~9_combout\))) # (!\ULA|Mux7~8_combout\ & (((\ULA|Mux7~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~45_combout\,
	datab => \ULA|Mux7~7_combout\,
	datac => \ULA|Mux7~8_combout\,
	datad => \ULA|Mux7~9_combout\,
	combout => \ULA|Mux7~10_combout\);

-- Location: LCCOMB_X62_Y31_N18
\ULA|Mux7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~11_combout\ = (\ULA|Mux7~4_combout\ & ((\ULA|Mux28~8_combout\) # ((\ULA|Mux7~10_combout\)))) # (!\ULA|Mux7~4_combout\ & (!\ULA|Mux28~8_combout\ & (\ULA|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~4_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Add2~48_combout\,
	datad => \ULA|Mux7~10_combout\,
	combout => \ULA|Mux7~11_combout\);

-- Location: LCCOMB_X62_Y31_N8
\ULA|Mux7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux7~12_combout\ = (\ULA|Mux2~14_combout\ & ((\ULA|Mux7~3_combout\) # ((!\CONTROLE_ALU|Mux8~2_combout\ & \ULA|Mux7~11_combout\)))) # (!\ULA|Mux2~14_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux2~14_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux7~3_combout\,
	datad => \ULA|Mux7~11_combout\,
	combout => \ULA|Mux7~12_combout\);

-- Location: LCFF_X62_Y31_N9
\REG_ULA|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(24));

-- Location: LCCOMB_X62_Y31_N26
\PC_32|estado_out[24]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[24]~22_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(24)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~12_combout\,
	datab => \REG_ULA|estado_out\(24),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[24]~22_combout\);

-- Location: LCFF_X62_Y31_N27
\PC_32|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[24]~22_combout\,
	sdata => \RI_32|estado_out\(22),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(24));

-- Location: LCFF_X66_Y31_N15
\REG_A_32|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a24\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(24));

-- Location: LCCOMB_X66_Y31_N14
\MUX_A|Saida_32bits_ALU[24]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[24]~24_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(24)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(24),
	datac => \REG_A_32|estado_out\(24),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[24]~24_combout\);

-- Location: LCCOMB_X67_Y32_N26
\ULA|ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~66_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~24_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \ULA|ShiftRight1~24_combout\,
	datac => \ULA|ShiftRight0~38_combout\,
	datad => \ULA|ShiftRight0~118_combout\,
	combout => \ULA|ShiftRight0~66_combout\);

-- Location: LCCOMB_X67_Y32_N2
\ULA|ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~69_combout\ = (\ULA|ShiftRight0~122_combout\) # ((\ULA|ShiftRight0~66_combout\) # ((\ULA|ShiftRight0~68_combout\ & \MUX_A|Saida_32bits_ALU[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~122_combout\,
	datab => \ULA|ShiftRight0~66_combout\,
	datac => \ULA|ShiftRight0~68_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~69_combout\);

-- Location: LCCOMB_X66_Y35_N14
\ULA|ShiftRight0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~124_combout\ = (\ULA|ShiftRight0~69_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (!\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((!\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \ULA|ShiftRight0~69_combout\,
	combout => \ULA|ShiftRight0~124_combout\);

-- Location: LCCOMB_X61_Y38_N16
\MUX_B|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux26~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\RI_32|estado_out\(3) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \RI_32|estado_out\(3),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux26~2_combout\);

-- Location: LCCOMB_X62_Y38_N28
\ULA|ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~57_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux26~0_combout\) # (\MUX_B|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux26~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux26~2_combout\,
	combout => \ULA|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X62_Y38_N14
\ULA|ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~58_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \MUX_B|Mux28~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux27~1_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux27~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux28~1_combout\,
	combout => \ULA|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X62_Y38_N26
\ULA|ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~56_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux29~2_combout\) # (\MUX_B|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux29~2_combout\,
	datab => \MUX_B|Mux29~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X62_Y38_N30
\ULA|ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~73_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~57_combout\) # ((\ULA|ShiftLeft0~58_combout\) # (\ULA|ShiftLeft0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~57_combout\,
	datac => \ULA|ShiftLeft0~58_combout\,
	datad => \ULA|ShiftLeft0~56_combout\,
	combout => \ULA|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X68_Y38_N28
\ULA|ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~74_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux25~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux23~1_combout\,
	datab => \MUX_B|Mux25~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X63_Y38_N2
\ULA|ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~76_combout\ = (\ULA|ShiftLeft0~73_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~75_combout\) # (\ULA|ShiftLeft0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~75_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~73_combout\,
	datad => \ULA|ShiftLeft0~74_combout\,
	combout => \ULA|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X63_Y38_N18
\ULA|ShiftLeft0~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~156_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|Mux14~0_combout\,
	combout => \ULA|ShiftLeft0~156_combout\);

-- Location: LCCOMB_X63_Y38_N0
\ULA|ShiftLeft0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~136_combout\ = (\ULA|ShiftLeft0~156_combout\) # ((\ULA|ShiftLeft0~76_combout\ & !\MUX_A|Saida_32bits_ALU[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~76_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftLeft0~156_combout\,
	combout => \ULA|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X66_Y38_N16
\ULA|ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~88_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_A|Saida_32bits_ALU[1]~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux20~1_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux18~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux20~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux18~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X66_Y38_N6
\ULA|ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~89_combout\ = (\ULA|ShiftLeft0~88_combout\ & ((\MUX_B|Mux21~1_combout\) # ((!\MUX_A|Saida_32bits_ALU[0]~0_combout\)))) # (!\ULA|ShiftLeft0~88_combout\ & (((\MUX_B|Mux19~1_combout\ & \MUX_A|Saida_32bits_ALU[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux21~1_combout\,
	datab => \MUX_B|Mux19~1_combout\,
	datac => \ULA|ShiftLeft0~88_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X67_Y35_N14
\ULA|ShiftLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~107_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~89_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~106_combout\) # ((\ULA|ShiftLeft0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~106_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~105_combout\,
	datad => \ULA|ShiftLeft0~89_combout\,
	combout => \ULA|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X62_Y35_N26
\ULA|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~5_combout\ = (\ULA|Mux7~5_combout\ & (!\ULA|ShiftRight0~121_combout\)) # (!\ULA|Mux7~5_combout\ & ((\ULA|ShiftRight0~121_combout\ & (\ULA|ShiftLeft0~135_combout\)) # (!\ULA|ShiftRight0~121_combout\ & ((\ULA|ShiftLeft0~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~5_combout\,
	datab => \ULA|ShiftRight0~121_combout\,
	datac => \ULA|ShiftLeft0~135_combout\,
	datad => \ULA|ShiftLeft0~107_combout\,
	combout => \ULA|Mux6~5_combout\);

-- Location: LCCOMB_X62_Y35_N28
\ULA|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~6_combout\ = (\ULA|Mux7~5_combout\ & ((\ULA|Mux6~5_combout\ & ((\ULA|ShiftLeft0~136_combout\))) # (!\ULA|Mux6~5_combout\ & (\ULA|ShiftLeft0~121_combout\)))) # (!\ULA|Mux7~5_combout\ & (((\ULA|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~5_combout\,
	datab => \ULA|ShiftLeft0~121_combout\,
	datac => \ULA|ShiftLeft0~136_combout\,
	datad => \ULA|Mux6~5_combout\,
	combout => \ULA|Mux6~6_combout\);

-- Location: LCCOMB_X62_Y35_N8
\ULA|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~11_combout\ = (!\ULA|ShiftLeft0~40_combout\ & (!\ULA|ShiftLeft0~43_combout\ & \ULA|Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~40_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|Mux6~6_combout\,
	combout => \ULA|Mux6~11_combout\);

-- Location: LCCOMB_X66_Y31_N24
\ULA|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~7_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[25]~25_combout\ & (\ULA|Mux3~10_combout\ & !\MUX_B|Mux6~0_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[25]~25_combout\ & (\ULA|Mux3~10_combout\ $ (!\MUX_B|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \MUX_B|Mux6~0_combout\,
	combout => \ULA|Mux6~7_combout\);

-- Location: LCCOMB_X62_Y35_N22
\ULA|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~8_combout\ = (\ULA|Mux7~13_combout\ & ((\ULA|Mux6~7_combout\ & ((\ULA|Mux6~11_combout\))) # (!\ULA|Mux6~7_combout\ & (\ULA|ShiftRight0~124_combout\)))) # (!\ULA|Mux7~13_combout\ & (((\ULA|Mux6~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux7~13_combout\,
	datab => \ULA|ShiftRight0~124_combout\,
	datac => \ULA|Mux6~11_combout\,
	datad => \ULA|Mux6~7_combout\,
	combout => \ULA|Mux6~8_combout\);

-- Location: LCCOMB_X62_Y35_N24
\ULA|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~9_combout\ = (\ULA|Mux6~4_combout\ & ((\ULA|Mux28~8_combout\) # ((\ULA|Mux6~8_combout\)))) # (!\ULA|Mux6~4_combout\ & (!\ULA|Mux28~8_combout\ & (\ULA|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux6~4_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Add2~50_combout\,
	datad => \ULA|Mux6~8_combout\,
	combout => \ULA|Mux6~9_combout\);

-- Location: LCCOMB_X68_Y36_N20
\ULA|ShiftRight1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~28_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(31))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(31),
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \ULA|ShiftRight1~25_combout\,
	combout => \ULA|ShiftRight1~28_combout\);

-- Location: LCCOMB_X68_Y36_N22
\ULA|ShiftRight1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~29_combout\ = (\ULA|ShiftRight1~28_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|ShiftRight0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight1~28_combout\,
	datad => \ULA|ShiftRight0~75_combout\,
	combout => \ULA|ShiftRight1~29_combout\);

-- Location: LCCOMB_X68_Y36_N16
\ULA|ShiftRight1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~81_combout\ = ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftRight1~29_combout\))) # (!\ULA|ShiftRight1~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight1~79_combout\,
	datad => \ULA|ShiftRight1~29_combout\,
	combout => \ULA|ShiftRight1~81_combout\);

-- Location: LCCOMB_X67_Y31_N28
\ULA|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~2_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~90_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~50_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~90_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~50_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux6~2_combout\);

-- Location: LCCOMB_X66_Y31_N2
\ULA|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~3_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux6~2_combout\ & ((\ULA|ShiftRight1~81_combout\))) # (!\ULA|Mux6~2_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~81_combout\,
	datad => \ULA|Mux6~2_combout\,
	combout => \ULA|Mux6~3_combout\);

-- Location: LCCOMB_X62_Y35_N14
\ULA|Mux6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux6~10_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux2~14_combout\ & ((\ULA|Mux6~3_combout\)))) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux6~9_combout\) # ((\ULA|Mux2~14_combout\ & \ULA|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux6~9_combout\,
	datad => \ULA|Mux6~3_combout\,
	combout => \ULA|Mux6~10_combout\);

-- Location: LCFF_X62_Y35_N15
\REG_ULA|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(25));

-- Location: LCFF_X63_Y32_N17
\RDM_32|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(25));

-- Location: LCCOMB_X63_Y32_N16
\MUX_MEMPARAREG|Saida_32bits[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[25]~25_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(25)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(25),
	datac => \RDM_32|estado_out\(25),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[25]~25_combout\);

-- Location: LCFF_X66_Y31_N23
\REG_A_32|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a23\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(23));

-- Location: LCCOMB_X62_Y31_N12
\PC_32|estado_out[23]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[23]~21_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(23)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~combout\,
	datab => \REG_ULA|estado_out\(23),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[23]~21_combout\);

-- Location: LCFF_X62_Y31_N13
\PC_32|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[23]~21_combout\,
	sdata => \RI_32|estado_out\(21),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(23));

-- Location: LCCOMB_X66_Y31_N16
\MUX_A|Saida_32bits_ALU[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[23]~23_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(23))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(23),
	datac => \PC_32|estado_out\(23),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[23]~23_combout\);

-- Location: LCCOMB_X65_Y34_N20
\ULA|Mux9~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~13_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (!\ULA|Mux9~8_combout\)) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((!\ULA|Mux28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~8_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datad => \ULA|Mux28~8_combout\,
	combout => \ULA|Mux9~13_combout\);

-- Location: LCCOMB_X65_Y35_N0
\ULA|Mux9~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~11_combout\ = \ULA|Mux3~10_combout\ $ (((\MUX_A|Saida_32bits_ALU[4]~4_combout\) # ((\ULA|ShiftLeft0~43_combout\) # (\ULA|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \ULA|ShiftLeft0~43_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux9~11_combout\);

-- Location: LCCOMB_X69_Y35_N8
\ULA|ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~68_combout\ = (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~66_combout\) # (\ULA|ShiftLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~66_combout\,
	datad => \ULA|ShiftLeft0~67_combout\,
	combout => \ULA|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X69_Y35_N14
\ULA|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~3_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\ULA|ShiftLeft0~45_combout\ & ((\ULA|ShiftLeft0~65_combout\) # (\ULA|ShiftLeft0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~65_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~68_combout\,
	datad => \ULA|ShiftLeft0~45_combout\,
	combout => \ULA|Mux8~3_combout\);

-- Location: LCCOMB_X66_Y34_N16
\ULA|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~4_combout\ = (\ULA|Mux9~11_combout\ & ((\ULA|Mux9~12_combout\ & (\ULA|ShiftRight0~110_combout\)) # (!\ULA|Mux9~12_combout\ & ((\ULA|Mux8~3_combout\))))) # (!\ULA|Mux9~11_combout\ & (((!\ULA|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~110_combout\,
	datab => \ULA|Mux9~11_combout\,
	datac => \ULA|Mux9~12_combout\,
	datad => \ULA|Mux8~3_combout\,
	combout => \ULA|Mux8~4_combout\);

-- Location: LCCOMB_X65_Y35_N30
\ULA|Mux9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~10_combout\ = (\MUX_A|Saida_32bits_ALU[4]~4_combout\) # ((\ULA|ShiftLeft0~43_combout\) # ((\ULA|Mux3~10_combout\) # (\ULA|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \ULA|ShiftLeft0~43_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux9~10_combout\);

-- Location: LCCOMB_X66_Y34_N2
\ULA|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~5_combout\ = (\ULA|Mux8~4_combout\ & ((\ULA|ShiftLeft0~129_combout\) # ((\ULA|Mux9~10_combout\)))) # (!\ULA|Mux8~4_combout\ & (((\ULA|ShiftLeft0~96_combout\ & !\ULA|Mux9~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~129_combout\,
	datab => \ULA|ShiftLeft0~96_combout\,
	datac => \ULA|Mux8~4_combout\,
	datad => \ULA|Mux9~10_combout\,
	combout => \ULA|Mux8~5_combout\);

-- Location: LCCOMB_X66_Y34_N8
\ULA|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~6_combout\ = (\ULA|Mux8~2_combout\ & ((\ULA|Mux3~24_combout\) # ((\ULA|Mux8~5_combout\)))) # (!\ULA|Mux8~2_combout\ & (!\ULA|Mux3~24_combout\ & (\ULA|Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux8~2_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \ULA|Add2~46_combout\,
	datad => \ULA|Mux8~5_combout\,
	combout => \ULA|Mux8~6_combout\);

-- Location: LCCOMB_X67_Y36_N26
\ULA|ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~43_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(25))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(25),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(23),
	combout => \ULA|ShiftRight1~43_combout\);

-- Location: LCCOMB_X67_Y37_N8
\ULA|ShiftRight1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~59_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~39_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~43_combout\,
	datac => \ULA|ShiftRight0~39_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~59_combout\);

-- Location: LCCOMB_X67_Y37_N30
\ULA|ShiftRight1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~76_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~57_combout\))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight1~59_combout\,
	datad => \ULA|ShiftRight1~57_combout\,
	combout => \ULA|ShiftRight1~76_combout\);

-- Location: LCCOMB_X67_Y37_N28
\ULA|ShiftRight1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~77_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight1~60_combout\) # (\ULA|ShiftRight1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight1~60_combout\,
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \ULA|ShiftRight1~76_combout\,
	combout => \ULA|ShiftRight1~77_combout\);

-- Location: LCCOMB_X67_Y31_N24
\ULA|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~88_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~46_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~88_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~46_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux8~0_combout\);

-- Location: LCCOMB_X66_Y34_N0
\ULA|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux8~0_combout\ & ((\ULA|ShiftRight1~77_combout\))) # (!\ULA|Mux8~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~77_combout\,
	datad => \ULA|Mux8~0_combout\,
	combout => \ULA|Mux8~1_combout\);

-- Location: LCCOMB_X66_Y34_N22
\ULA|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~7_combout\ = (\ULA|Mux9~14_combout\ & (\ULA|Mux9~13_combout\ & ((\ULA|Mux8~1_combout\)))) # (!\ULA|Mux9~14_combout\ & (((\ULA|Mux8~6_combout\)) # (!\ULA|Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~14_combout\,
	datab => \ULA|Mux9~13_combout\,
	datac => \ULA|Mux8~6_combout\,
	datad => \ULA|Mux8~1_combout\,
	combout => \ULA|Mux8~7_combout\);

-- Location: LCCOMB_X66_Y34_N4
\ULA|Mux8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux8~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux8~7_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_B|Mux8~0_combout\ & ((\MUX_A|Saida_32bits_ALU[23]~23_combout\) # (!\ULA|Mux8~7_combout\))) # (!\MUX_B|Mux8~0_combout\ & 
-- (\MUX_A|Saida_32bits_ALU[23]~23_combout\ & !\ULA|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux8~0_combout\,
	datab => \ULA|Mux9~15_combout\,
	datac => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	datad => \ULA|Mux8~7_combout\,
	combout => \ULA|Mux8~combout\);

-- Location: LCFF_X66_Y34_N5
\REG_ULA|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(23));

-- Location: LCCOMB_X63_Y32_N4
\MUX_MEMPARAREG|Saida_32bits[23]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[23]~23_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(23))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(23),
	datac => \REG_ULA|estado_out\(23),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[23]~23_combout\);

-- Location: LCFF_X66_Y31_N19
\REG_A_32|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a22\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(22));

-- Location: LCCOMB_X66_Y31_N18
\ULA|resposta~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~87_combout\ = (\MUX_B|Mux9~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(22)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux9~0_combout\,
	datab => \PC_32|estado_out\(22),
	datac => \REG_A_32|estado_out\(22),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|resposta~87_combout\);

-- Location: LCCOMB_X63_Y37_N22
\ULA|Mux9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~16_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~87_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~44_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~87_combout\,
	datac => \ULA|Mux9~9_combout\,
	datad => \ULA|Add1~44_combout\,
	combout => \ULA|Mux9~16_combout\);

-- Location: LCCOMB_X63_Y37_N24
\ULA|Mux9~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~17_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux9~16_combout\ & ((\ULA|ShiftRight1~75_combout\))) # (!\ULA|Mux9~16_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux9~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~75_combout\,
	datad => \ULA|Mux9~16_combout\,
	combout => \ULA|Mux9~17_combout\);

-- Location: LCCOMB_X69_Y36_N18
\ULA|ShiftLeft0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~126_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftLeft0~110_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~110_combout\,
	datad => \ULA|ShiftLeft0~125_combout\,
	combout => \ULA|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X68_Y37_N4
\ULA|ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~61_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & !\MUX_A|Saida_32bits_ALU[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X69_Y37_N30
\ULA|ShiftRight1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~90_combout\ = (\ULA|ShiftRight1~39_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftRight1~39_combout\,
	combout => \ULA|ShiftRight1~90_combout\);

-- Location: LCCOMB_X68_Y37_N2
\ULA|ShiftRight0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~103_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~61_combout\ & ((\ULA|ShiftRight1~90_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~102_combout\) # ((\ULA|ShiftLeft0~61_combout\ & 
-- \ULA|ShiftRight1~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~61_combout\,
	datac => \ULA|ShiftRight0~102_combout\,
	datad => \ULA|ShiftRight1~90_combout\,
	combout => \ULA|ShiftRight0~103_combout\);

-- Location: LCCOMB_X68_Y37_N14
\ULA|Mux9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~24_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~64_combout\ & (!\ULA|ShiftLeft0~43_combout\ & !\ULA|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~64_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux9~24_combout\);

-- Location: LCCOMB_X68_Y37_N28
\ULA|Mux9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~18_combout\ = (\ULA|Mux9~11_combout\ & ((\ULA|Mux9~12_combout\ & (\ULA|ShiftRight0~103_combout\)) # (!\ULA|Mux9~12_combout\ & ((\ULA|Mux9~24_combout\))))) # (!\ULA|Mux9~11_combout\ & (((!\ULA|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~11_combout\,
	datab => \ULA|ShiftRight0~103_combout\,
	datac => \ULA|Mux9~24_combout\,
	datad => \ULA|Mux9~12_combout\,
	combout => \ULA|Mux9~18_combout\);

-- Location: LCCOMB_X68_Y37_N18
\ULA|Mux9~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~19_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux9~18_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux9~18_combout\ & ((\ULA|ShiftLeft0~126_combout\))) # (!\ULA|Mux9~18_combout\ & (\ULA|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~93_combout\,
	datab => \ULA|ShiftLeft0~126_combout\,
	datac => \ULA|Mux9~10_combout\,
	datad => \ULA|Mux9~18_combout\,
	combout => \ULA|Mux9~19_combout\);

-- Location: LCCOMB_X68_Y37_N20
\ULA|Mux9~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~21_combout\ = (\ULA|Mux9~20_combout\ & (!\ULA|Mux3~24_combout\ & ((\ULA|Mux9~19_combout\)))) # (!\ULA|Mux9~20_combout\ & ((\ULA|Mux3~24_combout\) # ((\ULA|Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~20_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \ULA|Add2~44_combout\,
	datad => \ULA|Mux9~19_combout\,
	combout => \ULA|Mux9~21_combout\);

-- Location: LCCOMB_X63_Y37_N18
\ULA|Mux9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~22_combout\ = (\ULA|Mux9~13_combout\ & ((\ULA|Mux9~14_combout\ & (\ULA|Mux9~17_combout\)) # (!\ULA|Mux9~14_combout\ & ((\ULA|Mux9~21_combout\))))) # (!\ULA|Mux9~13_combout\ & (!\ULA|Mux9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~13_combout\,
	datab => \ULA|Mux9~14_combout\,
	datac => \ULA|Mux9~17_combout\,
	datad => \ULA|Mux9~21_combout\,
	combout => \ULA|Mux9~22_combout\);

-- Location: LCCOMB_X63_Y37_N4
\ULA|Mux9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux9~22_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_A|Saida_32bits_ALU[22]~22_combout\ & ((\MUX_B|Mux9~0_combout\) # (!\ULA|Mux9~22_combout\))) # (!\MUX_A|Saida_32bits_ALU[22]~22_combout\ & 
-- (\MUX_B|Mux9~0_combout\ & !\ULA|Mux9~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	datab => \ULA|Mux9~15_combout\,
	datac => \MUX_B|Mux9~0_combout\,
	datad => \ULA|Mux9~22_combout\,
	combout => \ULA|Mux9~combout\);

-- Location: LCFF_X63_Y37_N5
\REG_ULA|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(22));

-- Location: LCFF_X63_Y37_N1
\RDM_32|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(22),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(22));

-- Location: LCCOMB_X63_Y37_N10
\MUX_MEMPARAREG|Saida_32bits[22]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[22]~22_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(22)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(22),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datad => \RDM_32|estado_out\(22),
	combout => \MUX_MEMPARAREG|Saida_32bits[22]~22_combout\);

-- Location: LCFF_X70_Y36_N21
\REG_B_32|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a25\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(25));

-- Location: M4K_X64_Y36
\MEM|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005ABDCE000014984AA12A74A992A65A956B04A940920288092",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "InicializacaoMemoria.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM_MIPS:MEM|altsyncram:altsyncram_component|altsyncram_lce1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10),
	clk0 => \Clock~clkctrl_outclk\,
	portadatain => \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEM|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCFF_X67_Y32_N1
\RI_32|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(25),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(25));

-- Location: LCFF_X65_Y34_N29
\REG_A_32|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a19\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(19));

-- Location: LCCOMB_X61_Y34_N30
\PC_32|estado_out[19]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[19]~17_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(19))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(19),
	datad => \ULA|Mux12~combout\,
	combout => \PC_32|estado_out[19]~17_combout\);

-- Location: LCFF_X61_Y34_N31
\PC_32|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[19]~17_combout\,
	sdata => \RI_32|estado_out\(17),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(19));

-- Location: LCCOMB_X65_Y34_N2
\MUX_A|Saida_32bits_ALU[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[19]~19_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(19))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(19),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(19),
	combout => \MUX_A|Saida_32bits_ALU[19]~19_combout\);

-- Location: LCCOMB_X67_Y37_N0
\ULA|ShiftRight1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~61_combout\ = (\ULA|ShiftRight0~119_combout\ & ((\ULA|ShiftRight1~60_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftRight1~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight1~59_combout\,
	datad => \ULA|ShiftRight1~60_combout\,
	combout => \ULA|ShiftRight1~61_combout\);

-- Location: LCCOMB_X67_Y36_N22
\ULA|ShiftRight1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~58_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(22))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(22),
	datab => \REG_B_32|estado_out\(20),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~58_combout\);

-- Location: LCCOMB_X67_Y37_N22
\ULA|ShiftRight1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~63_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftRight1~57_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight1~62_combout\) # ((\ULA|ShiftRight1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~62_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight1~58_combout\,
	datad => \ULA|ShiftRight1~57_combout\,
	combout => \ULA|ShiftRight1~63_combout\);

-- Location: LCCOMB_X67_Y33_N18
\ULA|ShiftRight1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~64_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight1~61_combout\) # ((\ULA|ShiftRight0~118_combout\ & \ULA|ShiftRight1~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~118_combout\,
	datac => \ULA|ShiftRight1~61_combout\,
	datad => \ULA|ShiftRight1~63_combout\,
	combout => \ULA|ShiftRight1~64_combout\);

-- Location: LCCOMB_X65_Y34_N16
\ULA|resposta~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~84_combout\ = (\MUX_B|Mux12~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(19))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(19),
	datac => \MUX_B|Mux12~0_combout\,
	datad => \PC_32|estado_out\(19),
	combout => \ULA|resposta~84_combout\);

-- Location: LCCOMB_X62_Y33_N26
\ULA|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~2_combout\ = (\ULA|Mux9~9_combout\ & (\ULA|Mux28~25_combout\ & (!\ULA|resposta~84_combout\))) # (!\ULA|Mux9~9_combout\ & (((\ULA|Add1~38_combout\)) # (!\ULA|Mux28~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~9_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|resposta~84_combout\,
	datad => \ULA|Add1~38_combout\,
	combout => \ULA|Mux12~2_combout\);

-- Location: LCCOMB_X62_Y33_N8
\ULA|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~3_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux12~2_combout\ & ((\ULA|ShiftRight1~64_combout\))) # (!\ULA|Mux12~2_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~64_combout\,
	datad => \ULA|Mux12~2_combout\,
	combout => \ULA|Mux12~3_combout\);

-- Location: LCCOMB_X62_Y33_N14
\ULA|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~4_combout\ = (\MUX_B|Mux12~0_combout\ & (\ULA|Mux9~8_combout\ & ((!\ULA|Mux3~24_combout\) # (!\MUX_A|Saida_32bits_ALU[19]~19_combout\)))) # (!\MUX_B|Mux12~0_combout\ & (\ULA|Mux9~8_combout\ $ (((!\MUX_A|Saida_32bits_ALU[19]~19_combout\ & 
-- \ULA|Mux3~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux12~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	datac => \ULA|Mux9~8_combout\,
	datad => \ULA|Mux3~24_combout\,
	combout => \ULA|Mux12~4_combout\);

-- Location: LCCOMB_X67_Y37_N26
\ULA|ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~86_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\ULA|ShiftRight1~58_combout\) # ((!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \ULA|ShiftRight1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~118_combout\,
	datab => \ULA|ShiftRight1~58_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight1~42_combout\,
	combout => \ULA|ShiftRight0~86_combout\);

-- Location: LCCOMB_X67_Y37_N2
\ULA|ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~87_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~86_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight1~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~119_combout\,
	datac => \ULA|ShiftRight1~59_combout\,
	datad => \ULA|ShiftRight0~86_combout\,
	combout => \ULA|ShiftRight0~87_combout\);

-- Location: LCCOMB_X63_Y33_N30
\ULA|ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~88_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~85_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~85_combout\,
	datad => \ULA|ShiftRight0~87_combout\,
	combout => \ULA|ShiftRight0~88_combout\);

-- Location: LCCOMB_X62_Y33_N28
\ULA|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~5_combout\ = (\ULA|Mux9~12_combout\ & (((\ULA|Mux9~11_combout\ & \ULA|ShiftRight0~88_combout\)))) # (!\ULA|Mux9~12_combout\ & ((\ULA|Mux12~9_combout\) # ((!\ULA|Mux9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux12~9_combout\,
	datab => \ULA|Mux9~12_combout\,
	datac => \ULA|Mux9~11_combout\,
	datad => \ULA|ShiftRight0~88_combout\,
	combout => \ULA|Mux12~5_combout\);

-- Location: LCCOMB_X62_Y33_N30
\ULA|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~6_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux12~5_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux12~5_combout\ & ((\ULA|ShiftLeft0~115_combout\))) # (!\ULA|Mux12~5_combout\ & (\ULA|ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~84_combout\,
	datab => \ULA|ShiftLeft0~115_combout\,
	datac => \ULA|Mux9~10_combout\,
	datad => \ULA|Mux12~5_combout\,
	combout => \ULA|Mux12~6_combout\);

-- Location: LCCOMB_X62_Y33_N12
\ULA|Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~7_combout\ = (\ULA|Mux3~24_combout\ & (((\ULA|Mux12~4_combout\)))) # (!\ULA|Mux3~24_combout\ & ((\ULA|Mux12~4_combout\ & ((\ULA|Mux12~6_combout\))) # (!\ULA|Mux12~4_combout\ & (\ULA|Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~24_combout\,
	datab => \ULA|Add2~38_combout\,
	datac => \ULA|Mux12~4_combout\,
	datad => \ULA|Mux12~6_combout\,
	combout => \ULA|Mux12~7_combout\);

-- Location: LCCOMB_X62_Y33_N18
\ULA|Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~8_combout\ = (\ULA|Mux9~14_combout\ & (\ULA|Mux9~13_combout\ & (\ULA|Mux12~3_combout\))) # (!\ULA|Mux9~14_combout\ & (((\ULA|Mux12~7_combout\)) # (!\ULA|Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~14_combout\,
	datab => \ULA|Mux9~13_combout\,
	datac => \ULA|Mux12~3_combout\,
	datad => \ULA|Mux12~7_combout\,
	combout => \ULA|Mux12~8_combout\);

-- Location: LCCOMB_X62_Y33_N0
\ULA|Mux12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux12~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux12~8_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_B|Mux12~0_combout\ & ((\MUX_A|Saida_32bits_ALU[19]~19_combout\) # (!\ULA|Mux12~8_combout\))) # (!\MUX_B|Mux12~0_combout\ & 
-- (\MUX_A|Saida_32bits_ALU[19]~19_combout\ & !\ULA|Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux12~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	datac => \ULA|Mux9~15_combout\,
	datad => \ULA|Mux12~8_combout\,
	combout => \ULA|Mux12~combout\);

-- Location: LCFF_X62_Y33_N1
\REG_ULA|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(19));

-- Location: LCCOMB_X62_Y33_N22
\MUX_MEMPARAREG|Saida_32bits[19]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[19]~19_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(19))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(19),
	datab => \REG_ULA|estado_out\(19),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[19]~19_combout\);

-- Location: LCFF_X67_Y36_N13
\REG_B_32|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a24\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(24));

-- Location: LCFF_X63_Y32_N7
\RI_32|estado_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(24));

-- Location: LCFF_X65_Y35_N25
\REG_A_32|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a16\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(16));

-- Location: LCCOMB_X65_Y37_N16
\ULA|Mux30~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~19_combout\ = (!\CONTROLE_ALU|Mux9~3_combout\ & ((!\CONTROLE_ALU|Mux10~3_combout\) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \CONTROLE_ALU|Mux10~3_combout\,
	combout => \ULA|Mux30~19_combout\);

-- Location: LCCOMB_X69_Y36_N30
\ULA|ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~46_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\REG_B_32|estado_out\(19))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\REG_B_32|estado_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(19),
	datac => \REG_B_32|estado_out\(18),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight0~46_combout\);

-- Location: LCCOMB_X69_Y36_N20
\ULA|ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~47_combout\ = (\ULA|ShiftRight0~45_combout\) # ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|ShiftLeft0~44_combout\ & \ULA|ShiftRight0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~45_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftLeft0~44_combout\,
	datad => \ULA|ShiftRight0~46_combout\,
	combout => \ULA|ShiftRight0~47_combout\);

-- Location: LCCOMB_X70_Y36_N18
\ULA|ShiftLeft0~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~155_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((!\REG_A_32|estado_out\(0)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & 
-- (!\PC_32|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \PC_32|estado_out\(0),
	datac => \REG_A_32|estado_out\(0),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~155_combout\);

-- Location: LCCOMB_X69_Y36_N22
\ULA|ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~48_combout\ = (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~47_combout\) # ((\MUX_B|Mux15~1_combout\ & \ULA|ShiftLeft0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~47_combout\,
	datad => \ULA|ShiftLeft0~155_combout\,
	combout => \ULA|ShiftRight0~48_combout\);

-- Location: LCCOMB_X69_Y36_N0
\ULA|ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~52_combout\ = (\ULA|ShiftRight0~120_combout\) # ((\ULA|ShiftRight0~48_combout\) # ((\ULA|ShiftRight0~51_combout\ & \ULA|ShiftRight0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~120_combout\,
	datab => \ULA|ShiftRight0~51_combout\,
	datac => \ULA|ShiftRight0~119_combout\,
	datad => \ULA|ShiftRight0~48_combout\,
	combout => \ULA|ShiftRight0~52_combout\);

-- Location: LCCOMB_X65_Y37_N12
\ULA|ShiftRight0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~116_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~44_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|ShiftRight0~52_combout\,
	datad => \ULA|ShiftRight0~44_combout\,
	combout => \ULA|ShiftRight0~116_combout\);

-- Location: LCCOMB_X65_Y37_N2
\ULA|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~3_combout\ = (\ULA|Mux30~19_combout\ & ((\ULA|ShiftRight0~116_combout\) # ((\MUX_B|Mux0~0_combout\ & !\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|Mux30~19_combout\,
	datad => \ULA|ShiftRight0~116_combout\,
	combout => \ULA|Mux15~3_combout\);

-- Location: LCCOMB_X65_Y37_N14
\ULA|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~6_combout\ = \CONTROLE_ALU|Mux8~2_combout\ $ (((!\CONTROLE_ALU|Mux7~2_combout\ & \CONTROLE_ALU|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \CONTROLE_ALU|Mux8~2_combout\,
	combout => \ULA|Mux15~6_combout\);

-- Location: LCCOMB_X65_Y37_N8
\ULA|Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~5_combout\ = (\MUX_A|Saida_32bits_ALU[16]~16_combout\ & ((\MUX_B|Mux15~1_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\)) # (!\MUX_B|Mux15~1_combout\ & ((\ULA|Mux3~10_combout\))))) # (!\MUX_A|Saida_32bits_ALU[16]~16_combout\ & 
-- (\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux8~2_combout\) # (\MUX_B|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux15~5_combout\);

-- Location: LCCOMB_X66_Y37_N28
\ULA|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~4_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Add2~32_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add2~32_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Add1~32_combout\,
	combout => \ULA|Mux15~4_combout\);

-- Location: LCCOMB_X65_Y37_N24
\ULA|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~7_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux15~6_combout\)) # (!\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux15~6_combout\ & ((\ULA|Mux15~4_combout\))) # (!\ULA|Mux15~6_combout\ & (\ULA|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|Mux15~6_combout\,
	datac => \ULA|Mux15~5_combout\,
	datad => \ULA|Mux15~4_combout\,
	combout => \ULA|Mux15~7_combout\);

-- Location: LCCOMB_X66_Y39_N10
\ULA|ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~46_combout\ = (\MUX_B|Mux31~0_combout\ & (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & !\MUX_A|Saida_32bits_ALU[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X67_Y39_N10
\ULA|ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~71_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux25~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux23~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux25~1_combout\,
	combout => \ULA|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X67_Y38_N30
\ULA|ShiftLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~103_combout\ = (\ULA|ShiftLeft0~71_combout\) # (\ULA|ShiftLeft0~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~71_combout\,
	datad => \ULA|ShiftLeft0~70_combout\,
	combout => \ULA|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X67_Y38_N4
\ULA|ShiftLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~104_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\ULA|ShiftLeft0~103_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & 
-- (\ULA|ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftLeft0~46_combout\,
	datad => \ULA|ShiftLeft0~103_combout\,
	combout => \ULA|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X66_Y39_N28
\ULA|ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~98_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~53_combout\) # (\ULA|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~53_combout\,
	datad => \ULA|ShiftLeft0~54_combout\,
	combout => \ULA|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X65_Y38_N6
\ULA|ShiftLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~102_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~98_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~101_combout\,
	datad => \ULA|ShiftLeft0~98_combout\,
	combout => \ULA|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X65_Y38_N16
\ULA|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~0_combout\ = (\ULA|ShiftLeft0~102_combout\) # ((!\ULA|ShiftLeft0~45_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|ShiftLeft0~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~45_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~104_combout\,
	datad => \ULA|ShiftLeft0~102_combout\,
	combout => \ULA|Mux15~0_combout\);

-- Location: LCCOMB_X65_Y37_N28
\ULA|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~2_combout\ = (\ULA|Mux15~1_combout\ & (\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|ShiftRight0~116_combout\)))) # (!\ULA|Mux15~1_combout\ & (((\ULA|Mux15~0_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux15~1_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux15~0_combout\,
	datad => \ULA|ShiftRight0~116_combout\,
	combout => \ULA|Mux15~2_combout\);

-- Location: LCCOMB_X65_Y37_N26
\ULA|Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux15~8_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux15~7_combout\ & (\ULA|Mux15~3_combout\)) # (!\ULA|Mux15~7_combout\ & ((\ULA|Mux15~2_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|Mux15~3_combout\,
	datac => \ULA|Mux15~7_combout\,
	datad => \ULA|Mux15~2_combout\,
	combout => \ULA|Mux15~8_combout\);

-- Location: LCCOMB_X61_Y34_N24
\PC_32|estado_out[16]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[16]~14_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(16))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux15~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(16),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux15~8_combout\,
	combout => \PC_32|estado_out[16]~14_combout\);

-- Location: LCFF_X68_Y35_N17
\RI_32|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(14));

-- Location: LCFF_X61_Y34_N25
\PC_32|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[16]~14_combout\,
	sdata => \RI_32|estado_out\(14),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(16));

-- Location: LCCOMB_X65_Y35_N24
\MUX_A|Saida_32bits_ALU[16]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[16]~16_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(16))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(16),
	datad => \PC_32|estado_out\(16),
	combout => \MUX_A|Saida_32bits_ALU[16]~16_combout\);

-- Location: LCFF_X67_Y38_N29
\REG_A_32|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a8\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(8));

-- Location: LCCOMB_X63_Y36_N22
\PC_32|estado_out[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[8]~6_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(8))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux23~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(8),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux23~combout\,
	combout => \PC_32|estado_out[8]~6_combout\);

-- Location: LCFF_X63_Y36_N23
\PC_32|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[8]~6_combout\,
	sdata => \RI_32|estado_out\(6),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(8));

-- Location: LCCOMB_X67_Y38_N26
\MUX_A|Saida_32bits_ALU[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[8]~8_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(8))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(8),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(8),
	combout => \MUX_A|Saida_32bits_ALU[8]~8_combout\);

-- Location: LCCOMB_X63_Y36_N0
\PC_32|estado_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[6]~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(6))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux25~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(6),
	datad => \ULA|Mux25~9_combout\,
	combout => \PC_32|estado_out[6]~4_combout\);

-- Location: LCFF_X63_Y36_N1
\PC_32|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[6]~4_combout\,
	sdata => \RI_32|estado_out\(4),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(6));

-- Location: LCCOMB_X62_Y37_N14
\MUX_A|Saida_32bits_ALU[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[6]~6_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(6))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(6),
	datac => \PC_32|estado_out\(6),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[6]~6_combout\);

-- Location: LCCOMB_X70_Y35_N0
\ULA|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~0_combout\ = (\MUX_B|Mux31~0_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\ $ (VCC))) # (!\MUX_B|Mux31~0_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & VCC))
-- \ULA|Add2~1\ = CARRY((\MUX_B|Mux31~0_combout\ & \MUX_A|Saida_32bits_ALU[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => VCC,
	combout => \ULA|Add2~0_combout\,
	cout => \ULA|Add2~1\);

-- Location: LCCOMB_X70_Y35_N2
\ULA|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~2_combout\ = (\MUX_B|Mux30~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|Add2~1\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (!\ULA|Add2~1\)))) # (!\MUX_B|Mux30~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & 
-- (!\ULA|Add2~1\)) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|Add2~1\) # (GND)))))
-- \ULA|Add2~3\ = CARRY((\MUX_B|Mux30~0_combout\ & (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & !\ULA|Add2~1\)) # (!\MUX_B|Mux30~0_combout\ & ((!\ULA|Add2~1\) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux30~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~1\,
	combout => \ULA|Add2~2_combout\,
	cout => \ULA|Add2~3\);

-- Location: LCCOMB_X70_Y35_N4
\ULA|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~4_combout\ = ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ $ (\MUX_B|Mux29~1_combout\ $ (!\ULA|Add2~3\)))) # (GND)
-- \ULA|Add2~5\ = CARRY((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\MUX_B|Mux29~1_combout\) # (!\ULA|Add2~3\))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\MUX_B|Mux29~1_combout\ & !\ULA|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \MUX_B|Mux29~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~3\,
	combout => \ULA|Add2~4_combout\,
	cout => \ULA|Add2~5\);

-- Location: LCCOMB_X70_Y35_N10
\ULA|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~10_combout\ = (\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((\MUX_B|Mux26~1_combout\ & (\ULA|Add2~9\ & VCC)) # (!\MUX_B|Mux26~1_combout\ & (!\ULA|Add2~9\)))) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((\MUX_B|Mux26~1_combout\ & (!\ULA|Add2~9\)) # 
-- (!\MUX_B|Mux26~1_combout\ & ((\ULA|Add2~9\) # (GND)))))
-- \ULA|Add2~11\ = CARRY((\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (!\MUX_B|Mux26~1_combout\ & !\ULA|Add2~9\)) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((!\ULA|Add2~9\) # (!\MUX_B|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datab => \MUX_B|Mux26~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~9\,
	combout => \ULA|Add2~10_combout\,
	cout => \ULA|Add2~11\);

-- Location: LCCOMB_X70_Y35_N12
\ULA|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~12_combout\ = ((\MUX_B|Mux25~1_combout\ $ (\MUX_A|Saida_32bits_ALU[6]~6_combout\ $ (!\ULA|Add2~11\)))) # (GND)
-- \ULA|Add2~13\ = CARRY((\MUX_B|Mux25~1_combout\ & ((\MUX_A|Saida_32bits_ALU[6]~6_combout\) # (!\ULA|Add2~11\))) # (!\MUX_B|Mux25~1_combout\ & (\MUX_A|Saida_32bits_ALU[6]~6_combout\ & !\ULA|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux25~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	datad => VCC,
	cin => \ULA|Add2~11\,
	combout => \ULA|Add2~12_combout\,
	cout => \ULA|Add2~13\);

-- Location: LCCOMB_X70_Y35_N14
\ULA|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~14_combout\ = (\MUX_A|Saida_32bits_ALU[7]~7_combout\ & ((\MUX_B|Mux24~1_combout\ & (\ULA|Add2~13\ & VCC)) # (!\MUX_B|Mux24~1_combout\ & (!\ULA|Add2~13\)))) # (!\MUX_A|Saida_32bits_ALU[7]~7_combout\ & ((\MUX_B|Mux24~1_combout\ & (!\ULA|Add2~13\)) 
-- # (!\MUX_B|Mux24~1_combout\ & ((\ULA|Add2~13\) # (GND)))))
-- \ULA|Add2~15\ = CARRY((\MUX_A|Saida_32bits_ALU[7]~7_combout\ & (!\MUX_B|Mux24~1_combout\ & !\ULA|Add2~13\)) # (!\MUX_A|Saida_32bits_ALU[7]~7_combout\ & ((!\ULA|Add2~13\) # (!\MUX_B|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	datab => \MUX_B|Mux24~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~13\,
	combout => \ULA|Add2~14_combout\,
	cout => \ULA|Add2~15\);

-- Location: LCCOMB_X70_Y35_N16
\ULA|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~16_combout\ = ((\MUX_B|Mux23~1_combout\ $ (\MUX_A|Saida_32bits_ALU[8]~8_combout\ $ (!\ULA|Add2~15\)))) # (GND)
-- \ULA|Add2~17\ = CARRY((\MUX_B|Mux23~1_combout\ & ((\MUX_A|Saida_32bits_ALU[8]~8_combout\) # (!\ULA|Add2~15\))) # (!\MUX_B|Mux23~1_combout\ & (\MUX_A|Saida_32bits_ALU[8]~8_combout\ & !\ULA|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux23~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	datad => VCC,
	cin => \ULA|Add2~15\,
	combout => \ULA|Add2~16_combout\,
	cout => \ULA|Add2~17\);

-- Location: LCCOMB_X70_Y35_N18
\ULA|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~18_combout\ = (\MUX_A|Saida_32bits_ALU[9]~9_combout\ & ((\MUX_B|Mux22~1_combout\ & (\ULA|Add2~17\ & VCC)) # (!\MUX_B|Mux22~1_combout\ & (!\ULA|Add2~17\)))) # (!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & ((\MUX_B|Mux22~1_combout\ & (!\ULA|Add2~17\)) 
-- # (!\MUX_B|Mux22~1_combout\ & ((\ULA|Add2~17\) # (GND)))))
-- \ULA|Add2~19\ = CARRY((\MUX_A|Saida_32bits_ALU[9]~9_combout\ & (!\MUX_B|Mux22~1_combout\ & !\ULA|Add2~17\)) # (!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & ((!\ULA|Add2~17\) # (!\MUX_B|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[9]~9_combout\,
	datab => \MUX_B|Mux22~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~17\,
	combout => \ULA|Add2~18_combout\,
	cout => \ULA|Add2~19\);

-- Location: LCCOMB_X70_Y35_N20
\ULA|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~20_combout\ = ((\MUX_A|Saida_32bits_ALU[10]~10_combout\ $ (\MUX_B|Mux21~1_combout\ $ (!\ULA|Add2~19\)))) # (GND)
-- \ULA|Add2~21\ = CARRY((\MUX_A|Saida_32bits_ALU[10]~10_combout\ & ((\MUX_B|Mux21~1_combout\) # (!\ULA|Add2~19\))) # (!\MUX_A|Saida_32bits_ALU[10]~10_combout\ & (\MUX_B|Mux21~1_combout\ & !\ULA|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	datab => \MUX_B|Mux21~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~19\,
	combout => \ULA|Add2~20_combout\,
	cout => \ULA|Add2~21\);

-- Location: LCCOMB_X70_Y35_N22
\ULA|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~22_combout\ = (\MUX_B|Mux20~1_combout\ & ((\MUX_A|Saida_32bits_ALU[11]~11_combout\ & (\ULA|Add2~21\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & (!\ULA|Add2~21\)))) # (!\MUX_B|Mux20~1_combout\ & ((\MUX_A|Saida_32bits_ALU[11]~11_combout\ 
-- & (!\ULA|Add2~21\)) # (!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & ((\ULA|Add2~21\) # (GND)))))
-- \ULA|Add2~23\ = CARRY((\MUX_B|Mux20~1_combout\ & (!\MUX_A|Saida_32bits_ALU[11]~11_combout\ & !\ULA|Add2~21\)) # (!\MUX_B|Mux20~1_combout\ & ((!\ULA|Add2~21\) # (!\MUX_A|Saida_32bits_ALU[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux20~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[11]~11_combout\,
	datad => VCC,
	cin => \ULA|Add2~21\,
	combout => \ULA|Add2~22_combout\,
	cout => \ULA|Add2~23\);

-- Location: LCCOMB_X70_Y35_N26
\ULA|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~26_combout\ = (\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((\MUX_B|Mux18~1_combout\ & (\ULA|Add2~25\ & VCC)) # (!\MUX_B|Mux18~1_combout\ & (!\ULA|Add2~25\)))) # (!\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((\MUX_B|Mux18~1_combout\ & 
-- (!\ULA|Add2~25\)) # (!\MUX_B|Mux18~1_combout\ & ((\ULA|Add2~25\) # (GND)))))
-- \ULA|Add2~27\ = CARRY((\MUX_A|Saida_32bits_ALU[13]~13_combout\ & (!\MUX_B|Mux18~1_combout\ & !\ULA|Add2~25\)) # (!\MUX_A|Saida_32bits_ALU[13]~13_combout\ & ((!\ULA|Add2~25\) # (!\MUX_B|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[13]~13_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datad => VCC,
	cin => \ULA|Add2~25\,
	combout => \ULA|Add2~26_combout\,
	cout => \ULA|Add2~27\);

-- Location: LCCOMB_X70_Y34_N2
\ULA|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add2~34_combout\ = (\MUX_B|Mux14~0_combout\ & ((\MUX_A|Saida_32bits_ALU[17]~17_combout\ & (\ULA|Add2~33\ & VCC)) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & (!\ULA|Add2~33\)))) # (!\MUX_B|Mux14~0_combout\ & ((\MUX_A|Saida_32bits_ALU[17]~17_combout\ 
-- & (!\ULA|Add2~33\)) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\ULA|Add2~33\) # (GND)))))
-- \ULA|Add2~35\ = CARRY((\MUX_B|Mux14~0_combout\ & (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & !\ULA|Add2~33\)) # (!\MUX_B|Mux14~0_combout\ & ((!\ULA|Add2~33\) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	datad => VCC,
	cin => \ULA|Add2~33\,
	combout => \ULA|Add2~34_combout\,
	cout => \ULA|Add2~35\);

-- Location: LCCOMB_X60_Y35_N16
\ULA|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~2_combout\ = (!\ULA|Mux28~24_combout\ & (!\ULA|ShiftLeft0~40_combout\ & (\ULA|ShiftLeft0~50_combout\ & !\ULA|ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~24_combout\,
	datab => \ULA|ShiftLeft0~40_combout\,
	datac => \ULA|ShiftLeft0~50_combout\,
	datad => \ULA|ShiftLeft0~43_combout\,
	combout => \ULA|Mux13~2_combout\);

-- Location: LCCOMB_X60_Y35_N8
\ULA|ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~79_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~78_combout\) # ((\ULA|ShiftRight0~118_combout\ & \ULA|ShiftRight1~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~118_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~78_combout\,
	datad => \ULA|ShiftRight1~41_combout\,
	combout => \ULA|ShiftRight0~79_combout\);

-- Location: LCCOMB_X60_Y35_N22
\ULA|ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~82_combout\ = (\ULA|ShiftRight0~79_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftRight0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~79_combout\,
	datad => \ULA|ShiftRight0~81_combout\,
	combout => \ULA|ShiftRight0~82_combout\);

-- Location: LCCOMB_X60_Y35_N6
\ULA|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~3_combout\ = (\ULA|Mux9~12_combout\ & (\ULA|Mux9~11_combout\ & ((\ULA|ShiftRight0~82_combout\)))) # (!\ULA|Mux9~12_combout\ & (((\ULA|Mux13~2_combout\)) # (!\ULA|Mux9~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~12_combout\,
	datab => \ULA|Mux9~11_combout\,
	datac => \ULA|Mux13~2_combout\,
	datad => \ULA|ShiftRight0~82_combout\,
	combout => \ULA|Mux13~3_combout\);

-- Location: LCCOMB_X61_Y35_N12
\ULA|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~4_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux13~3_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux13~3_combout\ & (\ULA|ShiftLeft0~111_combout\)) # (!\ULA|Mux13~3_combout\ & ((\ULA|ShiftLeft0~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~10_combout\,
	datab => \ULA|ShiftLeft0~111_combout\,
	datac => \ULA|Mux13~3_combout\,
	datad => \ULA|ShiftLeft0~80_combout\,
	combout => \ULA|Mux13~4_combout\);

-- Location: LCCOMB_X61_Y35_N20
\ULA|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~6_combout\ = (\ULA|Mux13~5_combout\ & (!\ULA|Mux3~24_combout\ & ((\ULA|Mux13~4_combout\)))) # (!\ULA|Mux13~5_combout\ & ((\ULA|Mux3~24_combout\) # ((\ULA|Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux13~5_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \ULA|Add2~36_combout\,
	datad => \ULA|Mux13~4_combout\,
	combout => \ULA|Mux13~6_combout\);

-- Location: LCCOMB_X60_Y35_N14
\ULA|ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~80_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~42_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight1~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~42_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight0~118_combout\,
	datad => \ULA|ShiftRight1~26_combout\,
	combout => \ULA|ShiftRight0~80_combout\);

-- Location: LCCOMB_X62_Y36_N10
\ULA|ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~44_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight1~43_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~27_combout\,
	datac => \ULA|ShiftRight1~43_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~44_combout\);

-- Location: LCCOMB_X60_Y35_N18
\ULA|ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~45_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~119_combout\ & (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftRight1~44_combout\,
	combout => \ULA|ShiftRight1~45_combout\);

-- Location: LCCOMB_X60_Y35_N4
\ULA|ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~48_combout\ = (\ULA|ShiftRight1~45_combout\) # ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight1~47_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftRight1~47_combout\,
	datac => \ULA|ShiftRight0~80_combout\,
	datad => \ULA|ShiftRight1~45_combout\,
	combout => \ULA|ShiftRight1~48_combout\);

-- Location: LCCOMB_X61_Y35_N0
\ULA|resposta~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~83_combout\ = (\MUX_B|Mux13~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(18))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(18),
	datab => \PC_32|estado_out\(18),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux13~0_combout\,
	combout => \ULA|resposta~83_combout\);

-- Location: LCCOMB_X61_Y35_N28
\ULA|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~83_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~36_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~83_combout\,
	datac => \ULA|Mux9~9_combout\,
	datad => \ULA|Add1~36_combout\,
	combout => \ULA|Mux13~0_combout\);

-- Location: LCCOMB_X61_Y35_N18
\ULA|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux13~0_combout\ & ((\ULA|ShiftRight1~48_combout\))) # (!\ULA|Mux13~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~48_combout\,
	datad => \ULA|Mux13~0_combout\,
	combout => \ULA|Mux13~1_combout\);

-- Location: LCCOMB_X61_Y35_N30
\ULA|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~7_combout\ = (\ULA|Mux9~13_combout\ & ((\ULA|Mux9~14_combout\ & ((\ULA|Mux13~1_combout\))) # (!\ULA|Mux9~14_combout\ & (\ULA|Mux13~6_combout\)))) # (!\ULA|Mux9~13_combout\ & (!\ULA|Mux9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~13_combout\,
	datab => \ULA|Mux9~14_combout\,
	datac => \ULA|Mux13~6_combout\,
	datad => \ULA|Mux13~1_combout\,
	combout => \ULA|Mux13~7_combout\);

-- Location: LCCOMB_X61_Y35_N24
\ULA|Mux13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux13~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux13~7_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_A|Saida_32bits_ALU[18]~18_combout\ & ((\MUX_B|Mux13~0_combout\) # (!\ULA|Mux13~7_combout\))) # (!\MUX_A|Saida_32bits_ALU[18]~18_combout\ & 
-- (\MUX_B|Mux13~0_combout\ & !\ULA|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	datab => \MUX_B|Mux13~0_combout\,
	datac => \ULA|Mux9~15_combout\,
	datad => \ULA|Mux13~7_combout\,
	combout => \ULA|Mux13~combout\);

-- Location: LCCOMB_X62_Y34_N26
\ULA|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~7_combout\ = (!\ULA|Mux11~combout\ & (!\ULA|Mux12~combout\ & (!\ULA|Mux8~combout\ & !\ULA|Mux9~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux11~combout\,
	datab => \ULA|Mux12~combout\,
	datac => \ULA|Mux8~combout\,
	datad => \ULA|Mux9~combout\,
	combout => \ULA|Equal0~7_combout\);

-- Location: LCCOMB_X62_Y34_N12
\ULA|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~8_combout\ = (!\ULA|Mux14~combout\ & (!\ULA|Mux13~combout\ & \ULA|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux14~combout\,
	datac => \ULA|Mux13~combout\,
	datad => \ULA|Equal0~7_combout\,
	combout => \ULA|Equal0~8_combout\);

-- Location: LCCOMB_X62_Y34_N14
\ULA|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Equal0~9_combout\ = (\ULA|Equal0~6_combout\ & (!\ULA|Mux31~16_combout\ & (\ULA|Equal0~3_combout\ & \ULA|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Equal0~6_combout\,
	datab => \ULA|Mux31~16_combout\,
	datac => \ULA|Equal0~3_combout\,
	datad => \ULA|Equal0~8_combout\,
	combout => \ULA|Equal0~9_combout\);

-- Location: LCCOMB_X62_Y34_N20
\PC_DESVIOS|PCenable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_DESVIOS|PCenable~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16) & (\ULA|Equal0~10_combout\ & (\ULA|Equal0~9_combout\ & \ULA|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16),
	datab => \ULA|Equal0~10_combout\,
	datac => \ULA|Equal0~9_combout\,
	datad => \ULA|Equal0~2_combout\,
	combout => \PC_DESVIOS|PCenable~0_combout\);

-- Location: LCCOMB_X62_Y34_N16
\PC_DESVIOS|PCenable\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_DESVIOS|PCenable~combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15)) # ((\PC_DESVIOS|PCenable~0_combout\) # (\PC_DESVIOS|PCenable~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15),
	datac => \PC_DESVIOS|PCenable~0_combout\,
	datad => \PC_DESVIOS|PCenable~1_combout\,
	combout => \PC_DESVIOS|PCenable~combout\);

-- Location: LCFF_X61_Y34_N7
\PC_32|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[17]~15_combout\,
	sdata => \RI_32|estado_out\(15),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(17));

-- Location: LCFF_X62_Y32_N9
\REG_A_32|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a17\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(17));

-- Location: LCCOMB_X62_Y32_N8
\MUX_A|Saida_32bits_ALU[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[17]~17_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(17)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(17),
	datac => \REG_A_32|estado_out\(17),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[17]~17_combout\);

-- Location: LCCOMB_X63_Y35_N24
\ULA|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~6_combout\ = (\ULA|Mux3~24_combout\ & ((\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\MUX_B|Mux14~0_combout\) # (!\ULA|Mux9~8_combout\))) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & (\MUX_B|Mux14~0_combout\ $ (\ULA|Mux9~8_combout\))))) # 
-- (!\ULA|Mux3~24_combout\ & (((\ULA|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~24_combout\,
	datab => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	datac => \MUX_B|Mux14~0_combout\,
	datad => \ULA|Mux9~8_combout\,
	combout => \ULA|Mux14~6_combout\);

-- Location: LCCOMB_X63_Y35_N4
\ULA|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~3_combout\ = (!\ULA|ShiftLeft0~43_combout\ & (\ULA|ShiftLeft0~47_combout\ & (\ULA|Mux14~0_combout\ & !\ULA|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~43_combout\,
	datab => \ULA|ShiftLeft0~47_combout\,
	datac => \ULA|Mux14~0_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|Mux14~3_combout\);

-- Location: LCCOMB_X63_Y35_N22
\ULA|ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~74_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~69_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~73_combout\,
	datad => \ULA|ShiftRight0~69_combout\,
	combout => \ULA|ShiftRight0~74_combout\);

-- Location: LCCOMB_X63_Y35_N28
\ULA|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~4_combout\ = (\ULA|Mux9~12_combout\ & (((\ULA|Mux9~11_combout\ & \ULA|ShiftRight0~74_combout\)))) # (!\ULA|Mux9~12_combout\ & ((\ULA|Mux14~3_combout\) # ((!\ULA|Mux9~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~12_combout\,
	datab => \ULA|Mux14~3_combout\,
	datac => \ULA|Mux9~11_combout\,
	datad => \ULA|ShiftRight0~74_combout\,
	combout => \ULA|Mux14~4_combout\);

-- Location: LCCOMB_X63_Y35_N10
\ULA|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~5_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux14~4_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux14~4_combout\ & (\ULA|ShiftLeft0~107_combout\)) # (!\ULA|Mux14~4_combout\ & ((\ULA|ShiftLeft0~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~107_combout\,
	datab => \ULA|Mux9~10_combout\,
	datac => \ULA|ShiftLeft0~76_combout\,
	datad => \ULA|Mux14~4_combout\,
	combout => \ULA|Mux14~5_combout\);

-- Location: LCCOMB_X63_Y35_N14
\ULA|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~7_combout\ = (\ULA|Mux3~24_combout\ & (((!\ULA|Mux14~6_combout\)))) # (!\ULA|Mux3~24_combout\ & ((\ULA|Mux14~6_combout\ & ((\ULA|Mux14~5_combout\))) # (!\ULA|Mux14~6_combout\ & (\ULA|Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~24_combout\,
	datab => \ULA|Add2~34_combout\,
	datac => \ULA|Mux14~6_combout\,
	datad => \ULA|Mux14~5_combout\,
	combout => \ULA|Mux14~7_combout\);

-- Location: LCCOMB_X66_Y36_N2
\ULA|ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~70_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(19),
	datac => \REG_B_32|estado_out\(17),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight0~70_combout\);

-- Location: LCCOMB_X68_Y36_N4
\ULA|ShiftRight1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~30_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight0~72_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~76_combout\) # ((\ULA|ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~76_combout\,
	datab => \ULA|ShiftRight0~70_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight0~72_combout\,
	combout => \ULA|ShiftRight1~30_combout\);

-- Location: LCCOMB_X68_Y36_N2
\ULA|ShiftRight1~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~31_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight1~29_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight1~30_combout\,
	datad => \ULA|ShiftRight1~29_combout\,
	combout => \ULA|ShiftRight1~31_combout\);

-- Location: LCCOMB_X68_Y36_N14
\ULA|ShiftRight1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~88_combout\ = (\ULA|ShiftRight1~31_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftRight1~31_combout\,
	combout => \ULA|ShiftRight1~88_combout\);

-- Location: LCCOMB_X62_Y32_N4
\ULA|resposta~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~82_combout\ = (\MUX_B|Mux14~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(17))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(17),
	datac => \PC_32|estado_out\(17),
	datad => \MUX_B|Mux14~0_combout\,
	combout => \ULA|resposta~82_combout\);

-- Location: LCCOMB_X62_Y32_N28
\ULA|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~1_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & ((!\ULA|resposta~82_combout\))) # (!\ULA|Mux9~9_combout\ & (\ULA|Add1~34_combout\)))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~34_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|resposta~82_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux14~1_combout\);

-- Location: LCCOMB_X62_Y32_N22
\ULA|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~2_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux14~1_combout\ & ((\ULA|ShiftRight1~88_combout\))) # (!\ULA|Mux14~1_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~88_combout\,
	datad => \ULA|Mux14~1_combout\,
	combout => \ULA|Mux14~2_combout\);

-- Location: LCCOMB_X63_Y35_N12
\ULA|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~8_combout\ = (\ULA|Mux9~13_combout\ & ((\ULA|Mux9~14_combout\ & ((\ULA|Mux14~2_combout\))) # (!\ULA|Mux9~14_combout\ & (\ULA|Mux14~7_combout\)))) # (!\ULA|Mux9~13_combout\ & (!\ULA|Mux9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~13_combout\,
	datab => \ULA|Mux9~14_combout\,
	datac => \ULA|Mux14~7_combout\,
	datad => \ULA|Mux14~2_combout\,
	combout => \ULA|Mux14~8_combout\);

-- Location: LCCOMB_X63_Y35_N18
\ULA|Mux14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux14~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux14~8_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_A|Saida_32bits_ALU[17]~17_combout\ & ((\MUX_B|Mux14~0_combout\) # (!\ULA|Mux14~8_combout\))) # (!\MUX_A|Saida_32bits_ALU[17]~17_combout\ & 
-- (\MUX_B|Mux14~0_combout\ & !\ULA|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~15_combout\,
	datab => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	datac => \MUX_B|Mux14~0_combout\,
	datad => \ULA|Mux14~8_combout\,
	combout => \ULA|Mux14~combout\);

-- Location: LCFF_X63_Y35_N19
\REG_ULA|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(17));

-- Location: LCFF_X63_Y35_N27
\RDM_32|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(17));

-- Location: LCCOMB_X63_Y35_N20
\MUX_MEMPARAREG|Saida_32bits[17]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[17]~17_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(17)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(17),
	datac => \RDM_32|estado_out\(17),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[17]~17_combout\);

-- Location: LCFF_X66_Y36_N11
\REG_B_32|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a30\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(30));

-- Location: LCCOMB_X69_Y34_N16
\MUX_B|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux1~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\REG_B_32|estado_out\(30) & 
-- !\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(15),
	datac => \REG_B_32|estado_out\(30),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y34_N22
\ULA|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~12_combout\ = ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (!\REG_A_32|estado_out\(30))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((!\PC_32|estado_out\(30))))) # (!\MUX_B|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(30),
	datab => \PC_32|estado_out\(30),
	datac => \MUX_B|Mux1~0_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|Mux1~12_combout\);

-- Location: LCCOMB_X69_Y34_N14
\ULA|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~4_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux3~10_combout\ & (\ULA|Mux1~12_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Add1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \ULA|Mux1~12_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Add1~60_combout\,
	combout => \ULA|Mux1~4_combout\);

-- Location: LCCOMB_X69_Y37_N0
\ULA|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~10_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight1~87_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\ULA|ShiftRight1~87_combout\ & (\REG_B_32|estado_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~44_combout\,
	datab => \REG_B_32|estado_out\(30),
	datac => \REG_B_32|estado_out\(31),
	datad => \ULA|ShiftRight1~87_combout\,
	combout => \ULA|Mux1~10_combout\);

-- Location: LCCOMB_X69_Y37_N12
\ULA|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~13_combout\ = (\ULA|Mux30~19_combout\ & ((\ULA|Mux1~10_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \ULA|Mux30~19_combout\,
	datad => \ULA|Mux1~10_combout\,
	combout => \ULA|Mux1~13_combout\);

-- Location: LCCOMB_X69_Y34_N24
\ULA|ShiftRight0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~117_combout\ = (\ULA|ShiftRight0~126_combout\ & (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & (!\ULA|ShiftLeft0~40_combout\ & !\ULA|ShiftLeft0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~126_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftLeft0~40_combout\,
	datad => \ULA|ShiftLeft0~43_combout\,
	combout => \ULA|ShiftRight0~117_combout\);

-- Location: LCCOMB_X68_Y34_N20
\ULA|ShiftLeft0~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~164_combout\ = (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~64_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \ULA|ShiftLeft0~93_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftLeft0~64_combout\,
	combout => \ULA|ShiftLeft0~164_combout\);

-- Location: LCCOMB_X66_Y36_N10
\ULA|ShiftLeft0~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~146_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(28))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(28),
	datac => \REG_B_32|estado_out\(30),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~146_combout\);

-- Location: LCCOMB_X70_Y36_N16
\ULA|ShiftLeft0~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~145_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(27)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(29),
	datac => \REG_B_32|estado_out\(27),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftLeft0~145_combout\);

-- Location: LCCOMB_X69_Y34_N20
\ULA|ShiftLeft0~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~147_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~138_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~146_combout\) # ((\ULA|ShiftLeft0~145_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftLeft0~146_combout\,
	datac => \ULA|ShiftLeft0~145_combout\,
	datad => \ULA|ShiftLeft0~138_combout\,
	combout => \ULA|ShiftLeft0~147_combout\);

-- Location: LCCOMB_X69_Y34_N28
\ULA|ShiftLeft0~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~163_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- (\ULA|ShiftLeft0~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datac => \ULA|ShiftLeft0~147_combout\,
	datad => \RI_32|estado_out\(15),
	combout => \ULA|ShiftLeft0~163_combout\);

-- Location: LCCOMB_X69_Y34_N2
\ULA|ShiftLeft0~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~148_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~126_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|ShiftLeft0~126_combout\,
	datad => \ULA|ShiftLeft0~163_combout\,
	combout => \ULA|ShiftLeft0~148_combout\);

-- Location: LCCOMB_X69_Y34_N10
\ULA|ShiftLeft0~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~165_combout\ = (\ULA|ShiftLeft0~148_combout\) # ((!\ULA|ShiftLeft0~45_combout\ & \ULA|ShiftLeft0~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftLeft0~45_combout\,
	datac => \ULA|ShiftLeft0~164_combout\,
	datad => \ULA|ShiftLeft0~148_combout\,
	combout => \ULA|ShiftLeft0~165_combout\);

-- Location: LCCOMB_X69_Y34_N8
\ULA|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~6_combout\ = (\ULA|Mux1~5_combout\ & (((\ULA|ShiftLeft0~165_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\))) # (!\ULA|Mux1~5_combout\ & (\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|ShiftRight0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux1~5_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|ShiftRight0~117_combout\,
	datad => \ULA|ShiftLeft0~165_combout\,
	combout => \ULA|Mux1~6_combout\);

-- Location: LCCOMB_X69_Y34_N26
\ULA|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~7_combout\ = (\MUX_B|Mux1~0_combout\ & ((\MUX_A|Saida_32bits_ALU[30]~30_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & \CONTROLE_ALU|Mux10~3_combout\)))) # (!\MUX_B|Mux1~0_combout\ & 
-- (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (\CONTROLE_ALU|Mux10~3_combout\ & \MUX_A|Saida_32bits_ALU[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datab => \CONTROLE_ALU|Mux10~3_combout\,
	datac => \MUX_B|Mux1~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	combout => \ULA|Mux1~7_combout\);

-- Location: LCCOMB_X69_Y34_N0
\ULA|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~8_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Add2~60_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux1~7_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Add2~60_combout\,
	combout => \ULA|Mux1~8_combout\);

-- Location: LCCOMB_X69_Y34_N6
\ULA|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~9_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\CONTROLE_ALU|Mux7~2_combout\)) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux1~6_combout\)) # (!\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Mux1~6_combout\,
	datad => \ULA|Mux1~8_combout\,
	combout => \ULA|Mux1~9_combout\);

-- Location: LCCOMB_X69_Y34_N4
\ULA|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux1~11_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux1~9_combout\ & ((\ULA|Mux1~13_combout\))) # (!\ULA|Mux1~9_combout\ & (\ULA|Mux1~4_combout\)))) # (!\CONTROLE_ALU|Mux8~2_combout\ & (((\ULA|Mux1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux1~4_combout\,
	datac => \ULA|Mux1~13_combout\,
	datad => \ULA|Mux1~9_combout\,
	combout => \ULA|Mux1~11_combout\);

-- Location: LCFF_X69_Y34_N5
\REG_ULA|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(30));

-- Location: LCCOMB_X62_Y34_N4
\MUX_ORIGPC|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux1~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(30)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux1~11_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \REG_ULA|estado_out\(30),
	combout => \MUX_ORIGPC|Mux1~0_combout\);

-- Location: LCFF_X62_Y34_N5
\PC_32|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux1~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_32|estado_out[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(30));

-- Location: LCCOMB_X69_Y34_N30
\MUX_A|Saida_32bits_ALU[30]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[30]~30_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(30))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(30),
	datac => \PC_32|estado_out\(30),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[30]~30_combout\);

-- Location: LCFF_X66_Y36_N27
\REG_A_32|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a27\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(27));

-- Location: LCCOMB_X66_Y33_N16
\PC_32|estado_out[27]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[27]~25_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(27))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux4~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \REG_ULA|estado_out\(27),
	datad => \ULA|Mux4~13_combout\,
	combout => \PC_32|estado_out[27]~25_combout\);

-- Location: LCFF_X66_Y33_N17
\PC_32|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[27]~25_combout\,
	sdata => \RI_32|estado_out\(25),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(27));

-- Location: LCCOMB_X66_Y36_N16
\MUX_A|Saida_32bits_ALU[27]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[27]~27_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(27))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(27),
	datad => \PC_32|estado_out\(27),
	combout => \MUX_A|Saida_32bits_ALU[27]~27_combout\);

-- Location: LCCOMB_X65_Y35_N4
\ULA|ShiftLeft0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~42_combout\ = (\MUX_A|Saida_32bits_ALU[25]~25_combout\) # ((\MUX_A|Saida_32bits_ALU[27]~27_combout\) # ((\MUX_A|Saida_32bits_ALU[26]~26_combout\) # (\MUX_A|Saida_32bits_ALU[28]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	datab => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	datac => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	datad => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	combout => \ULA|ShiftLeft0~42_combout\);

-- Location: LCFF_X66_Y31_N13
\REG_A_32|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a21\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(21));

-- Location: LCCOMB_X63_Y38_N16
\ULA|ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~60_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|Mux14~0_combout\,
	combout => \ULA|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X62_Y38_N18
\ULA|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~3_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\ULA|ShiftLeft0~45_combout\ & ((\ULA|ShiftLeft0~59_combout\) # (\ULA|ShiftLeft0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~59_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~60_combout\,
	datad => \ULA|ShiftLeft0~45_combout\,
	combout => \ULA|Mux10~3_combout\);

-- Location: LCCOMB_X66_Y34_N18
\ULA|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~4_combout\ = (\ULA|Mux9~11_combout\ & ((\ULA|Mux9~12_combout\ & (\ULA|ShiftRight0~98_combout\)) # (!\ULA|Mux9~12_combout\ & ((\ULA|Mux10~3_combout\))))) # (!\ULA|Mux9~11_combout\ & (((!\ULA|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~98_combout\,
	datab => \ULA|Mux9~11_combout\,
	datac => \ULA|Mux9~12_combout\,
	datad => \ULA|Mux10~3_combout\,
	combout => \ULA|Mux10~4_combout\);

-- Location: LCCOMB_X66_Y34_N28
\ULA|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~5_combout\ = (\ULA|Mux9~10_combout\ & (((\ULA|Mux10~4_combout\)))) # (!\ULA|Mux9~10_combout\ & ((\ULA|Mux10~4_combout\ & ((\ULA|ShiftLeft0~122_combout\))) # (!\ULA|Mux10~4_combout\ & (\ULA|ShiftLeft0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~90_combout\,
	datab => \ULA|ShiftLeft0~122_combout\,
	datac => \ULA|Mux9~10_combout\,
	datad => \ULA|Mux10~4_combout\,
	combout => \ULA|Mux10~5_combout\);

-- Location: LCCOMB_X66_Y34_N14
\ULA|Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~6_combout\ = (\ULA|Mux10~2_combout\ & ((\ULA|Mux3~24_combout\) # ((\ULA|Mux10~5_combout\)))) # (!\ULA|Mux10~2_combout\ & (!\ULA|Mux3~24_combout\ & (\ULA|Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux10~2_combout\,
	datab => \ULA|Mux3~24_combout\,
	datac => \ULA|Add2~42_combout\,
	datad => \ULA|Mux10~5_combout\,
	combout => \ULA|Mux10~6_combout\);

-- Location: LCCOMB_X68_Y36_N8
\ULA|ShiftRight1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~69_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight0~75_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~75_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight0~72_combout\,
	combout => \ULA|ShiftRight1~69_combout\);

-- Location: LCCOMB_X66_Y33_N30
\ULA|ShiftRight1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~70_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\REG_B_32|estado_out\(31))))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\REG_B_32|estado_out\(31)))) # 
-- (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~25_combout\,
	datab => \REG_B_32|estado_out\(31),
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight1~70_combout\);

-- Location: LCCOMB_X68_Y36_N18
\ULA|ShiftRight1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~71_combout\ = (\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight1~69_combout\) # ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftRight1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \ULA|ShiftRight1~69_combout\,
	datad => \ULA|ShiftRight1~70_combout\,
	combout => \ULA|ShiftRight1~71_combout\);

-- Location: LCCOMB_X68_Y36_N24
\ULA|ShiftRight1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~89_combout\ = (\ULA|ShiftRight1~71_combout\) # ((\RI_32|estado_out\(15) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datad => \ULA|ShiftRight1~71_combout\,
	combout => \ULA|ShiftRight1~89_combout\);

-- Location: LCCOMB_X68_Y36_N28
\ULA|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux9~9_combout\ & (!\ULA|resposta~86_combout\)) # (!\ULA|Mux9~9_combout\ & ((\ULA|Add1~42_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~86_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~42_combout\,
	datad => \ULA|Mux9~9_combout\,
	combout => \ULA|Mux10~0_combout\);

-- Location: LCCOMB_X67_Y36_N6
\ULA|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux10~0_combout\ & ((\ULA|ShiftRight1~89_combout\))) # (!\ULA|Mux10~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \ULA|ShiftRight1~89_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \ULA|Mux10~0_combout\,
	combout => \ULA|Mux10~1_combout\);

-- Location: LCCOMB_X66_Y34_N12
\ULA|Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~7_combout\ = (\ULA|Mux9~14_combout\ & (\ULA|Mux9~13_combout\ & ((\ULA|Mux10~1_combout\)))) # (!\ULA|Mux9~14_combout\ & (((\ULA|Mux10~6_combout\)) # (!\ULA|Mux9~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~14_combout\,
	datab => \ULA|Mux9~13_combout\,
	datac => \ULA|Mux10~6_combout\,
	datad => \ULA|Mux10~1_combout\,
	combout => \ULA|Mux10~7_combout\);

-- Location: LCCOMB_X66_Y34_N10
\ULA|Mux10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux10~combout\ = (\ULA|Mux9~15_combout\ & (((\ULA|Mux10~7_combout\)))) # (!\ULA|Mux9~15_combout\ & ((\MUX_B|Mux10~0_combout\ & ((\MUX_A|Saida_32bits_ALU[21]~21_combout\) # (!\ULA|Mux10~7_combout\))) # (!\MUX_B|Mux10~0_combout\ & 
-- (\MUX_A|Saida_32bits_ALU[21]~21_combout\ & !\ULA|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux10~0_combout\,
	datab => \ULA|Mux9~15_combout\,
	datac => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	datad => \ULA|Mux10~7_combout\,
	combout => \ULA|Mux10~combout\);

-- Location: LCCOMB_X61_Y34_N20
\PC_32|estado_out[21]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[21]~19_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(21))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(21),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux10~combout\,
	combout => \PC_32|estado_out[21]~19_combout\);

-- Location: LCFF_X61_Y34_N21
\PC_32|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[21]~19_combout\,
	sdata => \RI_32|estado_out\(19),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(21));

-- Location: LCCOMB_X66_Y31_N12
\MUX_A|Saida_32bits_ALU[21]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[21]~21_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(21))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(21),
	datad => \PC_32|estado_out\(21),
	combout => \MUX_A|Saida_32bits_ALU[21]~21_combout\);

-- Location: LCCOMB_X66_Y31_N4
\ULA|ShiftLeft0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~41_combout\ = (\MUX_A|Saida_32bits_ALU[23]~23_combout\) # ((\MUX_A|Saida_32bits_ALU[22]~22_combout\) # ((\MUX_A|Saida_32bits_ALU[24]~24_combout\) # (\MUX_A|Saida_32bits_ALU[21]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	datab => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	datac => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	datad => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	combout => \ULA|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X65_Y35_N14
\ULA|ShiftLeft0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~43_combout\ = (\MUX_A|Saida_32bits_ALU[29]~29_combout\) # ((\MUX_A|Saida_32bits_ALU[30]~30_combout\) # ((\ULA|ShiftLeft0~42_combout\) # (\ULA|ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	datab => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	datac => \ULA|ShiftLeft0~42_combout\,
	datad => \ULA|ShiftLeft0~41_combout\,
	combout => \ULA|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X65_Y35_N12
\ULA|ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~45_combout\ = (\ULA|ShiftLeft0~43_combout\) # (\ULA|ShiftLeft0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ULA|ShiftLeft0~43_combout\,
	datad => \ULA|ShiftLeft0~40_combout\,
	combout => \ULA|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X66_Y33_N0
\ULA|ShiftRight0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~108_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~39_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \ULA|ShiftRight0~118_combout\,
	datac => \ULA|ShiftRight1~43_combout\,
	datad => \ULA|ShiftRight0~39_combout\,
	combout => \ULA|ShiftRight0~108_combout\);

-- Location: LCCOMB_X66_Y33_N14
\ULA|ShiftRight0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~109_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~108_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~119_combout\,
	datac => \ULA|ShiftRight1~57_combout\,
	datad => \ULA|ShiftRight0~108_combout\,
	combout => \ULA|ShiftRight0~109_combout\);

-- Location: LCCOMB_X69_Y36_N10
\ULA|ShiftRight0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~120_combout\ = (\MUX_B|Mux14~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(2),
	datac => \PC_32|estado_out\(2),
	datad => \MUX_B|Mux14~1_combout\,
	combout => \ULA|ShiftRight0~120_combout\);

-- Location: LCCOMB_X65_Y34_N22
\ULA|ShiftRight1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~62_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \REG_B_32|estado_out\(19),
	datac => \REG_B_32|estado_out\(21),
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~62_combout\);

-- Location: LCCOMB_X65_Y33_N16
\ULA|ShiftRight0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~106_combout\ = (\ULA|ShiftRight0~120_combout\) # ((\ULA|ShiftRight0~119_combout\ & ((\ULA|ShiftRight1~58_combout\) # (\ULA|ShiftRight1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \ULA|ShiftRight1~58_combout\,
	datac => \ULA|ShiftRight0~120_combout\,
	datad => \ULA|ShiftRight1~62_combout\,
	combout => \ULA|ShiftRight0~106_combout\);

-- Location: LCCOMB_X62_Y36_N12
\ULA|ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~53_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux15~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux15~1_combout\,
	datad => \MUX_B|Mux16~1_combout\,
	combout => \ULA|ShiftRight1~53_combout\);

-- Location: LCCOMB_X65_Y33_N6
\ULA|ShiftRight0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~107_combout\ = (\ULA|ShiftRight0~106_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~55_combout\) # (\ULA|ShiftRight1~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftRight1~55_combout\,
	datac => \ULA|ShiftRight0~106_combout\,
	datad => \ULA|ShiftRight1~53_combout\,
	combout => \ULA|ShiftRight0~107_combout\);

-- Location: LCCOMB_X65_Y33_N30
\ULA|ShiftRight0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~114_combout\ = (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~109_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~107_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftRight0~109_combout\,
	datad => \ULA|ShiftRight0~107_combout\,
	combout => \ULA|ShiftRight0~114_combout\);

-- Location: LCCOMB_X65_Y33_N0
\ULA|Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~12_combout\ = (\MUX_B|Mux0~0_combout\ & (((!\ULA|ShiftLeft0~45_combout\ & \ULA|ShiftRight0~114_combout\)) # (!\ULA|Mux31~5_combout\))) # (!\MUX_B|Mux0~0_combout\ & (!\ULA|ShiftLeft0~45_combout\ & ((\ULA|ShiftRight0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \ULA|ShiftLeft0~45_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftRight0~114_combout\,
	combout => \ULA|Mux16~12_combout\);

-- Location: LCCOMB_X65_Y33_N18
\ULA|Mux16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~16_combout\ = (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux16~12_combout\ & ((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0)) # (!\CONTROLE_ALU|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~3_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \ULA|Mux16~12_combout\,
	combout => \ULA|Mux16~16_combout\);

-- Location: LCCOMB_X65_Y37_N4
\ULA|Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~7_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[15]~15_combout\ & ((\MUX_B|Mux16~1_combout\) # (!\ULA|Mux3~10_combout\))) # 
-- (!\MUX_A|Saida_32bits_ALU[15]~15_combout\ & (\MUX_B|Mux16~1_combout\ $ (\ULA|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	datab => \MUX_B|Mux16~1_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux16~7_combout\);

-- Location: LCCOMB_X65_Y33_N28
\ULA|ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~97_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~158_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|ShiftLeft0~96_combout\,
	datad => \ULA|ShiftLeft0~158_combout\,
	combout => \ULA|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X65_Y33_N2
\ULA|Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~8_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux16~7_combout\ & (\ULA|Mux16~15_combout\)) # (!\ULA|Mux16~7_combout\ & ((\ULA|ShiftLeft0~97_combout\))))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux16~15_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux16~7_combout\,
	datad => \ULA|ShiftLeft0~97_combout\,
	combout => \ULA|Mux16~8_combout\);

-- Location: LCCOMB_X65_Y33_N14
\ULA|Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~11_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (((\CONTROLE_ALU|Mux8~2_combout\) # (\ULA|Mux16~8_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux16~10_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux16~10_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \CONTROLE_ALU|Mux8~2_combout\,
	datad => \ULA|Mux16~8_combout\,
	combout => \ULA|Mux16~11_combout\);

-- Location: LCFF_X66_Y37_N21
\REG_A_32|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(15));

-- Location: LCCOMB_X66_Y37_N20
\ULA|Mux16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~14_combout\ = (\MUX_B|Mux16~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux16~1_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(15),
	datad => \PC_32|estado_out\(15),
	combout => \ULA|Mux16~14_combout\);

-- Location: LCCOMB_X65_Y33_N22
\ULA|Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~6_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux3~10_combout\ & (!\ULA|Mux16~14_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \ULA|Mux16~14_combout\,
	datac => \ULA|Add1~30_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux16~6_combout\);

-- Location: LCCOMB_X65_Y33_N10
\ULA|Mux16~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux16~13_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux16~11_combout\ & (\ULA|Mux16~16_combout\)) # (!\ULA|Mux16~11_combout\ & ((\ULA|Mux16~6_combout\))))) # (!\CONTROLE_ALU|Mux8~2_combout\ & (((\ULA|Mux16~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux16~16_combout\,
	datac => \ULA|Mux16~11_combout\,
	datad => \ULA|Mux16~6_combout\,
	combout => \ULA|Mux16~13_combout\);

-- Location: LCFF_X65_Y33_N11
\REG_ULA|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux16~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(15));

-- Location: LCCOMB_X63_Y32_N6
\MUX_MEMPARAREG|Saida_32bits[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[15]~15_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(15),
	datab => \REG_ULA|estado_out\(15),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[15]~15_combout\);

-- Location: LCFF_X67_Y36_N27
\REG_B_32|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a23\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(23));

-- Location: LCFF_X65_Y37_N17
\RDM_32|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(14));

-- Location: LCFF_X63_Y34_N23
\REG_ULA|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(14));

-- Location: LCCOMB_X65_Y37_N18
\MUX_MEMPARAREG|Saida_32bits[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[14]~14_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(14))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDM_32|estado_out\(14),
	datac => \REG_ULA|estado_out\(14),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[14]~14_combout\);

-- Location: LCFF_X67_Y36_N19
\REG_B_32|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a26\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(26));

-- Location: LCCOMB_X67_Y36_N18
\ULA|ShiftRight1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~24_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(28)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(26),
	datad => \REG_B_32|estado_out\(28),
	combout => \ULA|ShiftRight1~24_combout\);

-- Location: LCCOMB_X67_Y34_N8
\ULA|ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~75_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~24_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight1~24_combout\,
	datad => \ULA|ShiftRight0~38_combout\,
	combout => \ULA|ShiftRight0~75_combout\);

-- Location: LCCOMB_X68_Y34_N4
\ULA|ShiftRight0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~97_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~96_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \ULA|ShiftRight0~96_combout\,
	datad => \ULA|ShiftRight0~75_combout\,
	combout => \ULA|ShiftRight0~97_combout\);

-- Location: LCCOMB_X67_Y33_N14
\ULA|resposta~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~79_combout\ = (\MUX_B|Mux18~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(13)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(13),
	datab => \REG_A_32|estado_out\(13),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux18~1_combout\,
	combout => \ULA|resposta~79_combout\);

-- Location: LCCOMB_X67_Y33_N20
\ULA|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~79_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~26_combout\))))) # (!\ULA|Mux28~25_combout\ & (!\ULA|Mux28~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|Mux28~12_combout\,
	datac => \ULA|resposta~79_combout\,
	datad => \ULA|Add1~26_combout\,
	combout => \ULA|Mux18~0_combout\);

-- Location: LCCOMB_X67_Y33_N6
\ULA|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux18~0_combout\ & ((\ULA|ShiftRight1~93_combout\))) # (!\ULA|Mux18~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Mux18~0_combout\,
	datad => \ULA|ShiftRight1~93_combout\,
	combout => \ULA|Mux18~1_combout\);

-- Location: LCCOMB_X63_Y34_N20
\ULA|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~2_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|resposta~79_combout\ & (!\ULA|Mux28~9_combout\))) # (!\ULA|Mux28~8_combout\ & (((\ULA|Mux28~9_combout\) # (\ULA|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~79_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Add2~26_combout\,
	combout => \ULA|Mux18~2_combout\);

-- Location: LCCOMB_X63_Y38_N14
\ULA|ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~90_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~75_combout\) # ((\ULA|ShiftLeft0~74_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~75_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~89_combout\,
	datad => \ULA|ShiftLeft0~74_combout\,
	combout => \ULA|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X62_Y38_N0
\ULA|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~157_combout\)) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~157_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~90_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux18~3_combout\);

-- Location: LCCOMB_X62_Y38_N12
\ULA|Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~5_combout\ = (\ULA|Mux18~4_combout\ & ((\ULA|Mux18~3_combout\) # ((!\ULA|Mux28~7_combout\)))) # (!\ULA|Mux18~4_combout\ & (((\ULA|ShiftRight0~113_combout\ & \ULA|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux18~4_combout\,
	datab => \ULA|Mux18~3_combout\,
	datac => \ULA|ShiftRight0~113_combout\,
	datad => \ULA|Mux28~7_combout\,
	combout => \ULA|Mux18~5_combout\);

-- Location: LCCOMB_X63_Y34_N30
\ULA|Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~6_combout\ = (\ULA|Mux28~9_combout\ & ((\ULA|Mux18~2_combout\ & ((\ULA|Mux18~5_combout\))) # (!\ULA|Mux18~2_combout\ & (\ULA|resposta~80_combout\)))) # (!\ULA|Mux28~9_combout\ & (((\ULA|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~80_combout\,
	datab => \ULA|Mux28~9_combout\,
	datac => \ULA|Mux18~2_combout\,
	datad => \ULA|Mux18~5_combout\,
	combout => \ULA|Mux18~6_combout\);

-- Location: LCCOMB_X63_Y34_N28
\ULA|Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~7_combout\ = (\ULA|Mux22~0_combout\ & ((\ULA|Mux22~1_combout\ & (\ULA|Mux18~1_combout\)) # (!\ULA|Mux22~1_combout\ & ((\ULA|Mux18~6_combout\))))) # (!\ULA|Mux22~0_combout\ & (!\ULA|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~0_combout\,
	datab => \ULA|Mux22~1_combout\,
	datac => \ULA|Mux18~1_combout\,
	datad => \ULA|Mux18~6_combout\,
	combout => \ULA|Mux18~7_combout\);

-- Location: LCCOMB_X63_Y34_N6
\ULA|Mux18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux18~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux18~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux18~7_combout\ & (\ULA|ShiftRight0~100_combout\)) # (!\ULA|Mux18~7_combout\ & ((\ULA|ShiftRight0~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~100_combout\,
	datab => \ULA|Mux28~11_combout\,
	datac => \ULA|ShiftRight0~97_combout\,
	datad => \ULA|Mux18~7_combout\,
	combout => \ULA|Mux18~combout\);

-- Location: LCFF_X63_Y34_N7
\REG_ULA|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(13));

-- Location: LCCOMB_X63_Y31_N20
\MUX_MEMPARAREG|Saida_32bits[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[13]~13_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(13))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(13),
	datac => \REG_ULA|estado_out\(13),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[13]~13_combout\);

-- Location: LCCOMB_X68_Y35_N28
\REG_B_32|estado_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG_B_32|estado_out[5]~feeder_combout\ = \BREG|bregfile_rtl_1|auto_generated|ram_block1a5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BREG|bregfile_rtl_1|auto_generated|ram_block1a5\,
	combout => \REG_B_32|estado_out[5]~feeder_combout\);

-- Location: LCFF_X68_Y35_N29
\REG_B_32|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \REG_B_32|estado_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(5));

-- Location: LCFF_X66_Y38_N5
\RI_32|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(10));

-- Location: LCCOMB_X66_Y38_N12
\MUX_B|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux19~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(12)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(12),
	datad => \RI_32|estado_out\(12),
	combout => \MUX_B|Mux19~0_combout\);

-- Location: LCCOMB_X66_Y38_N2
\MUX_B|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux19~1_combout\ = (\MUX_B|Mux19~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(10),
	datad => \MUX_B|Mux19~0_combout\,
	combout => \MUX_B|Mux19~1_combout\);

-- Location: LCCOMB_X61_Y38_N12
\ULA|ShiftRight0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~31_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux16~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux17~1_combout\))))) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\MUX_A|Saida_32bits_ALU[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux16~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux17~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight0~31_combout\);

-- Location: LCCOMB_X61_Y38_N14
\ULA|ShiftRight0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~32_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\ULA|ShiftRight0~31_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftRight0~31_combout\ & (\MUX_B|Mux18~1_combout\)) # (!\ULA|ShiftRight0~31_combout\ & 
-- ((\MUX_B|Mux19~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux18~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux19~1_combout\,
	datad => \ULA|ShiftRight0~31_combout\,
	combout => \ULA|ShiftRight0~32_combout\);

-- Location: LCCOMB_X69_Y36_N6
\ULA|ShiftRight0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~94_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~47_combout\) # ((\MUX_B|Mux15~1_combout\ & \ULA|ShiftLeft0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux15~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~47_combout\,
	datad => \ULA|ShiftLeft0~155_combout\,
	combout => \ULA|ShiftRight0~94_combout\);

-- Location: LCCOMB_X61_Y38_N2
\ULA|ShiftRight0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~95_combout\ = (\ULA|ShiftRight0~94_combout\) # ((!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~32_combout\,
	datad => \ULA|ShiftRight0~94_combout\,
	combout => \ULA|ShiftRight0~95_combout\);

-- Location: LCCOMB_X63_Y34_N16
\ULA|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~2_combout\ = (\MUX_A|Saida_32bits_ALU[12]~12_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_B|Mux19~1_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_A|Saida_32bits_ALU[12]~12_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_B|Mux19~1_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	datab => \MUX_B|Mux19~1_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux28~8_combout\,
	combout => \ULA|Mux19~2_combout\);

-- Location: LCCOMB_X65_Y31_N20
\ULA|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~4_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[12]~12_combout\ $ (\MUX_B|Mux19~1_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[12]~12_combout\ & !\MUX_B|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	datab => \MUX_B|Mux19~1_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux19~4_combout\);

-- Location: LCCOMB_X65_Y38_N22
\ULA|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~3_combout\ = (\ULA|Mux31~5_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftLeft0~55_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~87_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftLeft0~55_combout\,
	combout => \ULA|Mux19~3_combout\);

-- Location: LCCOMB_X65_Y38_N20
\ULA|Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~5_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux19~4_combout\ & ((\ULA|Mux19~3_combout\))) # (!\ULA|Mux19~4_combout\ & (\ULA|ShiftRight0~112_combout\)))) # (!\ULA|Mux28~7_combout\ & (((\ULA|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|ShiftRight0~112_combout\,
	datac => \ULA|Mux19~4_combout\,
	datad => \ULA|Mux19~3_combout\,
	combout => \ULA|Mux19~5_combout\);

-- Location: LCCOMB_X63_Y34_N14
\ULA|Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~6_combout\ = (\ULA|Mux28~8_combout\ & (((\ULA|Mux19~2_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux19~2_combout\ & ((\ULA|Mux19~5_combout\))) # (!\ULA|Mux19~2_combout\ & (\ULA|Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add2~24_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux19~2_combout\,
	datad => \ULA|Mux19~5_combout\,
	combout => \ULA|Mux19~6_combout\);

-- Location: LCCOMB_X62_Y32_N16
\ULA|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~78_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~24_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~78_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Mux28~12_combout\,
	datad => \ULA|Add1~24_combout\,
	combout => \ULA|Mux19~0_combout\);

-- Location: LCCOMB_X62_Y32_N10
\ULA|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux19~0_combout\ & ((\ULA|ShiftRight1~92_combout\))) # (!\ULA|Mux19~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Mux19~0_combout\,
	datad => \ULA|ShiftRight1~92_combout\,
	combout => \ULA|Mux19~1_combout\);

-- Location: LCCOMB_X63_Y34_N12
\ULA|Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~7_combout\ = (\ULA|Mux22~0_combout\ & ((\ULA|Mux22~1_combout\ & ((\ULA|Mux19~1_combout\))) # (!\ULA|Mux22~1_combout\ & (\ULA|Mux19~6_combout\)))) # (!\ULA|Mux22~0_combout\ & (!\ULA|Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~0_combout\,
	datab => \ULA|Mux22~1_combout\,
	datac => \ULA|Mux19~6_combout\,
	datad => \ULA|Mux19~1_combout\,
	combout => \ULA|Mux19~7_combout\);

-- Location: LCCOMB_X63_Y34_N26
\ULA|Mux19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux19~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux19~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux19~7_combout\ & (\ULA|ShiftRight0~95_combout\)) # (!\ULA|Mux19~7_combout\ & ((\ULA|ShiftRight0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|ShiftRight0~95_combout\,
	datac => \ULA|ShiftRight0~91_combout\,
	datad => \ULA|Mux19~7_combout\,
	combout => \ULA|Mux19~combout\);

-- Location: LCFF_X63_Y34_N27
\REG_ULA|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(12));

-- Location: LCCOMB_X63_Y31_N18
\MUX_MEMPARAREG|Saida_32bits[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[12]~12_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(12))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDM_32|estado_out\(12),
	datac => \REG_ULA|estado_out\(12),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[12]~12_combout\);

-- Location: LCFF_X67_Y36_N15
\REG_B_32|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a22\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(22));

-- Location: LCFF_X67_Y35_N31
\RI_32|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(12));

-- Location: LCCOMB_X68_Y35_N2
\MUX_B|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux17~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (\RI_32|estado_out\(14))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- ((\REG_B_32|estado_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datab => \RI_32|estado_out\(14),
	datac => \REG_B_32|estado_out\(14),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	combout => \MUX_B|Mux17~0_combout\);

-- Location: LCCOMB_X67_Y35_N30
\MUX_B|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux17~1_combout\ = (\MUX_B|Mux17~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(12),
	datad => \MUX_B|Mux17~0_combout\,
	combout => \MUX_B|Mux17~1_combout\);

-- Location: LCCOMB_X62_Y36_N24
\ULA|ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~51_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux17~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux19~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux17~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~51_combout\);

-- Location: LCCOMB_X62_Y36_N22
\ULA|ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~52_combout\ = (\ULA|ShiftRight1~51_combout\) # ((!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \ULA|ShiftRight1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight1~51_combout\,
	datad => \ULA|ShiftRight1~37_combout\,
	combout => \ULA|ShiftRight1~52_combout\);

-- Location: LCCOMB_X62_Y36_N26
\ULA|ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~83_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~53_combout\) # ((\ULA|ShiftRight1~55_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~53_combout\,
	datab => \ULA|ShiftRight1~55_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight1~52_combout\,
	combout => \ULA|ShiftRight0~83_combout\);

-- Location: LCCOMB_X65_Y31_N28
\ULA|resposta~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~77_combout\ = (\MUX_B|Mux20~1_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(11))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(11),
	datac => \MUX_B|Mux20~1_combout\,
	datad => \PC_32|estado_out\(11),
	combout => \ULA|resposta~77_combout\);

-- Location: LCCOMB_X63_Y33_N18
\ULA|ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~81_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~52_combout\,
	combout => \ULA|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X63_Y33_N20
\ULA|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~3_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~81_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftLeft0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~84_combout\,
	datad => \ULA|ShiftLeft0~81_combout\,
	combout => \ULA|Mux20~3_combout\);

-- Location: LCCOMB_X63_Y33_N14
\ULA|Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~5_combout\ = (\ULA|Mux20~4_combout\ & (((\ULA|Mux20~3_combout\) # (!\ULA|Mux28~7_combout\)))) # (!\ULA|Mux20~4_combout\ & (\ULA|ShiftRight0~125_combout\ & ((\ULA|Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux20~4_combout\,
	datab => \ULA|ShiftRight0~125_combout\,
	datac => \ULA|Mux20~3_combout\,
	datad => \ULA|Mux28~7_combout\,
	combout => \ULA|Mux20~5_combout\);

-- Location: LCCOMB_X63_Y33_N12
\ULA|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~2_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|resposta~76_combout\ & (!\ULA|Mux28~9_combout\))) # (!\ULA|Mux28~8_combout\ & (((\ULA|Mux28~9_combout\) # (\ULA|Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~76_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Add2~22_combout\,
	combout => \ULA|Mux20~2_combout\);

-- Location: LCCOMB_X63_Y33_N8
\ULA|Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~6_combout\ = (\ULA|Mux28~9_combout\ & ((\ULA|Mux20~2_combout\ & ((\ULA|Mux20~5_combout\))) # (!\ULA|Mux20~2_combout\ & (\ULA|resposta~77_combout\)))) # (!\ULA|Mux28~9_combout\ & (((\ULA|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~9_combout\,
	datab => \ULA|resposta~77_combout\,
	datac => \ULA|Mux20~5_combout\,
	datad => \ULA|Mux20~2_combout\,
	combout => \ULA|Mux20~6_combout\);

-- Location: LCCOMB_X63_Y34_N10
\ULA|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~0_combout\ = (\ULA|Mux28~11_combout\ & ((!\ULA|Mux9~8_combout\) # (!\CONTROLE_ALU|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux9~8_combout\,
	datad => \ULA|Mux28~11_combout\,
	combout => \ULA|Mux22~0_combout\);

-- Location: LCCOMB_X63_Y33_N22
\ULA|Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~7_combout\ = (\ULA|Mux22~1_combout\ & (\ULA|Mux20~1_combout\ & ((\ULA|Mux22~0_combout\)))) # (!\ULA|Mux22~1_combout\ & (((\ULA|Mux20~6_combout\) # (!\ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux20~1_combout\,
	datab => \ULA|Mux22~1_combout\,
	datac => \ULA|Mux20~6_combout\,
	datad => \ULA|Mux22~0_combout\,
	combout => \ULA|Mux20~7_combout\);

-- Location: LCCOMB_X63_Y33_N0
\ULA|Mux20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux20~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux20~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux20~7_combout\ & ((\ULA|ShiftRight0~83_combout\))) # (!\ULA|Mux20~7_combout\ & (\ULA|ShiftRight0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~87_combout\,
	datab => \ULA|Mux28~11_combout\,
	datac => \ULA|ShiftRight0~83_combout\,
	datad => \ULA|Mux20~7_combout\,
	combout => \ULA|Mux20~combout\);

-- Location: LCFF_X63_Y33_N1
\REG_ULA|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(11));

-- Location: LCFF_X63_Y33_N17
\RDM_32|estado_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(11));

-- Location: LCCOMB_X63_Y33_N26
\MUX_MEMPARAREG|Saida_32bits[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[11]~11_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(11)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datab => \REG_ULA|estado_out\(11),
	datac => \RDM_32|estado_out\(11),
	combout => \MUX_MEMPARAREG|Saida_32bits[11]~11_combout\);

-- Location: LCFF_X67_Y36_N25
\REG_B_32|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a20\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(20));

-- Location: LCFF_X68_Y35_N5
\RI_32|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(15));

-- Location: LCCOMB_X68_Y35_N4
\MUX_B|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux14~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \RI_32|estado_out\(15),
	combout => \MUX_B|Mux14~1_combout\);

-- Location: LCCOMB_X60_Y35_N28
\ULA|ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~81_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~80_combout\) # ((\ULA|ShiftRight0~119_combout\ & \ULA|ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~119_combout\,
	datab => \MUX_B|Mux14~1_combout\,
	datac => \ULA|ShiftRight0~80_combout\,
	datad => \ULA|ShiftRight1~44_combout\,
	combout => \ULA|ShiftRight0~81_combout\);

-- Location: LCCOMB_X61_Y33_N24
\PC_32|estado_out[10]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[10]~8_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(10))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux21~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(10),
	datab => \ULA|Mux21~combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	combout => \PC_32|estado_out[10]~8_combout\);

-- Location: LCFF_X61_Y33_N25
\PC_32|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[10]~8_combout\,
	sdata => \RI_32|estado_out\(8),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(10));

-- Location: LCCOMB_X60_Y36_N22
\ULA|resposta~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~75_combout\ = (\MUX_B|Mux21~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(10))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(10),
	datab => \PC_32|estado_out\(10),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux21~1_combout\,
	combout => \ULA|resposta~75_combout\);

-- Location: LCCOMB_X60_Y36_N28
\ULA|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~0_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~75_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~20_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~75_combout\,
	datac => \ULA|Mux28~12_combout\,
	datad => \ULA|Add1~20_combout\,
	combout => \ULA|Mux21~0_combout\);

-- Location: LCCOMB_X60_Y36_N30
\ULA|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~1_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux21~0_combout\ & ((\ULA|ShiftRight1~82_combout\))) # (!\ULA|Mux21~0_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~82_combout\,
	datad => \ULA|Mux21~0_combout\,
	combout => \ULA|Mux21~1_combout\);

-- Location: LCFF_X60_Y35_N1
\REG_A_32|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a10\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(10));

-- Location: LCCOMB_X60_Y35_N26
\MUX_A|Saida_32bits_ALU[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[10]~10_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(10))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(10),
	datac => \PC_32|estado_out\(10),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \MUX_A|Saida_32bits_ALU[10]~10_combout\);

-- Location: LCCOMB_X60_Y36_N8
\ULA|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~4_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (!\ULA|Mux3~10_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux3~10_combout\ & (\MUX_A|Saida_32bits_ALU[10]~10_combout\ $ (\MUX_B|Mux21~1_combout\))) # (!\ULA|Mux3~10_combout\ & 
-- (!\MUX_A|Saida_32bits_ALU[10]~10_combout\ & !\MUX_B|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	datad => \MUX_B|Mux21~1_combout\,
	combout => \ULA|Mux21~4_combout\);

-- Location: LCCOMB_X60_Y36_N14
\ULA|ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~77_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftLeft0~50_combout\ & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~50_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X60_Y36_N18
\ULA|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~3_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~77_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftLeft0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~80_combout\,
	datac => \ULA|ShiftLeft0~77_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux21~3_combout\);

-- Location: LCCOMB_X60_Y36_N26
\ULA|Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~5_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux21~4_combout\ & ((\ULA|Mux21~3_combout\))) # (!\ULA|Mux21~4_combout\ & (\ULA|ShiftRight0~111_combout\)))) # (!\ULA|Mux28~7_combout\ & (((\ULA|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~111_combout\,
	datab => \ULA|Mux28~7_combout\,
	datac => \ULA|Mux21~4_combout\,
	datad => \ULA|Mux21~3_combout\,
	combout => \ULA|Mux21~5_combout\);

-- Location: LCCOMB_X60_Y36_N20
\ULA|Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~6_combout\ = (\ULA|Mux21~2_combout\ & ((\ULA|Mux28~8_combout\) # ((\ULA|Mux21~5_combout\)))) # (!\ULA|Mux21~2_combout\ & (!\ULA|Mux28~8_combout\ & (\ULA|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux21~2_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Add2~20_combout\,
	datad => \ULA|Mux21~5_combout\,
	combout => \ULA|Mux21~6_combout\);

-- Location: LCCOMB_X60_Y36_N6
\ULA|Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~7_combout\ = (\ULA|Mux22~1_combout\ & (\ULA|Mux21~1_combout\ & ((\ULA|Mux22~0_combout\)))) # (!\ULA|Mux22~1_combout\ & (((\ULA|Mux21~6_combout\) # (!\ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~1_combout\,
	datab => \ULA|Mux21~1_combout\,
	datac => \ULA|Mux21~6_combout\,
	datad => \ULA|Mux22~0_combout\,
	combout => \ULA|Mux21~7_combout\);

-- Location: LCCOMB_X60_Y36_N16
\ULA|Mux21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux21~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux21~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux21~7_combout\ & ((\ULA|ShiftRight0~77_combout\))) # (!\ULA|Mux21~7_combout\ & (\ULA|ShiftRight0~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|ShiftRight0~81_combout\,
	datac => \ULA|ShiftRight0~77_combout\,
	datad => \ULA|Mux21~7_combout\,
	combout => \ULA|Mux21~combout\);

-- Location: LCFF_X60_Y36_N17
\REG_ULA|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(10));

-- Location: LCCOMB_X63_Y32_N18
\MUX_MEMPARAREG|Saida_32bits[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[10]~10_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(10))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(10),
	datab => \REG_ULA|estado_out\(10),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[10]~10_combout\);

-- Location: LCFF_X66_Y36_N23
\REG_B_32|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a21\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(21));

-- Location: LCCOMB_X66_Y36_N22
\ULA|ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~50_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(23))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(23),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(21),
	combout => \ULA|ShiftRight0~50_combout\);

-- Location: LCCOMB_X67_Y36_N28
\ULA|ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~72_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\ULA|ShiftRight1~27_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~27_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight0~50_combout\,
	combout => \ULA|ShiftRight0~72_combout\);

-- Location: LCCOMB_X65_Y37_N10
\ULA|ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~71_combout\ = (\ULA|ShiftRight0~118_combout\ & ((\ULA|ShiftRight0~70_combout\) # ((\ULA|ShiftRight1~26_combout\ & \MUX_A|Saida_32bits_ALU[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~70_combout\,
	datab => \ULA|ShiftRight1~26_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \ULA|ShiftRight0~118_combout\,
	combout => \ULA|ShiftRight0~71_combout\);

-- Location: LCCOMB_X63_Y35_N16
\ULA|ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~73_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftRight0~71_combout\) # ((\ULA|ShiftRight0~72_combout\ & \ULA|ShiftRight0~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight0~72_combout\,
	datac => \ULA|ShiftRight0~119_combout\,
	datad => \ULA|ShiftRight0~71_combout\,
	combout => \ULA|ShiftRight0~73_combout\);

-- Location: LCCOMB_X63_Y39_N28
\ULA|ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~60_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\MUX_B|Mux20~1_combout\ & !\MUX_A|Saida_32bits_ALU[0]~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux22~1_combout\) # 
-- ((\MUX_A|Saida_32bits_ALU[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux22~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux20~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight0~60_combout\);

-- Location: LCCOMB_X62_Y39_N16
\ULA|ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~61_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\ULA|ShiftRight0~60_combout\ & (\MUX_B|Mux21~1_combout\)) # (!\ULA|ShiftRight0~60_combout\ & ((\MUX_B|Mux19~1_combout\))))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & 
-- (((\ULA|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux21~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux19~1_combout\,
	datad => \ULA|ShiftRight0~60_combout\,
	combout => \ULA|ShiftRight0~61_combout\);

-- Location: LCCOMB_X66_Y38_N20
\ULA|ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~62_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux17~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux18~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux17~1_combout\,
	combout => \ULA|ShiftRight0~62_combout\);

-- Location: LCCOMB_X62_Y39_N24
\ULA|ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~64_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~63_combout\) # ((\ULA|ShiftRight0~62_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~63_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~61_combout\,
	datad => \ULA|ShiftRight0~62_combout\,
	combout => \ULA|ShiftRight0~64_combout\);

-- Location: LCCOMB_X63_Y38_N22
\ULA|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~2_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~73_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~18_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~73_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~18_combout\,
	datad => \ULA|Mux28~12_combout\,
	combout => \ULA|Mux22~2_combout\);

-- Location: LCCOMB_X63_Y38_N4
\ULA|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~3_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux22~2_combout\ & ((\ULA|ShiftRight1~81_combout\))) # (!\ULA|Mux22~2_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|Mux22~2_combout\,
	datad => \ULA|ShiftRight1~81_combout\,
	combout => \ULA|Mux22~3_combout\);

-- Location: LCCOMB_X63_Y38_N30
\ULA|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~4_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|resposta~73_combout\ & (!\ULA|Mux28~9_combout\))) # (!\ULA|Mux28~8_combout\ & (((\ULA|Mux28~9_combout\) # (\ULA|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~73_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Add2~18_combout\,
	combout => \ULA|Mux22~4_combout\);

-- Location: LCCOMB_X59_Y35_N28
\ULA|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~6_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_A|Saida_32bits_ALU[9]~9_combout\ $ (\MUX_B|Mux22~1_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # 
-- ((!\MUX_A|Saida_32bits_ALU[9]~9_combout\ & !\MUX_B|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[9]~9_combout\,
	datab => \MUX_B|Mux22~1_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux22~6_combout\);

-- Location: LCCOMB_X63_Y38_N8
\ULA|Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~5_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~156_combout\) # ((!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & \ULA|ShiftLeft0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftLeft0~156_combout\,
	datac => \ULA|ShiftLeft0~76_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux22~5_combout\);

-- Location: LCCOMB_X63_Y38_N10
\ULA|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~7_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux22~6_combout\ & (\ULA|Mux22~5_combout\)) # (!\ULA|Mux22~6_combout\ & ((\ULA|ShiftRight0~124_combout\))))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux22~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux22~6_combout\,
	datac => \ULA|Mux22~5_combout\,
	datad => \ULA|ShiftRight0~124_combout\,
	combout => \ULA|Mux22~7_combout\);

-- Location: LCCOMB_X63_Y38_N12
\ULA|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~8_combout\ = (\ULA|Mux22~4_combout\ & (((\ULA|Mux22~7_combout\) # (!\ULA|Mux28~9_combout\)))) # (!\ULA|Mux22~4_combout\ & (\ULA|resposta~74_combout\ & (\ULA|Mux28~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~74_combout\,
	datab => \ULA|Mux22~4_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux22~7_combout\,
	combout => \ULA|Mux22~8_combout\);

-- Location: LCCOMB_X63_Y38_N6
\ULA|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~9_combout\ = (\ULA|Mux22~1_combout\ & (\ULA|Mux22~3_combout\ & (\ULA|Mux22~0_combout\))) # (!\ULA|Mux22~1_combout\ & (((\ULA|Mux22~8_combout\) # (!\ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux22~1_combout\,
	datab => \ULA|Mux22~3_combout\,
	datac => \ULA|Mux22~0_combout\,
	datad => \ULA|Mux22~8_combout\,
	combout => \ULA|Mux22~9_combout\);

-- Location: LCCOMB_X63_Y38_N20
\ULA|Mux22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux22~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux22~9_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux22~9_combout\ & ((\ULA|ShiftRight0~64_combout\))) # (!\ULA|Mux22~9_combout\ & (\ULA|ShiftRight0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|ShiftRight0~73_combout\,
	datac => \ULA|ShiftRight0~64_combout\,
	datad => \ULA|Mux22~9_combout\,
	combout => \ULA|Mux22~combout\);

-- Location: LCFF_X63_Y38_N21
\REG_ULA|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(9));

-- Location: LCFF_X65_Y36_N31
\RDM_32|estado_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(9));

-- Location: LCCOMB_X61_Y34_N16
\MUX_MEMPARAREG|Saida_32bits[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[9]~9_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(9)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(9),
	datac => \RDM_32|estado_out\(9),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[9]~9_combout\);

-- Location: LCFF_X66_Y35_N17
\REG_B_32|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(4));

-- Location: LCFF_X65_Y36_N5
\RDM_32|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(8));

-- Location: LCCOMB_X65_Y36_N4
\MUX_MEMPARAREG|Saida_32bits[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[8]~8_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(8)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(8),
	datac => \RDM_32|estado_out\(8),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[8]~8_combout\);

-- Location: LCFF_X66_Y35_N25
\REG_B_32|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(3));

-- Location: LCFF_X66_Y32_N9
\RI_32|estado_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(27));

-- Location: LCFF_X66_Y35_N23
\RI_32|estado_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(26));

-- Location: LCCOMB_X66_Y32_N18
\CONTROLE_ALU|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux10~1_combout\ = (\RI_32|estado_out\(28) & (!\RI_32|estado_out\(27) & \RI_32|estado_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI_32|estado_out\(28),
	datac => \RI_32|estado_out\(27),
	datad => \RI_32|estado_out\(26),
	combout => \CONTROLE_ALU|Mux10~1_combout\);

-- Location: LCCOMB_X66_Y32_N30
\CONTROLE_ALU|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux10~3_combout\ = (\CONTROLE_ALU|Mux10~0_combout\ & ((\CONTROLE_ALU|Mux10~1_combout\) # ((\CONTROLE_ALU|Mux3~0_combout\ & \CONTROLE_ALU|Mux10~2_combout\)))) # (!\CONTROLE_ALU|Mux10~0_combout\ & (((\CONTROLE_ALU|Mux3~0_combout\ & 
-- \CONTROLE_ALU|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~0_combout\,
	datab => \CONTROLE_ALU|Mux10~1_combout\,
	datac => \CONTROLE_ALU|Mux3~0_combout\,
	datad => \CONTROLE_ALU|Mux10~2_combout\,
	combout => \CONTROLE_ALU|Mux10~3_combout\);

-- Location: LCCOMB_X63_Y35_N8
\ULA|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux3~10_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & \CONTROLE_ALU|Mux10~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE_ALU|Mux10~3_combout\,
	combout => \ULA|Mux3~10_combout\);

-- Location: LCCOMB_X66_Y37_N8
\ULA|Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~10_combout\ = ((\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\)) # (!\ULA|Mux3~10_combout\ & ((!\CONTROLE_ALU|Mux8~2_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux28~10_combout\);

-- Location: LCCOMB_X66_Y37_N12
\ULA|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~3_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((\ULA|Mux28~10_combout\) # (!\ULA|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux28~10_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux24~3_combout\);

-- Location: LCCOMB_X67_Y33_N12
\ULA|Mux24~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~11_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~71_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~14_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~71_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~14_combout\,
	datad => \ULA|Mux28~12_combout\,
	combout => \ULA|Mux24~11_combout\);

-- Location: LCCOMB_X67_Y33_N30
\ULA|Mux24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~12_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux24~11_combout\ & (\ULA|ShiftRight1~77_combout\)) # (!\ULA|Mux24~11_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux24~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~77_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux24~11_combout\,
	combout => \ULA|Mux24~12_combout\);

-- Location: LCCOMB_X66_Y37_N0
\ULA|Mux24~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~14_combout\ = (\ULA|Mux28~11_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(3)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(3),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(3),
	datad => \ULA|Mux28~11_combout\,
	combout => \ULA|Mux24~14_combout\);

-- Location: LCCOMB_X62_Y37_N26
\ULA|Mux24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~8_combout\ = (\MUX_B|Mux24~1_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_A|Saida_32bits_ALU[7]~7_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_B|Mux24~1_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_A|Saida_32bits_ALU[7]~7_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux24~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux28~8_combout\,
	combout => \ULA|Mux24~8_combout\);

-- Location: LCCOMB_X62_Y37_N2
\ULA|Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~6_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux24~1_combout\ $ (\MUX_A|Saida_32bits_ALU[7]~7_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux24~1_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux24~1_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux24~6_combout\);

-- Location: LCCOMB_X65_Y33_N8
\ULA|ShiftRight0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~110_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\MUX_B|Mux0~0_combout\ & ((!\ULA|ShiftRight1~72_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftRight0~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight0~109_combout\,
	datad => \ULA|ShiftRight1~72_combout\,
	combout => \ULA|ShiftRight0~110_combout\);

-- Location: LCCOMB_X62_Y37_N0
\ULA|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~5_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~68_combout\) # (\ULA|ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|ShiftLeft0~68_combout\,
	datad => \ULA|ShiftLeft0~65_combout\,
	combout => \ULA|Mux24~5_combout\);

-- Location: LCCOMB_X62_Y37_N12
\ULA|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~7_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux24~6_combout\ & ((\ULA|Mux24~5_combout\))) # (!\ULA|Mux24~6_combout\ & (\ULA|ShiftRight0~110_combout\)))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux24~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux24~6_combout\,
	datac => \ULA|ShiftRight0~110_combout\,
	datad => \ULA|Mux24~5_combout\,
	combout => \ULA|Mux24~7_combout\);

-- Location: LCCOMB_X62_Y37_N20
\ULA|Mux24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~9_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|Mux24~8_combout\)) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux24~8_combout\ & ((\ULA|Mux24~7_combout\))) # (!\ULA|Mux24~8_combout\ & (\ULA|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux24~8_combout\,
	datac => \ULA|Add2~14_combout\,
	datad => \ULA|Mux24~7_combout\,
	combout => \ULA|Mux24~9_combout\);

-- Location: LCCOMB_X67_Y39_N26
\ULA|ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~49_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux21~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux22~1_combout\)))) # 
-- (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux22~1_combout\,
	datad => \MUX_B|Mux21~1_combout\,
	combout => \ULA|ShiftRight1~49_combout\);

-- Location: LCCOMB_X67_Y39_N20
\ULA|ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~50_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\ULA|ShiftRight1~49_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftRight1~49_combout\ & ((\MUX_B|Mux23~1_combout\))) # (!\ULA|ShiftRight1~49_combout\ & 
-- (\MUX_B|Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_B|Mux24~1_combout\,
	datac => \MUX_B|Mux23~1_combout\,
	datad => \ULA|ShiftRight1~49_combout\,
	combout => \ULA|ShiftRight1~50_combout\);

-- Location: LCCOMB_X65_Y37_N20
\ULA|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~2_combout\ = (!\ULA|Mux28~11_combout\ & ((\MUX_A|Saida_32bits_ALU[3]~3_combout\) # (\MUX_A|Saida_32bits_ALU[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|Mux28~11_combout\,
	combout => \ULA|Mux24~2_combout\);

-- Location: LCCOMB_X62_Y37_N10
\ULA|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~4_combout\ = (\ULA|Mux24~2_combout\ & ((\ULA|ShiftRight1~52_combout\) # ((\ULA|Mux24~14_combout\)))) # (!\ULA|Mux24~2_combout\ & (((\ULA|ShiftRight1~50_combout\ & !\ULA|Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~52_combout\,
	datab => \ULA|ShiftRight1~50_combout\,
	datac => \ULA|Mux24~2_combout\,
	datad => \ULA|Mux24~14_combout\,
	combout => \ULA|Mux24~4_combout\);

-- Location: LCCOMB_X62_Y37_N18
\ULA|Mux24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~10_combout\ = (\ULA|Mux24~14_combout\ & ((\ULA|Mux24~4_combout\ & (\ULA|ShiftRight0~107_combout\)) # (!\ULA|Mux24~4_combout\ & ((\ULA|Mux24~9_combout\))))) # (!\ULA|Mux24~14_combout\ & (((\ULA|Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~107_combout\,
	datab => \ULA|Mux24~14_combout\,
	datac => \ULA|Mux24~9_combout\,
	datad => \ULA|Mux24~4_combout\,
	combout => \ULA|Mux24~10_combout\);

-- Location: LCCOMB_X63_Y34_N24
\ULA|Mux24~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux24~13_combout\ = (\ULA|Mux24~3_combout\ & (!\ULA|Mux9~8_combout\ & (\ULA|Mux24~12_combout\))) # (!\ULA|Mux24~3_combout\ & (((\ULA|Mux24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux9~8_combout\,
	datab => \ULA|Mux24~3_combout\,
	datac => \ULA|Mux24~12_combout\,
	datad => \ULA|Mux24~10_combout\,
	combout => \ULA|Mux24~13_combout\);

-- Location: LCFF_X63_Y34_N25
\REG_ULA|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux24~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(7));

-- Location: LCFF_X65_Y36_N7
\RDM_32|estado_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(7));

-- Location: LCCOMB_X65_Y36_N6
\MUX_MEMPARAREG|Saida_32bits[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[7]~7_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(7)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(7),
	datac => \RDM_32|estado_out\(7),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[7]~7_combout\);

-- Location: LCFF_X65_Y34_N21
\REG_B_32|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a19\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(19));

-- Location: LCFF_X63_Y32_N21
\RI_32|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(23));

-- Location: LCFF_X66_Y37_N1
\REG_A_32|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(3));

-- Location: LCCOMB_X66_Y37_N2
\MUX_A|Saida_32bits_ALU[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[3]~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(3),
	combout => \MUX_A|Saida_32bits_ALU[3]~3_combout\);

-- Location: LCCOMB_X63_Y37_N28
\ULA|ShiftRight1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~73_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight1~72_combout\ & ((\REG_B_32|estado_out\(31)))) # (!\ULA|ShiftRight1~72_combout\ & (\REG_B_32|estado_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(30),
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \REG_B_32|estado_out\(31),
	datad => \ULA|ShiftRight1~72_combout\,
	combout => \ULA|ShiftRight1~73_combout\);

-- Location: LCCOMB_X63_Y37_N14
\ULA|ShiftRight1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~74_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight1~41_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~41_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datad => \ULA|ShiftRight1~44_combout\,
	combout => \ULA|ShiftRight1~74_combout\);

-- Location: LCCOMB_X63_Y37_N16
\ULA|ShiftRight1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~75_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight1~73_combout\) # (\ULA|ShiftRight1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux14~1_combout\,
	datab => \ULA|ShiftRight1~73_combout\,
	datac => \ULA|ShiftRight1~74_combout\,
	datad => \ULA|ShiftLeft0~44_combout\,
	combout => \ULA|ShiftRight1~75_combout\);

-- Location: LCFF_X62_Y37_N25
\REG_A_32|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a6\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(6));

-- Location: LCCOMB_X62_Y37_N24
\ULA|resposta~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~70_combout\ = (\MUX_B|Mux25~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(6)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(6),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(6),
	datad => \MUX_B|Mux25~1_combout\,
	combout => \ULA|resposta~70_combout\);

-- Location: LCCOMB_X63_Y37_N2
\ULA|Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~7_combout\ = (\ULA|Mux28~12_combout\ & (!\ULA|resposta~70_combout\ & ((\ULA|Mux28~25_combout\)))) # (!\ULA|Mux28~12_combout\ & (((\ULA|Add1~12_combout\) # (!\ULA|Mux28~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~12_combout\,
	datab => \ULA|resposta~70_combout\,
	datac => \ULA|Add1~12_combout\,
	datad => \ULA|Mux28~25_combout\,
	combout => \ULA|Mux25~7_combout\);

-- Location: LCCOMB_X63_Y37_N8
\ULA|Mux25~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~8_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux25~7_combout\ & ((\ULA|ShiftRight1~75_combout\))) # (!\ULA|Mux25~7_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|ShiftRight1~75_combout\,
	datad => \ULA|Mux25~7_combout\,
	combout => \ULA|Mux25~8_combout\);

-- Location: LCCOMB_X67_Y39_N24
\ULA|ShiftRight1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~32_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux22~1_combout\) # ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_B|Mux23~1_combout\ & 
-- \MUX_A|Saida_32bits_ALU[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux22~1_combout\,
	datab => \MUX_B|Mux23~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	combout => \ULA|ShiftRight1~32_combout\);

-- Location: LCCOMB_X62_Y39_N6
\ULA|ShiftRight1~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~33_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (((\ULA|ShiftRight1~32_combout\)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftRight1~32_combout\ & ((\MUX_B|Mux24~1_combout\))) # (!\ULA|ShiftRight1~32_combout\ & 
-- (\MUX_B|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux25~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight1~32_combout\,
	datad => \MUX_B|Mux24~1_combout\,
	combout => \ULA|ShiftRight1~33_combout\);

-- Location: LCCOMB_X62_Y37_N16
\ULA|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~0_combout\ = (\ULA|Mux28~8_combout\ & ((\MUX_A|Saida_32bits_ALU[6]~6_combout\ & ((\ULA|Mux28~9_combout\) # (\MUX_B|Mux25~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[6]~6_combout\ & (\ULA|Mux28~9_combout\ & \MUX_B|Mux25~1_combout\)))) # 
-- (!\ULA|Mux28~8_combout\ & (((\ULA|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \MUX_B|Mux25~1_combout\,
	combout => \ULA|Mux25~0_combout\);

-- Location: LCCOMB_X62_Y37_N4
\ULA|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~2_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux25~1_combout\ $ (\MUX_A|Saida_32bits_ALU[6]~6_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux25~1_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux25~1_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux25~2_combout\);

-- Location: LCCOMB_X62_Y37_N30
\ULA|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~1_combout\ = (\ULA|ShiftLeft0~64_combout\ & (\ULA|Mux31~5_combout\ & !\MUX_A|Saida_32bits_ALU[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~64_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	combout => \ULA|Mux25~1_combout\);

-- Location: LCCOMB_X62_Y37_N22
\ULA|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~3_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux25~2_combout\ & ((\ULA|Mux25~1_combout\))) # (!\ULA|Mux25~2_combout\ & (\ULA|ShiftRight0~103_combout\)))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux25~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux25~2_combout\,
	datac => \ULA|ShiftRight0~103_combout\,
	datad => \ULA|Mux25~1_combout\,
	combout => \ULA|Mux25~3_combout\);

-- Location: LCCOMB_X62_Y37_N28
\ULA|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~4_combout\ = (\ULA|Mux28~8_combout\ & (((\ULA|Mux25~0_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux25~0_combout\ & ((\ULA|Mux25~3_combout\))) # (!\ULA|Mux25~0_combout\ & (\ULA|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Add2~12_combout\,
	datac => \ULA|Mux25~0_combout\,
	datad => \ULA|Mux25~3_combout\,
	combout => \ULA|Mux25~4_combout\);

-- Location: LCCOMB_X62_Y37_N6
\ULA|Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~5_combout\ = (\ULA|Mux24~14_combout\ & (((\ULA|Mux24~2_combout\) # (\ULA|Mux25~4_combout\)))) # (!\ULA|Mux24~14_combout\ & (\ULA|ShiftRight1~33_combout\ & (!\ULA|Mux24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~14_combout\,
	datab => \ULA|ShiftRight1~33_combout\,
	datac => \ULA|Mux24~2_combout\,
	datad => \ULA|Mux25~4_combout\,
	combout => \ULA|Mux25~5_combout\);

-- Location: LCCOMB_X62_Y37_N8
\ULA|Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~6_combout\ = (\ULA|Mux24~2_combout\ & ((\ULA|Mux25~5_combout\ & (\ULA|ShiftRight0~105_combout\)) # (!\ULA|Mux25~5_combout\ & ((\ULA|ShiftRight1~38_combout\))))) # (!\ULA|Mux24~2_combout\ & (((\ULA|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~105_combout\,
	datab => \ULA|ShiftRight1~38_combout\,
	datac => \ULA|Mux24~2_combout\,
	datad => \ULA|Mux25~5_combout\,
	combout => \ULA|Mux25~6_combout\);

-- Location: LCCOMB_X63_Y37_N26
\ULA|Mux25~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux25~9_combout\ = (\ULA|Mux24~3_combout\ & (!\ULA|Mux9~8_combout\ & (\ULA|Mux25~8_combout\))) # (!\ULA|Mux24~3_combout\ & (((\ULA|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~3_combout\,
	datab => \ULA|Mux9~8_combout\,
	datac => \ULA|Mux25~8_combout\,
	datad => \ULA|Mux25~6_combout\,
	combout => \ULA|Mux25~9_combout\);

-- Location: LCFF_X63_Y37_N27
\REG_ULA|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux25~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(6));

-- Location: LCCOMB_X65_Y32_N26
\MUX_MEMPARAREG|Saida_32bits[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[6]~6_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(6))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(6),
	datab => \REG_ULA|estado_out\(6),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[6]~6_combout\);

-- Location: LCFF_X66_Y35_N9
\REG_B_32|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(2));

-- Location: LCFF_X67_Y35_N1
\RDM_32|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(5));

-- Location: LCCOMB_X65_Y32_N28
\MUX_MEMPARAREG|Saida_32bits[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[5]~5_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(5)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(5),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datad => \RDM_32|estado_out\(5),
	combout => \MUX_MEMPARAREG|Saida_32bits[5]~5_combout\);

-- Location: LCFF_X67_Y37_N17
\REG_B_32|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a18\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(18));

-- Location: LCFF_X67_Y32_N15
\RI_32|estado_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(22),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(22));

-- Location: LCFF_X67_Y36_N29
\REG_A_32|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(1));

-- Location: LCCOMB_X62_Y36_N18
\MUX_ORIGPC|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_ORIGPC|Mux30~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\REG_ULA|estado_out\(1)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\ULA|Mux30~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datab => \ULA|Mux30~16_combout\,
	datac => \REG_ULA|estado_out\(1),
	combout => \MUX_ORIGPC|Mux30~0_combout\);

-- Location: LCFF_X62_Y36_N19
\PC_32|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux30~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(1));

-- Location: LCCOMB_X67_Y36_N14
\MUX_A|Saida_32bits_ALU[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[1]~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(1))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(1),
	datad => \PC_32|estado_out\(1),
	combout => \MUX_A|Saida_32bits_ALU[1]~1_combout\);

-- Location: LCCOMB_X61_Y36_N2
\ULA|ShiftRight1~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~37_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux18~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux20~1_combout\,
	datad => \MUX_B|Mux18~1_combout\,
	combout => \ULA|ShiftRight1~37_combout\);

-- Location: LCCOMB_X62_Y39_N28
\ULA|ShiftRight1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~36_combout\ = (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_B|Mux19~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\MUX_B|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux21~1_combout\,
	datad => \MUX_B|Mux19~1_combout\,
	combout => \ULA|ShiftRight1~36_combout\);

-- Location: LCCOMB_X62_Y39_N2
\ULA|ShiftRight1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~38_combout\ = (\ULA|ShiftRight1~36_combout\) # ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & \ULA|ShiftRight1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \ULA|ShiftRight1~37_combout\,
	datad => \ULA|ShiftRight1~36_combout\,
	combout => \ULA|ShiftRight1~38_combout\);

-- Location: LCCOMB_X62_Y39_N0
\ULA|ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~77_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight1~35_combout\))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|ShiftRight1~38_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight1~35_combout\,
	combout => \ULA|ShiftRight0~77_combout\);

-- Location: LCCOMB_X66_Y39_N18
\ULA|ShiftRight1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~20_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux26~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux26~1_combout\,
	combout => \ULA|ShiftRight1~20_combout\);

-- Location: LCCOMB_X63_Y39_N18
\ULA|ShiftRight1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~21_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux28~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux28~1_combout\,
	datad => \MUX_B|Mux29~1_combout\,
	combout => \ULA|ShiftRight1~21_combout\);

-- Location: LCCOMB_X62_Y39_N12
\ULA|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~2_combout\ = (\ULA|Mux28~6_combout\ & (((\ULA|Mux28~24_combout\)))) # (!\ULA|Mux28~6_combout\ & ((\ULA|Mux28~24_combout\ & ((\ULA|ShiftRight1~33_combout\))) # (!\ULA|Mux28~24_combout\ & (\ULA|ShiftRight1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~6_combout\,
	datab => \ULA|ShiftRight1~21_combout\,
	datac => \ULA|Mux28~24_combout\,
	datad => \ULA|ShiftRight1~33_combout\,
	combout => \ULA|Mux29~2_combout\);

-- Location: LCCOMB_X62_Y39_N26
\ULA|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~3_combout\ = (\ULA|Mux28~6_combout\ & ((\ULA|Mux29~2_combout\ & (\ULA|ShiftRight0~77_combout\)) # (!\ULA|Mux29~2_combout\ & ((\ULA|ShiftRight1~20_combout\))))) # (!\ULA|Mux28~6_combout\ & (((\ULA|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~6_combout\,
	datab => \ULA|ShiftRight0~77_combout\,
	datac => \ULA|ShiftRight1~20_combout\,
	datad => \ULA|Mux29~2_combout\,
	combout => \ULA|Mux29~3_combout\);

-- Location: LCCOMB_X61_Y36_N0
\ULA|Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~5_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux29~1_combout\ $ (\MUX_A|Saida_32bits_ALU[2]~2_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux29~1_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux29~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux29~5_combout\);

-- Location: LCCOMB_X60_Y35_N20
\ULA|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~4_combout\ = (\ULA|Mux31~5_combout\ & (\ULA|ShiftLeft0~50_combout\ & !\ULA|Mux28~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \ULA|ShiftLeft0~50_combout\,
	datad => \ULA|Mux28~24_combout\,
	combout => \ULA|Mux29~4_combout\);

-- Location: LCCOMB_X61_Y37_N2
\ULA|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~6_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux29~5_combout\ & ((\ULA|Mux29~4_combout\))) # (!\ULA|Mux29~5_combout\ & (\ULA|ShiftRight0~82_combout\)))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux29~5_combout\,
	datac => \ULA|ShiftRight0~82_combout\,
	datad => \ULA|Mux29~4_combout\,
	combout => \ULA|Mux29~6_combout\);

-- Location: LCCOMB_X61_Y37_N22
\ULA|Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~8_combout\ = (\ULA|Mux29~7_combout\ & ((\ULA|Mux28~8_combout\) # ((\ULA|Mux29~6_combout\)))) # (!\ULA|Mux29~7_combout\ & (!\ULA|Mux28~8_combout\ & (\ULA|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux29~7_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Add2~4_combout\,
	datad => \ULA|Mux29~6_combout\,
	combout => \ULA|Mux29~8_combout\);

-- Location: LCCOMB_X61_Y37_N20
\ULA|Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~9_combout\ = (\ULA|Mux28~11_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux29~8_combout\)))) # (!\ULA|Mux28~11_combout\ & (((\ULA|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux29~3_combout\,
	datac => \ULA|Mux28~11_combout\,
	datad => \ULA|Mux29~8_combout\,
	combout => \ULA|Mux29~9_combout\);

-- Location: LCCOMB_X66_Y39_N20
\MUX_B|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux29~2_combout\ = (\RI_32|estado_out\(2) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(2),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux29~2_combout\);

-- Location: LCCOMB_X61_Y35_N26
\ULA|resposta~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~62_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\MUX_B|Mux29~2_combout\) # (\MUX_B|Mux29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \MUX_B|Mux29~2_combout\,
	datad => \MUX_B|Mux29~0_combout\,
	combout => \ULA|resposta~62_combout\);

-- Location: LCCOMB_X61_Y35_N4
\ULA|Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~10_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~62_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~4_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~62_combout\,
	datac => \ULA|Mux28~12_combout\,
	datad => \ULA|Add1~4_combout\,
	combout => \ULA|Mux29~10_combout\);

-- Location: LCCOMB_X61_Y35_N2
\ULA|Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~11_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux29~10_combout\ & (\ULA|ShiftRight1~48_combout\)) # (!\ULA|Mux29~10_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \ULA|ShiftRight1~48_combout\,
	datac => \ULA|Mux29~10_combout\,
	datad => \MUX_B|Mux0~0_combout\,
	combout => \ULA|Mux29~11_combout\);

-- Location: LCCOMB_X61_Y37_N14
\ULA|Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux29~12_combout\ = (\ULA|Mux29~9_combout\) # ((\ULA|Mux28~11_combout\ & (\ULA|Mux2~14_combout\ & \ULA|Mux29~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux29~9_combout\,
	datad => \ULA|Mux29~11_combout\,
	combout => \ULA|Mux29~12_combout\);

-- Location: LCFF_X61_Y37_N15
\REG_ULA|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux29~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(2));

-- Location: LCCOMB_X65_Y32_N8
\MUX_MEMPARAREG|Saida_32bits[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[2]~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	datab => \RDM_32|estado_out\(2),
	datad => \REG_ULA|estado_out\(2),
	combout => \MUX_MEMPARAREG|Saida_32bits[2]~2_combout\);

-- Location: LCFF_X69_Y36_N9
\REG_B_32|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a17\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(17));

-- Location: LCFF_X68_Y32_N31
\RI_32|estado_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(21),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(21));

-- Location: LCFF_X66_Y36_N21
\REG_A_32|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(0));

-- Location: LCCOMB_X66_Y36_N20
\MUX_A|Saida_32bits_ALU[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[0]~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(0))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(0),
	datad => \PC_32|estado_out\(0),
	combout => \MUX_A|Saida_32bits_ALU[0]~0_combout\);

-- Location: LCCOMB_X68_Y33_N0
\ULA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Add1~0_combout\ = (\MUX_B|Mux31~0_combout\ & (\MUX_A|Saida_32bits_ALU[0]~0_combout\ $ (VCC))) # (!\MUX_B|Mux31~0_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # (GND)))
-- \ULA|Add1~1\ = CARRY((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # (!\MUX_B|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => VCC,
	combout => \ULA|Add1~0_combout\,
	cout => \ULA|Add1~1\);

-- Location: LCCOMB_X65_Y31_N22
\ULA|Mux30~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~17_combout\ = (\MUX_B|Mux30~0_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(1))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(1),
	datac => \PC_32|estado_out\(1),
	datad => \MUX_B|Mux30~0_combout\,
	combout => \ULA|Mux30~17_combout\);

-- Location: LCCOMB_X65_Y31_N16
\ULA|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~6_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Mux3~10_combout\ & !\ULA|Mux30~17_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \ULA|Add1~2_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \ULA|Mux30~17_combout\,
	combout => \ULA|Mux30~6_combout\);

-- Location: LCCOMB_X63_Y38_N26
\ULA|ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~48_combout\ = (\ULA|Mux14~0_combout\ & (\ULA|ShiftLeft0~47_combout\ & \ULA|Mux31~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux14~0_combout\,
	datac => \ULA|ShiftLeft0~47_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X65_Y31_N12
\ULA|Mux30~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~18_combout\ = \MUX_B|Mux30~0_combout\ $ (((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(1))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datab => \REG_A_32|estado_out\(1),
	datac => \PC_32|estado_out\(1),
	datad => \MUX_B|Mux30~0_combout\,
	combout => \ULA|Mux30~18_combout\);

-- Location: LCCOMB_X65_Y33_N4
\ULA|Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~7_combout\ = (\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\ & ((!\ULA|ShiftLeft0~45_combout\))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux30~18_combout\)))) # (!\ULA|Mux3~10_combout\ & (\CONTROLE_ALU|Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux30~18_combout\,
	datad => \ULA|ShiftLeft0~45_combout\,
	combout => \ULA|Mux30~7_combout\);

-- Location: LCCOMB_X63_Y35_N0
\ULA|Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~8_combout\ = ((\MUX_A|Saida_32bits_ALU[4]~4_combout\ & \ULA|ShiftRight0~74_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datad => \ULA|ShiftRight0~74_combout\,
	combout => \ULA|Mux30~8_combout\);

-- Location: LCCOMB_X63_Y36_N2
\ULA|Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~9_combout\ = (\ULA|Mux30~7_combout\ & ((\ULA|ShiftRight0~65_combout\) # ((\ULA|Mux30~8_combout\) # (!\ULA|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~65_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \ULA|Mux30~7_combout\,
	datad => \ULA|Mux30~8_combout\,
	combout => \ULA|Mux30~9_combout\);

-- Location: LCCOMB_X63_Y36_N16
\ULA|Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~10_combout\ = (\ULA|Mux3~10_combout\ & (((\ULA|Mux30~9_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\ULA|Mux30~9_combout\ & ((\ULA|ShiftLeft0~48_combout\))) # (!\ULA|Mux30~9_combout\ & (!\ULA|resposta~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~66_combout\,
	datab => \ULA|Mux3~10_combout\,
	datac => \ULA|ShiftLeft0~48_combout\,
	datad => \ULA|Mux30~9_combout\,
	combout => \ULA|Mux30~10_combout\);

-- Location: LCCOMB_X70_Y36_N26
\ULA|Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~11_combout\ = (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|Mux3~10_combout\) # (\MUX_B|Mux30~0_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|Mux3~10_combout\ & \MUX_B|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \MUX_B|Mux30~0_combout\,
	combout => \ULA|Mux30~11_combout\);

-- Location: LCCOMB_X70_Y36_N8
\ULA|Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~12_combout\ = (\ULA|Mux30~11_combout\) # ((\CONTROLE_ALU|Mux9~3_combout\ & \ULA|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Add2~2_combout\,
	datad => \ULA|Mux30~11_combout\,
	combout => \ULA|Mux30~12_combout\);

-- Location: LCCOMB_X63_Y36_N14
\ULA|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~13_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\CONTROLE_ALU|Mux7~2_combout\)) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Mux30~10_combout\)) # (!\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux30~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Mux30~10_combout\,
	datad => \ULA|Mux30~12_combout\,
	combout => \ULA|Mux30~13_combout\);

-- Location: LCCOMB_X67_Y39_N4
\ULA|ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~57_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (((\MUX_B|Mux29~2_combout\) # (\MUX_B|Mux29~0_combout\)))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux30~0_combout\,
	datab => \MUX_B|Mux29~2_combout\,
	datac => \MUX_B|Mux29~0_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight0~57_combout\);

-- Location: LCCOMB_X66_Y39_N24
\ULA|ShiftRight1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~23_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux27~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux27~1_combout\,
	datad => \MUX_B|Mux28~1_combout\,
	combout => \ULA|ShiftRight1~23_combout\);

-- Location: LCCOMB_X67_Y39_N14
\ULA|ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~58_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\ULA|ShiftRight1~23_combout\))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|ShiftRight0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight0~57_combout\,
	datad => \ULA|ShiftRight1~23_combout\,
	combout => \ULA|ShiftRight0~58_combout\);

-- Location: LCCOMB_X67_Y39_N12
\ULA|ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~59_combout\ = (\ULA|ShiftRight0~121_combout\ & ((\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight0~56_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~56_combout\,
	datab => \ULA|ShiftRight0~58_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|ShiftRight0~121_combout\,
	combout => \ULA|ShiftRight0~59_combout\);

-- Location: LCCOMB_X63_Y36_N20
\ULA|ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~65_combout\ = (\ULA|ShiftRight0~59_combout\) # ((\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[4]~4_combout\ & \ULA|ShiftRight0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|ShiftRight0~64_combout\,
	datad => \ULA|ShiftRight0~59_combout\,
	combout => \ULA|ShiftRight0~65_combout\);

-- Location: LCCOMB_X68_Y36_N0
\ULA|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~14_combout\ = (!\ULA|ShiftLeft0~45_combout\ & ((\ULA|ShiftRight0~65_combout\) # ((\MUX_A|Saida_32bits_ALU[4]~4_combout\ & \ULA|ShiftRight1~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \ULA|ShiftLeft0~45_combout\,
	datac => \ULA|ShiftRight1~88_combout\,
	datad => \ULA|ShiftRight0~65_combout\,
	combout => \ULA|Mux30~14_combout\);

-- Location: LCCOMB_X68_Y36_N6
\ULA|Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~15_combout\ = (\ULA|Mux30~19_combout\ & ((\ULA|Mux30~14_combout\) # ((\MUX_B|Mux0~0_combout\ & \ULA|ShiftLeft0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux0~0_combout\,
	datab => \ULA|Mux30~19_combout\,
	datac => \ULA|ShiftLeft0~45_combout\,
	datad => \ULA|Mux30~14_combout\,
	combout => \ULA|Mux30~15_combout\);

-- Location: LCCOMB_X63_Y36_N24
\ULA|Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux30~16_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux30~13_combout\ & ((\ULA|Mux30~15_combout\))) # (!\ULA|Mux30~13_combout\ & (\ULA|Mux30~6_combout\)))) # (!\CONTROLE_ALU|Mux8~2_combout\ & (((\ULA|Mux30~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datab => \ULA|Mux30~6_combout\,
	datac => \ULA|Mux30~13_combout\,
	datad => \ULA|Mux30~15_combout\,
	combout => \ULA|Mux30~16_combout\);

-- Location: LCFF_X63_Y36_N25
\REG_ULA|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux30~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(1));

-- Location: LCCOMB_X65_Y36_N20
\RDM_32|estado_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RDM_32|estado_out[1]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(1),
	combout => \RDM_32|estado_out[1]~feeder_combout\);

-- Location: LCFF_X65_Y36_N21
\RDM_32|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RDM_32|estado_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(1));

-- Location: LCCOMB_X65_Y36_N12
\MUX_MEMPARAREG|Saida_32bits[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[1]~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\RDM_32|estado_out\(1)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\REG_ULA|estado_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(1),
	datac => \RDM_32|estado_out\(1),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[1]~1_combout\);

-- Location: LCFF_X68_Y35_N9
\REG_B_32|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a16\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(16));

-- Location: LCFF_X65_Y32_N15
\RI_32|estado_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(18),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(18));

-- Location: LCFF_X68_Y35_N19
\REG_B_32|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a15\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(15));

-- Location: LCFF_X65_Y32_N31
\RI_32|estado_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(20),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(20));

-- Location: LCCOMB_X65_Y32_N12
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux12~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7));

-- Location: LCCOMB_X65_Y32_N30
\MUX_REGDST|Saida_5bits[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_REGDST|Saida_5bits[4]~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & (\RI_32|estado_out\(15))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & ((\RI_32|estado_out\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(15),
	datac => \RI_32|estado_out\(20),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	combout => \MUX_REGDST|Saida_5bits[4]~4_combout\);

-- Location: LCFF_X68_Y35_N3
\REG_B_32|estado_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a14\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(14));

-- Location: LCFF_X65_Y32_N5
\RI_32|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(19));

-- Location: LCCOMB_X65_Y32_N4
\MUX_REGDST|Saida_5bits[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_REGDST|Saida_5bits[3]~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & (\RI_32|estado_out\(14))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & ((\RI_32|estado_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(14),
	datac => \RI_32|estado_out\(19),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	combout => \MUX_REGDST|Saida_5bits[3]~3_combout\);

-- Location: LCFF_X68_Y35_N7
\REG_B_32|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a13\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(13));

-- Location: LCFF_X68_Y35_N25
\RI_32|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(13));

-- Location: LCCOMB_X65_Y32_N14
\MUX_REGDST|Saida_5bits[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_REGDST|Saida_5bits[2]~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & (\RI_32|estado_out\(13))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & ((\RI_32|estado_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI_32|estado_out\(13),
	datac => \RI_32|estado_out\(18),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	combout => \MUX_REGDST|Saida_5bits[2]~2_combout\);

-- Location: LCFF_X67_Y39_N1
\REG_B_32|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(1));

-- Location: LCFF_X66_Y32_N3
\RI_32|estado_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(28),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(28));

-- Location: LCFF_X66_Y32_N29
\RI_32|estado_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(30));

-- Location: LCCOMB_X66_Y32_N16
\CONTROLE_ALU|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux10~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & (!\RI_32|estado_out\(30) & (!\RI_32|estado_out\(31) & \RI_32|estado_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datab => \RI_32|estado_out\(30),
	datac => \RI_32|estado_out\(31),
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE_ALU|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y32_N4
\CONTROLE_ALU|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux8~0_combout\ = (\RI_32|estado_out\(27) & (!\RI_32|estado_out\(28) & (\CONTROLE_ALU|Mux10~0_combout\ & !\RI_32|estado_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(27),
	datab => \RI_32|estado_out\(28),
	datac => \CONTROLE_ALU|Mux10~0_combout\,
	datad => \RI_32|estado_out\(26),
	combout => \CONTROLE_ALU|Mux8~0_combout\);

-- Location: LCCOMB_X67_Y35_N16
\CONTROLE_ALU|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux1~0_combout\ = (\RI_32|estado_out\(5) & ((\RI_32|estado_out\(2)) # ((\RI_32|estado_out\(0))))) # (!\RI_32|estado_out\(5) & ((\RI_32|estado_out\(3)) # (\RI_32|estado_out\(2) $ (\RI_32|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(2),
	datab => \RI_32|estado_out\(5),
	datac => \RI_32|estado_out\(3),
	datad => \RI_32|estado_out\(0),
	combout => \CONTROLE_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y32_N26
\CONTROLE_ALU|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux8~1_combout\ = (\RI_32|estado_out\(1) & (!\CONTROLE_ALU|Mux1~0_combout\ & !\RI_32|estado_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI_32|estado_out\(1),
	datac => \CONTROLE_ALU|Mux1~0_combout\,
	datad => \RI_32|estado_out\(4),
	combout => \CONTROLE_ALU|Mux8~1_combout\);

-- Location: LCCOMB_X66_Y32_N0
\CONTROLE_ALU|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux8~2_combout\ = (\CONTROLE_ALU|Mux8~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))) # 
-- (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & \CONTROLE_ALU|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux8~0_combout\,
	datad => \CONTROLE_ALU|Mux8~1_combout\,
	combout => \CONTROLE_ALU|Mux8~2_combout\);

-- Location: LCCOMB_X66_Y37_N26
\ULA|Mux28~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~11_combout\ = (\ULA|Mux28~10_combout\) # (((\CONTROLE_ALU|Mux9~3_combout\ & \CONTROLE_ALU|Mux8~2_combout\)) # (!\ULA|Mux31~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~3_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux28~10_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux28~11_combout\);

-- Location: LCCOMB_X69_Y35_N4
\ULA|ShiftRight0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~33_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux22~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux23~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_B|Mux22~1_combout\,
	datad => \MUX_B|Mux23~1_combout\,
	combout => \ULA|ShiftRight0~33_combout\);

-- Location: LCCOMB_X61_Y38_N0
\ULA|ShiftRight0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~34_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux20~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux21~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux20~1_combout\,
	combout => \ULA|ShiftRight0~34_combout\);

-- Location: LCCOMB_X61_Y38_N26
\ULA|ShiftRight0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~35_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\ULA|ShiftRight0~32_combout\)) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight0~33_combout\) # (\ULA|ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \ULA|ShiftRight0~32_combout\,
	datac => \ULA|ShiftRight0~33_combout\,
	datad => \ULA|ShiftRight0~34_combout\,
	combout => \ULA|ShiftRight0~35_combout\);

-- Location: LCCOMB_X67_Y38_N20
\ULA|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~2_combout\ = (\MUX_B|Mux23~1_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_A|Saida_32bits_ALU[8]~8_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_B|Mux23~1_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_A|Saida_32bits_ALU[8]~8_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux23~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	datac => \ULA|Mux28~8_combout\,
	datad => \ULA|Mux28~9_combout\,
	combout => \ULA|Mux23~2_combout\);

-- Location: LCCOMB_X66_Y39_N26
\ULA|ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftLeft0~69_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftLeft0~53_combout\) # (\ULA|ShiftLeft0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftLeft0~53_combout\,
	datad => \ULA|ShiftLeft0~54_combout\,
	combout => \ULA|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X66_Y39_N12
\ULA|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~3_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~69_combout\) # ((\ULA|ShiftLeft0~72_combout\ & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~72_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|Mux31~5_combout\,
	datad => \ULA|ShiftLeft0~69_combout\,
	combout => \ULA|Mux23~3_combout\);

-- Location: LCCOMB_X67_Y38_N0
\ULA|Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~5_combout\ = (\ULA|Mux23~4_combout\ & (((\ULA|Mux23~3_combout\) # (!\ULA|Mux28~7_combout\)))) # (!\ULA|Mux23~4_combout\ & (\ULA|ShiftRight0~123_combout\ & (\ULA|Mux28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux23~4_combout\,
	datab => \ULA|ShiftRight0~123_combout\,
	datac => \ULA|Mux28~7_combout\,
	datad => \ULA|Mux23~3_combout\,
	combout => \ULA|Mux23~5_combout\);

-- Location: LCCOMB_X67_Y38_N22
\ULA|Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~6_combout\ = (\ULA|Mux28~8_combout\ & (((\ULA|Mux23~2_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux23~2_combout\ & ((\ULA|Mux23~5_combout\))) # (!\ULA|Mux23~2_combout\ & (\ULA|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Add2~16_combout\,
	datac => \ULA|Mux23~2_combout\,
	datad => \ULA|Mux23~5_combout\,
	combout => \ULA|Mux23~6_combout\);

-- Location: LCCOMB_X67_Y38_N24
\ULA|Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~7_combout\ = (\ULA|Mux22~1_combout\ & (\ULA|Mux23~1_combout\ & ((\ULA|Mux22~0_combout\)))) # (!\ULA|Mux22~1_combout\ & (((\ULA|Mux23~6_combout\) # (!\ULA|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux23~1_combout\,
	datab => \ULA|Mux23~6_combout\,
	datac => \ULA|Mux22~1_combout\,
	datad => \ULA|Mux22~0_combout\,
	combout => \ULA|Mux23~7_combout\);

-- Location: LCCOMB_X63_Y36_N28
\ULA|Mux23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux23~combout\ = (\ULA|Mux28~11_combout\ & (((\ULA|Mux23~7_combout\)))) # (!\ULA|Mux28~11_combout\ & ((\ULA|Mux23~7_combout\ & ((\ULA|ShiftRight0~35_combout\))) # (!\ULA|Mux23~7_combout\ & (\ULA|ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~52_combout\,
	datab => \ULA|Mux28~11_combout\,
	datac => \ULA|ShiftRight0~35_combout\,
	datad => \ULA|Mux23~7_combout\,
	combout => \ULA|Mux23~combout\);

-- Location: LCFF_X63_Y36_N29
\REG_ULA|estado_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(8));

-- Location: LCCOMB_X65_Y36_N28
\MUXIouD|Saida_8bits_IouD[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[6]~6_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\REG_ULA|estado_out\(8))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\PC_32|estado_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(8),
	datac => \PC_32|estado_out\(6),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[6]~6_combout\);

-- Location: LCFF_X67_Y35_N19
\RI_32|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(3));

-- Location: LCFF_X61_Y31_N13
\PC_32|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[5]~3_combout\,
	sdata => \RI_32|estado_out\(3),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(5));

-- Location: LCCOMB_X65_Y36_N22
\MUXIouD|Saida_8bits_IouD[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[5]~5_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\REG_ULA|estado_out\(7)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\PC_32|estado_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(5),
	datac => \REG_ULA|estado_out\(7),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[5]~5_combout\);

-- Location: LCFF_X66_Y35_N1
\RI_32|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(2));

-- Location: LCFF_X63_Y31_N25
\PC_32|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[4]~2_combout\,
	sdata => \RI_32|estado_out\(2),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(4));

-- Location: LCCOMB_X65_Y36_N24
\MUXIouD|Saida_8bits_IouD[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[4]~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\REG_ULA|estado_out\(6)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\PC_32|estado_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC_32|estado_out\(4),
	datac => \REG_ULA|estado_out\(6),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[4]~4_combout\);

-- Location: LCFF_X65_Y32_N9
\RI_32|estado_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(17),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(17));

-- Location: LCCOMB_X65_Y32_N0
\MUX_REGDST|Saida_5bits[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_REGDST|Saida_5bits[1]~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & (\RI_32|estado_out\(12))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & ((\RI_32|estado_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(12),
	datab => \RI_32|estado_out\(17),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	combout => \MUX_REGDST|Saida_5bits[1]~1_combout\);

-- Location: LCFF_X66_Y38_N13
\REG_B_32|estado_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a12\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(12));

-- Location: LCFF_X67_Y32_N25
\RI_32|estado_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(16));

-- Location: LCCOMB_X65_Y32_N10
\MUX_REGDST|Saida_5bits[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_REGDST|Saida_5bits[0]~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & (\RI_32|estado_out\(11))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7) & ((\RI_32|estado_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(11),
	datac => \RI_32|estado_out\(16),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	combout => \MUX_REGDST|Saida_5bits[0]~0_combout\);

-- Location: LCFF_X66_Y36_N15
\REG_A_32|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(2));

-- Location: LCCOMB_X66_Y36_N24
\MUX_A|Saida_32bits_ALU[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[2]~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datac => \REG_A_32|estado_out\(2),
	datad => \PC_32|estado_out\(2),
	combout => \MUX_A|Saida_32bits_ALU[2]~2_combout\);

-- Location: LCCOMB_X67_Y36_N24
\ULA|ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~76_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\REG_B_32|estado_out\(20)))) # (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\REG_B_32|estado_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_B_32|estado_out\(18),
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \REG_B_32|estado_out\(20),
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight0~76_combout\);

-- Location: LCCOMB_X62_Y39_N4
\ULA|ShiftRight0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~99_combout\ = (\MUX_B|Mux14~1_combout\) # ((\ULA|ShiftLeft0~44_combout\ & ((\ULA|ShiftRight0~70_combout\) # (\ULA|ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~70_combout\,
	datab => \ULA|ShiftLeft0~44_combout\,
	datac => \MUX_B|Mux14~1_combout\,
	datad => \ULA|ShiftRight0~76_combout\,
	combout => \ULA|ShiftRight0~99_combout\);

-- Location: LCCOMB_X62_Y39_N18
\ULA|ShiftRight0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~100_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight0~99_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~63_combout\) # ((\ULA|ShiftRight0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~63_combout\,
	datab => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datac => \ULA|ShiftRight0~99_combout\,
	datad => \ULA|ShiftRight0~62_combout\,
	combout => \ULA|ShiftRight0~100_combout\);

-- Location: LCCOMB_X65_Y39_N6
\ULA|Mux26~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~12_combout\ = (\MUX_B|Mux26~0_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & \RI_32|estado_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \MUX_B|Mux26~0_combout\,
	datad => \RI_32|estado_out\(3),
	combout => \ULA|Mux26~12_combout\);

-- Location: LCCOMB_X66_Y37_N14
\ULA|Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~5_combout\ = (\ULA|Mux28~8_combout\ & ((\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((\ULA|Mux28~9_combout\) # (\ULA|Mux26~12_combout\))) # (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (\ULA|Mux28~9_combout\ & \ULA|Mux26~12_combout\)))) # 
-- (!\ULA|Mux28~8_combout\ & (((\ULA|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux26~12_combout\,
	combout => \ULA|Mux26~5_combout\);

-- Location: LCCOMB_X65_Y37_N22
\ULA|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~3_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (!\MUX_B|Mux26~1_combout\ & \ULA|Mux3~10_combout\)) # 
-- (!\MUX_A|Saida_32bits_ALU[5]~5_combout\ & (\MUX_B|Mux26~1_combout\ $ (!\ULA|Mux3~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datab => \MUX_B|Mux26~1_combout\,
	datac => \CONTROLE_ALU|Mux9~3_combout\,
	datad => \ULA|Mux3~10_combout\,
	combout => \ULA|Mux26~3_combout\);

-- Location: LCCOMB_X68_Y34_N14
\ULA|ShiftRight0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~98_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & ((\ULA|ShiftRight0~68_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftRight0~97_combout\,
	datad => \ULA|ShiftRight0~68_combout\,
	combout => \ULA|ShiftRight0~98_combout\);

-- Location: LCCOMB_X66_Y37_N30
\ULA|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~2_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|Mux31~5_combout\ & ((\ULA|ShiftLeft0~59_combout\) # (\ULA|ShiftLeft0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~59_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|ShiftLeft0~60_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux26~2_combout\);

-- Location: LCCOMB_X66_Y37_N24
\ULA|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~4_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux26~3_combout\ & ((\ULA|Mux26~2_combout\))) # (!\ULA|Mux26~3_combout\ & (\ULA|ShiftRight0~98_combout\)))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux26~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux26~3_combout\,
	datac => \ULA|ShiftRight0~98_combout\,
	datad => \ULA|Mux26~2_combout\,
	combout => \ULA|Mux26~4_combout\);

-- Location: LCCOMB_X66_Y37_N16
\ULA|Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~6_combout\ = (\ULA|Mux28~8_combout\ & (\ULA|Mux26~5_combout\)) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux26~5_combout\ & (\ULA|Mux26~4_combout\)) # (!\ULA|Mux26~5_combout\ & ((\ULA|Add2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~8_combout\,
	datab => \ULA|Mux26~5_combout\,
	datac => \ULA|Mux26~4_combout\,
	datad => \ULA|Add2~10_combout\,
	combout => \ULA|Mux26~6_combout\);

-- Location: LCCOMB_X67_Y39_N16
\ULA|ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~55_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux23~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux24~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datab => \MUX_B|Mux23~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datad => \MUX_B|Mux24~1_combout\,
	combout => \ULA|ShiftRight0~55_combout\);

-- Location: LCCOMB_X68_Y37_N26
\ULA|ShiftRight1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight1~22_combout\ = (\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux25~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux26~1_combout\,
	datab => \MUX_B|Mux25~1_combout\,
	datad => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	combout => \ULA|ShiftRight1~22_combout\);

-- Location: LCCOMB_X67_Y39_N6
\ULA|ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~56_combout\ = (\ULA|ShiftRight0~55_combout\) # ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \ULA|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight0~55_combout\,
	datad => \ULA|ShiftRight1~22_combout\,
	combout => \ULA|ShiftRight0~56_combout\);

-- Location: LCCOMB_X66_Y37_N18
\ULA|Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~7_combout\ = (\ULA|Mux24~14_combout\ & (((\ULA|Mux24~2_combout\)))) # (!\ULA|Mux24~14_combout\ & ((\ULA|Mux24~2_combout\ & (\ULA|ShiftRight0~61_combout\)) # (!\ULA|Mux24~2_combout\ & ((\ULA|ShiftRight0~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~14_combout\,
	datab => \ULA|ShiftRight0~61_combout\,
	datac => \ULA|Mux24~2_combout\,
	datad => \ULA|ShiftRight0~56_combout\,
	combout => \ULA|Mux26~7_combout\);

-- Location: LCCOMB_X66_Y37_N4
\ULA|Mux26~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~8_combout\ = (\ULA|Mux24~14_combout\ & ((\ULA|Mux26~7_combout\ & (\ULA|ShiftRight0~100_combout\)) # (!\ULA|Mux26~7_combout\ & ((\ULA|Mux26~6_combout\))))) # (!\ULA|Mux24~14_combout\ & (((\ULA|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~14_combout\,
	datab => \ULA|ShiftRight0~100_combout\,
	datac => \ULA|Mux26~6_combout\,
	datad => \ULA|Mux26~7_combout\,
	combout => \ULA|Mux26~8_combout\);

-- Location: LCCOMB_X61_Y38_N6
\ULA|resposta~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~63_combout\ = (\MUX_A|Saida_32bits_ALU[5]~5_combout\ & ((\MUX_B|Mux26~2_combout\) # (\MUX_B|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux26~2_combout\,
	datab => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	datad => \MUX_B|Mux26~0_combout\,
	combout => \ULA|resposta~63_combout\);

-- Location: LCCOMB_X67_Y37_N12
\ULA|Mux26~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~9_combout\ = (\ULA|Mux28~12_combout\ & (\ULA|Mux28~25_combout\ & ((!\ULA|resposta~63_combout\)))) # (!\ULA|Mux28~12_combout\ & (((\ULA|Add1~10_combout\)) # (!\ULA|Mux28~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~12_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|Add1~10_combout\,
	datad => \ULA|resposta~63_combout\,
	combout => \ULA|Mux26~9_combout\);

-- Location: LCCOMB_X67_Y37_N6
\ULA|Mux26~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~10_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux26~9_combout\ & ((\ULA|ShiftRight1~89_combout\))) # (!\ULA|Mux26~9_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux26~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~89_combout\,
	datad => \ULA|Mux26~9_combout\,
	combout => \ULA|Mux26~10_combout\);

-- Location: LCCOMB_X66_Y37_N6
\ULA|Mux26~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux26~11_combout\ = (\ULA|Mux24~3_combout\ & (!\ULA|Mux9~8_combout\ & ((\ULA|Mux26~10_combout\)))) # (!\ULA|Mux24~3_combout\ & (((\ULA|Mux26~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~3_combout\,
	datab => \ULA|Mux9~8_combout\,
	datac => \ULA|Mux26~8_combout\,
	datad => \ULA|Mux26~10_combout\,
	combout => \ULA|Mux26~11_combout\);

-- Location: LCFF_X66_Y37_N7
\REG_ULA|estado_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux26~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(5));

-- Location: LCCOMB_X65_Y36_N8
\MUXIouD|Saida_8bits_IouD[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[3]~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\REG_ULA|estado_out\(5)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\PC_32|estado_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(3),
	datab => \REG_ULA|estado_out\(5),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[3]~3_combout\);

-- Location: LCFF_X66_Y35_N11
\RI_32|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(1));

-- Location: LCCOMB_X66_Y32_N20
\CONTROLE_ALU|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux3~0_combout\ = (\RI_32|estado_out\(2) & ((\RI_32|estado_out\(0) & (\RI_32|estado_out\(1) $ (\RI_32|estado_out\(5)))) # (!\RI_32|estado_out\(0) & (\RI_32|estado_out\(1) & \RI_32|estado_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(2),
	datab => \RI_32|estado_out\(0),
	datac => \RI_32|estado_out\(1),
	datad => \RI_32|estado_out\(5),
	combout => \CONTROLE_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y34_N26
\ULA|Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux9~8_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\CONTROLE_ALU|Mux3~0_combout\) # (!\CONTROLE_ALU|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux2~0_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \CONTROLE_ALU|Mux3~0_combout\,
	combout => \ULA|Mux9~8_combout\);

-- Location: LCCOMB_X62_Y36_N6
\ULA|ShiftRight0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~28_combout\ = (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux24~1_combout\)) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux25~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datac => \MUX_B|Mux24~1_combout\,
	datad => \MUX_B|Mux25~1_combout\,
	combout => \ULA|ShiftRight0~28_combout\);

-- Location: LCCOMB_X62_Y39_N8
\ULA|ShiftRight0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~29_combout\ = (\ULA|ShiftRight0~28_combout\) # ((!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & \ULA|ShiftRight1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight1~20_combout\,
	datad => \ULA|ShiftRight0~28_combout\,
	combout => \ULA|ShiftRight0~29_combout\);

-- Location: LCCOMB_X62_Y38_N24
\ULA|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~0_combout\ = (\MUX_B|Mux27~1_combout\ & ((\ULA|Mux28~9_combout\) # ((\MUX_A|Saida_32bits_ALU[4]~4_combout\ & \ULA|Mux28~8_combout\)))) # (!\MUX_B|Mux27~1_combout\ & (\ULA|Mux28~9_combout\ & ((\MUX_A|Saida_32bits_ALU[4]~4_combout\) # 
-- (!\ULA|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|Mux28~8_combout\,
	combout => \ULA|Mux27~0_combout\);

-- Location: LCCOMB_X67_Y33_N10
\ULA|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~2_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux27~1_combout\ $ (\MUX_A|Saida_32bits_ALU[4]~4_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux27~1_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux27~2_combout\);

-- Location: LCCOMB_X65_Y38_N18
\ULA|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~3_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux27~2_combout\ & (\ULA|Mux27~1_combout\)) # (!\ULA|Mux27~2_combout\ & ((\ULA|ShiftRight0~93_combout\))))) # (!\ULA|Mux28~7_combout\ & (((\ULA|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux27~1_combout\,
	datab => \ULA|ShiftRight0~93_combout\,
	datac => \ULA|Mux28~7_combout\,
	datad => \ULA|Mux27~2_combout\,
	combout => \ULA|Mux27~3_combout\);

-- Location: LCCOMB_X65_Y38_N28
\ULA|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~4_combout\ = (\ULA|Mux28~8_combout\ & (((\ULA|Mux27~0_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Mux27~0_combout\ & ((\ULA|Mux27~3_combout\))) # (!\ULA|Mux27~0_combout\ & (\ULA|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add2~8_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux27~0_combout\,
	datad => \ULA|Mux27~3_combout\,
	combout => \ULA|Mux27~4_combout\);

-- Location: LCCOMB_X66_Y38_N18
\ULA|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~5_combout\ = (\ULA|Mux24~2_combout\ & (\ULA|Mux24~14_combout\)) # (!\ULA|Mux24~2_combout\ & ((\ULA|Mux24~14_combout\ & ((\ULA|Mux27~4_combout\))) # (!\ULA|Mux24~14_combout\ & (\ULA|ShiftRight0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~2_combout\,
	datab => \ULA|Mux24~14_combout\,
	datac => \ULA|ShiftRight0~29_combout\,
	datad => \ULA|Mux27~4_combout\,
	combout => \ULA|Mux27~5_combout\);

-- Location: LCCOMB_X66_Y38_N24
\ULA|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~6_combout\ = (\ULA|Mux24~2_combout\ & ((\ULA|Mux27~5_combout\ & ((\ULA|ShiftRight0~95_combout\))) # (!\ULA|Mux27~5_combout\ & (\ULA|ShiftRight0~89_combout\)))) # (!\ULA|Mux24~2_combout\ & (((\ULA|Mux27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight0~89_combout\,
	datab => \ULA|Mux24~2_combout\,
	datac => \ULA|ShiftRight0~95_combout\,
	datad => \ULA|Mux27~5_combout\,
	combout => \ULA|Mux27~6_combout\);

-- Location: LCFF_X67_Y33_N25
\REG_A_32|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(4));

-- Location: LCCOMB_X67_Y33_N24
\ULA|resposta~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~69_combout\ = (\MUX_B|Mux27~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\REG_A_32|estado_out\(4)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\PC_32|estado_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux27~1_combout\,
	datab => \PC_32|estado_out\(4),
	datac => \REG_A_32|estado_out\(4),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	combout => \ULA|resposta~69_combout\);

-- Location: LCCOMB_X67_Y33_N4
\ULA|Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~7_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & (!\ULA|resposta~69_combout\)) # (!\ULA|Mux28~12_combout\ & ((\ULA|Add1~8_combout\))))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~25_combout\,
	datab => \ULA|resposta~69_combout\,
	datac => \ULA|Add1~8_combout\,
	datad => \ULA|Mux28~12_combout\,
	combout => \ULA|Mux27~7_combout\);

-- Location: LCCOMB_X66_Y38_N30
\ULA|Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~8_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux27~7_combout\ & (\ULA|ShiftRight1~68_combout\)) # (!\ULA|Mux27~7_combout\ & ((\MUX_B|Mux0~0_combout\))))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~68_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|Mux27~7_combout\,
	combout => \ULA|Mux27~8_combout\);

-- Location: LCCOMB_X66_Y38_N28
\ULA|Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux27~9_combout\ = (\ULA|Mux24~3_combout\ & (!\ULA|Mux9~8_combout\ & ((\ULA|Mux27~8_combout\)))) # (!\ULA|Mux24~3_combout\ & (((\ULA|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux24~3_combout\,
	datab => \ULA|Mux9~8_combout\,
	datac => \ULA|Mux27~6_combout\,
	datad => \ULA|Mux27~8_combout\,
	combout => \ULA|Mux27~9_combout\);

-- Location: LCFF_X66_Y38_N29
\REG_ULA|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux27~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(4));

-- Location: LCCOMB_X65_Y36_N14
\MUXIouD|Saida_8bits_IouD[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[2]~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\REG_ULA|estado_out\(4))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\PC_32|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_ULA|estado_out\(4),
	datac => \PC_32|estado_out\(2),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[2]~2_combout\);

-- Location: LCFF_X66_Y35_N13
\RI_32|estado_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(4));

-- Location: LCCOMB_X66_Y32_N12
\CONTROLE_ALU|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux10~2_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & (!\RI_32|estado_out\(4) & !\RI_32|estado_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datac => \RI_32|estado_out\(4),
	datad => \RI_32|estado_out\(3),
	combout => \CONTROLE_ALU|Mux10~2_combout\);

-- Location: LCCOMB_X66_Y34_N24
\CONTROLE_ALU|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux7~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (\CONTROLE_ALU|Mux10~2_combout\ & !\CONTROLE_ALU|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \CONTROLE_ALU|Mux10~2_combout\,
	datad => \CONTROLE_ALU|Mux0~0_combout\,
	combout => \CONTROLE_ALU|Mux7~2_combout\);

-- Location: LCCOMB_X61_Y32_N16
\ULA|Mux2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux2~14_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (((!\CONTROLE_ALU|Mux3~0_combout\ & \CONTROLE_ALU|Mux2~0_combout\)) # (!\CONTROLE_ALU|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux3~0_combout\,
	datab => \CONTROLE_ALU|Mux2~0_combout\,
	datac => \CONTROLE_ALU|Mux7~2_combout\,
	datad => \CONTROLE_ALU|Mux8~2_combout\,
	combout => \ULA|Mux2~14_combout\);

-- Location: LCCOMB_X61_Y37_N28
\ULA|resposta~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|resposta~68_combout\ = (\MUX_B|Mux28~1_combout\ & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(3))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_A_32|estado_out\(3),
	datab => \PC_32|estado_out\(3),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \MUX_B|Mux28~1_combout\,
	combout => \ULA|resposta~68_combout\);

-- Location: LCCOMB_X67_Y33_N8
\ULA|Mux28~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~21_combout\ = (\ULA|Mux28~25_combout\ & ((\ULA|Mux28~12_combout\ & ((!\ULA|resposta~68_combout\))) # (!\ULA|Mux28~12_combout\ & (\ULA|Add1~6_combout\)))) # (!\ULA|Mux28~25_combout\ & (((!\ULA|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~6_combout\,
	datab => \ULA|Mux28~25_combout\,
	datac => \ULA|resposta~68_combout\,
	datad => \ULA|Mux28~12_combout\,
	combout => \ULA|Mux28~21_combout\);

-- Location: LCCOMB_X62_Y33_N10
\ULA|Mux28~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~22_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|Mux28~21_combout\ & ((\ULA|ShiftRight1~64_combout\))) # (!\ULA|Mux28~21_combout\ & (\MUX_B|Mux0~0_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Mux28~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux7~2_combout\,
	datab => \MUX_B|Mux0~0_combout\,
	datac => \ULA|ShiftRight1~64_combout\,
	datad => \ULA|Mux28~21_combout\,
	combout => \ULA|Mux28~22_combout\);

-- Location: LCCOMB_X61_Y37_N8
\ULA|Mux28~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~15_combout\ = (\ULA|Mux28~8_combout\ & (((!\ULA|Mux28~9_combout\ & \ULA|resposta~68_combout\)))) # (!\ULA|Mux28~8_combout\ & ((\ULA|Add2~6_combout\) # ((\ULA|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add2~6_combout\,
	datab => \ULA|Mux28~8_combout\,
	datac => \ULA|Mux28~9_combout\,
	datad => \ULA|resposta~68_combout\,
	combout => \ULA|Mux28~15_combout\);

-- Location: LCCOMB_X60_Y37_N18
\ULA|Mux28~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~17_combout\ = (\ULA|Mux3~10_combout\ & (!\CONTROLE_ALU|Mux9~3_combout\ & (\MUX_B|Mux28~1_combout\ $ (\MUX_A|Saida_32bits_ALU[3]~3_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\CONTROLE_ALU|Mux9~3_combout\) # ((!\MUX_B|Mux28~1_combout\ & 
-- !\MUX_A|Saida_32bits_ALU[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux28~1_combout\,
	datab => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \CONTROLE_ALU|Mux9~3_combout\,
	combout => \ULA|Mux28~17_combout\);

-- Location: LCCOMB_X61_Y39_N22
\ULA|Mux28~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~16_combout\ = (\ULA|Mux31~5_combout\ & (!\ULA|Mux28~24_combout\ & \ULA|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ULA|Mux31~5_combout\,
	datac => \ULA|Mux28~24_combout\,
	datad => \ULA|ShiftLeft0~52_combout\,
	combout => \ULA|Mux28~16_combout\);

-- Location: LCCOMB_X61_Y37_N30
\ULA|Mux28~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~18_combout\ = (\ULA|Mux28~7_combout\ & ((\ULA|Mux28~17_combout\ & (\ULA|Mux28~16_combout\)) # (!\ULA|Mux28~17_combout\ & ((\ULA|ShiftRight0~88_combout\))))) # (!\ULA|Mux28~7_combout\ & (\ULA|Mux28~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~7_combout\,
	datab => \ULA|Mux28~17_combout\,
	datac => \ULA|Mux28~16_combout\,
	datad => \ULA|ShiftRight0~88_combout\,
	combout => \ULA|Mux28~18_combout\);

-- Location: LCCOMB_X61_Y37_N4
\ULA|Mux28~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~19_combout\ = (\ULA|Mux28~9_combout\ & ((\ULA|Mux28~15_combout\ & ((\ULA|Mux28~18_combout\))) # (!\ULA|Mux28~15_combout\ & (\ULA|resposta~67_combout\)))) # (!\ULA|Mux28~9_combout\ & (((\ULA|Mux28~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|resposta~67_combout\,
	datab => \ULA|Mux28~9_combout\,
	datac => \ULA|Mux28~15_combout\,
	datad => \ULA|Mux28~18_combout\,
	combout => \ULA|Mux28~19_combout\);

-- Location: LCCOMB_X67_Y39_N18
\ULA|Mux28~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~13_combout\ = (\ULA|Mux28~24_combout\ & ((\ULA|ShiftRight1~50_combout\) # ((\ULA|Mux28~6_combout\)))) # (!\ULA|Mux28~24_combout\ & (((!\ULA|Mux28~6_combout\ & \ULA|ShiftRight1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~50_combout\,
	datab => \ULA|Mux28~24_combout\,
	datac => \ULA|Mux28~6_combout\,
	datad => \ULA|ShiftRight1~23_combout\,
	combout => \ULA|Mux28~13_combout\);

-- Location: LCCOMB_X60_Y37_N12
\ULA|Mux28~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~14_combout\ = (\ULA|Mux28~6_combout\ & ((\ULA|Mux28~13_combout\ & ((\ULA|ShiftRight0~83_combout\))) # (!\ULA|Mux28~13_combout\ & (\ULA|ShiftRight1~22_combout\)))) # (!\ULA|Mux28~6_combout\ & (((\ULA|Mux28~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftRight1~22_combout\,
	datab => \ULA|Mux28~6_combout\,
	datac => \ULA|ShiftRight0~83_combout\,
	datad => \ULA|Mux28~13_combout\,
	combout => \ULA|Mux28~14_combout\);

-- Location: LCCOMB_X61_Y37_N18
\ULA|Mux28~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~20_combout\ = (\ULA|Mux28~11_combout\ & (!\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux28~19_combout\))) # (!\ULA|Mux28~11_combout\ & (((\ULA|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux28~19_combout\,
	datad => \ULA|Mux28~14_combout\,
	combout => \ULA|Mux28~20_combout\);

-- Location: LCCOMB_X61_Y37_N16
\ULA|Mux28~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux28~23_combout\ = (\ULA|Mux28~20_combout\) # ((\ULA|Mux28~11_combout\ & (\ULA|Mux2~14_combout\ & \ULA|Mux28~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux28~11_combout\,
	datab => \ULA|Mux2~14_combout\,
	datac => \ULA|Mux28~22_combout\,
	datad => \ULA|Mux28~20_combout\,
	combout => \ULA|Mux28~23_combout\);

-- Location: LCFF_X61_Y37_N17
\REG_ULA|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux28~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(3));

-- Location: LCCOMB_X65_Y36_N16
\MUXIouD|Saida_8bits_IouD[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[1]~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\REG_ULA|estado_out\(3)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\PC_32|estado_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC_32|estado_out\(1),
	datac => \REG_ULA|estado_out\(3),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[1]~1_combout\);

-- Location: LCFF_X66_Y32_N11
\RI_32|estado_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(29));

-- Location: LCCOMB_X66_Y32_N2
\CONTROLE|enderecamento_instance|mux|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\ = (\RI_32|estado_out\(27) & (!\RI_32|estado_out\(30) & (!\RI_32|estado_out\(28) & \RI_32|estado_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(27),
	datab => \RI_32|estado_out\(30),
	datac => \RI_32|estado_out\(28),
	datad => \RI_32|estado_out\(26),
	combout => \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\);

-- Location: LCCOMB_X65_Y39_N30
\CONTROLE|enderecamento_instance|mux|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux1~2_combout\ = (\RI_32|estado_out\(31) & (\RI_32|estado_out\(29) & (\CONTROLE|enderecamento_instance|mux|Mux3~2_combout\ & !\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(31),
	datab => \RI_32|estado_out\(29),
	datac => \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	combout => \CONTROLE|enderecamento_instance|mux|Mux1~2_combout\);

-- Location: LCCOMB_X66_Y32_N10
\CONTROLE|enderecamento_instance|rom1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|rom1|Mux3~0_combout\ = (\RI_32|estado_out\(29)) # ((\RI_32|estado_out\(27)) # (\RI_32|estado_out\(28) $ (\RI_32|estado_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(28),
	datab => \RI_32|estado_out\(26),
	datac => \RI_32|estado_out\(29),
	datad => \RI_32|estado_out\(27),
	combout => \CONTROLE|enderecamento_instance|rom1|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y39_N18
\CONTROLE|enderecamento_instance|mux|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux1~1_combout\ = (\CONTROLE|enderecamento_instance|mux|Mux1~0_combout\ & (!\CONTROLE|enderecamento_instance|rom1|Mux3~0_combout\ & (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & 
-- !\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\,
	datab => \CONTROLE|enderecamento_instance|rom1|Mux3~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	combout => \CONTROLE|enderecamento_instance|mux|Mux1~1_combout\);

-- Location: LCCOMB_X66_Y39_N30
\CONTROLE|enderecamento_instance|mux|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux1~4_combout\ = (\CONTROLE|enderecamento_instance|mux|Mux1~1_combout\) # ((\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & ((\CONTROLE|enderecamento_instance|mux|Mux1~3_combout\) # 
-- (\CONTROLE|enderecamento_instance|mux|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux1~3_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	datac => \CONTROLE|enderecamento_instance|mux|Mux1~2_combout\,
	datad => \CONTROLE|enderecamento_instance|mux|Mux1~1_combout\,
	combout => \CONTROLE|enderecamento_instance|mux|Mux1~4_combout\);

-- Location: LCFF_X66_Y39_N31
\CONTROLE|microPC_instance|estado_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \CONTROLE|enderecamento_instance|mux|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLE|microPC_instance|estado_out\(2));

-- Location: LCCOMB_X63_Y39_N0
\CONTROLE|microCodigo_instance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux6~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(1) & (\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(0) & !\CONTROLE|microPC_instance|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(1),
	datab => \CONTROLE|microPC_instance|estado_out\(3),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y39_N24
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|Mux6~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13));

-- Location: LCFF_X62_Y36_N9
\PC_32|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \MUX_ORIGPC|Mux31~0_combout\,
	sclr => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(0));

-- Location: LCCOMB_X65_Y36_N10
\MUXIouD|Saida_8bits_IouD[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUXIouD|Saida_8bits_IouD[0]~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & (\REG_ULA|estado_out\(2))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11) & ((\PC_32|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(2),
	datac => \PC_32|estado_out\(0),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	combout => \MUXIouD|Saida_8bits_IouD[0]~0_combout\);

-- Location: LCFF_X66_Y35_N29
\RI_32|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(0));

-- Location: LCCOMB_X66_Y35_N18
\CONTROLE_ALU|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux2~0_combout\ = (\RI_32|estado_out\(1) & (((\RI_32|estado_out\(5)) # (!\RI_32|estado_out\(2))) # (!\RI_32|estado_out\(0)))) # (!\RI_32|estado_out\(1) & ((\RI_32|estado_out\(0)) # ((\RI_32|estado_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(1),
	datab => \RI_32|estado_out\(0),
	datac => \RI_32|estado_out\(2),
	datad => \RI_32|estado_out\(5),
	combout => \CONTROLE_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y35_N20
\CONTROLE_ALU|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux9~2_combout\ = ((!\RI_32|estado_out\(4) & (!\CONTROLE_ALU|Mux2~0_combout\ & !\RI_32|estado_out\(3)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(4),
	datab => \CONTROLE_ALU|Mux2~0_combout\,
	datac => \RI_32|estado_out\(3),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	combout => \CONTROLE_ALU|Mux9~2_combout\);

-- Location: LCCOMB_X66_Y35_N22
\CONTROLE_ALU|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux9~0_combout\ = (!\RI_32|estado_out\(28) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0) & (!\RI_32|estado_out\(26) & \CONTROLE_ALU|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(28),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \RI_32|estado_out\(26),
	datad => \CONTROLE_ALU|Mux10~0_combout\,
	combout => \CONTROLE_ALU|Mux9~0_combout\);

-- Location: LCCOMB_X66_Y35_N6
\CONTROLE_ALU|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE_ALU|Mux9~3_combout\ = (\CONTROLE_ALU|Mux9~0_combout\) # ((!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) & ((\CONTROLE_ALU|Mux9~1_combout\) # (\CONTROLE_ALU|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux9~1_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datac => \CONTROLE_ALU|Mux9~2_combout\,
	datad => \CONTROLE_ALU|Mux9~0_combout\,
	combout => \CONTROLE_ALU|Mux9~3_combout\);

-- Location: LCCOMB_X61_Y36_N24
\ULA|Mux31~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~23_combout\ = (\ULA|Add1~62_combout\ & ((\CONTROLE_ALU|Mux0~0_combout\) # ((!\CONTROLE_ALU|Mux10~2_combout\) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Add1~62_combout\,
	datab => \CONTROLE_ALU|Mux0~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datad => \CONTROLE_ALU|Mux10~2_combout\,
	combout => \ULA|Mux31~23_combout\);

-- Location: LCCOMB_X65_Y35_N18
\ULA|ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~54_combout\ = (\MUX_A|Saida_32bits_ALU[4]~4_combout\ & (!\ULA|ShiftLeft0~40_combout\ & !\ULA|ShiftLeft0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	datab => \ULA|ShiftLeft0~40_combout\,
	datac => \ULA|ShiftLeft0~43_combout\,
	combout => \ULA|ShiftRight0~54_combout\);

-- Location: LCCOMB_X61_Y36_N14
\ULA|ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~53_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~44_combout\))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (\ULA|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftRight0~52_combout\,
	datad => \ULA|ShiftRight0~44_combout\,
	combout => \ULA|ShiftRight0~53_combout\);

-- Location: LCCOMB_X67_Y39_N22
\ULA|ShiftRight0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~36_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\ & ((\MUX_B|Mux30~1_combout\))) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\ & (\MUX_B|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \MUX_B|Mux31~1_combout\,
	datac => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \MUX_B|Mux30~1_combout\,
	combout => \ULA|ShiftRight0~36_combout\);

-- Location: LCCOMB_X61_Y36_N8
\ULA|ShiftRight0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~37_combout\ = (!\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|ShiftRight0~36_combout\ & !\MUX_A|Saida_32bits_ALU[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datac => \ULA|ShiftRight0~36_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~37_combout\);

-- Location: LCCOMB_X62_Y39_N22
\ULA|ShiftRight0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~30_combout\ = (\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (((\ULA|ShiftRight0~29_combout\)))) # (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & (\MUX_A|Saida_32bits_ALU[1]~1_combout\ & (\ULA|ShiftRight1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	datab => \ULA|ShiftRight1~21_combout\,
	datac => \ULA|ShiftRight0~29_combout\,
	datad => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	combout => \ULA|ShiftRight0~30_combout\);

-- Location: LCCOMB_X61_Y36_N18
\ULA|ShiftRight0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~127_combout\ = (\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (((\ULA|ShiftRight0~35_combout\)))) # (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & ((\ULA|ShiftRight0~37_combout\) # ((\ULA|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datab => \ULA|ShiftRight0~37_combout\,
	datac => \ULA|ShiftRight0~35_combout\,
	datad => \ULA|ShiftRight0~30_combout\,
	combout => \ULA|ShiftRight0~127_combout\);

-- Location: LCCOMB_X61_Y36_N12
\ULA|ShiftRight0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|ShiftRight0~128_combout\ = (\ULA|Mux31~5_combout\ & ((\ULA|ShiftRight0~127_combout\) # ((\ULA|ShiftRight0~54_combout\ & \ULA|ShiftRight0~53_combout\)))) # (!\ULA|Mux31~5_combout\ & (\ULA|ShiftRight0~54_combout\ & (\ULA|ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~5_combout\,
	datab => \ULA|ShiftRight0~54_combout\,
	datac => \ULA|ShiftRight0~53_combout\,
	datad => \ULA|ShiftRight0~127_combout\,
	combout => \ULA|ShiftRight0~128_combout\);

-- Location: LCCOMB_X61_Y36_N16
\ULA|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~6_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|ShiftRight0~128_combout\) # ((\ULA|ShiftLeft0~45_combout\ & \MUX_B|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~45_combout\,
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \MUX_B|Mux0~0_combout\,
	datad => \ULA|ShiftRight0~128_combout\,
	combout => \ULA|Mux31~6_combout\);

-- Location: LCCOMB_X61_Y36_N22
\ULA|Mux31~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~22_combout\ = (\ULA|Add1~0_combout\ & (((\CONTROLE_ALU|Mux0~0_combout\) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0))) # (!\CONTROLE_ALU|Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux10~2_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	datac => \ULA|Add1~0_combout\,
	datad => \CONTROLE_ALU|Mux0~0_combout\,
	combout => \ULA|Mux31~22_combout\);

-- Location: LCCOMB_X61_Y36_N30
\ULA|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~7_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (!\ULA|Mux3~10_combout\)) # (!\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux31~22_combout\) # ((!\ULA|Mux3~10_combout\ & \ULA|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux31~6_combout\,
	datad => \ULA|Mux31~22_combout\,
	combout => \ULA|Mux31~7_combout\);

-- Location: LCCOMB_X61_Y36_N20
\ULA|Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~8_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & ((\ULA|Mux31~7_combout\ & ((\ULA|Mux31~23_combout\))) # (!\ULA|Mux31~7_combout\ & (\ULA|Mux31~4_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Mux31~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~4_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux31~23_combout\,
	datad => \ULA|Mux31~7_combout\,
	combout => \ULA|Mux31~8_combout\);

-- Location: LCCOMB_X62_Y36_N20
\ULA|Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~9_combout\ = (\MUX_B|Mux31~0_combout\ & ((\CONTROLE_ALU|Mux7~2_combout\) # (!\MUX_A|Saida_32bits_ALU[0]~0_combout\))) # (!\MUX_B|Mux31~0_combout\ & ((\MUX_A|Saida_32bits_ALU[0]~0_combout\) # (!\CONTROLE_ALU|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_B|Mux31~0_combout\,
	datab => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	datad => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux31~9_combout\);

-- Location: LCCOMB_X62_Y36_N16
\ULA|Mux31~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~13_combout\ = (!\MUX_A|Saida_32bits_ALU[3]~3_combout\ & (!\MUX_A|Saida_32bits_ALU[2]~2_combout\ & \ULA|Mux31~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	datac => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	datad => \ULA|Mux31~5_combout\,
	combout => \ULA|Mux31~13_combout\);

-- Location: LCCOMB_X62_Y36_N14
\ULA|Mux31~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~14_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|ShiftLeft0~46_combout\ & ((\ULA|Mux31~13_combout\)))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (((\ULA|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ShiftLeft0~46_combout\,
	datab => \ULA|Add2~0_combout\,
	datac => \ULA|Mux31~13_combout\,
	datad => \CONTROLE_ALU|Mux7~2_combout\,
	combout => \ULA|Mux31~14_combout\);

-- Location: LCCOMB_X61_Y36_N10
\ULA|Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~10_combout\ = (\CONTROLE_ALU|Mux7~2_combout\ & ((\ULA|ShiftRight0~128_combout\))) # (!\CONTROLE_ALU|Mux7~2_combout\ & (\ULA|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE_ALU|Mux7~2_combout\,
	datac => \ULA|Add2~0_combout\,
	datad => \ULA|ShiftRight0~128_combout\,
	combout => \ULA|Mux31~10_combout\);

-- Location: LCCOMB_X61_Y36_N28
\ULA|Mux31~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~12_combout\ = (\CONTROLE_ALU|Mux9~3_combout\ & (((\ULA|Mux31~10_combout\) # (!\ULA|Mux3~10_combout\)))) # (!\CONTROLE_ALU|Mux9~3_combout\ & (\ULA|Mux31~11_combout\ & (\ULA|Mux3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux31~11_combout\,
	datab => \CONTROLE_ALU|Mux9~3_combout\,
	datac => \ULA|Mux3~10_combout\,
	datad => \ULA|Mux31~10_combout\,
	combout => \ULA|Mux31~12_combout\);

-- Location: LCCOMB_X61_Y36_N6
\ULA|Mux31~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~15_combout\ = (\ULA|Mux3~10_combout\ & (((\ULA|Mux31~12_combout\)))) # (!\ULA|Mux3~10_combout\ & ((\ULA|Mux31~12_combout\ & ((\ULA|Mux31~14_combout\))) # (!\ULA|Mux31~12_combout\ & (!\ULA|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|Mux3~10_combout\,
	datab => \ULA|Mux31~9_combout\,
	datac => \ULA|Mux31~14_combout\,
	datad => \ULA|Mux31~12_combout\,
	combout => \ULA|Mux31~15_combout\);

-- Location: LCCOMB_X61_Y36_N4
\ULA|Mux31~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ULA|Mux31~16_combout\ = (\CONTROLE_ALU|Mux8~2_combout\ & (\ULA|Mux31~8_combout\)) # (!\CONTROLE_ALU|Mux8~2_combout\ & ((\ULA|Mux31~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE_ALU|Mux8~2_combout\,
	datac => \ULA|Mux31~8_combout\,
	datad => \ULA|Mux31~15_combout\,
	combout => \ULA|Mux31~16_combout\);

-- Location: LCFF_X61_Y36_N5
\REG_ULA|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \ULA|Mux31~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_ULA|estado_out\(0));

-- Location: LCCOMB_X63_Y32_N20
\MUX_MEMPARAREG|Saida_32bits[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_MEMPARAREG|Saida_32bits[0]~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & (\RDM_32|estado_out\(0))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8) & ((\REG_ULA|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RDM_32|estado_out\(0),
	datab => \REG_ULA|estado_out\(0),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	combout => \MUX_MEMPARAREG|Saida_32bits[0]~0_combout\);

-- Location: LCFF_X67_Y35_N23
\REG_B_32|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_B_32|estado_out\(0));

-- Location: LCFF_X66_Y32_N15
\RI_32|estado_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(31),
	sload => VCC,
	ena => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RI_32|estado_out\(31));

-- Location: LCCOMB_X65_Y39_N8
\CONTROLE|enderecamento_instance|mux|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux3~3_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & (!\CONTROLE|microPC_instance|estado_out\(0))) # (!\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & 
-- (((\RI_32|estado_out\(31) & \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \RI_32|estado_out\(31),
	datac => \CONTROLE|enderecamento_instance|mux|Mux3~2_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	combout => \CONTROLE|enderecamento_instance|mux|Mux3~3_combout\);

-- Location: LCCOMB_X65_Y39_N4
\CONTROLE|enderecamento_instance|mux|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux3~4_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & (((\CONTROLE|enderecamento_instance|mux|Mux3~3_combout\)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & 
-- (\CONTROLE|enderecamento_instance|mux|Mux3~1_combout\ & (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux3~1_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	datac => \CONTROLE|enderecamento_instance|mux|Mux3~3_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	combout => \CONTROLE|enderecamento_instance|mux|Mux3~4_combout\);

-- Location: LCFF_X65_Y39_N5
\CONTROLE|microPC_instance|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \CONTROLE|enderecamento_instance|mux|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLE|microPC_instance|estado_out\(0));

-- Location: LCCOMB_X65_Y39_N26
\CONTROLE|microCodigo_instance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux0~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3) & ((\CONTROLE|microPC_instance|estado_out\(0)) # ((\CONTROLE|microPC_instance|estado_out\(2)) # (!\CONTROLE|microPC_instance|estado_out\(1))))) # 
-- (!\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(2) $ (((!\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(3),
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datac => \CONTROLE|microPC_instance|estado_out\(2),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y39_N2
\CONTROLE|microCodigo_instance|microInstrucao.nextAddress[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (!\CONTROLE|microCodigo_instance|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|Mux0~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1));

-- Location: LCCOMB_X66_Y35_N2
\CONTROLE|enderecamento_instance|rom1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\ = (!\RI_32|estado_out\(4) & (!\RI_32|estado_out\(0) & (!\RI_32|estado_out\(2) & \RI_32|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(4),
	datab => \RI_32|estado_out\(0),
	datac => \RI_32|estado_out\(2),
	datad => \RI_32|estado_out\(1),
	combout => \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\);

-- Location: LCCOMB_X66_Y32_N8
\CONTROLE|enderecamento_instance|mux|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~0_combout\ = (!\RI_32|estado_out\(27) & ((\RI_32|estado_out\(3)) # ((\RI_32|estado_out\(5)) # (!\CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(3),
	datab => \CONTROLE|enderecamento_instance|rom1|Mux0~0_combout\,
	datac => \RI_32|estado_out\(27),
	datad => \RI_32|estado_out\(5),
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y32_N14
\CONTROLE|enderecamento_instance|mux|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux3~1_combout\ = (\CONTROLE|enderecamento_instance|mux|Mux3~0_combout\ & (!\RI_32|estado_out\(30) & (!\RI_32|estado_out\(31) & !\CONTROLE|enderecamento_instance|mux|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux3~0_combout\,
	datab => \RI_32|estado_out\(30),
	datac => \RI_32|estado_out\(31),
	datad => \CONTROLE|enderecamento_instance|mux|Mux2~0_combout\,
	combout => \CONTROLE|enderecamento_instance|mux|Mux3~1_combout\);

-- Location: LCCOMB_X65_Y38_N4
\CONTROLE|enderecamento_instance|mux|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\ = (!\RI_32|estado_out\(31) & !\RI_32|estado_out\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RI_32|estado_out\(31),
	datad => \RI_32|estado_out\(30),
	combout => \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y39_N6
\CONTROLE|enderecamento_instance|mux|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux0~1_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & ((\CONTROLE|enderecamento_instance|mux|Mux3~1_combout\) # ((\CONTROLE|enderecamento_instance|mux|Mux0~0_combout\ & 
-- \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux0~0_combout\,
	datab => \CONTROLE|enderecamento_instance|mux|Mux3~1_combout\,
	datac => \CONTROLE|enderecamento_instance|mux|Mux1~0_combout\,
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	combout => \CONTROLE|enderecamento_instance|mux|Mux0~1_combout\);

-- Location: LCCOMB_X63_Y39_N22
\CONTROLE|enderecamento_instance|mux|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux0~2_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & ((\CONTROLE|enderecamento_instance|mux|Mux0~1_combout\) # ((\CONTROLE|somador_instance|Add0~0_combout\ & 
-- \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|somador_instance|Add0~0_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	datad => \CONTROLE|enderecamento_instance|mux|Mux0~1_combout\,
	combout => \CONTROLE|enderecamento_instance|mux|Mux0~2_combout\);

-- Location: LCFF_X63_Y39_N23
\CONTROLE|microPC_instance|estado_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \CONTROLE|enderecamento_instance|mux|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLE|microPC_instance|estado_out\(3));

-- Location: LCCOMB_X63_Y39_N16
\CONTROLE|microCodigo_instance|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux1~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(1) & ((\CONTROLE|microPC_instance|estado_out\(3) & ((\CONTROLE|microPC_instance|estado_out\(0)) # (\CONTROLE|microPC_instance|estado_out\(2)))) # 
-- (!\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(2))))) # (!\CONTROLE|microPC_instance|estado_out\(1) & ((\CONTROLE|microPC_instance|estado_out\(3)) # 
-- ((\CONTROLE|microPC_instance|estado_out\(0)) # (\CONTROLE|microPC_instance|estado_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(1),
	datab => \CONTROLE|microPC_instance|estado_out\(3),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux1~0_combout\);

-- Location: LCCOMB_X63_Y39_N2
\CONTROLE|microCodigo_instance|microInstrucao.nextAddress[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((!\CONTROLE|microCodigo_instance|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	datac => \CONTROLE|microCodigo_instance|Mux1~0_combout\,
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0));

-- Location: LCCOMB_X67_Y32_N18
\CONTROLE|enderecamento_instance|rom1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\ = (\RI_32|estado_out\(27) & ((\RI_32|estado_out\(28)) # (\RI_32|estado_out\(26) $ (\RI_32|estado_out\(31))))) # (!\RI_32|estado_out\(27) & ((\RI_32|estado_out\(31)) # ((\RI_32|estado_out\(26) & 
-- !\RI_32|estado_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(26),
	datab => \RI_32|estado_out\(27),
	datac => \RI_32|estado_out\(28),
	datad => \RI_32|estado_out\(31),
	combout => \CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y32_N16
\CONTROLE|enderecamento_instance|mux|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~2_combout\ = (!\RI_32|estado_out\(31) & (!\RI_32|estado_out\(28) & (!\RI_32|estado_out\(26) & !\RI_32|estado_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(31),
	datab => \RI_32|estado_out\(28),
	datac => \RI_32|estado_out\(26),
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~2_combout\);

-- Location: LCCOMB_X67_Y32_N20
\CONTROLE|enderecamento_instance|mux|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~3_combout\ = (\CONTROLE|enderecamento_instance|mux|Mux2~0_combout\ & ((\CONTROLE|enderecamento_instance|mux|Mux2~2_combout\) # ((!\CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\ & \RI_32|estado_out\(29))))) 
-- # (!\CONTROLE|enderecamento_instance|mux|Mux2~0_combout\ & (!\CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\ & ((\RI_32|estado_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux2~0_combout\,
	datab => \CONTROLE|enderecamento_instance|rom1|Mux4~0_combout\,
	datac => \CONTROLE|enderecamento_instance|mux|Mux2~2_combout\,
	datad => \RI_32|estado_out\(29),
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~3_combout\);

-- Location: LCCOMB_X63_Y39_N10
\CONTROLE|enderecamento_instance|mux|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~1_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & (\CONTROLE|microPC_instance|estado_out\(1) $ (\CONTROLE|microPC_instance|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microPC_instance|estado_out\(1),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~1_combout\);

-- Location: LCCOMB_X63_Y39_N12
\CONTROLE|enderecamento_instance|mux|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~4_combout\ = (\CONTROLE|enderecamento_instance|mux|Mux2~1_combout\) # ((!\RI_32|estado_out\(30) & (!\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0) & 
-- \CONTROLE|enderecamento_instance|mux|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RI_32|estado_out\(30),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	datac => \CONTROLE|enderecamento_instance|mux|Mux2~3_combout\,
	datad => \CONTROLE|enderecamento_instance|mux|Mux2~1_combout\,
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~4_combout\);

-- Location: LCCOMB_X63_Y39_N26
\CONTROLE|enderecamento_instance|mux|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|enderecamento_instance|mux|Mux2~6_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & ((\CONTROLE|enderecamento_instance|mux|Mux2~4_combout\) # ((\CONTROLE|enderecamento_instance|mux|Mux2~5_combout\ & 
-- !\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1) & (\CONTROLE|enderecamento_instance|mux|Mux2~5_combout\ & 
-- (\CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|enderecamento_instance|mux|Mux2~5_combout\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	datad => \CONTROLE|enderecamento_instance|mux|Mux2~4_combout\,
	combout => \CONTROLE|enderecamento_instance|mux|Mux2~6_combout\);

-- Location: LCFF_X63_Y39_N27
\CONTROLE|microPC_instance|estado_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~combout\,
	datain => \CONTROLE|enderecamento_instance|mux|Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \CONTROLE|microPC_instance|estado_out\(1));

-- Location: LCCOMB_X63_Y39_N14
\CONTROLE|microCodigo_instance|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux20~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(1) & (\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(3),
	datab => \CONTROLE|microPC_instance|estado_out\(1),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux20~0_combout\);

-- Location: CLKCTRL_G9
\CONTROLE|microCodigo_instance|Mux20~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\);

-- Location: LCCOMB_X65_Y32_N24
\CONTROLE|microCodigo_instance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux3~0_combout\ = (!\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(3),
	combout => \CONTROLE|microCodigo_instance|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y32_N6
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	datac => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datad => \CONTROLE|microCodigo_instance|Mux3~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1));

-- Location: LCCOMB_X65_Y32_N2
\CONTROLE|microCodigo_instance|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux13~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(0) & (\CONTROLE|microPC_instance|estado_out\(2) $ (\CONTROLE|microPC_instance|estado_out\(1))))) # 
-- (!\CONTROLE|microPC_instance|estado_out\(3) & (\CONTROLE|microPC_instance|estado_out\(2) & (\CONTROLE|microPC_instance|estado_out\(0) $ (!\CONTROLE|microPC_instance|estado_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux13~0_combout\);

-- Location: LCCOMB_X65_Y32_N22
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6))) # (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) 
-- & ((\CONTROLE|microCodigo_instance|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6),
	datac => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datad => \CONTROLE|microCodigo_instance|Mux13~0_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6));

-- Location: LCCOMB_X67_Y32_N22
\CONTROLE|microCodigo_instance|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux3~1_combout\ = (!\CONTROLE|microPC_instance|estado_out\(0) & (!\CONTROLE|microPC_instance|estado_out\(2) & (\CONTROLE|microPC_instance|estado_out\(3) & !\CONTROLE|microPC_instance|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux3~1_combout\);

-- Location: LCCOMB_X67_Y32_N0
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[16]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16),
	datad => \CONTROLE|microCodigo_instance|Mux3~1_combout\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16));

-- Location: LCCOMB_X65_Y39_N28
\CONTROLE|microCodigo_instance|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux9~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(0) & (\CONTROLE|microPC_instance|estado_out\(2) & (!\CONTROLE|microPC_instance|estado_out\(3) & !\CONTROLE|microPC_instance|estado_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(0),
	datab => \CONTROLE|microPC_instance|estado_out\(2),
	datac => \CONTROLE|microPC_instance|estado_out\(3),
	datad => \CONTROLE|microPC_instance|estado_out\(1),
	combout => \CONTROLE|microCodigo_instance|Mux9~0_combout\);

-- Location: LCCOMB_X65_Y36_N26
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10),
	datac => \CONTROLE|microCodigo_instance|Mux9~0_combout\,
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10));

-- Location: LCCOMB_X63_Y39_N4
\CONTROLE|microCodigo_instance|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux10~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3)) # ((\CONTROLE|microPC_instance|estado_out\(2)) # (\CONTROLE|microPC_instance|estado_out\(1) $ (\CONTROLE|microPC_instance|estado_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(1),
	datab => \CONTROLE|microPC_instance|estado_out\(3),
	datac => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux10~0_combout\);

-- Location: LCCOMB_X63_Y39_N20
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(9) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(9)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (!\CONTROLE|microCodigo_instance|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|Mux10~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(9),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(9));

-- Location: LCCOMB_X65_Y39_N14
\CONTROLE|microCodigo_instance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|Mux2~0_combout\ = (\CONTROLE|microPC_instance|estado_out\(3) & (!\CONTROLE|microPC_instance|estado_out\(0) & \CONTROLE|microPC_instance|estado_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microPC_instance|estado_out\(3),
	datab => \CONTROLE|microPC_instance|estado_out\(0),
	datad => \CONTROLE|microPC_instance|estado_out\(2),
	combout => \CONTROLE|microCodigo_instance|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y39_N24
\CONTROLE|microCodigo_instance|microInstrucao.microCmds[17]\ : cycloneii_lcell_comb
-- Equation(s):
-- \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17) = (GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17)))) # 
-- (!GLOBAL(\CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\) & (\CONTROLE|microCodigo_instance|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLE|microCodigo_instance|Mux2~0_combout\,
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17),
	datad => \CONTROLE|microCodigo_instance|Mux20~0clkctrl_outclk\,
	combout => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17));

-- Location: LCFF_X66_Y31_N29
\REG_A_32|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \BREG|bregfile_rtl_0|auto_generated|ram_block1a25\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG_A_32|estado_out\(25));

-- Location: LCCOMB_X63_Y31_N16
\PC_32|estado_out[25]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \PC_32|estado_out[25]~23_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & (\REG_ULA|estado_out\(25))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14) & ((\ULA|Mux6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG_ULA|estado_out\(25),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	datad => \ULA|Mux6~10_combout\,
	combout => \PC_32|estado_out[25]~23_combout\);

-- Location: LCFF_X63_Y31_N17
\PC_32|estado_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \PC_32|estado_out[25]~23_combout\,
	sdata => \RI_32|estado_out\(23),
	sclr => \PC_32|estado_out[20]~26_combout\,
	sload => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	ena => \PC_DESVIOS|PCenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PC_32|estado_out\(25));

-- Location: LCCOMB_X66_Y31_N6
\MUX_A|Saida_32bits_ALU[25]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_A|Saida_32bits_ALU[25]~25_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & (\REG_A_32|estado_out\(25))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2) & ((\PC_32|estado_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG_A_32|estado_out\(25),
	datac => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	datad => \PC_32|estado_out\(25),
	combout => \MUX_A|Saida_32bits_ALU[25]~25_combout\);

-- Location: LCCOMB_X67_Y35_N22
\MUX_B|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux31~0_combout\ = (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & ((\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & ((\RI_32|estado_out\(0)))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & 
-- (\REG_B_32|estado_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	datac => \REG_B_32|estado_out\(0),
	datad => \RI_32|estado_out\(0),
	combout => \MUX_B|Mux31~0_combout\);

-- Location: LCCOMB_X69_Y32_N2
\MUX_B|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MUX_B|Mux8~0_combout\ = (\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (((\RI_32|estado_out\(15))))) # (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4) & (!\CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5) & 
-- ((\REG_B_32|estado_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	datab => \RI_32|estado_out\(15),
	datac => \REG_B_32|estado_out\(23),
	datad => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	combout => \MUX_B|Mux8~0_combout\);

-- Location: LCFF_X63_Y32_N1
\RDM_32|estado_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(0));

-- Location: LCFF_X65_Y32_N7
\RDM_32|estado_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(6));

-- Location: LCFF_X65_Y36_N1
\RDM_32|estado_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(10));

-- Location: LCCOMB_X63_Y31_N12
\RDM_32|estado_out[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RDM_32|estado_out[13]~feeder_combout\ = \MEM|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM|altsyncram_component|auto_generated|q_a\(13),
	combout => \RDM_32|estado_out[13]~feeder_combout\);

-- Location: LCFF_X63_Y31_N13
\RDM_32|estado_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \RDM_32|estado_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(13));

-- Location: LCFF_X68_Y32_N13
\RDM_32|estado_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(15));

-- Location: LCFF_X62_Y33_N17
\RDM_32|estado_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(19));

-- Location: LCFF_X63_Y32_N13
\RDM_32|estado_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	sdata => \MEM|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RDM_32|estado_out\(23));

-- Location: PIN_W28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OpALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OpALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OpALU(1));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigBALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigBALU(0));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigBALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigBALU(1));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigBALU[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigBALU(2));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigPC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigPC(0));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigPC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigPC(1));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OrigAALU~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OrigAALU);

-- Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscreveReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscreveReg);

-- Location: PIN_AK20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RegDst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RegDst);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MemparaReg~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MemparaReg);

-- Location: PIN_A26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscrevePC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscrevePC);

-- Location: PIN_AA29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscrevePCBeq~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscrevePCBeq);

-- Location: PIN_H27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\IouD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IouD);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscreveMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscreveMem);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LeMem~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LeMem);

-- Location: PIN_K28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscreveIR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscreveIR);

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\EscrevePCBne~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.microCmds\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_EscrevePCBne);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CtlEnd[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CtlEnd(0));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CtlEnd[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE|microCodigo_instance|microInstrucao.nextAddress\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CtlEnd(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Opcode_ALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Opcode_ALU(0));

-- Location: PIN_K27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Opcode_ALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE_ALU|Mux9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Opcode_ALU(1));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Opcode_ALU[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE_ALU|Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Opcode_ALU(2));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Opcode_ALU[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \CONTROLE_ALU|Mux7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Opcode_ALU(3));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(0));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(1));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(2));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(3));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(4));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(5));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(6));

-- Location: PIN_A25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(7));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(8));

-- Location: PIN_L28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(9));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(10));

-- Location: PIN_P28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(11));

-- Location: PIN_P22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(12));

-- Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(13));

-- Location: PIN_M29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(14));

-- Location: PIN_A24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(15));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(16));

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(17));

-- Location: PIN_M26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(18));

-- Location: PIN_L29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(19));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(20));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(21));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(22));

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(23));

-- Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(24));

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(25));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(26));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(27));

-- Location: PIN_K29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(28));

-- Location: PIN_K30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(29));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(30));

-- Location: PIN_R23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A_ALU[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_A|Saida_32bits_ALU[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A_ALU(31));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(0));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(1));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(2));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(3));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(4));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(5));

-- Location: PIN_L26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(6));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(7));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(8));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(9));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(10));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(11));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(12));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(13));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(14));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(15));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(16));

-- Location: PIN_G19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(17));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(18));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(19));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(20));

-- Location: PIN_P30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(21));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(22));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(23));

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(24));

-- Location: PIN_P26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(25));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(26));

-- Location: PIN_M27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(27));

-- Location: PIN_M30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(28));

-- Location: PIN_P27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(29));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(30));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B_ALU[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MUX_B|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B_ALU(31));

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(0));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(1));

-- Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(2));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(3));

-- Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(4));

-- Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(5));

-- Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(6));

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(7));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(8));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(9));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(10));

-- Location: PIN_N29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(11));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(12));

-- Location: PIN_AB29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(13));

-- Location: PIN_R26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(14));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(15));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(16));

-- Location: PIN_B26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(17));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(18));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(19));

-- Location: PIN_Y28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(20));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(21));

-- Location: PIN_AA30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(22));

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(23));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(24));

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(25));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(26));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(27));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(28));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(29));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(30));

-- Location: PIN_C26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \PC_32|estado_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC(31));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(0));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(1));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(2));

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(3));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(4));

-- Location: PIN_R27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(5));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(6));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(7));

-- Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(8));

-- Location: PIN_Y29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(9));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(10));

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(11));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(12));

-- Location: PIN_V27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(13));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(14));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(15));

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(16));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(17));

-- Location: PIN_V28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(18));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(19));

-- Location: PIN_W30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(20));

-- Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(21));

-- Location: PIN_T27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(22));

-- Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(23));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(24));

-- Location: PIN_Y30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(25));

-- Location: PIN_D24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(26));

-- Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(27));

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(28));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(29));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(30));

-- Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RI[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RI_32|estado_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RI(31));

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(0));

-- Location: PIN_G28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(1));

-- Location: PIN_AJ20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(2));

-- Location: PIN_AA28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(3));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(4));

-- Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(5));

-- Location: PIN_AK21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(6));

-- Location: PIN_H28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(7));

-- Location: PIN_G27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(8));

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(9));

-- Location: PIN_A28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(10));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(11));

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(12));

-- Location: PIN_C28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(13));

-- Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(14));

-- Location: PIN_AB30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(15));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(16));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(17));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(18));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(19));

-- Location: PIN_B28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(20));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(21));

-- Location: PIN_C27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(22));

-- Location: PIN_D27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(23));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(24));

-- Location: PIN_AG20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(25));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(26));

-- Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(27));

-- Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(28));

-- Location: PIN_B29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(29));

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(30));

-- Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RDM[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \RDM_32|estado_out\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RDM(31));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux31~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(0));

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux30~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(1));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux29~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(2));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux28~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(3));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux27~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(4));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux26~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(5));

-- Location: PIN_F27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux25~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(6));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux24~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(7));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(8));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux22~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(9));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux21~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(10));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux20~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(11));

-- Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux19~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(12));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(13));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(14));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux16~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(15));

-- Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(16));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(17));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(18));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(19));

-- Location: PIN_W29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(20));

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(21));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(22));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(23));

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux7~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(24));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(25));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux5~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(26));

-- Location: PIN_B27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(27));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux3~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(28));

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(29));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(30));

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SaidaALU[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ULA|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SaidaALU(31));
END structure;


