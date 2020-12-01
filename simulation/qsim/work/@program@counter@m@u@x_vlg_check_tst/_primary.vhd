library verilog;
use verilog.vl_types.all;
entity ProgramCounterMUX_vlg_check_tst is
    port(
        PCMUXOut        : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end ProgramCounterMUX_vlg_check_tst;
