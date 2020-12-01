--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Registro de desplazamiento Rotacional    --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios: Realiza el Rotacion a derecha de una posicion
--******************************************************--

ENTITY DesplazamientoRota IS
	
	PORT (
				--ENTRADAS
				
				Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				--------------------------------------------------
				--SALIDAS
				
				Resultado				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	
END ENTITY DesplazamientoRota;

ARCHITECTURE	DesplazamientoRota OF DesplazamientoRota IS


BEGIN

	--******************************************************--

	Resultado(0)   <= Numero_1(1);
	Resultado(1)   <= Numero_1(2);
	Resultado(2)   <= Numero_1(3);
	Resultado(3)   <= Numero_1(4);
	Resultado(4)   <= Numero_1(5);
	Resultado(5)   <= Numero_1(6);
	Resultado(6)   <= Numero_1(7);
	Resultado(7)   <= Numero_1(8);
	Resultado(8)   <= Numero_1(9);
	Resultado(9)   <= Numero_1(10);
	Resultado(10)  <= Numero_1(11);
	Resultado(11)  <= Numero_1(12);
	Resultado(12)  <= Numero_1(13);
	Resultado(13)  <= Numero_1(14);
	Resultado(14)  <= Numero_1(15);
	Resultado(15)  <= Numero_1(0);
	
	--******************************************************--

END ARCHITECTURE	DesplazamientoRota;