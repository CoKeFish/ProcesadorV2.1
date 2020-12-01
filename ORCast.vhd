--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Operacion OR de entradas		           --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios: Operacion OR entre ambas entradas
--******************************************************--

ENTITY ORCast IS
	
	PORT (
				--ENTRADAS
				
				Numero_1					:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				Numero_2 				:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				--------------------------------------------------
				--SALIDA
				
				Resultado				:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	
END ENTITY ORCast;

ARCHITECTURE	ORCast OF ORCast IS


BEGIN

	--******************************************************--
	--Se define la operacion OR bit a bit y se almacena el resultado en la salida
	Resultado(0)  <=(Numero_1(0) OR Numero_2(0));
	Resultado(1)  <=(Numero_1(1) OR Numero_2(1));
	Resultado(2)  <=(Numero_1(2) OR Numero_2(2));
	Resultado(3)  <=(Numero_1(3) OR Numero_2(3));
	Resultado(4)  <=(Numero_1(4) OR Numero_2(4));
	Resultado(5)  <=(Numero_1(5) OR Numero_2(5));
	Resultado(6)  <=(Numero_1(6) OR Numero_2(6));
	Resultado(7)  <=(Numero_1(7) OR Numero_2(7));
	Resultado(8)  <=(Numero_1(8) OR Numero_2(8));
	Resultado(9)  <=(Numero_1(9) OR Numero_2(9));
	Resultado(10) <=(Numero_1(10)OR Numero_2(10));
	Resultado(11) <=(Numero_1(11) OR Numero_2(11));
	Resultado(12) <=(Numero_1(12) OR Numero_2(12));
	Resultado(13) <=(Numero_1(13) OR Numero_2(13));
	Resultado(14) <=(Numero_1(14) OR Numero_2(14));
	Resultado(15)  <=(Numero_1(15) OR Numero_2(15));
	
	--******************************************************--

END ARCHITECTURE	ORCast;