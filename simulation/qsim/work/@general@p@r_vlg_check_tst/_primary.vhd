library verilog;
use verilog.vl_types.all;
entity GeneralPR_vlg_check_tst is
    port(
        DataGPR         : in     vl_logic_vector(15 downto 0);
        ModeGPR         : in     vl_logic_vector(1 downto 0);
        OpGPR           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end GeneralPR_vlg_check_tst;
