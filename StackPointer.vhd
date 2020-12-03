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
				Ena_SP			:IN STD_LOGIC; --Señal de control que habilita contador
				IncDec         :IN STD_LOGIC_VECTOR(1 DOWNTO 0); --Señal de control que indica conteo Asc-Desc     
				----------------------------------------------
				--SALIDAS
				SP_out   		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0) --Valor actual del contador
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
		SIGNAL Inc           :STD_LOGIC;
		SIGNAL Dec           :STD_LOGIC;
	
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
		
		Inc <= IncDec(0)       AND (NOT IncDec(1));
		Dec <= (NOT IncDec(0)) AND  IncDec(1);
		
		ENA(0)  <=  Ena_SP;
		ENA(1)  <= ((Q(0)  AND Inc) OR (NOT(Q(0))  AND (Dec))) AND ENA(0);
		ENA(2)  <= ((Q(1)  AND Inc) OR (NOT(Q(1))  AND (Dec))) AND ENA(1);
		ENA(3)  <= ((Q(2)  AND Inc) OR (NOT(Q(2))  AND (Dec))) AND ENA(2);
		ENA(4)  <= ((Q(3)  AND Inc) OR (NOT(Q(3))  AND (Dec))) AND ENA(3);
		ENA(5)  <= ((Q(4)  AND Inc) OR (NOT(Q(4))  AND (Dec))) AND ENA(4);
	   ENA(6)  <= ((Q(5)  AND Inc) OR (NOT(Q(5))  AND (Dec))) AND ENA(5);
		ENA(7)  <= ((Q(6)  AND Inc) OR (NOT(Q(6))  AND (Dec))) AND ENA(6);
		ENA(8)  <= ((Q(7)  AND Inc) OR (NOT(Q(7))  AND (Dec))) AND ENA(7);
		ENA(9)  <= ((Q(8)  AND Inc) OR (NOT(Q(8))  AND (Dec))) AND ENA(8);
		ENA(10) <= ((Q(9)  AND Inc) OR (NOT(Q(9))  AND (Dec))) AND ENA(9);
		ENA(11) <= ((Q(10) AND Inc) OR (NOT(Q(10)) AND (Dec))) AND ENA(10);
		ENA(12) <= ((Q(11) AND Inc) OR (NOT(Q(11)) AND (Dec))) AND ENA(11);
		ENA(13) <= ((Q(12) AND Inc) OR (NOT(Q(12)) AND (Dec))) AND ENA(12);
		ENA(14) <= ((Q(13) AND Inc) OR (NOT(Q(13)) AND (Dec))) AND ENA(13);
	   ENA(15) <= ((Q(14) AND Inc) OR (NOT(Q(14)) AND (Dec))) AND ENA(14);
		
		
		FF0  : DFFE PORT MAP (D(0) , Clock, '1', ResetSystem, ENA(0) , Q(0));
		FF1  : DFFE PORT MAP (D(1) , Clock, '1', ResetSystem, ENA(1) , Q(1));
		FF2  : DFFE PORT MAP (D(2) , Clock, '1', ResetSystem, ENA(2) , Q(2));
		FF3  : DFFE PORT MAP (D(3) , Clock, '1', ResetSystem, ENA(3) , Q(3));
		FF4  : DFFE PORT MAP (D(4) , Clock, '1', ResetSystem, ENA(4) , Q(4));
		FF5  : DFFE PORT MAP (D(5) , Clock, '1', ResetSystem, ENA(5) , Q(5));
		FF6  : DFFE PORT MAP (D(6) , Clock, '1', ResetSystem, ENA(6) , Q(6));
		FF7  : DFFE PORT MAP (D(7) , Clock, '1', ResetSystem, ENA(7) , Q(7));
		FF8  : DFFE PORT MAP (D(8) , Clock, '1', ResetSystem, ENA(8) , Q(8));
		FF9  : DFFE PORT MAP (D(9) , Clock, '1', ResetSystem, ENA(9) , Q(9));
		FF10 : DFFE PORT MAP (D(10), Clock, '1', ResetSystem, ENA(10), Q(10));
		FF11 : DFFE PORT MAP (D(11), Clock, '1', ResetSystem, ENA(11), Q(11));
		FF12 : DFFE PORT MAP (D(12), Clock, '1', ResetSystem, ENA(12), Q(12));
	   FF13 : DFFE PORT MAP (D(13), Clock, '1', ResetSystem, ENA(13), Q(13));
		FF14 : DFFE PORT MAP (D(14), Clock, '1', ResetSystem, ENA(14), Q(14));
		FF15 : DFFE PORT MAP (D(15), Clock, '1', ResetSystem, ENA(15), Q(15));
		
		
		SP_out <= Q;
--******************************************************--

END ARCHITECTURE	StackPointer;