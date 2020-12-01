library verilog;
use verilog.vl_types.all;
entity Procesador_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Dato_Mp         : in     vl_logic_vector(22 downto 0);
        Datoin_Md       : in     vl_logic_vector(15 downto 0);
        Int             : in     vl_logic;
        ResetSystem     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Procesador_vlg_sample_tst;
