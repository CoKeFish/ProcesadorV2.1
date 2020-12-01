--******************************************************--
--        PONTIFICIA UNIVERSIDAD JAVERIANA              --
--          Organizacion de computadoras                --
--              		PROYECTO ALU                 	     --
-- 													              --
-- Titulo :    Registro_A_Q_E		   		              --
-- Fecha  :  	D:18 M:09 Y:2020                         --
--******************************************************--

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
LIBRARY ALTERA;
USE ALTERA.altera_primitives_components.ALL;

--******************************************************--
-- Se encarga de almacenar el registro para la multiplicacion
-- teniendo a A a Q y Q-1, con fin de realizar un solo
-- desplazamiento aritmetico a la hora de ser necesario
--******************************************************--


ENTITY Registro_A_Q_E IS
        PORT    (
		           -------------ENTRADAS-----------------
					  Sum        : IN STD_LOGIC_VECTOR (7 DOWNTO 0);-- Señal de 8 bits que llega de suma
					  Q_number   : IN STD_LOGIC_VECTOR (7 DOWNTO 0);-- señal que llega de numero_1
					  Reloj      : IN STD_LOGIC;--Señal de reloj
					  Reset_AQE  : IN STD_LOGIC;--viene de control, encargada de guardar Q y poner en cero A y Q-1
					  Reset      : IN STD_LOGIC;--restablecer sistema
					  save_A     : IN STD_LOGIC;--Señal para guardar A luego de una operacion
					  Edes       : IN STD_LOGIC;--me habilida el desplazamienot aritmetico en el registro
					  -------------SALIDAS-------------------
					  A    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);--Contiene 
					  AM   : OUT STD_LOGIC_VECTOR (16 DOWNTO 0)--Contiene A y Q
					  
					  );
END ENTITY Registro_A_Q_E;

ARCHITECTURE Registro_A_Q_EArch OF Registro_A_Q_E IS 

COMPONENT dffe 
         PORT (D,CLK,CLRN,PRN,ENA  : IN STD_LOGIC; 
			     Q                    : OUT STD_LOGIC
				   );
END COMPONENT dffe;

         SIGNAL Q           : STD_LOGIC_VECTOR( 16 DOWNTO 0);
			SIGNAL Din         : STD_LOGIC_VECTOR( 16 DOWNTO 0);
			SIGNAL Num         : STD_LOGIC_VECTOR( 16 DOWNTO 0);
         SIGNAL Reset_Mul   : STD_LOGIC;
			SIGNAL Eregistro   : STD_LOGIC;
			SIGNAL EregisA     : STD_LOGIC;

BEGIN 


Eregistro <= Edes OR Reset_AQE;--Habilitará el registro para las posiciones Q Y QE solo cuando se inicia la multiplicacion y en los desplazamientos
EregisA   <= Eregistro OR Save_A;--Habilitará el registro para las posiciones de A adicionalmente cuando se realice A+M A-M	
Reset_Mul <= Reset OR Reset_AQE;--Reset para volver 0 A Y QE

--******************************************************************--
-- Se define los numeros de entrada para las posiciones del registro
-- en las posiciones 1...8 entrara los primeros 8 bits de numero_1
-- en las posiciones 9-16 primero será cero y luego comienza a guardar
-- el valor de la suma cuando se indique por control SAVE_A.
--******************************************************************--
Num(1)  <= Q_Number(0);
Num(2)  <= Q_Number(1);
Num(3)  <= Q_Number(2);
Num(4)  <= Q_Number(3);
Num(5)  <= Q_Number(4);
Num(6)  <= Q_Number(5);
Num(7)  <= Q_Number(6);
Num(8)  <= Q_Number(7);
Num(9)  <= Sum(0) AND Save_A;
Num(10) <= Sum(1) AND Save_A;
Num(11) <= Sum(2) AND Save_A;
Num(12) <= Sum(3) AND Save_A;
Num(13) <= Sum(4) AND Save_A;
Num(14) <= Sum(5) AND Save_A;
Num(15) <= Sum(6) AND Save_A;
Num(16) <= Sum(7) AND Save_A;

