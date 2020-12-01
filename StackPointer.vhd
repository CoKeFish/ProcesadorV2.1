--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--               PROYECTO PROCESADOR                    --
-- 													              --
-- Titulo :    Stack Pointer              	           --
-- Fecha  :  	D:26 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Este contador ascendente descendente 
--             indicará la posicion en pila en la que  
--             guardaran y leeran los datos actuales  
--             del procesador cuando haya una interrupcion 
--******************************************************--

ENTITY StackPointer IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			:IN STD_LOGIC; --Reloj del sistema
				ResetSystem		:IN STD_LOGIC; --Reset del sistema
				Enable			:IN STD_LOGIC; --Señal de control que habilita contador
				IncDec         :IN STD_LOGIC; --Señal de control que indica conteo Asc-Desc     
				----------------------------------------------
				--SALIDAS
				Valor_out		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0) --Valor actual del contador
		);
	
END ENTITY StackPointer;

ARCHITECTURE StackPointer OF StackPointer IS

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
	
		SIGNAL Q					:STD_LOGIC_VECTOR (15 DOWNTO 0);
		SIGNAL ENA				:STD_LOGIC_VECTOR (15 DOWNTO 0);
		SIGNAL D					:STD_LOGIC_VECTOR (15 DOWNTO 0);
	
BEGIN

--******************************************************--
	
		D(0)  <= (NOT Q(0));
		D(1)  <= (NOT Q(1));
		D(2)  <= (NOT Q(2));
		D(3)  <= (NOT Q(3));
		D(4)  <= (NOT Q(4));
		D(5)  <= (NOT Q(5));
		D(6)  <= (NOT Q(6));
		D(7)  <= (NOT Q(7));
		D(8)  <= (NOT Q(8));
		D(9)  <= (NOT Q(9));
		D(10) <= (NOT Q(10));
		D(11) <= (NOT Q(11));
		D(12) <= (NOT Q(12));
		D(13) <= (NOT Q(13));
		D(14) <= (NOT Q(14));
		D(15) <= (NOT Q(15));
		
		ENA(0)  <=  Enable;
		ENA(1)  <= ((Q(0)  AND IncDec) OR (NOT(Q(0))  AND NOT(IncDec))) AND ENA(0);
		ENA(2)  <= ((Q(1)  AND IncDec) OR (NOT(Q(1))  AND NOT(IncDec))) AND ENA(1);
		ENA(3)  <= ((Q(2)  AND IncDec) OR (NOT(Q(2))  AND NOT(IncDec))) AND ENA(2);
		ENA(4)  <= ((Q(3)  AND IncDec) OR (NOT(Q(3))  AND NOT(IncDec))) AND ENA(3);
		ENA(5)  <= ((Q(4)  AND IncDec) OR (NOT(Q(4))  AND NOT(IncDec))) AND ENA(4);
	   ENA(6)  <= ((Q(5)  AND IncDec) OR (NOT(Q(5))  AND NOT(IncDec))) AND ENA(5);
		ENA(7)  <= ((Q(6)  AND IncDec) OR (NOT(Q(6))  AND NOT(IncDec))) AND ENA(6);
		ENA(8)  <= ((Q(7)  AND IncDec) OR (NOT(Q(7))  AND NOT(IncDec))) AND ENA(7);
		ENA(9)  <= ((Q(8)  AND IncDec) OR (NOT(Q(8))  AND NOT(IncDec))) AND ENA(8);
		ENA(10) <= ((Q(9)  AND IncDec) OR (NOT(Q(9))  AND NOT(IncDec))) AND ENA(9);
		ENA(11) <= ((Q(10) AND IncDec) OR (NOT(Q(10)) AND NOT(IncDec))) AND ENA(10);
		ENA(12) <= ((Q(11) AND IncDec) OR (NOT(Q(11)) AND NOT(IncDec))) AND ENA(11);
		ENA(13) <= ((Q(12) AND IncDec) OR (NOT(Q(12)) AND NOT(IncDec))) AND ENA(12);
		ENA(14) <= ((Q(13) AND IncDec) OR (NOT(Q(13)) AND NOT(IncDec))) AND ENA(13);
	   ENA(15) <= ((Q(14) AND IncDec) OR (NOT(Q(14)) AND NOT(IncDec))) AND ENA(14);
		
		
		FF0  : DFFE PORT MAP (D(0) , Clock, ResetSystem, '1', ENA(0) , Q(0));
		FF1  : DFFE PORT MAP (D(1) , Clock, ResetSystem, '1', ENA(1) , Q(1));
		FF2  : DFFE PORT MAP (D(2) , Clock, ResetSystem, '1', ENA(2) , Q(2));
		FF3  : DFFE PORT MAP (D(3) , Clock, ResetSystem, '1', ENA(3) , Q(3));
		FF4  : DFFE PORT MAP (D(4) , Clock, ResetSystem, '1', ENA(4) , Q(4));
		FF5  : DFFE PORT MAP (D(5) , Clock, ResetSystem, '1', ENA(5) , Q(5));
		FF6  : DFFE PORT MAP (D(6) , Clock, ResetSystem, '1', ENA(6) , Q(6));
		FF7  : DFFE PORT MAP (D(7) , Clock, ResetSystem, '1', ENA(7) , Q(7));
		FF8  : DFFE PORT MAP (D(8) , Clock, ResetSystem, '1', ENA(8) , Q(8));
		FF9  : DFFE PORT MAP (D(9) , Clock, ResetSystem, '1', ENA(9) , Q(9));
		FF10 : DFFE PORT MAP (D(10), Clock, ResetSystem, '1', ENA(10), Q(10));
		FF11 : DFFE PORT MAP (D(11), Clock, ResetSystem, '1', ENA(11), Q(11));
		FF12 : DFFE PORT MAP (D(12), Clock, ResetSystem, '1', ENA(12), Q(12));
	   FF13 : DFFE PORT MAP (D(13), Clock, ResetSystem, '1', ENA(13), Q(13));
		FF14 : DFFE PORT MAP (D(14), Clock, ResetSystem, '1', ENA(14), Q(14));
		
		
		Valor_out <= Q;
--******************************************************--

END ARCHITECTURE	StackPointer;