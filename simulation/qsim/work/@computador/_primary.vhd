library verilog;
use verilog.vl_types.all;
entity Computador is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Int             : in     vl_logic;
        MemoryOUT       : out    vl_logic_vector(22 downto 0);
        Count           : out    vl_logic_vector(15 downto 0);
        Estados         : out    vl_logic_vector(5 downto 0);
        SEnaMP          : out    vl_logic
    );
end Computador;
