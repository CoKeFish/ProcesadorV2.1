
--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--    	  Organizacion de computadores                 --
--          		   PROYECTO                    		  --
-- 													              --
-- Titulo :    Sumador Decimal digito		              --
-- Fecha  :  	D:01 M:11 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.all;

--******************************************************--
-- Comentarios: 
--******************************************************--

ENTITY Procesador IS
	
	PORT (
				--ENTRADAS
				Clock 				:IN STD_LOGIC;
				ResetSystem			:IN STD_LOGIC;
				Dato_Mp				:IN STD_LOGIC_VECTOR(22 DOWNTO 0);
				Datoin_Md			:IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				Int					:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				Dir_Mp				:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				Ena_Mp				:OUT STD_LOGIC;
				Dataout_Md			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				Dir_Md				:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				Ena_Md_Read			:OUT STD_LOGIC;
				Ena_Md_Write		:OUT STD_LOGIC;
				--Test
				Count					:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				Estados				:OUT STD_LOGIC_VECTOR(99 DOWNTO 0);
				Acum						:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
		);
	
END ENTITY Procesador;

ARCHITECTURE	Procesador OF Procesador IS






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
	
	
	
		COMPONENT Control IS
			
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
			
		END COMPONENT Control;
		
		
		
	--******************************************************--
	
	
	
	
		COMPONENT ProgramCounter IS
			
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
			
		END COMPONENT ProgramCounter;
		
		
		
		
	--******************************************************--
	
	
	
	
		COMPONENT GeneralPR IS
			
				PORT (
							--ENTRADAS------------------------------------
							Clock 			 :IN STD_LOGIC; --Reloj del sistema
							ResetSystem		 :IN STD_LOGIC; --Reset del sistema
							Save_GPR			 :IN STD_LOGIC; --Señal de control para habilitar registro
							InGPR		 		 :IN STD_LOGIC_VECTOR (22 DOWNTO 0); --Bus de 16 bits que viene de la memoria de datos.
							----------------------------------------------
							--SALIDAS
							DataGPR		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0); --Valor actual del registro RDATO.
							OpGPR			    :OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
							ModeGPR		    :OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
					);
			
		END COMPONENT ;
		
		
		
		
	--******************************************************--
	
	
	
		COMPONENT ALU IS
			
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
			
		END COMPONENT ALU;
		
		
		
		
	--******************************************************--
	
	
	
	
		COMPONENT Acumulador IS
			
			PORT (
						--ENTRADAS------------------------------------
						Clock 			 :IN STD_LOGIC; --Reloj del sistema
						ResetSystem		 :IN STD_LOGIC; --Reset del sistema
						Save_Acum		 :IN STD_LOGIC; --Señal de control para habilitar registro
						AC_in		   	 :IN STD_LOGIC_VECTOR (15 DOWNTO 0); --Bus de 16 bits que viene de Selector_AC.
						----------------------------------------------
						--SALIDAS
						AC_out		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0) --Valor actual del registro acumulador.
			);
			
		END COMPONENT Acumulador;
		
		
		
		
	--******************************************************--
	
	
	
	
	COMPONENT AcumMUX IS
	
	PORT (
				--ENTRADAS
				DataMd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ResultALU				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectAcum				:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				AcumMUXOut				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT AcumMUX;
	
	
	
	--******************************************************--
	
	
	
	
	COMPONENT DirRegister IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			 :IN STD_LOGIC; --Reloj del sistema
				ResetSystem		 :IN STD_LOGIC; --Reset del sistema
				SaveDir			 :IN STD_LOGIC; --Señal de control para habilitar registro
				InDir		   	 :IN STD_LOGIC_VECTOR (15 DOWNTO 0); --Bus de 16 bits que viene de Selector_AC.
				----------------------------------------------
				--SALIDAS
				DirOut		    :OUT STD_LOGIC_VECTOR (15 DOWNTO 0) --Valor actual del registro acumulador.
	);
	
	END COMPONENT DirRegister;
	
	
	
	
	--******************************************************--
	
	
	
	COMPONENT ProgramCounterMUX IS
	
	PORT (
				--ENTRADAS
				DataMd				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				DataGPR				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectPC				:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				Int					:IN STD_LOGIC;
				PCMUXOut				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT ProgramCounterMUX;
	
	
	
	--******************************************************--
	
	
	
	COMPONENT ProgramStatus IS
	
	PORT (
				--ENTRADAS------------------------------------
				Clock 			 :IN STD_LOGIC; --Reloj del sistema
				ResetSystem		 :IN STD_LOGIC; --Reset del sistema
				SaveB  			 :IN STD_LOGIC; --Señal de control para habilitar el guardado de las banderas
				SaveInt			 :IN STD_LOGIC; --Señal de control para habilitar el estado de las interrupciones.
				IntE  			 :IN STD_LOGIC; --Señal de habilitar o desabilitar las interrupciones globales.
				Banderas  		 :IN STD_LOGIC_VECTOR(4 DOWNTO 0); --Bus de datos de 4 bits que contiene el estado de las banderas.
				----------------------------------------------
				--SALIDAS
				PSROut		    :OUT STD_LOGIC_VECTOR(4 DOWNTO 0) --Bus de 5 bits que contiene el estado del programa.
		);
	
	END COMPONENT ProgramStatus;
	
	
	
	--******************************************************--
	
	
	COMPONENT DirMdMux IS
	
	PORT (
				--ENTRADAS
				DataGPR				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				SP_out				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				DirROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				SelectDir			:IN STD_LOGIC_VECTOR (1 DOWNTO 0);--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				DirMd				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT DirMdMux;
	
	
	
	--******************************************************--
	
	
	
	COMPONENT Data_MdMux IS
	
	PORT (
				--ENTRADAS
				DirMd					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ACOut					:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				PSROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				GPROut				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectDataMd		:IN STD_LOGIC_VECTOR (1 DOWNTO 0);--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				DatOut_Md				:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT Data_MdMux;
	
	
	
	--******************************************************--
	
	
	COMPONENT ALUMux IS
	
	PORT (
				--ENTRADAS
				Datoin_Md			:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				DataGPR				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				AC_Out				:IN STD_LOGIC_VECTOR (15 DOWNTO 0);
				SelectALU			:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				Ena_AcALU			:IN STD_LOGIC;
				--------------------------------------------------
				--SALIDAS
				ALUMUXOut			:OUT STD_LOGIC_VECTOR (15 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT ALUMux;
	
	
	
	--******************************************************--
	
	
	
	COMPONENT StackPointer IS
	
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
	
	END COMPONENT StackPointer;
	
	
	
	
	--******************************************************--
	
	
	
	COMPONENT PSRMux IS
	
	PORT (
				--ENTRADAS
				Datoin_Md			:IN STD_LOGIC_VECTOR (4 DOWNTO 0);--Señal de 16 bits correspondiente al numero_2
				ALUStatus			:IN STD_LOGIC_VECTOR (3 DOWNTO 0);--Señal que viene de bloque NOT de numero_2
				SelectPSR			:IN STD_LOGIC;--Señal que viene control, indica que se realizará una resta
				--------------------------------------------------
				--SALIDAS
				Banderas			:OUT STD_LOGIC_VECTOR (4 DOWNTO 0)--Señal de numero_2-M o NOT numero_2-M 
				
		);
	
	END COMPONENT PSRMux;
	
	
	
	
	--******************************************************--

		
		
			--ALU 
			
			SIGNAL EnaWrite_Md			:STD_LOGIC;
			SIGNAL EnaRead_Md				:STD_LOGIC;
			SIGNAL SaveDirR				:STD_LOGIC;
			SIGNAL SelectProgramCounter:STD_LOGIC;
			SIGNAL Inc_PC					:STD_LOGIC;
			SIGNAL Save_PC					:STD_LOGIC;
			SIGNAL Save_Acum				:STD_LOGIC;
			SIGNAL Dec_SP					:STD_LOGIC;
			SIGNAL Save_GPR				:STD_LOGIC;
			SIGNAL Habilitar				:STD_LOGIC;
			SIGNAL Disponibilidad		:STD_LOGIC;
			SIGNAL SaveB					:STD_LOGIC;	
			SIGNAL SaveInt					:STD_LOGIC;
			SIGNAL Resultado_Z			:STD_LOGIC;
			SIGNAL Resultado_N			:STD_LOGIC;
			SIGNAL Resultado_O			:STD_LOGIC;
			SIGNAL Resultado_C			:STD_LOGIC;
			SIGNAL SelectALU				:STD_LOGIC;
			SIGNAL SelectPSR				:STD_LOGIC;
			SIGNAL SelectAcum				:STD_LOGIC;
			SIGNAL Ena_SP					:STD_LOGIC;
			SIGNAL Ena_AcALU				:STD_LOGIC;
			SIGNAL IntE						:STD_LOGIC;
			
			
			SIGNAL Datout_Md				:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL PC_in					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL DataGPR					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL Select_DataMd			:STD_LOGIC_VECTOR(1 DOWNTO 0);
			SIGNAL AC_in					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL inc_SP					:STD_LOGIC_VECTOR(1 DOWNTO 0);
			SIGNAL SP_Out					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL Select_DirMd			:STD_LOGIC_VECTOR(1 DOWNTO 0);
			SIGNAL opGPR					:STD_LOGIC_VECTOR(4 DOWNTO 0);
			SIGNAL ModeDirGPR				:STD_LOGIC_VECTOR(1 DOWNTO 0);
			SIGNAL Num_ALU					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL Banderas				:STD_LOGIC_VECTOR(4 DOWNTO 0);
			SIGNAL StatusPSR				:STD_LOGIC_VECTOR(4 DOWNTO 0);
			SIGNAL OutStatusALU			:STD_LOGIC_VECTOR(3 DOWNTO 0);
			SIGNAL DirR_Out				:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL ResultALU				:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL AC_out					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL IncDec					:STD_LOGIC_VECTOR(1 DOWNTO 0);
			SIGNAL SDirMp					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL SDirMd					:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL SDataout_Md			:STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL TempStatusPSR			:STD_LOGIC_VECTOR(15 DOWNTO 0);
			
			SIGNAL SEstados				:STD_LOGIC_VECTOR(99 DOWNTO 0);
			
			
			

	
BEGIN

	--******************************************************--
	
		OutStatusALU(0) <= Resultado_O;
		OutStatusALU(1) <= Resultado_C;
		OutStatusALU(2) <= Resultado_N;
		OutStatusALU(3) <= Resultado_Z;	
		
		Acum <= AC_Out;
		Count <= SDirMp;
		
		
		Dataout_Md <= SDataout_Md;
		Dir_Mp <= SDirMp;
		Dir_Md <= SDirMd;
		Estados <= SEstados;
		
		
		B_Program_counter	:	ProgramCounter	PORT MAP (
																			Clock,
																			ResetSystem,
																			Inc_PC,
																			Save_PC,
																			PC_in,
																			SDirMp);
																			
		B_Control	:	Control	PORT MAP (
																			Clock,
																			ResetSystem,
																			Disponibilidad,
																			opGPR,
																			ModeDirGPR,
																			StatusPSR,
																			Int AND Banderas(4),
																			Ena_Mp,
																			Ena_Md_Read,
																			Ena_Md_Write,
																			Ena_SP,
																			Ena_AcALU,
																			Save_GPR,
																			Save_Acum,
																			Save_PC,
																			SaveB,
																			SaveInt,
																			SaveDirR,
																			Inc_PC,
																			IntE,
																			Habilitar,
																			IncDec,
																			SelectALU,
																			SelectAcum,
																			SelectProgramCounter,
																			SelectPSR,
																			Select_DataMd,
																			Select_DirMd,
																			SEstados);
																			
		B_GPR	:	GeneralPR	PORT MAP	(
																			Clock,
																			ResetSystem,
																			Save_GPR,
																			Dato_Mp,
																			DataGPR,
																			opGPR,
																			ModeDirGPR
																			);
		
		B_Acumulador	:	Acumulador	PORT MAP	(
																			Clock,
																			ResetSystem,
																			Save_Acum,
																			AC_in,
																			AC_out
																			);
																			
		B_ALU	:	ALU	PORT MAP	(									
																			Clock,
																			ResetSystem,
																			NOT (Habilitar),
																			AC_out,
																			Num_ALU,
																			opGPR(3 DOWNTO 0),
																			ResultALU,
																			Disponibilidad,
																			Resultado_Z,
																			Resultado_C,
																			Resultado_O,
																			Resultado_N);
																			
																			
		B_AcumMUX	:	AcumMUX	PORT MAP	(
																			Datoin_Md,
																			ResultALU,
																			SelectAcum,
																			AC_in);
		
		
		
		
		B_DirRegister	:	DirRegister	PORT MAP	(
																			Clock,
																			ResetSystem,
																			SaveDirR,
																			Datoin_Md,
																			DirR_Out);
		
		
		
		B_ProgramCounterMUX	:	ProgramCounterMUX	PORT MAP	(
																			Datoin_Md,
																			DataGPR,
																			SelectProgramCounter,
																			Int,
																			PC_in);
		
		
		
		B_ProgramStatus	:	ProgramStatus	PORT MAP	(
																			Clock,
																			ResetSystem,
																			SaveB,
																			SaveInt,
																			IntE,
																			Banderas,
																			StatusPSR);
		
		
		
		
		B_DirMdMux	:	DirMdMux	PORT MAP	(
																			DataGPR,
																			SP_Out,
																			DirR_Out,
																			Select_DirMd,
																			SDirMd);
		
		
		TempStatusPSR(4 DOWNTO 0) <= StatusPSR;
		B_Data_MdMux	:	Data_MdMux	PORT MAP	(
																			SDirMp,
																			AC_out,
																			TempStatusPSR,
																			DataGPR,
																			Select_DataMd,
																			SDataout_Md);
		
		
		
		
		B_ALUMux	:	ALUMux	PORT MAP	(
																			Datoin_Md,
																			DataGPR,
																			AC_out,
																			SelectALU,
																			Ena_AcALU,
																			Num_ALU);
		
		
		
		B_StackPointer	:	StackPointer	PORT MAP	(
																			Clock,
																			ResetSystem,
																			Ena_SP,
																			IncDec,
																			SP_Out);
		
		
		
		
		B_PSRMux	:	PSRMux	PORT MAP	(
																			Datoin_Md(4 DOWNTO 0),
																			OutStatusALU,
																			SelectPSR,
																			Banderas);
		
		
		
																			
		
		

	

END ARCHITECTURE	Procesador;