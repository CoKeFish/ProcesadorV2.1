library verilog;
use verilog.vl_types.all;
entity GeneralPR is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Save_GPR        : in     vl_logic;
        InGPR           : in     vl_logic_vector(22 downto 0);
        DataGPR         : out    vl_logic_vector(15 downto 0);
        OpGPR           : out    vl_logic_vector(4 downto 0);
        ModeGPR         : out    vl_logic_vector(1 downto 0)
    );
end GeneralPR;
