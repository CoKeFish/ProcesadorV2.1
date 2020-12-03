--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--    	  Organizacion de computadores                 --
--          	PROYECTO PROCESADOR                		  --
-- 													              --
-- Titulo :    Contador de programa 		              --
-- Fecha  :  	D:01 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;


--******************************************************--
-- Comentarios: Este contador es el encargado de indicar
--              la posicion en memoria del programa
--              de acuerdo al orden de las instrucciones.
--******************************************************--

ENTITY ProgramCounter IS
	
			PORT (
						--ENTRADAS
						Clock 				:IN STD_LOGIC;--Reloj del sistema
						ResetSystem			:IN STD_LOGIC;--Reset del sistema
						Inc_PC				:IN STD_LOGIC;--Incrementamos el program counter
						Save_PC      		:IN STD_LOGIC;
						PC_in       		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
						--------------------------------------------------
						--SALIDAS
						PC_out    			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
				);
	
END ENTITY ProgramCounter;

ARCHITECTURE	ProgramCounter OF ProgramCounter IS

	--******************************************************--
		COMPONENT DFFE IS
		PORT (
				D						:IN STD_LOGIC;
				CLK					:IN STD_LOGIC;
				CLRN					:IN STD_LOGIC;
				PRN					:IN STD_LOGIC;
				ENA					:IN STD_LOGIC;
				
				Q						:OUT STD_LOGIC
		);
		END COMPONENT DFFE;
	--******************************************************--
	
		SIGNAL Q					:STD_LOGIC_VECTOR (15 DOWNTO 0);
		SIGNAL ENA				:STD_LOGIC_VECTOR (15 DOWNTO 0);
		SIGNAL D					:STD_LOGIC_VECTOR (15 DOWNTO 0);
	
BEGIN

	--******************************************************--
		
		D(0)  <= ((NOT (Q(0))) AND (Inc_PC)) OR (PC_in(0)  AND Save_PC);
		D(1)  <= ((NOT (Q(1))) AND (Inc_PC)) OR (PC_in(1)  AND Save_PC);
		D(2)  <= ((NOT (Q(2))) AND (Inc_PC)) OR (PC_in(2)  AND Save_PC);
		D(3)  <= ((NOT (Q(3))) AND (Inc_PC)) OR (PC_in(3)  AND Save_PC);
		D(4)  <= ((NOT (Q(4))) AND (Inc_PC)) OR (PC_in(4)  AND Save_PC);
		D(5)  <= ((NOT (Q(5))) AND (Inc_PC)) OR (PC_in(5)  AND Save_PC);
		D(6)  <= ((NOT (Q(6))) AND (Inc_PC)) OR (PC_in(6)  AND Save_PC);
		D(7)  <= ((NOT (Q(7))) AND (Inc_PC)) OR (PC_in(7)  AND Save_PC);
		D(8)  <= ((NOT (Q(8))) AND (Inc_PC)) OR (PC_in(8)  AND Save_PC);
		D(9)  <= ((NOT (Q(9))) AND (Inc_PC)) OR (PC_in(9)  AND Save_PC);
		D(10)  <= ((NOT (Q(10))) AND (Inc_PC)) OR (PC_in(10)  AND Save_PC);
		D(11)  <= ((NOT (Q(11))) AND (Inc_PC)) OR (PC_in(11)  AND Save_PC);
		D(12)  <= ((NOT (Q(12))) AND (Inc_PC)) OR (PC_in(12)  AND Save_PC);
		D(13)  <= ((NOT (Q(13))) AND (Inc_PC)) OR (PC_in(13)  AND Save_PC);
		D(14)  <= ((NOT (Q(14))) AND (Inc_PC)) OR (PC_in(14)  AND Save_PC);
		D(15)  <= ((NOT (Q(15))) AND (Inc_PC)) OR (PC_in(15)  AND Save_PC);

		
		ENA(0)  <=  Inc_PC OR Save_PC;
		ENA(1)  <= ((Q(0)  AND ENA(0)) OR Save_PC);
		ENA(2)  <= ((Q(1)  AND ENA(1)) OR Save_PC);
		ENA(3)  <= ((Q(2)  AND ENA(2)) OR Save_PC);
		ENA(4)  <= ((Q(3)  AND ENA(3)) OR Save_PC);
		ENA(5)  <= ((Q(4)  AND ENA(4)) OR Save_PC);
		ENA(6)  <= ((Q(5)  AND ENA(5)) OR Save_PC);
		ENA(7)  <= ((Q(6)  AND ENA(6)) OR Save_PC);
		ENA(8)  <= ((Q(7)  AND ENA(7)) OR Save_PC);
		ENA(9)  <= ((Q(8)  AND ENA(8)) OR Save_PC);
		ENA(10) <= ((Q(9)  AND ENA(9)) OR Save_PC);
		ENA(11) <= ((Q(10) AND ENA(10))OR Save_PC);
		ENA(12) <= ((Q(11) AND ENA(11))OR Save_PC);
		ENA(13) <= ((Q(12) AND ENA(12))OR Save_PC);
		ENA(14) <= ((Q(13) AND ENA(13))OR Save_PC);
		ENA(15) <= ((Q(14) AND ENA(14))OR Save_PC);
	
		PC_out <= Q;
		
		FF0  : DFFE PORT MAP (D(0),  Clock, ResetSystem, '1', ENA(0),  Q(0));
		FF1  : DFFE PORT MAP (D(1),  Clock, ResetSystem, '1', ENA(1),  Q(1));
		FF2  : DFFE PORT MAP (D(2),  Clock, ResetSystem, '1', ENA(2),  Q(2));
		FF3  : DFFE PORT MAP (D(3),  Clock, ResetSystem, '1', ENA(3),  Q(3));
		FF4  : DFFE PORT MAP (D(4),  Clock, ResetSystem, '1', ENA(4),  Q(4));
		FF5  : DFFE PORT MAP (D(5),  Clock, ResetSystem, '1', ENA(5),  Q(5));
		FF6  : DFFE PORT MAP (D(6),  Clock, ResetSystem, '1', ENA(6),  Q(6));
		FF7  : DFFE PORT MAP (D(7),  Clock, ResetSystem, '1', ENA(7),  Q(7));
		FF8  : DFFE PORT MAP (D(8),  Clock, ResetSystem, '1', ENA(8),  Q(8));
		FF9  : DFFE PORT MAP (D(9),  Clock, ResetSystem, '1', ENA(9),  Q(9));
		FF10 : DFFE PORT MAP (D(10), Clock, ResetSystem, '1', ENA(10), Q(10));
		FF11 : DFFE PORT MAP (D(11), Clock, ResetSystem, '1', ENA(11), Q(11));
		FF12 : DFFE PORT MAP (D(12), Clock, ResetSystem, '1', ENA(12), Q(12));
		FF13 : DFFE PORT MAP (D(13), Clock, ResetSystem, '1', ENA(13), Q(13));
		FF14 : DFFE PORT MAP (D(14), Clock, ResetSystem, '1', ENA(14), Q(14));
		FF15 : DFFE PORT MAP (D(15), Clock, ResetSystem, '1', ENA(15), Q(15));
		
	
	--******************************************************--

END ARCHITECTURE	ProgramCounter;