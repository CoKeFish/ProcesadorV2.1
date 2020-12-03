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
						
				Estados 					:OUT STD_LOGIC_VECTOR(99 DOWNTO 0)
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

	
	
			SIGNAL Q					:STD_LOGIC_VECTOR (99 DOWNTO 0);
			SIGNAL D					:STD_LOGIC_VECTOR (99 DOWNTO 0);
		
	
BEGIN	

	--******************************************************--
		
		
		Inmediato <= ((NOT (ModeDir(0))) AND (NOT (ModeDir(1))));
		Directo <= (((ModeDir(0))) AND (NOT (ModeDir(1))));
		Indirecto <= ((NOT (ModeDir(0))) AND ((ModeDir(1))));
		
	-----------------------------------Leemos la instruccion----------------------------------------|			
	--#Estado 1
		D(0) <= (Q(6) OR Q(7) OR Q(10) OR Q(13) OR Q(16) OR Q(19) OR Q(23) OR Q(24) OR Q(25) OR Q(46) OR Q(58)) AND (NOT Int);
		
	--#Estado 2-
		D(1) <= Q(0);
		
	--#Estado 3
		D(2) <= Q(1);
		Save_GPR <= Q(2);
		
		Ena_Mp <= Q(2) OR Q(1) OR Q(0);
		
	--#Estado 4
		D(3) <= Q(2);
		
	----------------------------Operaciones logicas y aritmeticas modo inmediato--------------------
		
	--#Estado 5
		D(4) <= (Q(3) AND Inmediato AND (ADD_CA OR ADD_CO OR SUB OR COMP OR AND_S OR OR_S OR CR)) OR Q(29);
		
	
	--#Estado 6
		D(5) <= Q(4);
		
	--#Estado 7
		D(6) <= Q(5);
		
	--------------------------------------Contemplamos una instruccion vacia------------------------
	
	--#Estado 8
		
		D(7) <= Q(3) AND None;
		
	-------------------------------Operacion de multiplicacion----------------------------------------
	
	--#Estado 9
		
		D(8) <= Q(3) AND Inmediato AND MULT;
		
	--#Estado 10
	
		D(9) <= Q(8) OR ((NOT (Disponible)) AND Q(9));
		
	--#Estado 11
		D(10) <= Q(9) AND (Disponible);
		
	---------------------------------Operacion de NOT y Corrimiento logico------------------------------
		
	--#Estado 12
		
		D(11) <= Q(3) AND Inmediato AND (NOT_S OR SR);
		
		
	--#Estado 13
		D(12) <= Q(11);
		
		
	--#Estado 14
		D(13) <= Q(12);
		Ena_AcALU <= Q(11) OR Q(12) OR Q(13);
		
	-------------------------------Operaciones para el almacenamiento de datos-------------------------------
		
	--#Estado 15
		D(14) <= Q(3) AND Directo AND STR;
	
	--#Estado 16
		D(15) <= Q(14);
		
	--#Estado 17
		D(16) <= Q(15);
		
		
	--#Estado 18
		D(17) <= Q(3) AND Directo AND MOV;
		

	--#Estado 19
		D(18) <= Q(17);
		
	--#Estado 20
		D(19) <= Q(18);
	--------------------------------Operacion para detener el procesador(fin de la maquina de estados-----------
	--#Estado 21
		D(20) <= Q(3) AND STP;
		
		
		
	-------------------------------Operaciones de saltos incondicinales y condicionales-------------------------------	
	--#Estado 22
		D(21) <= Q(3) AND Directo AND (JMP OR (BEQZ AND PSROut(3)) OR (BEQN AND PSROut(2)) OR (BEQO AND PSROut(0)));
	
	--#Estado 23
		D(22) <= Q(21);
		
	--#Estado 24
		D(23) <= Q(22);
		
	---------------------------------Habilitamos y desabilitamos las interrupciones-------------------------------------------------
	--#Estado 25
		D(24) <= Q(3) AND SLI;
		IntE <= Q(24);
		
	--#Estado 26
		D(25) <= Q(3) AND CLI;
		
	------------------------------------Estado adicional para guardar las banderas----------------------------------------
	--#Estado 27--SaveB
		D(26) <= Q(6) OR Q(10);
	
	------------------------------------Aritmetico y logicas en modo directo----------------------------------------------
	--#Estado 28
		D(27) <= Q(3) AND Directo AND (ADD_CA OR ADD_CO OR SUB OR COMP OR AND_S OR OR_S OR CR);
		
	--#Estado 29
		D(28) <= Q(27);
		
	--#Estado 30
		D(29) <= Q(28);
		
	--#Estado 31
		D(30) <= Q(29);
		
	--#Estado 32
		D(31) <= Q(30);
		
	--#Estado 33
		D(32) <= Q(31);
	
	-------------------------------------Zona de interrupciones---------------------------------------------------------------
		
	--#Estado 34--Interupciones
		D(33) <= Int;
		
	--#Estado 35
		D(34) <= Q(33);
		
	-------------------------------------Operacion de subrutina----------------------------------------------------
		
	--#Estado 36
		D(35) <= (Q(3) AND Directo AND JSR) OR Q(34);
		
	--#Estado 37
		D(36) <= Q(35);
		
	--#Estado 38
		D(37) <= Q(36);
	
	
	--#Estado 39
		D(38) <= Q(37);
		
		
	--#Estado 40
		D(39) <= Q(38);
		
	--#Estado 41
		D(40) <= Q(39);
		
	--#Estado 42
		D(41) <= Q(40);
		
		
	--#Estado 43
		D(42) <= Q(41);
		
		
	--#Estado 44
		D(43) <= Q(42);
		
	--#Estado 45
		D(44) <= Q(43);
		
	--#Estado 46
		D(45) <= Q(44);
		
		
	--#Estado 47
		D(46) <= Q(45);
		
		
	---------------------------------------Operacion de retorno----------------------------------------- 
		
	
	--#Estado 48
		D(47) <= Q(3) AND Directo AND RTN;
		
		
		
		
	--#Estado 49
		D(48) <= Q(47);
		
	--#Estado 50
		D(49) <= Q(48);
	
	
	--#Estado 51
		D(50) <= Q(49);
		
		
		
		
	--#Estado 52
		D(51) <= Q(50);
		
		
		
		
	--#Estado 53
		D(52) <= Q(51);
		
	--#Estado 54
		D(53) <= Q(52);
		
		
	--#Estado 55
		D(54) <= Q(53);
		
		
		
		
	--#Estado 56
		D(55) <= Q(54);
		
		
		
		
	--#Estado 57
		D(56) <= Q(55);
		
	--#Estado 58
		D(57) <= Q(56);
		
		
	--#Estado 59
		D(58) <= Q(57);
		
		
		
		
		SaveInt <= Q(25) OR Q(24) OR Q(34);
		
		
		Save_PC <= Q(22) OR Q(45) OR Q(58);
		SelectPC <= Q(56) OR Q(57) OR Q(58);
		SelectALU <= Q(27) OR Q(28) OR Q(29) OR Q(30) OR Q(31) OR Q(32);
		
		
		
		SelectAcum <= Q(17) OR Q(18) OR Q(19) OR Q(52) OR Q(53) OR Q(54);
		
		SelectDir(1) <= Q(14) OR Q(15) OR Q(16) OR Q(17) OR Q(18) OR Q(19) OR Q(27) OR Q(28) OR Q(29) OR Q(30) OR Q(31) OR Q(32);
		SelectDir(0) <= Q(35) OR Q(36) OR Q(37) OR Q(38) OR Q(39) OR Q(40) OR Q(41) OR Q(43) OR Q(44) OR Q(45) OR Q(47) OR Q(48) OR Q(49) OR Q(50) OR Q(51) OR Q(52) OR Q(53) OR Q(54) OR Q(55) OR Q(56) OR Q(57) OR Q(58);
		SelectDataMd(0) <= Q(14) OR Q(15) OR Q(16) OR Q(39) OR Q(40) OR Q(41);
		SelectDataMd(1) <= Q(35) OR Q(36) OR Q(37);
		
		Ena_Md_Read <= Q(17) OR Q(18) OR Q(19) OR Q(27) OR Q(28) OR Q(29) OR Q(30) OR Q(31) OR Q(32);
		
		Save_Acum <= Q(6) OR Q(10) OR Q(13) OR Q(17) OR Q(18) OR Q(19) OR Q(54);
		SaveB <= Q(26) OR Q(50);
		
		Habilitar <= Q(4) OR Q(8) OR Q(11);
		Inc_PC <= Q(6) OR Q(7) OR Q(10) OR Q(13) OR Q(16) OR Q(19) OR Q(24) OR Q(25);
		Ena_Md_Write <= Q(14) OR Q(15) OR Q(16) OR Q(35) OR Q(36) OR Q(37) OR Q(39) OR Q(40) OR Q(41) OR Q(43) OR Q(44) OR Q(45);
		
		Ena_SP <= Q(38) OR Q(42) OR Q(46) OR Q(47) OR Q(51) OR Q(55);
		IncDec(1) <= Q(38) OR Q(42) OR Q(46);
		IncDec(0) <= Q(47) OR Q(51) OR Q(55);
		
		SelectPSR <= Q(48) OR Q(49) OR Q(50);
		

		Estados <= Q;
		
		
		
		
		
		
			
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
		FF50 : DFFE PORT MAP (D(50), Clock, ResetSystem, '1', '1', Q(50));
		FF51 : DFFE PORT MAP (D(51), Clock, ResetSystem, '1', '1', Q(51));
		FF52 : DFFE PORT MAP (D(52), Clock, ResetSystem, '1', '1', Q(52));
		FF53 : DFFE PORT MAP (D(53), Clock, ResetSystem, '1', '1', Q(53));
		FF54 : DFFE PORT MAP (D(54), Clock, ResetSystem, '1', '1', Q(54));
		FF55 : DFFE PORT MAP (D(55), Clock, ResetSystem, '1', '1', Q(55));
		FF56 : DFFE PORT MAP (D(56), Clock, ResetSystem, '1', '1', Q(56));
		FF57 : DFFE PORT MAP (D(57), Clock, ResetSystem, '1', '1', Q(57));
		FF58 : DFFE PORT MAP (D(58), Clock, ResetSystem, '1', '1', Q(58));
		FF59 : DFFE PORT MAP (D(59), Clock, ResetSystem, '1', '1', Q(59));
		FF60 : DFFE PORT MAP (D(60), Clock, ResetSystem, '1', '1', Q(60));
		FF61 : DFFE PORT MAP (D(61), Clock, ResetSystem, '1', '1', Q(61));
		FF62 : DFFE PORT MAP (D(62), Clock, ResetSystem, '1', '1', Q(62));
		FF63 : DFFE PORT MAP (D(63), Clock, ResetSystem, '1', '1', Q(63));
		FF64 : DFFE PORT MAP (D(64), Clock, ResetSystem, '1', '1', Q(64));
		FF65 : DFFE PORT MAP (D(65), Clock, ResetSystem, '1', '1', Q(65));
		FF66 : DFFE PORT MAP (D(66), Clock, ResetSystem, '1', '1', Q(66));
		FF67 : DFFE PORT MAP (D(67), Clock, ResetSystem, '1', '1', Q(67));
		FF68 : DFFE PORT MAP (D(68), Clock, ResetSystem, '1', '1', Q(68));

		
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