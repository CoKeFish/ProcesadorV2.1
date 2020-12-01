--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Registro de desplazamiento Logico        --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Almacena los datos referentes al cambio de contrasena
--******************************************************--

ENTITY DesplazamientoLogico IS
	
	PORT (
				--ENTRADAS
				
				Numero_2					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				--------------------------------------------------
				--SALIDAS
				
				Resultado				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	
END ENTITY DesplazamientoLogico;

ARCHITECTURE	DesplazamientoLogico OF DesplazamientoLogico IS


BEGIN

	--******************************************************--

	Resultado(0)   <= Numero_2(1);
	Resultado(1)   <= Numero_2(2);
	Resultado(2)   <= Numero_2(3);
	Resultado(3)   <= Numero_2(4);
	Resultado(4)   <= Numero_2(5);
	Resultado(5)   <= Numero_2(6);
	Resultado(6)   <= Numero_2(7);
	Resultado(7)   <= Numero_2(8);
	Resultado(8)   <= Numero_2(9);
	Resultado(9)   <= Numero_2(10);
	Resultado(10)  <= Numero_2(11);
	Resultado(11)  <= Numero_2(12);
	Resultado(12)  <= Numero_2(13);
	Resultado(13)  <= Numero_2(14);
	Resultado(14)  <= Numero_2(15);
	Resultado(15)  <= '0';
	
	--******************************************************--

END ARCHITECTURE	DesplazamientoLogico;