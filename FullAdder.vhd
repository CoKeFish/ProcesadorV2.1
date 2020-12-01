--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    FullAdder						              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--
LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
--Comentarios:	Realiza la suma de un bit
--******************************************************--

ENTITY FullAdder IS
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
	
END ENTITY FullAdder;

ARCHITECTURE	FullAdder OF FullAdder IS

				SIGNAL CaseR		: STD_LOGIC_VECTOR(3 DOWNTO 0);
				SIGNAL CaseSc		: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
BEGIN

		CaseR(0) <= (NOT SumandoOneBit) AND SumandoTwoBit AND ICarry;
		CaseR(1) <= (SumandoOneBit AND SumandoTwoBit AND (NOT ICarry));
		CaseR(2) <= (SumandoOneBit AND (NOT SumandoTwoBit) AND ICarry);
		CaseR(3) <= (SumandoOneBit and SumandoTwoBit and ICarry);
		
		CaseSc(0) <= ((not SumandoOneBit) and (not SumandoTwoBit) and ICarry);
		CaseSc(1) <= (SumandoOneBit and SumandoTwoBit and ICarry);
		CaseSc(2) <= ((not SumandoOneBit) and SumandoTwoBit and (not ICarry));
		CaseSc(3) <= (SumandoOneBit and (not SumandoTwoBit) and (not ICarry));

	--******************************************************--
	SCarry 		<=  CaseR(0) OR caseR(1)   OR CaseR(2) OR CaseR(3);
	ResultBit  	<= CaseSc(0) OR CaseSc(1) OR CaseSc(2) OR CaseSc(3);	 
	--******************************************************--

END ARCHITECTURE	FullAdder;