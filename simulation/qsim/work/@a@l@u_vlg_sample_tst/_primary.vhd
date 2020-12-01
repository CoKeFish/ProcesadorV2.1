library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        Habilitar       : in     vl_logic;
        Numero_1        : in     vl_logic_vector(15 downto 0);
        Numero_2        : in     vl_logic_vector(15 downto 0);
        Operacion       : in     vl_logic_vector(3 downto 0);
        Reloj           : in     vl_logic;
        Restablecer     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
