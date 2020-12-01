library verilog;
use verilog.vl_types.all;
entity Procesador is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        Dato_Mp         : in     vl_logic_vector(22 downto 0);
        Datoin_Md       : in     vl_logic_vector(15 downto 0);
        Int             : in     vl_logic;
        Dir_Mp          : out    vl_logic_vector(15 downto 0);
        Ena_Mp          : out    vl_logic;
        Read_Mp         : out    vl_logic;
        Dataout_Md      : out    vl_logic_vector(15 downto 0);
        MDM             : out    vl_logic_vector(15 downto 0);
        Ena_Md          : out    vl_logic;
        RW_Md           : out    vl_logic;
        Count           : out    vl_logic_vector(15 downto 0);
        Estados         : out    vl_logic_vector(5 downto 0)
    );
end Procesador;
