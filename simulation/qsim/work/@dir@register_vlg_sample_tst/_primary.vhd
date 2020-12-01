library verilog;
use verilog.vl_types.all;
entity DirRegister_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        InDir           : in     vl_logic_vector(15 downto 0);
        ResetSystem     : in     vl_logic;
        Save            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end DirRegister_vlg_sample_tst;
