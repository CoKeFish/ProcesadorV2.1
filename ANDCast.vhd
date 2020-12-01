--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Operacion AND entre ambos numeros        --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Almacena los datos referentes al cambio de contrasena
--******************************************************--

ENTITY ANDCast IS
	
	PORT (
				--ENTRADAS
				
				Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				Numero_2 				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				--------------------------------------------------
				--SALIDAS
				
				Resultado				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	
END ENTITY ANDCast;

ARCHITECTURE	ANDCast OF ANDCast IS


BEGIN

	--******************************************************--

	Resultado(0)  <=(Numero_1(0) AND Numero_2(0));
   Resultado(1)  <=(Numero_1(1) AND Numero_2(1)); 
	Resultado(2)  <=(Numero_1(2) AND Numero_2(2));
	Resultado(3)  <=(Numero_1(3) AND Numero_2(3));
	Resultado(4)  <=(Numero_1(4) AND Numero_2(4)); 
	Resultado(5)  <=(Numero_1(5) AND Numero_2(5));
	Resultado(6)  <=(Numero_1(6) AND Numero_2(6));
	Resultado(7)  <=(Numero_1(7) AND Numero_2(7));
	Resultado(8)  <=(Numero_1(8) AND Numero_2(8));
	Resultado(9)  <=(Numero_1(9) AND Numero_2(9));
	Resultado(10) <=(Numero_1(10)AND Numero_2(10));
	Resultado(11) <=(Numero_1(11) AND Numero_2(11));
	Resultado(12) <=(Numero_1(12) AND Numero_2(12));
	Resultado(13) <=(Numero_1(13) AND Numero_2(13));
   Resultado(14) <=(Numero_1(14) AND Numero_2(14));
	Resultado(15)  <=(Numero_1(15) AND Numero_2(15));
	
	--******************************************************--

END ARCHITECTURE	ANDCast;