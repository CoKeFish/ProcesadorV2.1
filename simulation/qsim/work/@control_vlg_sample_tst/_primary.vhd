library verilog;
use verilog.vl_types.all;
entity Control_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Control_vlg_sample_tst;
