--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                       --
-- 													              --
-- Titulo :    Control							              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Es la unidad encargada del manejo de las
--					operaciones solicitas mediante los pines
--					de entrada, se encarga de funcionar como 
--					interfaz entre los valores de entrada y 
--					los distintos componentes que conforman el
--					sistema de la ALU
--******************************************************--




ENTITY Control IS
	
			PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;--Reloj del sistema
				ResetSystem				:IN STD_LOGIC;--Señal para restablecer los valores del sistema
				
				--ALU
				Disponible				:IN STD_LOGIC;
				
				--GPR
				OpControl				:IN STD_LOGIC_VECTOR(4 DOWNTO 0);--Operacion de la instruccion
				ModeDir					:IN STD_LOGIC_VECTOR(1 DOWNTO 0);--Modo de direccionamiento de la instruccion
				
				--Status
				PSROut					:IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				Int						:IN STD_LOGIC;
				
				--------------------------------------------------
				--SALIDAS				
					
				--Enable
						
				Ena_Mp 					:OUT STD_LOGIC;--Habilitamos la memoria de programa
				Ena_Md_Read 			:OUT STD_LOGIC;--Habilitamos la memoria de datos para lectura
				Ena_Md_Write			:OUT STD_LOGIC;--Habilitamos la memoria de datos para escritura
				Ena_SP					:OUT STD_LOGIC;
				Ena_AcALU				:OUT STD_LOGIC;
						
				--Control
				Save_GPR					:OUT STD_LOGIC;--Guardamos el valor a la entrada de GPR
				Save_Acum				:OUT STD_LOGIC;--Guardamos el valor a la entrada del acumulador
				Save_PC					:OUT STD_LOGIC;--Guardamos el valor a la entrada del program counter
				SaveB						:OUT STD_LOGIC;
				SaveInt					:OUT STD_LOGIC;
				SaveDirR					:OUT STD_LOGIC;
				
				Inc_PC					:OUT STD_LOGIC;--Incrementamos el valor del program counter
				IntE						:OUT STD_LOGIC;
				Habilitar				:OUT STD_LOGIC;--Realizamos una operacion con la ALU
				IncDec 					:OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				
				--Select
				SelectALU				:OUT STD_LOGIC;
				SelectAcum				:OUT STD_LOGIC;
				SelectPC					:OUT STD_LOGIC;
				SelectPSR				:OUT STD_LOGIC;
				SelectDataMd			:OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				SelectDir				:OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
				
				--Test   (salidas exclusivamente para realizar pruebas
						
				Estados 					:OUT STD_LOGIC_VECTOR(49 DOWNTO 0)
		);
	
END ENTITY Control;





ARCHITECTURE	Control OF Control IS

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
	
		COMPONENT OperatorMUX IS
			
			PORT (
						--ENTRADAS
						Operador				:IN STD_LOGIC_VECTOR (4 DOWNTO 0);--Señal de 4 bits. seleccion de operacion 
						--------------------------------------------------
						--SALIDAS
						None						:OUT STD_LOGIC;--No se realiza ninguna operacion
						ADD_CA					:OUT STD_LOGIC;--Indica operacion Suma con Carry
						ADD_CO					:OUT STD_LOGIC;--Indica operacion Suma con complemento a2
						SUB						:OUT STD_LOGIC;--Indica operacion Resta
						COMP						:OUT STD_LOGIC;--Indica operacion Complemento a2 
						MULT						:OUT STD_LOGIC;--Indica operacion Multiplicación
						AND_S						:OUT STD_LOGIC;--Indica operacion AND
						OR_S						:OUT STD_LOGIC;--Indica operacion OR
						NOT_S						:OUT STD_LOGIC;--Indica operacion NOT 
						SR							:OUT STD_LOGIC;--Indica operacion Desplazamiento a derecha
						SRA_S						:OUT STD_LOGIC;--Indica operacion Desplazamiento artmetico a derecha
						CR							:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						MOV						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						STR						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						JSR						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						RTN						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						STP						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						JMP						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						BEQZ						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						BEQN						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						BEQO						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						PUSH						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						POP						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						SLI						:OUT STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
						CLI						:OUT STD_LOGIC--Indica operacion Desplazamiento circular a derecha
						
				);
			
		END COMPONENT OperatorMUX;

	--******************************************************--
	
	
	
			SIGNAL	None						:STD_LOGIC;--No se realiza ninguna operacion
			SIGNAL	ADD_CA					:STD_LOGIC;--Indica operacion Suma con Carry
			SIGNAL	ADD_CO					:STD_LOGIC;--Indica operacion Suma con complemento a2
			SIGNAL	SUB						:STD_LOGIC;--Indica operacion Resta
			SIGNAL	COMP						:STD_LOGIC;--Indica operacion Complemento a2 
			SIGNAL	MULT						:STD_LOGIC;--Indica operacion Multiplicación
			SIGNAL	AND_S						:STD_LOGIC;--Indica operacion AND
			SIGNAL	OR_S						:STD_LOGIC;--Indica operacion OR
			SIGNAL	NOT_S						:STD_LOGIC;--Indica operacion NOT 
			SIGNAL	SR							:STD_LOGIC;--Indica operacion Desplazamiento a derecha
			SIGNAL	SRA_S						:STD_LOGIC;--Indica operacion Desplazamiento artmetico a derecha
			SIGNAL	CR							:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	MOV						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	STR						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	JSR						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	RTN						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	STP						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	JMP						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	BEQZ						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	BEQN						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	BEQO						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	PUSH						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	POP						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	SLI						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	CLI						:STD_LOGIC;--Indica operacion Desplazamiento circular a derecha
			SIGNAL	Inmediato				:STD_LOGIC;
			SIGNAL	Directo					:STD_LOGIC;
			SIGNAL	Indirecto				:STD_LOGIC;

	
	
			SIGNAL Q					:STD_LOGIC_VECTOR (49 DOWNTO 0);
			SIGNAL D					:STD_LOGIC_VECTOR (49 DOWNTO 0);
		
	
