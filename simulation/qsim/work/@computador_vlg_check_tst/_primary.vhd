library verilog;
use verilog.vl_types.all;
entity Computador_vlg_check_tst is
    port(
        Count           : in     vl_logic_vector(15 downto 0);
        Estados         : in     vl_logic_vector(49 downto 0);
        MemoryOUT       : in     vl_logic_vector(22 downto 0);
        SEnaMP          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Computador_vlg_check_tst;
