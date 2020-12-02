library verilog;
use verilog.vl_types.all;
entity ALUMux is
    port(
        Datoin_Md       : in     vl_logic_vector(15 downto 0);
        DataGPR         : in     vl_logic_vector(15 downto 0);
        AC_Out          : in     vl_logic_vector(15 downto 0);
        SelectALU       : in     vl_logic;
        Ena_AcALU       : in     vl_logic;
        ALUMUXOut       : out    vl_logic_vector(15 downto 0)
    );
end ALUMux;
