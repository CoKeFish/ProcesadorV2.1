--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--               PROYECTO PROCESADOR                    --
-- 													              --
-- Titulo :    Registro de estado del programa          --
-- Fecha  :  	D:26 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Este registro se encarga de almacenar el 
--             estado de las banderas entregadas por la
--             ALU y el habilitado de interrupciones
--******************************************************--

ENTITY ProgramStatus IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			 :IN STD_LOGIC; --Reloj del sistema
				ResetSystem		 :IN STD_LOGIC; --Reset del sistema
				SaveB  			 :IN STD_LOGIC; --Señal de control para habilitar el guardado de las banderas
				SaveInt			 :IN STD_LOGIC; --Señal de control para habilitar el estado de las interrupciones.
				IntE  			 :IN STD_LOGIC; --Señal de habilitar o desabilitar las interrupciones globales.
				Banderas  		 :IN STD_LOGIC_VECTOR(3 DOWNTO 0); --Bus de datos de 4 bits que contiene el estado de las banderas.
				----------------------------------------------
				--SALIDAS
				PSROut		    :OUT STD_LOGIC_VECTOR(4 DOWNTO 0) --Bus de 5 bits que contiene el estado del programa.
		);
	
END ENTITY ProgramStatus;

ARCHITECTURE ProgramStatus OF ProgramStatus IS

--******************************************************--
		COMPONENT DFFE IS
		PORT (
				D							:IN STD_LOGIC;
				CLK						:IN STD_LOGIC;
				CLRN						:IN STD_LOGIC;
				PRN						:IN STD_LOGIC;
				ENA						:IN STD_LOGIC;
				
				Q							:OUT STD_LOGIC
		);
		END COMPONENT DFFE;
--******************************************************--
	
BEGIN

--******************************************************--
	
	
		FF0  : DFFE PORT MAP (Banderas(0), Clock, ResetSystem, '1' , SaveB   , PSROut(0));-- Bandera Cero
		FF1  : DFFE PORT MAP (Banderas(1), Clock, ResetSystem, '1' , SaveB   , PSROut(1));-- Bandera Ngeativo
		FF2  : DFFE PORT MAP (Banderas(2), Clock, ResetSystem, '1' , SaveB   , PSROut(2));-- Bandera Overflow
		FF3  : DFFE PORT MAP (Banderas(3), Clock, ResetSystem, '1' , SaveB   , PSROut(3));-- Bandera Carry
		FF4  : DFFE PORT MAP (IntE       , Clock, ResetSystem, '1' , SaveInt , PSROut(4));-- Bit Interrucion Global 

	
	--******************************************************--

END ARCHITECTURE	ProgramStatus;