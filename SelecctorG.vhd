--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    SelectorG						              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios: Se encarga de seleccionar a partir de 
--					un bus de entrada cual de las senales entrantes
--					(Resultados de todas las operaciones)sera 
--              almacenada en el registro de resultado
--******************************************************--

ENTITY SelecctorG IS
	
	PORT (
				--ENTRADAS
				ReSuma				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de operacion suma
				ReNot					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de operacion Not
				ReOr					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de operacion OR
				ReAnd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de operacion AND
				ReR1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de desplazamiento logico a derecha
				ReR2					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de rotacion a derecha
				Multi					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de multiplicacion
				SelectIN				:IN STD_LOGIC_VECTOR (2 DOWNTO 0);--Señal de control, para seleccion resultado.
				--------------------------------------------------
				--SALIDAS
				SignalOUT			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Resultado segun la operacion elegida
				
		);
	
END ENTITY SelecctorG;

ARCHITECTURE	SelecctorG OF SelecctorG IS


	
BEGIN

	--******************************************************--
	
	SignalOUT(0)  <=
		(ReSuma(0) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(0) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(0) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(0) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(0) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(0) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(0) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	SignalOUT(1)  <=
		(ReSuma(1) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(1) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(1) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(1) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(1) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(1) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(1) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	SignalOUT(2)  <=
		(ReSuma(2) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(2) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(2) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(2) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(2) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(2) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(2) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(3)  <=
		(ReSuma(3) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(3) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(3) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(3) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(3) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(3) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(3) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	SignalOUT(4)  <=
		(ReSuma(4) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(4) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(4) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(4) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(4) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(4) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(4) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(5)  <=
		(ReSuma(5) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(5) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(5) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(5) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(5) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(5) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(5) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	SignalOUT(6)  <=
		(ReSuma(6) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(6) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(6) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(6) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(6) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(6) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(6) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	SignalOUT(7)  <=
		(ReSuma(7) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(7) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(7) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(7) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(7) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(7) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(7) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(8)  <=
		(ReSuma(8) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(8) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(8) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(8) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(8) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(8) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(8) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(9)  <=
		(ReSuma(9) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(9) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(9) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(9) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(9) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(9) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(9) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(10)  <=
		(ReSuma(10) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(10) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(10) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(10) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(10) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(10) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(10) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(11)  <=
		(ReSuma(11) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(11) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(11) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(11) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(11) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(11) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(11) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(12)  <=
		(ReSuma(12) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(12) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(12) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(12) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(12) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(12) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(12) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(13)  <=
		(ReSuma(13) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(13) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(13) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(13) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(13) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(13) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0))))  OR
		(Multi(13) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(14)  <=
		(ReSuma(14) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(14) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(14) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(14) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(14) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(14) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(14) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
		
	SignalOUT(15)  <=
		(ReSuma(15) 	AND SelectIN(0) AND (NOT (SelectIN(1) OR SelectIN(2)))) OR
		(ReNot(15) 	AND SelectIN(1) AND (NOT (SelectIN(0) OR SelectIN(2)))) OR
		(ReOr(15) 	AND SelectIN(0) AND SelectIN(1) AND (NOT(SelectIN(2)))) OR
		(ReAnd(15) 	AND SelectIN(2) AND (NOT (SelectIN(0) OR SelectIN(1)))) OR
		(ReR1(15) 	AND SelectIN(0) AND SelectIN(2) AND (NOT(SelectIN(1)))) OR
		(ReR2(15) 	AND SelectIN(1) AND SelectIN(2) AND (NOT(SelectIN(0)))) OR
		(Multi(15) 	AND SelectIN(1) AND SelectIN(2) AND SelectIN(0));
	
	
		
	
	--******************************************************--

END ARCHITECTURE	SelecctorG;