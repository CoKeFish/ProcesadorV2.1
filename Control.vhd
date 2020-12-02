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
						
				Estados 					:OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
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

	
	
			SIGNAL Q					:STD_LOGIC_VECTOR (5 DOWNTO 0);
			SIGNAL ENA				:STD_LOGIC_VECTOR (5 DOWNTO 0);
			SIGNAL D					:STD_LOGIC_VECTOR (5 DOWNTO 0);
		
	
BEGIN	

	--******************************************************--
		
				
	--#Estado 1
		D(0) <= Q(3);
		
	--#Estado 2-
		D(1) <= Q(0);
		Inc_PC <= Q(1);
	--#Estado 3
		D(2) <= Q(1);
		Save_GPR <= Q(2);
		
	--#Estado 4
		D(3) <= Q(2);
		
		
		Ena_Mp <= Q(2) OR Q(1) OR Q(0);
		
		
		Estados <= Q;
		
		
		
			
		FF0 : DFFE PORT MAP (D(0), Clock, '1', ResetSystem, '1', Q(0));
		FF1 : DFFE PORT MAP (D(1), Clock, ResetSystem, '1', '1', Q(1));
		FF2 : DFFE PORT MAP (D(2), Clock, ResetSystem, '1', '1', Q(2));
		FF3 : DFFE PORT MAP (D(3), Clock, ResetSystem, '1', '1', Q(3));
		FF4 : DFFE PORT MAP (D(4), Clock, ResetSystem, '1', '1', Q(4));
		FF5 : DFFE PORT MAP (D(5), Clock, ResetSystem, '1', '1', Q(5));
	
	--******************************************************--

END ARCHITECTURE	Control;