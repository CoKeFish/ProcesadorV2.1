--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    NOTCast							              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Bloque encargado de la negacion binaria del 
--					registro numero uno, usado a la hora de 
--					seleccionar la operacion de resta o negacion
--******************************************************--

ENTITY NOTCast IS
	
	PORT (
				--ENTRADAS
				OneDigit			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				--------------------------------------------------
				--SALIDAS
				CastOneDigit	:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				
		);
	
END ENTITY NOTCast;

ARCHITECTURE	NOTCast OF NOTCast IS

		
BEGIN

	--******************************************************--

	CastOneDigit(0)  <= (NOT OneDigit(0));
	CastOneDigit(1)  <= (NOT OneDigit(1));
	CastOneDigit(2)  <= (NOT OneDigit(2));
	CastOneDigit(3)  <= (NOT OneDigit(3));
	CastOneDigit(4)  <= (NOT OneDigit(4));
	CastOneDigit(5)  <= (NOT OneDigit(5));
	CastOneDigit(6)  <= (NOT OneDigit(6));
	CastOneDigit(7)  <= (NOT OneDigit(7));
	CastOneDigit(8)  <= (NOT OneDigit(8));
	CastOneDigit(9)  <= (NOT OneDigit(9));
	CastOneDigit(10) <= (NOT OneDigit(10));
	CastOneDigit(11) <= (NOT OneDigit(11));
	CastOneDigit(12) <= (NOT OneDigit(12));
	CastOneDigit(13) <= (NOT OneDigit(13));
	CastOneDigit(14) <= (NOT OneDigit(14));
	CastOneDigit(15) <= (NOT OneDigit(15));
	
	--******************************************************--

END ARCHITECTURE	NOTCast;