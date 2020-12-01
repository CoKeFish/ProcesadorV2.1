library verilog;
use verilog.vl_types.all;
entity ProgramCounterMUX is
    port(
        DataMd          : in     vl_logic_vector(15 downto 0);
        DataGPR         : in     vl_logic_vector(15 downto 0);
        SelectPC        : in     vl_logic;
        PCMUXOut        : out    vl_logic_vector(15 downto 0)
    );
end ProgramCounterMUX;
