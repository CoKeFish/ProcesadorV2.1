library verilog;
use verilog.vl_types.all;
entity Acumulador is
    port(
        Clock           : in     vl_logic;
        ResetSystem     : in     vl_logic;
        SaveAC          : in     vl_logic;
        AC_in           : in     vl_logic_vector(15 downto 0);
        AC_out          : out    vl_logic_vector(15 downto 0)
    );
end Acumulador;
