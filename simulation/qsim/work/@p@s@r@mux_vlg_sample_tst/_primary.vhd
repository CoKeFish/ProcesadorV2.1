library verilog;
use verilog.vl_types.all;
entity PSRMux_vlg_sample_tst is
    port(
        ALUStatus       : in     vl_logic_vector(3 downto 0);
        DataMd          : in     vl_logic_vector(4 downto 0);
        SelectPSR       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PSRMux_vlg_sample_tst;
