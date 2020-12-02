library verilog;
use verilog.vl_types.all;
entity PSRMux is
    port(
        Datoin_Md       : in     vl_logic_vector(4 downto 0);
        ALUStatus       : in     vl_logic_vector(3 downto 0);
        SelectPSR       : in     vl_logic;
        Banderas        : out    vl_logic_vector(4 downto 0)
    );
end PSRMux;
