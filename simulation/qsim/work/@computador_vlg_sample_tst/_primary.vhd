library verilog;
use verilog.vl_types.all;
entity Computador_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Int             : in     vl_logic;
        ResetSystem     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Computador_vlg_sample_tst;
