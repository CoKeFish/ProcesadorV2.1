library verilog;
use verilog.vl_types.all;
entity StackPointer is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Ena_SP          : in     vl_logic;
        IncDec          : in     vl_logic_vector(1 downto 0);
        SP_out          : out    vl_logic_vector(15 downto 0)
    );
end StackPointer;
