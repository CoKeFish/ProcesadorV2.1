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

ENTITY ControlALU IS
	
	PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;--Reloj del sistema
				ResetSystem				:IN STD_LOGIC;--Señal para restablecer los valores del sistema
				Enable					:IN STD_LOGIC;--Señal que habilita la los estados del sistema
				
				Operador					:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Señal de 4 bits que indica la operacion ha realizar.
				In_CarryResultado		:IN STD_LOGIC;--Señal que viene del registro carry, indica la existencia de carry.
				Q0							:IN STD_LOGIC;--Indica lo contenido en Registro_A_Q_E[1]
				QE							:IN STD_LOGIC;--Indica lo contenido en Registro_A_Q_E[0] 
				--------------------------------------------------
				--SALIDAS				
				
				Show_Foo					:OUT STD_LOGIC_VECTOR (2 DOWNTO 0);--Señal a multiplexor de salida SelectorG
				Save						:OUT STD_LOGIC;--Señal generada para guardar A tras una suma (Multiplicacion)
				Restar					:OUT STD_LOGIC;--Señal que indica si se toma el negado del numero
				CarryOutput				:OUT STD_LOGIC;--Señal generada a sumador para sumarse como carry
				SaveCarry				:OUT STD_LOGIC;--Señal que habilita el registro carry para guardar carry.
				Disponible				:OUT STD_LOGIC;--señal que indica que el sistema está habilitado para recibir una operacion 
				SiMultiEna				:OUT STD_LOGIC;--Señal empleada para inicializar el registro_A_Q_E
				SiMultiState			:OUT STD_LOGIC;--Empleada para guardar A y para escoger A en el sumando1
				SiMultiEdes				:OUT STD_LOGIC--Señal empleada para habilitar el desplazamiento de Registro_A_Q_E
				--estados					:OUT STD_LOGIC_VECTOR (5 DOWNTO 0)--Estados de control
		);
	
END ENTITY ControlALU;

ARCHITECTURE	ControlALU OF ControlALU IS

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
		
	--******************************************************--
	
		COMPONENT CounterMulti IS
			
			PORT (
						--ENTRADAS
						Clock 					:IN STD_LOGIC;
						ResetSystem				:IN STD_LOGIC;
						Enable					:IN STD_LOGIC;
						--------------------------------------------------
						--SALIDAS
						SalidaBit				:OUT STD_LOGIC
				);
			
		END COMPONENT CounterMulti;
	--******************************************************--

	
	
			SIGNAL Q					:STD_LOGIC_VECTOR (5 DOWNTO 0);
			SIGNAL ENA				:STD_LOGIC_VECTOR (5 DOWNTO 0);
			SIGNAL D					:STD_LOGIC_VECTOR (5 DOWNTO 0);
		
		
		
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
			
			SIGNAL EndMulti		:STD_LOGIC;
		
	
BEGIN	

	--******************************************************--
	--#Estado 1
		D(0) <= (Q(0) AND Enable) OR (None) OR Q(1) OR EndMulti;
		Disponible <= Q(0);
		
	--#Estado 2
		D(1) <= (NOT Q(1)) AND (ADD_CA OR ADD_CO OR SUB OR COMP OR AND_S OR OR_S OR NOT_S OR SR OR CR) AND (NOT Enable);
		
		SaveCarry <= (ADD_CO OR ADD_CA) AND Q(1);
		Save <= Q(1) OR EndMulti;
		
	--#Estado 3
		D(2) <= (NOT Q(2)) AND MULT AND (NOT Enable);
		SiMultiEna <= Q(2);
		
	--#Estado 4
		D(3) <= MULT AND (NOT EndMulti) AND (Q0 XOR QE) AND (Q(5));
		SiMultiState <= Q(3);
		
	--#Estado 5
		D(4) <= (MULT AND (NOT EndMulti) AND (NOT(Q0 XOR QE)) AND (Q(5))) OR Q(3);
		SiMultiEdes <= Q(4);
		
	--#Estado 6
		D(5) <= Q(4) OR Q(2);
		
		

		
		
		
		Show_Foo(0) <= ADD_CA OR ADD_CO OR SUB OR COMP OR OR_S OR CR OR MULT;
		Show_Foo(1) <= NOT_S OR OR_S OR SR OR MULT; 
		Show_Foo(2) <= AND_S OR SR OR CR OR MULT;
		
		Restar <= NOT(SUB OR COMP OR (Q0 AND (NOT QE)));
		CarryOutput <= In_CarryResultado AND ADD_CA;
		
		
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
		B_Counter : CounterMulti PORT MAP(
						Clock,
						ResetSystem AND (NOT Q(2)),
						Q(4),
						EndMulti
						);
						
						
						
		FF0 : DFFE PORT MAP (D(0), Clock, '1', ResetSystem, '1', Q(0));
		FF1 : DFFE PORT MAP (D(1), Clock, ResetSystem, '1', '1', Q(1));
		FF2 : DFFE PORT MAP (D(2), Clock, ResetSystem, '1', '1', Q(2));
		FF3 : DFFE PORT MAP (D(3), Clock, ResetSystem, '1', '1', Q(3));
		FF4 : DFFE PORT MAP (D(4), Clock, ResetSystem, '1', '1', Q(4));
		FF5 : DFFE PORT MAP (D(5), Clock, ResetSystem, '1', '1', Q(5));
		
		--estados <= Q;
	
	--******************************************************--

END ARCHITECTURE	ControlALU;