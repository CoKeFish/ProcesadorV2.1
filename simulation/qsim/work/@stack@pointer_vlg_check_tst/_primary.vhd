library verilog;
use verilog.vl_types.all;
entity StackPointer_vlg_check_tst is
    port(
        Valor_out       : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end StackPointer_vlg_check_tst;
