library verilog;
use verilog.vl_types.all;
entity AcumMUX_vlg_sample_tst is
    port(
        DataMd          : in     vl_logic_vector(15 downto 0);
        ResultALU       : in     vl_logic_vector(15 downto 0);
        SelectAcum      : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end AcumMUX_vlg_sample_tst;
