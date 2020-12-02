library verilog;
use verilog.vl_types.all;
entity ALUMux_vlg_sample_tst is
    port(
        AC_Out          : in     vl_logic_vector(15 downto 0);
        DataGPR         : in     vl_logic_vector(15 downto 0);
        Datoin_Md       : in     vl_logic_vector(15 downto 0);
        Ena_AcALU       : in     vl_logic;
        SelectALU       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALUMux_vlg_sample_tst;
