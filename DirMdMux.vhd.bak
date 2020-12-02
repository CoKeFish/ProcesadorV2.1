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

ENTITY DirMdMux IS
	
	PORT (
				--ENTRADAS
				GPROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				SPOut					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				DirROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				SelectDir			:IN STD_LOGIC_VECTOR (1 DOWNTO 0);--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				DirMd				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY DirMdMux;

ARCHITECTURE	DirMdMux OF DirMdMux IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
DirMd(0)   <= (DirROut(0)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(0)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(0)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(1)   <= (DirROut(1)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(1)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(1)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(2)   <= (DirROut(2)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(2)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(2)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(3)   <= (DirROut(3)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(3)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(3)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(4)   <= (DirROut(4)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(4)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(4)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(5)   <= (DirROut(5)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(5)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(5)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(6)   <= (DirROut(6)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(6)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(6)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(7)   <= (DirROut(7)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(7)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(7)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(8)   <= (DirROut(8)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(8)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(8)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(9)   <= (DirROut(9)   AND SelectDir(1) AND SelectDir(0)) OR (GPROut(9)   AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(9)   AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(10)  <= (DirROut(10)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(10)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(10)  AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(11)  <= (DirROut(11)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(11)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(11)  AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(12)  <= (DirROut(12)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(12)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(12)  AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(13)  <= (DirROut(13)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(13)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(13)  AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(14)  <= (DirROut(14)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(14)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(14)  AND SelectDir(0) AND (NOT SelectDir(1)));
DirMd(15)  <= (DirROut(15)  AND SelectDir(1) AND SelectDir(0)) OR (GPROut(15)  AND SelectDir(1) AND (NOT SelectDir(0))) OR (SPOut(15)  AND SelectDir(0) AND (NOT SelectDir(1)));

		
	
	--******************************************************--

END ARCHITECTURE	DirMdMux;