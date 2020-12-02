library verilog;
use verilog.vl_types.all;
entity ProgramStatus is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveB           : in     vl_logic;
        SaveInt         : in     vl_logic;
        IntE            : in     vl_logic;
        Banderas        : in     vl_logic_vector(3 downto 0);
        PSROut          : out    vl_logic_vector(4 downto 0)
    );
end ProgramStatus;
