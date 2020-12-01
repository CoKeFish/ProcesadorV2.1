library verilog;
use verilog.vl_types.all;
entity StackPointer_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Enable          : in     vl_logic;
        IncDec          : in     vl_logic;
        ResetSystem     : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end StackPointer_vlg_sample_tst;
