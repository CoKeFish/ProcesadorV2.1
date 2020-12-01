--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    Registro Resultado operacion	           --
-- Fecha  :  	D:01 M:10 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Este registro se encarga de almacenar el resultado 
--					de las operaciones solicitadas por el usuario
--******************************************************--

ENTITY R_Resultado IS
	
	PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;
				ResetSystem				:IN STD_LOGIC;
				Enable					:IN STD_LOGIC;
				Data						:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16b que viene de selectorG.
				--------------------------------------------------
				--SALIDAS
				SalidaBit				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Resultado de la operacion solicitada.
		);
	
END ENTITY R_Resultado;

ARCHITECTURE	R_Resultado OF R_Resultado IS

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
	
	
		FF0  : DFFE PORT MAP (Data(0),  Clock, ResetSystem, '1', Enable, SalidaBit(0));
		FF1  : DFFE PORT MAP (Data(1),  Clock, ResetSystem, '1', Enable, SalidaBit(1));
		FF2  : DFFE PORT MAP (Data(2),  Clock, ResetSystem, '1', Enable, SalidaBit(2));
		FF3  : DFFE PORT MAP (Data(3),  Clock, ResetSystem, '1', Enable, SalidaBit(3));
		FF4  : DFFE PORT MAP (Data(4),  Clock, ResetSystem, '1', Enable, SalidaBit(4));
		FF5  : DFFE PORT MAP (Data(5),  Clock, ResetSystem, '1', Enable, SalidaBit(5));
		FF6  : DFFE PORT MAP (Data(6),  Clock, ResetSystem, '1', Enable, SalidaBit(6));
		FF7  : DFFE PORT MAP (Data(7),  Clock, ResetSystem, '1', Enable, SalidaBit(7));
		FF8  : DFFE PORT MAP (Data(8),  Clock, ResetSystem, '1', Enable, SalidaBit(8));
		FF9  : DFFE PORT MAP (Data(9),  Clock, ResetSystem, '1', Enable, SalidaBit(9));
		FF10 : DFFE PORT MAP (Data(10), Clock, ResetSystem, '1', Enable, SalidaBit(10));
		FF11 : DFFE PORT MAP (Data(11), Clock, ResetSystem, '1', Enable, SalidaBit(11));
		FF12 : DFFE PORT MAP (Data(12), Clock, ResetSystem, '1', Enable, SalidaBit(12));
		FF13 : DFFE PORT MAP (Data(13), Clock, ResetSystem, '1', Enable, SalidaBit(13));
		FF14 : DFFE PORT MAP (Data(14), Clock, ResetSystem, '1', Enable, SalidaBit(14));
		FF15 : DFFE PORT MAP (Data(15), Clock, ResetSystem, '1', Enable, SalidaBit(15));
	
	--******************************************************--

END ARCHITECTURE	R_Resultado;