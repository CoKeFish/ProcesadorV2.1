library verilog;
use verilog.vl_types.all;
entity Data_MdMux is
    port(
        DirMd           : in     vl_logic_vector(15 downto 0);
        ACOut           : in     vl_logic_vector(15 downto 0);
        PSROut          : in     vl_logic_vector(15 downto 0);
        GPROut          : in     vl_logic_vector(15 downto 0);
        SelectDataMd    : in     vl_logic_vector(1 downto 0);
        DataMd          : out    vl_logic_vector(15 downto 0)
    );
end Data_MdMux;
