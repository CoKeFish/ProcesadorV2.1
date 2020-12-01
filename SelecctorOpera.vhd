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

ENTITY SelecctorOpera IS
	
	PORT (
				--ENTRADAS
				Operador				:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Señal de 4 bits. seleccion de operacion 
				--------------------------------------------------
				--SALIDAS
				None					:OUT STD_LOGIC;--No se realiza ninguna operacion
				ADD_CA				:OUT STD_LOGIC;--Indica operacion Suma con Carry
				ADD_CO				:OUT STD_LOGIC;--Indica operacion Suma con complemento a2
				SUB					:OUT STD_LOGIC;--Indica operacion Resta
				COMP					:OUT STD_LOGIC;--Indica operacion Complemento a2 
				MULT					:OUT STD_LOGIC;--Indica operacion Multiplicación
				AND_S					:OUT STD_LOGIC;--Indica operacion AND
				OR_S					:OUT STD_LOGIC;--Indica operacion OR
				NOT_S					:OUT STD_LOGIC;--Indica operacion NOT 
				SR						:OUT STD_LOGIC;--Indica operacion Desplazamiento a derecha
				SRA_S					:OUT STD_LOGIC;--Indica operacion Desplazamiento artmetico a derecha
				CR						:OUT STD_LOGIC--Indica operacion Desplazamiento circular a derecha
				
		);
	
END ENTITY SelecctorOpera;

ARCHITECTURE	SelecctorOpera OF SelecctorOpera IS

	

	
BEGIN

	--******************************************************--

	None 		<= (Operador(3) AND Operador(2)) OR (NOT(Operador(0) OR Operador(1) OR Operador(2) OR Operador(3)));--No se realiza una operacion
	ADD_CA 	<= (Operador(0) AND (NOT(Operador(1) OR Operador(2) OR Operador(3))));
	ADD_CO	<= (Operador(1) AND (NOT(Operador(0) OR Operador(2) OR Operador(3))));
	SUB		<= ((Operador(0) AND Operador(1)) AND (NOT(Operador(2) OR Operador(3))));
	COMP		<= (Operador(2) AND (NOT(Operador(1) OR Operador(0) OR Operador(3))));
	MULT		<= ((Operador(0) AND Operador(2)) AND (NOT(Operador(1) OR Operador(3))));
	AND_S		<= ((Operador(1) AND Operador(2)) AND (NOT(Operador(0) OR Operador(3))));
	OR_S		<= ((Operador(0) AND Operador(1) AND Operador(2)) AND (NOT(Operador(3))));
	NOT_S		<= (Operador(3) AND (NOT(Operador(0) OR Operador(1) OR Operador(2))));
	SR			<= ((Operador(0) AND Operador(3)) AND (NOT(Operador(1) OR Operador(2))));
	SRA_S		<= ((Operador(1) AND Operador(3)) AND (NOT(Operador(0) OR Operador(2))));
	CR			<= ((Operador(0) AND Operador(1) AND Operador(3)) AND (NOT(Operador(2))));
	
	
	--******************************************************--

END ARCHITECTURE	SelecctorOpera;