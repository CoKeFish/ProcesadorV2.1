library verilog;
use verilog.vl_types.all;
entity ProgramCounter_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        Inc_PC          : in     vl_logic;
        PC_in           : in     vl_logic_vector(15 downto 0);
        ResetSystem     : in     vl_logic;
        Save_PC         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ProgramCounter_vlg_sample_tst;
