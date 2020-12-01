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

ENTITY PSRMux IS
	
	PORT (
				--ENTRADAS
				DataMd				:IN STD_LOGIC_VECTOR (4 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ALUStatus			:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectPSR			:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				PSRMuxOut			:OUT STD_LOGIC_VECTOR (4 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY PSRMux;

ARCHITECTURE	PSRMux OF PSRMux IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
	PSRMuxOut(0)  <= (DataMd(0)  AND SelectPSR) OR ((ALUStatus(0))  AND (NOT SelectPSR));
	PSRMuxOut(1)  <= (DataMd(1)  AND SelectPSR) OR ((ALUStatus(1))  AND (NOT SelectPSR));
	PSRMuxOut(2)  <= (DataMd(2)  AND SelectPSR) OR ((ALUStatus(2))  AND (NOT SelectPSR));
	PSRMuxOut(3)  <= (DataMd(3)  AND SelectPSR) OR ((ALUStatus(3))  AND (NOT SelectPSR));
	PSRMuxOut(4)  <= (DataMd(4)  AND SelectPSR);
		
	
	--******************************************************--

END ARCHITECTURE	PSRMux;