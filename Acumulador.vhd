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

ENTITY Acumulador IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			 :IN STD_LOGIC; --Reloj del sistema
				ResetSystem		 :IN STD_LOGIC; --Reset del sistema
				Save_Acum		 :IN STD_LOGIC; --Señal de control para habilitar registro
				AC_in		   	 :IN STD_LOGIC_VECTOR (15 DOWNTO 0); --Bus de 16 bits que viene de Selector_AC.
				----------------------------------------------
				--SALIDAS
				AC_out		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0) --Valor actual del registro acumulador.
	);
	
END ENTITY Acumulador;

ARCHITECTURE Acumulador OF Acumulador IS

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
	
	
		FF0  : DFFE PORT MAP (AC_in(0),  Clock, ResetSystem, '1' , Save_Acum , AC_out(0));
		FF1  : DFFE PORT MAP (AC_in(1),  Clock, ResetSystem, '1' , Save_Acum , AC_out(1));
		FF2  : DFFE PORT MAP (AC_in(2),  Clock, ResetSystem, '1' , Save_Acum , AC_out(2));
		FF3  : DFFE PORT MAP (AC_in(3),  Clock, ResetSystem, '1' , Save_Acum , AC_out(3));
		FF4  : DFFE PORT MAP (AC_in(4),  Clock, ResetSystem, '1' , Save_Acum , AC_out(4));
		FF5  : DFFE PORT MAP (AC_in(5),  Clock, ResetSystem, '1' , Save_Acum , AC_out(5));
		FF6  : DFFE PORT MAP (AC_in(6),  Clock, ResetSystem, '1' , Save_Acum , AC_out(6));
		FF7  : DFFE PORT MAP (AC_in(7),  Clock, ResetSystem, '1' , Save_Acum , AC_out(7));
		FF8  : DFFE PORT MAP (AC_in(8),  Clock, ResetSystem, '1' , Save_Acum , AC_out(8));
		FF9  : DFFE PORT MAP (AC_in(9),  Clock, ResetSystem, '1' , Save_Acum , AC_out(9));
		FF10 : DFFE PORT MAP (AC_in(10), Clock, ResetSystem, '1' , Save_Acum , AC_out(10));
		FF11 : DFFE PORT MAP (AC_in(11), Clock, ResetSystem, '1' , Save_Acum , AC_out(11));
		FF12 : DFFE PORT MAP (AC_in(12), Clock, ResetSystem, '1' , Save_Acum , AC_out(12));
		FF13 : DFFE PORT MAP (AC_in(13), Clock, ResetSystem, '1' , Save_Acum , AC_out(13));
		FF14 : DFFE PORT MAP (AC_in(14), Clock, ResetSystem, '1' , Save_Acum , AC_out(14));
		FF15 : DFFE PORT MAP (AC_in(15), Clock, ResetSystem, '1' , Save_Acum , AC_out(15));
	
	--******************************************************--

END ARCHITECTURE	Acumulador;