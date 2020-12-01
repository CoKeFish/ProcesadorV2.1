--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadores                --
--                  PROYECTO ALU			                 --
-- 													              --
-- Titulo :    Contador 0-8 Para multiplicacion         --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Almacena los datos referentes al cambio de contrasena
--******************************************************--

ENTITY CounterMulti IS
	
	PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;
				ResetSystem				:IN STD_LOGIC;
				Enable					:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				SalidaBit				:OUT STD_LOGIC
		);
	
END ENTITY CounterMulti;

ARCHITECTURE	CounterMulti OF CounterMulti IS

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
	
		SIGNAL Q					:STD_LOGIC_VECTOR (3 DOWNTO 0);
		SIGNAL ENA				:STD_LOGIC_VECTOR (3 DOWNTO 0);
		SIGNAL D					:STD_LOGIC_VECTOR (3 DOWNTO 0);
	
BEGIN

	--******************************************************--
	
		D(0) <= (NOT Q(0));
		D(1) <= (NOT Q(1));
		D(2) <= (NOT Q(2));
		D(3) <= (NOT Q(3));
		
		ENA(0) <=  Enable;
		ENA(1) <=  Q(0) AND ENA(0);
		ENA(2) <= (Q(1) AND ENA(1));
		ENA(3) <= (Q(2) AND ENA(2));
		
		SalidaBit <= Q(3);
	
		FF0 : DFFE PORT MAP (D(0), Clock, ResetSystem, '1', ENA(0), Q(0));
		FF1 : DFFE PORT MAP (D(1), Clock, ResetSystem, '1', ENA(1), Q(1));
		FF2 : DFFE PORT MAP (D(2), Clock, ResetSystem, '1', ENA(2), Q(2));
		FF3 : DFFE PORT MAP (D(3), Clock, ResetSystem, '1', ENA(3), Q(3));
	
	--******************************************************--

END ARCHITECTURE	CounterMulti;