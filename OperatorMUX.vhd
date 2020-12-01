--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    SelectorOpera					              --
-- Fecha  :  	D:01 M:10 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Apartir de un bus de entrada genera varias
--					senales de salida que representan cada una 
--					de las operaciones realizadas por la ALU
--******************************************************--

ENTITY OperatorMUX IS
	
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
	
END ENTITY OperatorMUX;

ARCHITECTURE	OperatorMUX OF OperatorMUX IS

	

	
BEGIN

	--******************************************************--

	None 			<= (NOT(Operador(4) OR Operador(3) OR Operador(2) OR Operador(1) OR Operador(0))) OR ((Operador(4) AND Operador(3)) AND (NOT(((Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0))))));--No se realiza una operacion
	ADD_CA 		<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	ADD_CO		<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	SUB			<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	COMP			<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	MULT			<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	AND_S			<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	OR_S			<= (NOT(Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	NOT_S			<= (NOT(Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	SR				<= (NOT(Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	SRA_S			<= (NOT(Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	CR				<= (NOT(Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	MOV			<= (NOT(Operador(4))) AND ((Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	STR			<= (NOT(Operador(4))) AND ((Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	JSR			<= (NOT(Operador(4))) AND ((Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	RTN			<= (NOT(Operador(4))) AND ((Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	STP			<= ((Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	JMP			<= ((Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	BEQZ			<= ((Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	BEQN			<= ((Operador(4))) AND (NOT(Operador(3))) AND (NOT(Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	BEQO			<= ((Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	PUSH			<= ((Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND (NOT(Operador(1))) AND ((Operador(0)));
	POP			<= ((Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND (NOT(Operador(0)));
	SLI			<= ((Operador(4))) AND (NOT(Operador(3))) AND ((Operador(2))) AND ((Operador(1))) AND ((Operador(0)));
	CLI			<= ((Operador(4))) AND ((Operador(3))) AND (NOT(Operador(2))) AND (NOT(Operador(1))) AND (NOT(Operador(0)));
	
	
	--******************************************************--

END ARCHITECTURE	OperatorMUX;