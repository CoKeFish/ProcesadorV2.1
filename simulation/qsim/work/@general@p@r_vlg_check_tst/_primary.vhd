library verilog;
use verilog.vl_types.all;
entity GeneralPR_vlg_check_tst is
    port(
        InstRDT         : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end GeneralPR_vlg_check_tst;
