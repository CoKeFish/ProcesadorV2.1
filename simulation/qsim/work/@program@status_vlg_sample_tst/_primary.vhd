library verilog;
use verilog.vl_types.all;
entity ProgramStatus_vlg_sample_tst is
    port(
        Banderas        : in     vl_logic_vector(3 downto 0);
        Clock           : in     vl_logic;
        IntE            : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveB           : in     vl_logic;
        SaveInt         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ProgramStatus_vlg_sample_tst;