Din(16) <= Num(16) OR (Edes AND Q(16));
Din(15) <= ((Edes OR Num(15)) XOR ((NOT (Q(16))) AND Edes));
Din(14) <= ((Edes OR Num(14)) XOR ((NOT (Q(15))) AND Edes));
Din(13) <= ((Edes OR Num(13)) XOR ((NOT (Q(14))) AND Edes));
Din(12) <= ((Edes OR Num(12)) XOR ((NOT (Q(13))) AND Edes));
Din(11) <= ((Edes OR Num(11)) XOR ((NOT (Q(12))) AND Edes));
Din(10) <= ((Edes OR Num(10)) XOR ((NOT (Q(11))) AND Edes));
Din(9)  <= ((Edes OR Num(9))  XOR ((NOT (Q(10))) AND Edes));
Din(8)  <= ((Edes OR Num(8))  XOR ((NOT (Q(9)))  AND Edes));
Din(7)  <= ((Edes OR Num(7))  XOR ((NOT (Q(8)))  AND Edes));
Din(6)  <= ((Edes OR Num(6))  XOR ((NOT (Q(7)))  AND Edes));
Din(5)  <= ((Edes OR Num(5))  XOR ((NOT (Q(6)))  AND Edes));
Din(4)  <= ((Edes OR Num(4))  XOR ((NOT (Q(5)))  AND Edes));
Din(3)  <= ((Edes OR Num(3))  XOR ((NOT (Q(4)))  AND Edes));
Din(2)  <= ((Edes OR Num(2))  XOR ((NOT (Q(3)))  AND Edes));
Din(1)  <= ((Edes OR Num(1))  XOR ((NOT (Q(2)))  AND Edes));
Din(0)  <= ((Edes OR Num(0))  XOR ((NOT (Q(1)))  AND Edes));






Registro0:  dffe PORT MAP (Din(0),  Reloj, Reset_Mul , '1' , ERegistro , Q(0));
Registro1:  dffe PORT MAP (Din(1),  Reloj, Reset ,     '1' , ERegistro , Q(1));
Registro2:  dffe PORT MAP (Din(2),  Reloj, Reset ,     '1' , ERegistro , Q(2));
Registro3:  dffe PORT MAP (Din(3),  Reloj, Reset ,     '1' , ERegistro , Q(3));
Registro4:  dffe PORT MAP (Din(4),  Reloj, Reset ,     '1' , ERegistro , Q(4));
Registro5:  dffe PORT MAP (Din(5),  Reloj, Reset ,     '1' , ERegistro , Q(5));
Registro6:  dffe PORT MAP (Din(6),  Reloj, Reset ,     '1' , ERegistro , Q(6));
Registro7:  dffe PORT MAP (Din(7),  Reloj, Reset ,     '1' , ERegistro , Q(7));
Registro8:  dffe PORT MAP (Din(8),  Reloj, Reset ,     '1' , ERegistro , Q(8));
Registro9:  dffe PORT MAP (Din(9),  Reloj, Reset_Mul , '1' , ERegisA , Q(9));
Registro10: dffe PORT MAP (Din(10), Reloj, Reset_Mul , '1' , ERegisA , Q(10));
Registro11: dffe PORT MAP (Din(11), Reloj, Reset_Mul , '1' , ERegisA , Q(11));
Registro12: dffe PORT MAP (Din(12), Reloj, Reset_Mul , '1' , ERegisA , Q(12));
Registro13: dffe PORT MAP (Din(13), Reloj, Reset_Mul , '1' , ERegisA , Q(13));
Registro14: dffe PORT MAP (Din(14), Reloj, Reset_Mul , '1' , ERegisA , Q(14));
Registro15: dffe PORT MAP (Din(15), Reloj, Reset_Mul , '1' , ERegisA , Q(15));
Registro16: dffe PORT MAP (Din(16), Reloj, Reset_Mul , '1' , ERegisA , Q(16));

A <= Q(16 DOWNTO 9);
AM <= Q;

END ARCHITECTURE Registro_A_Q_EArch;