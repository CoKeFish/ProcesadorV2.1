library verilog;
use verilog.vl_types.all;
entity ProgramCounterMUX_vlg_sample_tst is
    port(
        DataGPR         : in     vl_logic_vector(15 downto 0);
        DataMd          : in     vl_logic_vector(15 downto 0);
        SelectPC        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ProgramCounterMUX_vlg_sample_tst;
