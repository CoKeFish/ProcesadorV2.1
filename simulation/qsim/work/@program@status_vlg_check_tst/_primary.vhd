library verilog;
use verilog.vl_types.all;
entity ProgramStatus_vlg_check_tst is
    port(
        PSROut          : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end ProgramStatus_vlg_check_tst;
