library verilog;
use verilog.vl_types.all;
entity AcumMUX_vlg_check_tst is
    port(
        AcumMUXOut      : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end AcumMUX_vlg_check_tst;
