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

ENTITY SelectorSM IS
	
	PORT (
				--ENTRADAS
				OneDigit				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				TwoDigit				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectIN				:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				SignalOUT			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
END ENTITY SelectorSM;

ARCHITECTURE	SelectorSM OF SelectorSM IS


	
BEGIN

   --*************************************************************--
   -- La señal de salida tomará el valor de (numero_2 o M) si selecIN esta
   --	en alto, o el negado de (numero_2 O M) si selectIN esta en bajo
	--*************************************************************--
	
	SignalOUT(0)  <= (OneDigit(0)  AND SelectIN) OR ((TwoDigit(0))  AND (NOT SelectIN));
	SignalOUT(1)  <= (OneDigit(1)  AND SelectIN) OR ((TwoDigit(1))  AND (NOT SelectIN));
	SignalOUT(2)  <= (OneDigit(2)  AND SelectIN) OR ((TwoDigit(2))  AND (NOT SelectIN));
	SignalOUT(3)  <= (OneDigit(3)  AND SelectIN) OR ((TwoDigit(3))  AND (NOT SelectIN));
	SignalOUT(4)  <= (OneDigit(4)  AND SelectIN) OR ((TwoDigit(4))  AND (NOT SelectIN));
	SignalOUT(5)  <= (OneDigit(5)  AND SelectIN) OR ((TwoDigit(5))  AND (NOT SelectIN));
	SignalOUT(6)  <= (OneDigit(6)  AND SelectIN) OR ((TwoDigit(6))  AND (NOT SelectIN));
	SignalOUT(7)  <= (OneDigit(7)  AND SelectIN) OR ((TwoDigit(7))  AND (NOT SelectIN));
	SignalOUT(8)  <= (OneDigit(8)  AND SelectIN) OR ((TwoDigit(8))  AND (NOT SelectIN));
	SignalOUT(9)  <= (OneDigit(9)  AND SelectIN) OR ((TwoDigit(9))  AND (NOT SelectIN));
	SignalOUT(10) <= (OneDigit(10) AND SelectIN) OR ((TwoDigit(10)) AND (NOT SelectIN));
	SignalOUT(11) <= (OneDigit(11) AND SelectIN) OR ((TwoDigit(11)) AND (NOT SelectIN));
	SignalOUT(12) <= (OneDigit(12) AND SelectIN) OR ((TwoDigit(12)) AND (NOT SelectIN));
	SignalOUT(13) <= (OneDigit(13) AND SelectIN) OR ((TwoDigit(13)) AND (NOT SelectIN));
	SignalOUT(14) <= (OneDigit(14) AND SelectIN) OR ((TwoDigit(14)) AND (NOT SelectIN));
	SignalOUT(15) <= (OneDigit(15) AND SelectIN) OR ((TwoDigit(15)) AND (NOT SelectIN));
		
	
	--******************************************************--

END ARCHITECTURE	SelectorSM;