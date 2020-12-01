library verilog;
use verilog.vl_types.all;
entity GeneralPR_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        InGPR           : in     vl_logic_vector(22 downto 0);
        ResetSystem     : in     vl_logic;
        Save_GPR        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end GeneralPR_vlg_sample_tst;
