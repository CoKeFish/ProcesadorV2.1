--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    SelectorSM						              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:El bloque se encarga de decidir apartir de una 
--             entrada si a la salida selecciana el numero_2
--             negado o el numero_2 original
--******************************************************--

ENTITY AcumMUX IS
	
	PORT (
				--ENTRADAS
				DataMd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ResultALU				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectAcum				:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				AcumMUXOut				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY AcumMUX;

ARCHITECTURE	AcumMUX OF AcumMUX IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
	AcumMUXOut(0)  <= (DataMd(0)  AND SelectAcum) OR ((ResultALU(0))  AND (NOT SelectAcum));
	AcumMUXOut(1)  <= (DataMd(1)  AND SelectAcum) OR ((ResultALU(1))  AND (NOT SelectAcum));
	AcumMUXOut(2)  <= (DataMd(2)  AND SelectAcum) OR ((ResultALU(2))  AND (NOT SelectAcum));
	AcumMUXOut(3)  <= (DataMd(3)  AND SelectAcum) OR ((ResultALU(3))  AND (NOT SelectAcum));
	AcumMUXOut(4)  <= (DataMd(4)  AND SelectAcum) OR ((ResultALU(4))  AND (NOT SelectAcum));
	AcumMUXOut(5)  <= (DataMd(5)  AND SelectAcum) OR ((ResultALU(5))  AND (NOT SelectAcum));
	AcumMUXOut(6)  <= (DataMd(6)  AND SelectAcum) OR ((ResultALU(6))  AND (NOT SelectAcum));
	AcumMUXOut(7)  <= (DataMd(7)  AND SelectAcum) OR ((ResultALU(7))  AND (NOT SelectAcum));
	AcumMUXOut(8)  <= (DataMd(8)  AND SelectAcum) OR ((ResultALU(8))  AND (NOT SelectAcum));
	AcumMUXOut(9)  <= (DataMd(9)  AND SelectAcum) OR ((ResultALU(9))  AND (NOT SelectAcum));
	AcumMUXOut(10) <= (DataMd(10) AND SelectAcum) OR ((ResultALU(10)) AND (NOT SelectAcum));
	AcumMUXOut(11) <= (DataMd(11) AND SelectAcum) OR ((ResultALU(11)) AND (NOT SelectAcum));
	AcumMUXOut(12) <= (DataMd(12) AND SelectAcum) OR ((ResultALU(12)) AND (NOT SelectAcum));
	AcumMUXOut(13) <= (DataMd(13) AND SelectAcum) OR ((ResultALU(13)) AND (NOT SelectAcum));
	AcumMUXOut(14) <= (DataMd(14) AND SelectAcum) OR ((ResultALU(14)) AND (NOT SelectAcum));
	AcumMUXOut(15) <= (DataMd(15) AND SelectAcum) OR ((ResultALU(15)) AND (NOT SelectAcum));
		
	
	--******************************************************--

END ARCHITECTURE	AcumMUX;