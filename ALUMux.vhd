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

ENTITY ALUMux IS
	
	PORT (
				--ENTRADAS
				Datoin_Md			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				DataGPR				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				AC_Out				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				SelectALU			:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				Ena_AcALU			:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				ALUMUXOut			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY ALUMux;

ARCHITECTURE	ALUMux OF ALUMux IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
ALUMUXOut(0)  <= (Datoin_Md(0)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(0)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(0) AND Ena_AcALU);
ALUMUXOut(1)  <= (Datoin_Md(1)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(1)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(1) AND Ena_AcALU);
ALUMUXOut(2)  <= (Datoin_Md(2)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(2)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(2) AND Ena_AcALU);
ALUMUXOut(3)  <= (Datoin_Md(3)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(3)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(3) AND Ena_AcALU);
ALUMUXOut(4)  <= (Datoin_Md(4)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(4)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(4) AND Ena_AcALU);
ALUMUXOut(5)  <= (Datoin_Md(5)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(5)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(5) AND Ena_AcALU);
ALUMUXOut(6)  <= (Datoin_Md(6)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(6)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(6) AND Ena_AcALU);
ALUMUXOut(7)  <= (Datoin_Md(7)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(7)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(7) AND Ena_AcALU);
ALUMUXOut(8)  <= (Datoin_Md(8)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(8)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(8) AND Ena_AcALU);
ALUMUXOut(9)  <= (Datoin_Md(9)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(9)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(9) AND Ena_AcALU);
ALUMUXOut(10)  <= (Datoin_Md(10)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(10)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(10) AND Ena_AcALU);
ALUMUXOut(11)  <= (Datoin_Md(11)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(11)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(11) AND Ena_AcALU);
ALUMUXOut(12)  <= (Datoin_Md(12)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(12)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(12) AND Ena_AcALU);
ALUMUXOut(13)  <= (Datoin_Md(13)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(13)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(13) AND Ena_AcALU);
ALUMUXOut(14)  <= (Datoin_Md(14)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(14)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(14) AND Ena_AcALU);
ALUMUXOut(15)  <= (Datoin_Md(15)  AND SelectALU AND (NOT Ena_AcALU)) OR (DataGPR(15)  AND (NOT SelectALU) AND (NOT Ena_AcALU)) OR (AC_Out(15) AND Ena_AcALU);

		
	
	--******************************************************--

END ARCHITECTURE	ALUMux;