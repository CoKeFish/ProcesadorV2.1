library verilog;
use verilog.vl_types.all;
entity PSRMux_vlg_check_tst is
    port(
        PSRMuxOut       : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end PSRMux_vlg_check_tst;
