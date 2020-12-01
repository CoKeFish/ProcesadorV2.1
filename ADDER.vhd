--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    ADDER								              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Bloque encargado de la realizacion de sumas,
--					cuenta con un carry de entrada, realiza esta 
--             operacion para 16 bits
--******************************************************--

ENTITY ADDER IS
	
	PORT (
				--ENTRADAS
				SumandoOneDigit	:IN STD_LOGIC_VECTOR (15 DOWNTO 0);-- Señal de 16b correspondiente a numero_1
				SumandoTwoDigit	:IN STD_LOGIC_VECTOR (15 DOWNTO 0);-- Señal de 16b correspondiente a numero_2
				ICarry				:IN STD_LOGIC;-- Señal que viene de control, indica si hubo carry en la operacion pasada.
				--------------------------------------------------
				--SALIDAS
				ResultSuma			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado de la suma entre numero_1 y numero_2
				RCarry				:OUT STD_LOGIC-- bit que indica existencia de carry en la suma
				
		);
	
END ENTITY ADDER;

ARCHITECTURE	ADDER OF ADDER IS

	
		SIGNAL CARRY							:STD_LOGIC_VECTOR(14 DOWNTO 0);
		
		
	--******************************************************--
		COMPONENT FullAdder IS
		PORT (
				--ENTRADAS
				ICarry	 			: IN STD_LOGIC;
				SumandoOneBit   	: IN STD_LOGIC;
				SumandoTwoBit   	: IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				SCarry 				: OUT STD_LOGIC;
				ResultBit  			: OUT STD_LOGIC				
	
		);
		END COMPONENT FullAdder;
	--******************************************************--

	
BEGIN

	--******************************************************--
	
	FA1 : FullAdder 	PORT MAP (ICarry  ,  SumandoOneDigit(0),  SumandoTwoDigit(0),  CARRY(0),  ResultSuma(0));
	FA2 : FullAdder 	PORT MAP (CARRY(0),  SumandoOneDigit(1),  SumandoTwoDigit(1),  CARRY(1),  ResultSuma(1));
	FA3 : FullAdder 	PORT MAP (CARRY(1),  SumandoOneDigit(2),  SumandoTwoDigit(2),  CARRY(2),  ResultSuma(2));
	FA4 : FullAdder 	PORT MAP (CARRY(2),  SumandoOneDigit(3),  SumandoTwoDigit(3),  CARRY(3),  ResultSuma(3));
	FA5 : FullAdder 	PORT MAP (CARRY(3),  SumandoOneDigit(4),  SumandoTwoDigit(4),  CARRY(4),  ResultSuma(4));
	FA6 : FullAdder 	PORT MAP (CARRY(4),  SumandoOneDigit(5),  SumandoTwoDigit(5),  CARRY(5),  ResultSuma(5));
	FA7 : FullAdder 	PORT MAP (CARRY(5),  SumandoOneDigit(6),  SumandoTwoDigit(6),  CARRY(6),  ResultSuma(6));
	FA8 : FullAdder 	PORT MAP (CARRY(6),  SumandoOneDigit(7),  SumandoTwoDigit(7),  CARRY(7),  ResultSuma(7));
	FA9 : FullAdder 	PORT MAP (CARRY(7),  SumandoOneDigit(8),  SumandoTwoDigit(8),  CARRY(8),  ResultSuma(8));
	FA10: FullAdder 	PORT MAP (CARRY(8),  SumandoOneDigit(9),  SumandoTwoDigit(9),  CARRY(9),  ResultSuma(9));
	FA11: FullAdder 	PORT MAP (CARRY(9),  SumandoOneDigit(10), SumandoTwoDigit(10), CARRY(10), ResultSuma(10));
	FA12: FullAdder 	PORT MAP (CARRY(10), SumandoOneDigit(11), SumandoTwoDigit(11), CARRY(11), ResultSuma(11));
	FA13: FullAdder 	PORT MAP (CARRY(11), SumandoOneDigit(12), SumandoTwoDigit(12), CARRY(12), ResultSuma(12));
	FA14: FullAdder 	PORT MAP (CARRY(12), SumandoOneDigit(13), SumandoTwoDigit(13), CARRY(13), ResultSuma(13));
	FA15: FullAdder 	PORT MAP (CARRY(13), SumandoOneDigit(14), SumandoTwoDigit(14), CARRY(14), ResultSuma(14));
	FA16: FullAdder 	PORT MAP (CARRY(14), SumandoOneDigit(15), SumandoTwoDigit(15), RCarry   , ResultSuma(15));
		
	
	--******************************************************--

END ARCHITECTURE	ADDER;