library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        Reloj           : in     vl_logic;
        Restablecer     : in     vl_logic;
        Habilitar       : in     vl_logic;
        Numero_1        : in     vl_logic_vector(15 downto 0);
        Numero_2        : in     vl_logic_vector(15 downto 0);
        Operacion       : in     vl_logic_vector(3 downto 0);
        ResultadoTotal  : out    vl_logic_vector(15 downto 0);
        Disponibilidad  : out    vl_logic;
        Resultado_Z     : out    vl_logic;
        Resultado_C     : out    vl_logic;
        Resultado_O     : out    vl_logic;
        Resultado_N     : out    vl_logic
    );
end ALU;
