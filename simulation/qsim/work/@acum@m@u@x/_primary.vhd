library verilog;
use verilog.vl_types.all;
entity AcumMUX is
    port(
        DataMd          : in     vl_logic_vector(15 downto 0);
        ResultALU       : in     vl_logic_vector(15 downto 0);
        SelectAcum      : in     vl_logic;
        AcumMUXOut      : out    vl_logic_vector(15 downto 0)
    );
end AcumMUX;
