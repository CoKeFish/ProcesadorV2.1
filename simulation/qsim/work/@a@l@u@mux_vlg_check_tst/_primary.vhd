library verilog;
use verilog.vl_types.all;
entity ALUMux_vlg_check_tst is
    port(
        ALUMUXOut       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALUMux_vlg_check_tst;
