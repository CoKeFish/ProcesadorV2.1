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

ENTITY ProgramCounterMUX IS
	
	PORT (
				--ENTRADAS
				DataMd				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				DataGPR				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectPC				:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				Int					:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				PCMUXOut				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY ProgramCounterMUX;

ARCHITECTURE	ProgramCounterMUX OF ProgramCounterMUX IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
PCMUXOut(0)  <= (((DataMd(0)  AND SelectPC) OR ((DataGPR(0))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(1)  <= (((DataMd(1)  AND SelectPC) OR ((DataGPR(1))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(2)  <= (((DataMd(2)  AND SelectPC) OR ((DataGPR(2))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '1');
PCMUXOut(3)  <= (((DataMd(3)  AND SelectPC) OR ((DataGPR(3))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(4)  <= (((DataMd(4)  AND SelectPC) OR ((DataGPR(4))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(5)  <= (((DataMd(5)  AND SelectPC) OR ((DataGPR(5))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(6)  <= (((DataMd(6)  AND SelectPC) OR ((DataGPR(6))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(7)  <= (((DataMd(7)  AND SelectPC) OR ((DataGPR(7))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(8)  <= (((DataMd(8)  AND SelectPC) OR ((DataGPR(8))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(9)  <= (((DataMd(9)  AND SelectPC) OR ((DataGPR(9))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(10)  <= (((DataMd(10)  AND SelectPC) OR ((DataGPR(10))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(11)  <= (((DataMd(11)  AND SelectPC) OR ((DataGPR(11))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(12)  <= (((DataMd(12)  AND SelectPC) OR ((DataGPR(12))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(13)  <= (((DataMd(13)  AND SelectPC) OR ((DataGPR(13))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(14)  <= (((DataMd(14)  AND SelectPC) OR ((DataGPR(14))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');
PCMUXOut(15)  <= (((DataMd(15)  AND SelectPC) OR ((DataGPR(15))  AND (NOT SelectPC))) AND (NOT Int)) OR (Int AND '0');


		
	
	--******************************************************--

END ARCHITECTURE	ProgramCounterMUX;