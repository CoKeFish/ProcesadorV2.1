library verilog;
use verilog.vl_types.all;
entity StackPointer is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Enable          : in     vl_logic;
        IncDec          : in     vl_logic;
        Valor_out       : out    vl_logic_vector(15 downto 0)
    );
end StackPointer;
