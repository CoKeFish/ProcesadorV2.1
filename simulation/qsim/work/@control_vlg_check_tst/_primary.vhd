library verilog;
use verilog.vl_types.all;
entity Control_vlg_check_tst is
    port(
        Ena_Mp          : in     vl_logic;
        Estados         : in     vl_logic_vector(5 downto 0);
        Incremente      : in     vl_logic;
        PC_DirMP_Enable : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Control_vlg_check_tst;
