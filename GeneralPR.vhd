--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--               PROYECTO PROCESADOR                    --
-- 													              --
-- Titulo :    Registro Proposito General               --
-- Fecha  :  	D:26 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Este registro de 16 bits, se encarga de
--             almacenar la direccion de memoria del 
--					datos por medio de una señal de control.
--              
--******************************************************--

ENTITY GeneralPR IS
	
		PORT (
					--ENTRADAS------------------------------------
					Clock 			 :IN STD_LOGIC; --Reloj del sistema
					ResetSystem		 :IN STD_LOGIC; --Reset del sistema
					Save_GPR			 :IN STD_LOGIC; --Señal de control para habilitar registro
					InGPR		 		 :IN STD_LOGIC_VECTOR (22 DOWNTO 0); --Bus de 16 bits que viene de la memoria de datos.
					----------------------------------------------
					--SALIDAS
					DataGPR		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0); --Valor actual del registro RDATO.
					OpGPR			    :OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
					ModeGPR		    :OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
			);
	
END ENTITY ;

ARCHITECTURE GeneralPR OF GeneralPR IS

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
	
	
		FF0  : DFFE PORT MAP (InGPR(0),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(0));
		FF1  : DFFE PORT MAP (InGPR(1),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(1));
		FF2  : DFFE PORT MAP (InGPR(2),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(2));
		FF3  : DFFE PORT MAP (InGPR(3),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(3));
		FF4  : DFFE PORT MAP (InGPR(4),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(4));
		FF5  : DFFE PORT MAP (InGPR(5),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(5));
		FF6  : DFFE PORT MAP (InGPR(6),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(6));
		FF7  : DFFE PORT MAP (InGPR(7),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(7));
		FF8  : DFFE PORT MAP (InGPR(8),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(8));
		FF9  : DFFE PORT MAP (InGPR(9),  Clock, ResetSystem, '1' , Save_GPR , DataGPR(9));
		FF10 : DFFE PORT MAP (InGPR(10), Clock, ResetSystem, '1' , Save_GPR , DataGPR(10));
		FF11 : DFFE PORT MAP (InGPR(11), Clock, ResetSystem, '1' , Save_GPR , DataGPR(11));
		FF12 : DFFE PORT MAP (InGPR(12), Clock, ResetSystem, '1' , Save_GPR , DataGPR(12));
		FF13 : DFFE PORT MAP (InGPR(13), Clock, ResetSystem, '1' , Save_GPR , DataGPR(13));
		FF14 : DFFE PORT MAP (InGPR(14), Clock, ResetSystem, '1' , Save_GPR , DataGPR(14));
		FF15 : DFFE PORT MAP (InGPR(15), Clock, ResetSystem, '1' , Save_GPR , DataGPR(15));
		FF16 : DFFE PORT MAP (InGPR(16), Clock, ResetSystem, '1' , Save_GPR , ModeGPR(0));
		FF17 : DFFE PORT MAP (InGPR(17), Clock, ResetSystem, '1' , Save_GPR , ModeGPR(1));
		FF18 : DFFE PORT MAP (InGPR(18), Clock, ResetSystem, '1' , Save_GPR , OpGPR(0));
		FF19 : DFFE PORT MAP (InGPR(19), Clock, ResetSystem, '1' , Save_GPR , OpGPR(1));
		FF20 : DFFE PORT MAP (InGPR(20), Clock, ResetSystem, '1' , Save_GPR , OpGPR(2));
		FF21 : DFFE PORT MAP (InGPR(21), Clock, ResetSystem, '1' , Save_GPR , OpGPR(3));
		FF22 : DFFE PORT MAP (InGPR(22), Clock, ResetSystem, '1' , Save_GPR , OpGPR(4));
	--******************************************************--

END ARCHITECTURE	GeneralPR;