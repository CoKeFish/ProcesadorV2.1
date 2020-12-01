library verilog;
use verilog.vl_types.all;
entity DirRegister_vlg_check_tst is
    port(
        DirOut          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DirRegister_vlg_check_tst;
