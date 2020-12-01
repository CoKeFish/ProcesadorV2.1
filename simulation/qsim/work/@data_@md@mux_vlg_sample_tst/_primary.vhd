library verilog;
use verilog.vl_types.all;
entity Data_MdMux_vlg_sample_tst is
    port(
        ACOut           : in     vl_logic_vector(15 downto 0);
        DirMd           : in     vl_logic_vector(15 downto 0);
        GPROut          : in     vl_logic_vector(15 downto 0);
        PSROut          : in     vl_logic_vector(15 downto 0);
        SelectDataMd    : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end Data_MdMux_vlg_sample_tst;