BEGIN	

	--******************************************************--
		
		
		Inmediato <= ((NOT (ModeDir(0))) AND (NOT (ModeDir(1))));
		Directo <= (((ModeDir(0))) AND (NOT (ModeDir(1))));
		Indirecto <= ((NOT (ModeDir(0))) AND ((ModeDir(1))));
		
				
	--#Estado 1
		D(0) <= Q(6) OR Q(7) OR Q(10) OR Q(13);
		
	--#Estado 2-
		D(1) <= Q(0);
		
	--#Estado 3
		D(2) <= Q(1);
		Save_GPR <= Q(2);
		
		Ena_Mp <= Q(2) OR Q(1) OR Q(0);
		
	--#Estado 4
		D(3) <= Q(2);
		
	--#Estado 5
		D(4) <= Q(3) AND Inmediato AND (ADD_CA OR ADD_CO OR SUB OR COMP OR AND_S OR OR_S OR CR);
		
	
	--#Estado 6
		D(5) <= Q(4);
		
	--#Estado 7
		D(6) <= Q(5);
		
	--#Estado 8
		
		D(7) <= Q(3) AND None;
		
	--#Estado 9
		
		D(8) <= Q(3) AND Inmediato AND MULT;
		
	--#Estado 10
	
		D(9) <= Q(8) OR ((NOT (Disponible)) AND Q(9));
		
	--#Estado 10
		D(10) <= Q(9) AND (Disponible);
		
	--#Estado 11
		
		D(11) <= Q(3) AND Inmediato AND (NOT_S OR SR);
		
		
	--#Estado 12
		D(12) <= Q(11);
		
		
	--#Estado 13
		D(13) <= Q(12);
		Ena_AcALU <= Q(11) OR Q(12) OR Q(13);
		
	--#Estado 14
		D(14) <= Q(3) AND Directo AND STR;
		SelectDir(1) <= Q(14);
		SelectDataMd(0) <= Q(14);
		Ena_Md_Write <= Q(14);
	
	--#Estado 12
		D(15) <= Q(15);
		
		
		
		Save_Acum <= Q(6) OR Q(10) OR Q(13);
		SaveB <= Q(6) OR Q(10);
		SelectPSR <=Q(6) OR Q(10) OR Q(13);
		Habilitar <= Q(4) OR Q(8) OR Q(11);
		Inc_PC <= Q(6) OR Q(7) OR Q(10) OR Q(13);
		
		
		
		Estados <= Q;
		
		
		
		Ena_SP <= '0';
		SelectALU <= '0';
		SelectAcum <= '0';
		SelectPC <= '0';
		Save_PC <= '0';
		
		
		
		
			
		FF0 : DFFE PORT MAP (D(0), Clock, '1', ResetSystem, '1', Q(0));
		FF1 : DFFE PORT MAP (D(1), Clock, ResetSystem, '1', '1', Q(1));
		FF2 : DFFE PORT MAP (D(2), Clock, ResetSystem, '1', '1', Q(2));
		FF3 : DFFE PORT MAP (D(3), Clock, ResetSystem, '1', '1', Q(3));
		FF4 : DFFE PORT MAP (D(4), Clock, ResetSystem, '1', '1', Q(4));
		FF5 : DFFE PORT MAP (D(5), Clock, ResetSystem, '1', '1', Q(5));
		FF6 : DFFE PORT MAP (D(6), Clock, ResetSystem, '1', '1', Q(6));
		FF7 : DFFE PORT MAP (D(7), Clock, ResetSystem, '1', '1', Q(7));
		FF8 : DFFE PORT MAP (D(8), Clock, ResetSystem, '1', '1', Q(8));
		FF9 : DFFE PORT MAP (D(9), Clock, ResetSystem, '1', '1', Q(9));
		FF10 : DFFE PORT MAP (D(10), Clock, ResetSystem, '1', '1', Q(10));
		FF11 : DFFE PORT MAP (D(11), Clock, ResetSystem, '1', '1', Q(11));
		FF12 : DFFE PORT MAP (D(12), Clock, ResetSystem, '1', '1', Q(12));
		FF13 : DFFE PORT MAP (D(13), Clock, ResetSystem, '1', '1', Q(13));
		FF14 : DFFE PORT MAP (D(14), Clock, ResetSystem, '1', '1', Q(14));
		FF15 : DFFE PORT MAP (D(15), Clock, ResetSystem, '1', '1', Q(15));
		FF16 : DFFE PORT MAP (D(16), Clock, ResetSystem, '1', '1', Q(16));
		FF17 : DFFE PORT MAP (D(17), Clock, ResetSystem, '1', '1', Q(17));
		FF18 : DFFE PORT MAP (D(18), Clock, ResetSystem, '1', '1', Q(18));
		FF19 : DFFE PORT MAP (D(19), Clock, ResetSystem, '1', '1', Q(19));
		FF20 : DFFE PORT MAP (D(20), Clock, ResetSystem, '1', '1', Q(20));
		FF21 : DFFE PORT MAP (D(21), Clock, ResetSystem, '1', '1', Q(21));
		FF22 : DFFE PORT MAP (D(22), Clock, ResetSystem, '1', '1', Q(22));
		FF23 : DFFE PORT MAP (D(23), Clock, ResetSystem, '1', '1', Q(23));
		FF24 : DFFE PORT MAP (D(24), Clock, ResetSystem, '1', '1', Q(24));
		FF25 : DFFE PORT MAP (D(25), Clock, ResetSystem, '1', '1', Q(25));
		FF26 : DFFE PORT MAP (D(26), Clock, ResetSystem, '1', '1', Q(26));
		FF27 : DFFE PORT MAP (D(27), Clock, ResetSystem, '1', '1', Q(27));
		FF28 : DFFE PORT MAP (D(28), Clock, ResetSystem, '1', '1', Q(28));
		FF29 : DFFE PORT MAP (D(29), Clock, ResetSystem, '1', '1', Q(29));
		FF30 : DFFE PORT MAP (D(30), Clock, ResetSystem, '1', '1', Q(30));
		FF31 : DFFE PORT MAP (D(31), Clock, ResetSystem, '1', '1', Q(31));
		FF32 : DFFE PORT MAP (D(32), Clock, ResetSystem, '1', '1', Q(32));
		FF33 : DFFE PORT MAP (D(33), Clock, ResetSystem, '1', '1', Q(33));
		FF34 : DFFE PORT MAP (D(34), Clock, ResetSystem, '1', '1', Q(34));
		FF35 : DFFE PORT MAP (D(35), Clock, ResetSystem, '1', '1', Q(35));
		FF36 : DFFE PORT MAP (D(36), Clock, ResetSystem, '1', '1', Q(36));
		FF37 : DFFE PORT MAP (D(37), Clock, ResetSystem, '1', '1', Q(37));
		FF38 : DFFE PORT MAP (D(38), Clock, ResetSystem, '1', '1', Q(38));
		FF39 : DFFE PORT MAP (D(39), Clock, ResetSystem, '1', '1', Q(39));
		FF40 : DFFE PORT MAP (D(40), Clock, ResetSystem, '1', '1', Q(40));
		FF41 : DFFE PORT MAP (D(41), Clock, ResetSystem, '1', '1', Q(41));
		FF42 : DFFE PORT MAP (D(42), Clock, ResetSystem, '1', '1', Q(42));
		FF43 : DFFE PORT MAP (D(43), Clock, ResetSystem, '1', '1', Q(43));
		FF44 : DFFE PORT MAP (D(44), Clock, ResetSystem, '1', '1', Q(44));
		FF45 : DFFE PORT MAP (D(45), Clock, ResetSystem, '1', '1', Q(45));
		FF46 : DFFE PORT MAP (D(46), Clock, ResetSystem, '1', '1', Q(46));
		FF47 : DFFE PORT MAP (D(47), Clock, ResetSystem, '1', '1', Q(47));
		FF48 : DFFE PORT MAP (D(48), Clock, ResetSystem, '1', '1', Q(48));
		FF49 : DFFE PORT MAP (D(49), Clock, ResetSystem, '1', '1', Q(49));

		
		B_OperatorMUX: OperatorMUX PORT MAP (
																OpControl,
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
																CR,
																MOV,
																STR,
																JSR,
																RTN,
																STP,
																JMP,
																BEQZ,
																BEQN,
																BEQO,
																PUSH,
																POP,
																SLI,
																CLI);
	
	--******************************************************--

END ARCHITECTURE	Control;