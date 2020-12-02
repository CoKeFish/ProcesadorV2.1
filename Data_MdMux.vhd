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

ENTITY Data_MdMux IS
	
	PORT (
				--ENTRADAS
				DirMd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ACOut					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				PSROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				GPROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectDataMd		:IN STD_LOGIC_VECTOR (1 DOWNTO 0);--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				DatOut_Md				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY Data_MdMux;

ARCHITECTURE	Data_MdMux OF Data_MdMux IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
DatOut_Md(0)  <= (PSROut(0)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(0)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(0)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(0)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(1)  <= (PSROut(1)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(1)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(1)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(1)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(2)  <= (PSROut(2)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(2)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(2)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(2)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(3)  <= (PSROut(3)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(3)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(3)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(3)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(4)  <= (PSROut(4)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(4)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(4)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(4)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(5)  <= (PSROut(5)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(5)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(5)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(5)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(6)  <= (PSROut(6)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(6)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(6)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(6)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(7)  <= (PSROut(7)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(7)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(7)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(7)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(8)  <= (PSROut(8)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(8)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(8)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(8)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(9)  <= (PSROut(9)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(9)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(9)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(9)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(10)  <= (PSROut(10)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(10)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(10)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(10)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(11)  <= (PSROut(11)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(11)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(11)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(11)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(12)  <= (PSROut(12)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(12)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(12)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(12)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(13)  <= (PSROut(13)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(13)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(13)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(13)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(14)  <= (PSROut(14)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(14)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(14)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(14)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
DatOut_Md(15)  <= (PSROut(15)  AND (NOT (SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (ACOut(15)  AND (NOT (SelectDataMd(1))) AND ((SelectDataMd(0)))) OR (DirMd(15)  AND ((SelectDataMd(1))) AND (NOT (SelectDataMd(0)))) OR (GPROut(15)  AND ((SelectDataMd(1))) AND ((SelectDataMd(0))));
	
	
	--******************************************************--

END ARCHITECTURE	Data_MdMux;