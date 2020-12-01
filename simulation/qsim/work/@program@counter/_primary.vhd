library verilog;
use verilog.vl_types.all;
entity ProgramCounter is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Inc_PC          : in     vl_logic;
        Save_PC         : in     vl_logic;
        PC_in           : in     vl_logic_vector(15 downto 0);
        PC_out          : out    vl_logic_vector(15 downto 0)
    );
end ProgramCounter;
