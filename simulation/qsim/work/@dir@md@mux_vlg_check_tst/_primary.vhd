library verilog;
use verilog.vl_types.all;
entity DirMdMux_vlg_check_tst is
    port(
        DirMd           : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end DirMdMux_vlg_check_tst;
