--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Banderas de la ALU                       --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios: Se ponen las banderas de la Alu que se pueden activar 
-- y sus condiciones para ser activadas
--******************************************************--

ENTITY Banderas IS
	
	PORT (	--------------------------------------------------
				--ENTRADAS
				Clock 				:IN STD_LOGIC;
				ResetSystem			:IN STD_LOGIC;
				Ena               :IN STD_LOGIC;--Señal de control para habilitar salida de banderas cuando se haya guardado registro
				Resultado			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--señal que llega del R_Resultado
				N1		 				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Entrada de 16 bits, numero_1
				N2						:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Entrada de 16 bits, numero_2
				Operador				:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Señal de 4 bits que indica la operacion ha realizar.
				In_carry				:IN STD_LOGIC;--Señal que llega del sumador, indica carry en la operacion
				
				--------------------------------------------------
				--SALIDAS
				Resultado_Z				:OUT STD_LOGIC;--Salida que indica si el resultado es cero
				Resultado_C				:OUT STD_LOGIC;--Salida que indica si la suma tiene carry
				Resultado_O				:OUT STD_LOGIC;--Resultado que me indica si la operacion dio overflow
				Resultado_N				:OUT STD_LOGIC--Salida que indica si el resultaod es un numero negativo
		);
	
END ENTITY Banderas;

ARCHITECTURE	Banderas OF Banderas IS


	--******************************************************--
		COMPONENT DFFE IS
		PORT (
				D							:IN STD_LOGIC;
				CLK						:IN STD_LOGIC;
				CLRN						:IN STD_LOGIC;
				PRN						:IN STD_LOGIC;
				ENA						:IN STD_LOGIC;
				
				Q							:OUT STD_LOGIC
		);
		END COMPONENT DFFE;
	--******************************************************--
			COMPONENT SelecctorOpera IS
	
		PORT (
					--ENTRADAS
					Operador				:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					None					:OUT STD_LOGIC;
					ADD_CA				:OUT STD_LOGIC;
					ADD_CO				:OUT STD_LOGIC;
					SUB					:OUT STD_LOGIC;
					COMP					:OUT STD_LOGIC;
					MULT					:OUT STD_LOGIC;
					AND_S					:OUT STD_LOGIC;
					OR_S					:OUT STD_LOGIC;
					NOT_S					:OUT STD_LOGIC;
					SR						:OUT STD_LOGIC;
					SRA_S					:OUT STD_LOGIC;
					CR						:OUT STD_LOGIC
					
			);
	
		END COMPONENT SelecctorOpera;
		
		
		
		
			SIGNAL None				:STD_LOGIC;
			SIGNAL ADD_CA			:STD_LOGIC;
			SIGNAL ADD_CO			:STD_LOGIC;
			SIGNAL SUB				:STD_LOGIC;
			SIGNAL COMP				:STD_LOGIC;
			SIGNAL MULT				:STD_LOGIC;
			SIGNAL AND_S			:STD_LOGIC;
			SIGNAL OR_S				:STD_LOGIC;
			SIGNAL NOT_S			:STD_LOGIC;
			SIGNAL SR				:STD_LOGIC;
			SIGNAL SRA_S			:STD_LOGIC;
			SIGNAL CR				:STD_LOGIC;
		
		
	
		SIGNAL SResultado_Z				:STD_LOGIC;
		SIGNAL SResultado_C				:STD_LOGIC;
		SIGNAL SResultado_O				:STD_LOGIC;
		SIGNAL SResultado_N				:STD_LOGIC;
		SIGNAL EnaRet						:STD_LOGIC;


BEGIN

	--******************************************************--
	--Condiciones para activar la bandera de Cero
	SResultado_Z   <=NOT(Resultado(0) OR Resultado(1)  OR Resultado(2)  OR Resultado(3)  OR Resultado(4) 
						 OR Resultado(5)  OR Resultado(6)  OR Resultado(7)  OR Resultado(8)  OR Resultado(9) 
						 OR Resultado(10) OR Resultado(11) OR Resultado(12) OR Resultado(13) OR Resultado(14)
						 OR Resultado(15));
	--Condiciones para activar la bandera de Carry					 
	SResultado_C   <=(ADD_CA AND In_carry);
	--Condiciones para activar la bandera de Overflow
	SResultado_O   <=(ADD_CO AND In_carry) OR (ADD_CA AND In_carry) OR (SUB AND N1(15) AND (NOT N2(15)) AND (Resultado(15))) OR (SUB AND (NOT N1(15)) AND (N2(15)) AND ( Resultado(15)));
	--Condiciones para activar la bandera de resultado Negativo
	SResultado_N   <=((CR) OR (SRA_S) OR (SR) OR (NOT_S) OR (MULT) OR (COMP) OR (SUB) OR (ADD_CO) OR (ADD_CA) OR (AND_S) OR (OR_S)) AND Resultado(15);
	

	
		FF0 : DFFE PORT MAP (SResultado_Z, Clock, ResetSystem, '1', EnaRet, Resultado_Z);
		FF1 : DFFE PORT MAP (SResultado_O, Clock, ResetSystem, '1', EnaRet, Resultado_O);
		FF2 : DFFE PORT MAP (SResultado_C, Clock, ResetSystem, '1', EnaRet, Resultado_C);
		FF3 : DFFE PORT MAP (SResultado_N, Clock, ResetSystem, '1', EnaRet, Resultado_N);
		FF4 : DFFE PORT MAP (Ena, 			  Clock, ResetSystem, '1', '1', 	  EnaRet);
		
				B_SeleccionOpera : SelecctorOpera PORT MAP (
						Operador, 
						None, 
						ADD_CA, 
						ADD_CO,
						SUB, 
						COMP, 
						MULT, 
						AND_S, 
						OR_S,
						NOT_S, 
						SR,
						SRA_S,
						CR
						);
	--******************************************************--

END ARCHITECTURE	Banderas;