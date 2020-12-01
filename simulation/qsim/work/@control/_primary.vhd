library verilog;
use verilog.vl_types.all;
entity Control is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Incremente      : out    vl_logic;
        Ena_Mp          : out    vl_logic;
        PC_DirMP_Enable : out    vl_logic;
        Estados         : out    vl_logic_vector(5 downto 0)
    );
end Control;
