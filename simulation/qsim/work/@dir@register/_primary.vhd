library verilog;
use verilog.vl_types.all;
entity DirRegister is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveDir         : in     vl_logic;
        InDir           : in     vl_logic_vector(15 downto 0);
        DirOut          : out    vl_logic_vector(15 downto 0)
    );
end DirRegister;
