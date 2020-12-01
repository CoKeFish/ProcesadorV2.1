library verilog;
use verilog.vl_types.all;
entity GeneralPR is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveRDT         : in     vl_logic;
        DMD             : in     vl_logic_vector(15 downto 0);
        InstRDT         : out    vl_logic_vector(15 downto 0)
    );
end GeneralPR;
