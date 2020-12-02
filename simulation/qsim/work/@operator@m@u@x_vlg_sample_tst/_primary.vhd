library verilog;
use verilog.vl_types.all;
entity OperatorMUX_vlg_sample_tst is
    port(
        Operador        : in     vl_logic_vector(4 downto 0);
        sampler_tx      : out    vl_logic
    );
end OperatorMUX_vlg_sample_tst;
