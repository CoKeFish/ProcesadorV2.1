--************************************************************************--
--                   PONTIFICIA UNIVERSIDAD JAVERIANA                     --
--                     Organizacion de computadores                       --
--              		          PROYECTO ALU                               --
-- 												                                   --
-- Titulo :    Sistema digital de una Unidad Aritmetico Logica            --
-- Fecha  :    D:18 M:09 Y:2020                                           --
-- Presentado por : Grupo 3                                               --
--************************************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios:Sistema digital de una unidad aritmético lógica
--******************************************************--

ENTITY ALU IS
	
	PORT (
				--ENTRADAS
				Reloj 					:IN STD_LOGIC;--ciclo de reloj de 20ns
				Restablecer				:IN STD_LOGIC;--Restablecer sistema
				Habilitar				:IN STD_LOGIC;--Entrada de encendido del sistema
				Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Bus de 16 bits ingresado por usuario como primer numero
				Numero_2					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Bus de 16 bits ingresado por usuario como segundo numero
				Operacion				:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Bus de 4 bits ingresado por usuario para elegir operacion
				--------------------------------------------------
				--SALIDAS			
				
				ResultadoTotal			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);--Registro de resultado
				Disponibilidad			:OUT STD_LOGIC;--Salida indica que el sistema puede recibir datos a la entrada.
				Resultado_Z				:OUT STD_LOGIC;--Salida que indica si el resultado es cero
				Resultado_C				:OUT STD_LOGIC;--Salida que indica si la suma tuvo carry
				Resultado_O				:OUT STD_LOGIC;--Resultado que me indica si la operacion dio overflow
				Resultado_N				:OUT STD_LOGIC--Salida que indica si el resultaod es un numero negativo
				--StateQ					:OUT STD_LOGIC;--Desplazamiento de registro_A_Q_E
				--EstadosM					:OUT STD_LOGIC_VECTOR (5 DOWNTO 0)--Estados de control
		);
	
END ENTITY ALU;

