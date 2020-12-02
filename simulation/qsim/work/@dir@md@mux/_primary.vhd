library verilog;
use verilog.vl_types.all;
entity DirMdMux is
    port(
        DataGPR         : in     vl_logic_vector(15 downto 0);
        SP_out          : in     vl_logic_vector(15 downto 0);
        DirROut         : in     vl_logic_vector(15 downto 0);
        SelectDir       : in     vl_logic_vector(1 downto 0);
        DirMd           : out    vl_logic_vector(15 downto 0)
    );
end DirMdMux;
