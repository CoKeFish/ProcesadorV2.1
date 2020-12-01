library verilog;
use verilog.vl_types.all;
entity Procesador_vlg_check_tst is
    port(
        Count           : in     vl_logic_vector(15 downto 0);
        Dataout_Md      : in     vl_logic_vector(15 downto 0);
        Dir_Mp          : in     vl_logic_vector(15 downto 0);
        Ena_Md          : in     vl_logic;
        Ena_Mp          : in     vl_logic;
        Estados         : in     vl_logic_vector(5 downto 0);
        MDM             : in     vl_logic_vector(15 downto 0);
        Read_Mp         : in     vl_logic;
        RW_Md           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Procesador_vlg_check_tst;
