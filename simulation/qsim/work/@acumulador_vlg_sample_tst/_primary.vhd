library verilog;
use verilog.vl_types.all;
entity Acumulador_vlg_sample_tst is
    port(
        AC_in           : in     vl_logic_vector(15 downto 0);
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveAC          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Acumulador_vlg_sample_tst;
