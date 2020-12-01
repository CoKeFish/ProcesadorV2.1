library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        Disponibilidad  : in     vl_logic;
        Resultado_C     : in     vl_logic;
        Resultado_N     : in     vl_logic;
        Resultado_O     : in     vl_logic;
        Resultado_Z     : in     vl_logic;
        ResultadoTotal  : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
