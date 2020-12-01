--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--               PROYECTO PROCESADOR                    --
-- 													              --
-- Titulo :    Registro Acumulador        	           --
-- Fecha  :  	D:26 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Este registro se encarga de almacenar el 
--             valor del operando ingresado desde la  
--             memoria del programa o la ALU, 16 bits
--******************************************************--

ENTITY DirRegister IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			 :IN STD_LOGIC; --Reloj del sistema
				ResetSystem		 :IN STD_LOGIC; --Reset del sistema
				Save				 :IN STD_LOGIC; --Señal de control para habilitar registro
				InDir		   	 :IN STD_LOGIC_VECTOR (15 DOWNTO 0); --Bus de 16 bits que viene de Selector_AC.
				----------------------------------------------
				--SALIDAS
				DirOut		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0) --Valor actual del registro acumulador.
	);
	
END ENTITY DirRegister;

ARCHITECTURE DirRegister OF DirRegister IS

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
	
	
		FF0  : DFFE PORT MAP (InDir(0),  Clock, ResetSystem, '1' , Save , DirOut(0));
		FF1  : DFFE PORT MAP (InDir(1),  Clock, ResetSystem, '1' , Save , DirOut(1));
		FF2  : DFFE PORT MAP (InDir(2),  Clock, ResetSystem, '1' , Save , DirOut(2));
		FF3  : DFFE PORT MAP (InDir(3),  Clock, ResetSystem, '1' , Save , DirOut(3));
		FF4  : DFFE PORT MAP (InDir(4),  Clock, ResetSystem, '1' , Save , DirOut(4));
		FF5  : DFFE PORT MAP (InDir(5),  Clock, ResetSystem, '1' , Save , DirOut(5));
		FF6  : DFFE PORT MAP (InDir(6),  Clock, ResetSystem, '1' , Save , DirOut(6));
		FF7  : DFFE PORT MAP (InDir(7),  Clock, ResetSystem, '1' , Save , DirOut(7));
		FF8  : DFFE PORT MAP (InDir(8),  Clock, ResetSystem, '1' , Save , DirOut(8));
		FF9  : DFFE PORT MAP (InDir(9),  Clock, ResetSystem, '1' , Save , DirOut(9));
		FF10 : DFFE PORT MAP (InDir(10), Clock, ResetSystem, '1' , Save , DirOut(10));
		FF11 : DFFE PORT MAP (InDir(11), Clock, ResetSystem, '1' , Save , DirOut(11));
		FF12 : DFFE PORT MAP (InDir(12), Clock, ResetSystem, '1' , Save , DirOut(12));
		FF13 : DFFE PORT MAP (InDir(13), Clock, ResetSystem, '1' , Save , DirOut(13));
		FF14 : DFFE PORT MAP (InDir(14), Clock, ResetSystem, '1' , Save , DirOut(14));
		FF15 : DFFE PORT MAP (InDir(15), Clock, ResetSystem, '1' , Save , DirOut(15));
	
	--******************************************************--

END ARCHITECTURE	DirRegister;