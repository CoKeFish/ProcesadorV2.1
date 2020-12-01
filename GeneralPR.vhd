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
					Data_Mp	 		 :IN STD_LOGIC_VECTOR (22 DOWNTO 0); --Bus de 16 bits que viene de la memoria de datos.
					----------------------------------------------
					--SALIDAS
					GPR_out		    :OUT STD_LOGIC_VECTOR (22 DOWNTO 0) --Valor actual del registro RDATO.
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
	
	
		FF0  : DFFE PORT MAP (Data_Mp(0),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(0));
		FF1  : DFFE PORT MAP (Data_Mp(1),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(1));
		FF2  : DFFE PORT MAP (Data_Mp(2),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(2));
		FF3  : DFFE PORT MAP (Data_Mp(3),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(3));
		FF4  : DFFE PORT MAP (Data_Mp(4),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(4));
		FF5  : DFFE PORT MAP (Data_Mp(5),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(5));
		FF6  : DFFE PORT MAP (Data_Mp(6),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(6));
		FF7  : DFFE PORT MAP (Data_Mp(7),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(7));
		FF8  : DFFE PORT MAP (Data_Mp(8),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(8));
		FF9  : DFFE PORT MAP (Data_Mp(9),  Clock, ResetSystem, '1' , Save_GPR , GPR_out(9));
		FF10 : DFFE PORT MAP (Data_Mp(10), Clock, ResetSystem, '1' , Save_GPR , GPR_out(10));
		FF11 : DFFE PORT MAP (Data_Mp(11), Clock, ResetSystem, '1' , Save_GPR , GPR_out(11));
		FF12 : DFFE PORT MAP (Data_Mp(12), Clock, ResetSystem, '1' , Save_GPR , GPR_out(12));
		FF13 : DFFE PORT MAP (Data_Mp(13), Clock, ResetSystem, '1' , Save_GPR , GPR_out(13));
		FF14 : DFFE PORT MAP (Data_Mp(14), Clock, ResetSystem, '1' , Save_GPR , GPR_out(14));
		FF15 : DFFE PORT MAP (Data_Mp(15), Clock, ResetSystem, '1' , Save_GPR , GPR_out(15));
		FF16 : DFFE PORT MAP (Data_Mp(16), Clock, ResetSystem, '1' , Save_GPR , GPR_out(16));
		FF17 : DFFE PORT MAP (Data_Mp(17), Clock, ResetSystem, '1' , Save_GPR , GPR_out(17));
		FF18 : DFFE PORT MAP (Data_Mp(18), Clock, ResetSystem, '1' , Save_GPR , GPR_out(18));
		FF19 : DFFE PORT MAP (Data_Mp(19), Clock, ResetSystem, '1' , Save_GPR , GPR_out(19));
		FF20 : DFFE PORT MAP (Data_Mp(20), Clock, ResetSystem, '1' , Save_GPR , GPR_out(20));
		FF21 : DFFE PORT MAP (Data_Mp(21), Clock, ResetSystem, '1' , Save_GPR , GPR_out(21));
		FF22 : DFFE PORT MAP (Data_Mp(22), Clock, ResetSystem, '1' , Save_GPR , GPR_out(22));
	--******************************************************--

END ARCHITECTURE	GeneralPR;