ARCHITECTURE	ALU OF ALU IS

	--******************************************************--
		COMPONENT SelectorSM IS
	
		PORT (
					--ENTRADAS
					OneDigit				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					TwoDigit				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					SelectIN				:IN STD_LOGIC;
					--------------------------------------------------
					--SALIDAS
					SignalOUT			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
					
			);
	
		END COMPONENT SelectorSM;
	--******************************************************--
	
		COMPONENT SelecctorG IS
	
			PORT (
					--ENTRADAS
					ReSuma				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ReNot					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ReOr					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ReAnd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ReR1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ReR2					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					Multi					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					
					SelectIN				:IN STD_LOGIC_VECTOR (2 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					SignalOUT			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
					
			);
	
		END COMPONENT SelecctorG;
	--******************************************************--
	
		COMPONENT R_Resultado IS
		
		PORT (
					--ENTRADAS
					Clock 					:IN STD_LOGIC;
					ResetSystem				:IN STD_LOGIC;
					Enable					:IN STD_LOGIC;
					Data						:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					SalidaBit				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
			);
		
		END COMPONENT R_Resultado;
	
	--******************************************************--
	
		COMPONENT DesplazamientoRota IS
			
			PORT (
						--ENTRADAS
						
						Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
						--------------------------------------------------
						--SALIDAS
						
						Resultado				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
			
		END COMPONENT DesplazamientoRota;
	
	
	--******************************************************--
	
		COMPONENT DesplazamientoLogico IS
			
			PORT (
						--ENTRADAS
						
						Numero_2					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
						--------------------------------------------------
						--SALIDAS
						
						Resultado				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
				);
			
		END COMPONENT DesplazamientoLogico;
	
	--******************************************************--
	
		COMPONENT NOTCast IS
		
		PORT (
					--ENTRADAS
					OneDigit			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					CastOneDigit	:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
					
			);
		
		END COMPONENT NOTCast;
	
	--******************************************************--
	
	--******************************************************--
	
		COMPONENT ANDCast IS
		
		PORT (
					--ENTRADAS
					Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					Numero_2 				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					Resultado			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
					
			);
		
		END COMPONENT ANDCast;
	
	--******************************************************--
	--******************************************************--
	
		COMPONENT ORCast IS
		
		PORT (
					--ENTRADAS
					Numero_1					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					Numero_2 				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					--------------------------------------------------
					--SALIDAS
					Resultado			   :OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
					
			);
		
		END COMPONENT ORCast;
	
	--******************************************************--
	
		COMPONENT ControlALU IS
		
PORT (
				--ENTRADAS
				Clock 					:IN STD_LOGIC;
				ResetSystem				:IN STD_LOGIC;
				Enable					:IN STD_LOGIC;
				
				Operador					:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				In_CarryResultado		:IN STD_LOGIC;
				Q0							:IN STD_LOGIC;
				QE							:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS				
				
				Show_Foo					:OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
				Save						:OUT STD_LOGIC;
				Restar					:OUT STD_LOGIC;
				CarryOutput				:OUT STD_LOGIC;
				SaveCarry				:OUT STD_LOGIC;
				Disponible				:OUT STD_LOGIC;
				SiMultiEna				:OUT STD_LOGIC;
				SiMultiState			:OUT STD_LOGIC;
				SiMultiEdes				:OUT STD_LOGIC
				--estados					:OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
		);
		
		END COMPONENT ControlALU;
	
	
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
	
		COMPONENT ADDER IS
		
		PORT (
					--ENTRADAS
					SumandoOneDigit	:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					SumandoTwoDigit	:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					ICarry				:IN STD_LOGIC;
					--------------------------------------------------
					--SALIDAS
					ResultSuma			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
					RCarry				:OUT STD_LOGIC
					
			);
		
		END COMPONENT ADDER;
		
	--******************************************************--
	
	
	COMPONENT Registro_A_Q_E IS
        PORT    (
		           -------------ENTRADAS-----------------
					  Sum        : IN STD_LOGIC_VECTOR (7 DOWNTO 0);-- Señal de 8 bits que llega de suma
					  Q_number   : IN STD_LOGIC_VECTOR (7 DOWNTO 0);-- señal que llega de registro_2
					  Reloj      : IN STD_LOGIC;
					  Reset_AQE  : IN STD_LOGIC;
					  Reset      : IN STD_LOGIC;
					  save_A     : IN STD_LOGIC;
					  Edes       : IN STD_LOGIC;
					  -------------SALIDAS-------------------
					  A    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
					  AM   : OUT STD_LOGIC_VECTOR (16 DOWNTO 0)
					  
					  );
	END COMPONENT Registro_A_Q_E;
	
		COMPONENT Banderas IS
		
			PORT (	--------------------------------------------------
					--ENTRADAS
					Clock 				:IN STD_LOGIC;
					ResetSystem			:IN STD_LOGIC;
					Ena					:IN STD_LOGIC;
					
					Resultado			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					N1		 				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					N2						:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
					Operador				:IN STD_LOGIC_VECTOR (3 DOWNTO 0);
					In_carry				:IN STD_LOGIC;
					
					--------------------------------------------------
					--SALIDAS
					Resultado_Z				:OUT STD_LOGIC;
					Resultado_C				:OUT STD_LOGIC;
					Resultado_O				:OUT STD_LOGIC;
					Resultado_N				:OUT STD_LOGIC
			);
		
		END COMPONENT Banderas;
	
	
		SIGNAL Q								:STD_LOGIC_VECTOR (3 DOWNTO 0);--Salida de los estados
		SIGNAL ENA							:STD_LOGIC_VECTOR (3 DOWNTO 0);--Enable de los estados
		SIGNAL D								:STD_LOGIC_VECTOR (3 DOWNTO 0);--Entrada de los estados
		SIGNAL SiShowtoControl			:STD_LOGIC_VECTOR (2 DOWNTO 0);--Selecciona la salida a guardar
		SIGNAL SiSaveCarryControl		:STD_LOGIC;							 --Sirve para guardar el carry
		SIGNAL SiRCarry					:STD_LOGIC;							 --Carry del sumador
		SIGNAL SiCarryADDER				:STD_LOGIC;							 --
		SIGNAL SiCarryControl			:STD_LOGIC;							 --Indica si se sumara 1 por el carry de entrada, sale de control
		SIGNAL SiRESTAControl			:STD_LOGIC;							 --Indica a un selecctor si se realizara una resta
		SIGNAL SiReADDER					:STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado del sumador
		SIGNAL SiReSelectorG				:STD_LOGIC_VECTOR (15 DOWNTO 0);--Resultado del selecctor G(numeroo que que se almacenara)
		SIGNAL SiSaveResult				:STD_LOGIC;							 --Habilita el pin de guardado del R_Resultado
		SIGNAL SiReSelecctorSM			:STD_LOGIC_VECTOR (15 DOWNTO 0);--SenalSelecciona la resta o la suma del adder
		SIGNAL SiReNOT						:STD_LOGIC_VECTOR (15 DOWNTO 0);--Numero 2 negado
		SIGNAL SiReAND						:STD_LOGIC_VECTOR (15 DOWNTO 0);--Numero 1 AND Numero 2
		SIGNAL SiReOr  					:STD_LOGIC_VECTOR (15 DOWNTO 0);--Numero 1 OR Numero 2
		SIGNAL SiDesLog  					:STD_LOGIC_VECTOR (15 DOWNTO 0);--Numero 2 con desplazamiento logico
		SIGNAL SiDesRot  					:STD_LOGIC_VECTOR (15 DOWNTO 0);--Numero 1 con desplazamiento rota
		SIGNAL SiRA		  					:STD_LOGIC_VECTOR (15 DOWNTO 0);--Valor del registro A
		SIGNAL SiReMULTI 					:STD_LOGIC_VECTOR (16 DOWNTO 0);
		SIGNAL SiReSelecctorMP			:STD_LOGIC_VECTOR (15 DOWNTO 0);--Selecciona el registro A o el numero 1 para realizacion de la suma
		
		SIGNAL SResultadoTotal			:STD_LOGIC_VECTOR (15 DOWNTO 0);
		SIGNAL SiMultiEna		:STD_LOGIC;										 --Borra los datos del registro multiplicador
		SIGNAL SiMultiState	:STD_LOGIC;										 --Se habilita mientras dure la multiplicacion
		SIGNAL SiMultiEdes	:STD_LOGIC;										 --Habilita el desplazamiento en el registro
		SIGNAL SiRSCarry		:STD_LOGIC;	
		SIGNAL SiCarry			:STD_LOGIC;
		SIGNAL SiResultado	:STD_LOGIC;
		SIGNAL SiEResta		:STD_LOGIC;
	
BEGIN

	--******************************************************--
	
		B_Control :  ControlALU PORT MAP (
				Reloj,
				Restablecer,
				Habilitar,
				Operacion,
				SiRCarry,
				SiReMULTI(1),
				SiReMULTI(0),
				SiShowtoControl,
				SiSaveResult,
				SiRESTAControl,
				SiCarryControl,
				SiSaveCarryControl,
				Disponibilidad,
				SiMultiEna,
				SiMultiState,
				SiMultiEdes
				--EstadosM
		);
		
		BR_Carry : DFFE  PORT MAP (
				SiCarryADDER,
				reloj,
				restablecer,
				'1',
				SiSaveCarryControl,
				SiRCarry
		);
		
		B_ADDER  : ADDER PORT MAP (
				SiReSelecctorMP,
				SiReSelecctorSM,
				SiCarryControl OR (NOT SiRESTAControl),
				SiReADDER,
				SiCarryADDER
		);
		
		B_SelectorG  : SelecctorG PORT MAP (
				SiReADDER,
				SiReNOT,--not
				SiReOr,--or
				SiReAND,--and
				SiDesRot,--r1
				SiDesLog,--r2
				SiReMULTI(16 DOWNTO 1),--multi
				SiShowtoControl,--Mostrar
				SiReSelectorG
		);
		
		B_R_Resultado  : R_Resultado PORT MAP (
				Reloj,
				Restablecer,
				SiSaveResult,
				SiReSelectorG,
				SResultadoTotal
		);
		
		B_NOTCast  : NOTCast PORT MAP (
				Numero_2,
				SiReNOT
		);
		
		B_ANDCast : ANDCast PORT MAP (
				Numero_1,
				Numero_2,
				SiReAND	
		);
		
		B_ORCast : ORCast PORT MAP (
				Numero_1,
				Numero_2,
				SiReOR	
		);
		
		B_registroAQE  : Registro_A_Q_E PORT MAP (
				SireADDER (7 DOWNTO 0),
				Numero_1 (7 DOWNTO 0),
				Reloj,
				SiMultiEna,
				Restablecer,
				SiMultiState,--Save A
				SiMultiEdes,
				SiRA(7 DOWNTO 0),
				SiReMULTI
		);
		
		B_SelectorSM  : SelectorSM PORT MAP (
				Numero_2,
				SiReNOT,
				SiRESTAControl,
				SiReSelecctorSM
		);
		
		B_SelectorMP  : SelectorSM PORT MAP (
				Numero_1,
				SiRA,
				NOT SiMultiState,
				SiReSelecctorMP
		);
		
		B_DesplazaLog  : DesplazamientoLogico PORT MAP (
				Numero_2,
				SiDesLog
		);
		
		B_DesplazaRot  : DesplazamientoRota PORT MAP (
				Numero_1,
				SiDesRot
		);
		B_Banderas  : Banderas PORT MAP (
				Reloj,
				Restablecer,
				SiSaveResult,
				SResultadoTotal,
				Numero_1,
				Numero_2,
				Operacion,
				SiCarryADDER,
				Resultado_Z,
				Resultado_C,
				Resultado_O,
				Resultado_N
		);
		
		ResultadoTotal <= SResultadoTotal;
		
	--******************************************************--

END ARCHITECTURE	ALU;	