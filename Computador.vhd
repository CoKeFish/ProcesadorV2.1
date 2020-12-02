--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Contador 0-8 Para multiplicacion         --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Almacena los datos referentes al cambio de contrasena
--******************************************************--

ENTITY Computador IS
	
	PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;
				ResetSystem				:IN STD_LOGIC;
				Int 						:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				MemoryOUT				:OUT STD_LOGIC_VECTOR (22 DOWNTO 0);
				Count						:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
				Estados					:OUT STD_LOGIC_VECTOR (49 DOWNTO 0);
				SEnaMP					:OUT STD_LOGIC
		);
	
END ENTITY Computador;

ARCHITECTURE	Computador OF Computador IS

	--******************************************************--
		COMPONENT MemoryROM IS
		PORT
		(
				address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				clock			: IN STD_LOGIC  := '1';
				rden			: IN STD_LOGIC  := '1';
				q				: OUT STD_LOGIC_VECTOR (22 DOWNTO 0)
		);
		END COMPONENT MemoryROM;
	--******************************************************--
		COMPONENT MemoryRAM IS
			PORT
			(
				address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				rden		: IN STD_LOGIC  := '1';
				wren		: IN STD_LOGIC ;
				q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
		END COMPONENT MemoryRAM;
	--******************************************************--
	
	
	
	
	
		COMPONENT Procesador IS
			
			PORT (
						--ENTRADAS
						Clock 				:IN STD_LOGIC;
						ResetSystem			:IN STD_LOGIC;
						Dato_Mp				:IN STD_LOGIC_VECTOR(22 DOWNTO 0);
						Datoin_Md			:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
						Int					:IN STD_LOGIC;
						--------------------------------------------------
						--SALIDAS
						Dir_Mp				:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
						Ena_Mp				:OUT STD_LOGIC;
						Dataout_Md			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
						Dir_Md				:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
						Ena_Md_Read			:OUT STD_LOGIC;
						Ena_Md_Write		:OUT STD_LOGIC;
						--Test
						Count					:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
						Estados				:OUT STD_LOGIC_VECTOR(49 DOWNTO 0)
				);
			
		END COMPONENT Procesador;
		
		
		
	--******************************************************--
	
		SIGNAL Q							:STD_LOGIC_VECTOR (3 DOWNTO 0);
		SIGNAL ENA						:STD_LOGIC_VECTOR (3 DOWNTO 0);
		SIGNAL D							:STD_LOGIC_VECTOR (3 DOWNTO 0);
		
		SIGNAL Dato_Mp					:STD_LOGIC_VECTOR(22 DOWNTO 0);
		SIGNAL Dir_Mp					:STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL Ena_Mp					:STD_LOGIC;
		SIGNAL Read_Mp					:STD_LOGIC;
		SIGNAL Datoin_Md				:STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL Dataout_Md				:STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL Dir_Md					:STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL Ena_Md_Read			:STD_LOGIC;
		SIGNAL Ena_Md_Write			:STD_LOGIC;
		
	
BEGIN

	--******************************************************--
	
	
		MemoryOUT <= Dato_Mp;
		SEnaMP <= Ena_Mp;
	   
	
		B_Procesador : Procesador PORT MAP (
															Clock, 
															ResetSystem, 
															Dato_Mp, 
															Datoin_Md, 
															Int,
															Dir_Mp,
															Ena_Mp, 
															Dataout_Md,
															Dir_Md,
															Ena_Md_Read,
															Ena_Md_Write,
															Count,
															Estados);
		B_MemoryRAM : MemoryRAM PORT MAP (
															Dir_Md(7 DOWNTO 0), 
															Clock, 
															Dataout_Md, 
															Ena_Md_Read, 
															Ena_Md_Write, 
															Datoin_Md);
		B_MemoryROM : MemoryROM PORT MAP (
															Dir_Mp(7 DOWNTO 0),
															Clock, 
															Ena_Mp, 
															Dato_Mp);
	
	--******************************************************--

END ARCHITECTURE	Computador;