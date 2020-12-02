library verilog;
use verilog.vl_types.all;
entity OperatorMUX is
    port(
        Operador        : in     vl_logic_vector(4 downto 0);
        None            : out    vl_logic;
        ADD_CA          : out    vl_logic;
        ADD_CO          : out    vl_logic;
        SUB             : out    vl_logic;
        COMP            : out    vl_logic;
        MULT            : out    vl_logic;
        AND_S           : out    vl_logic;
        OR_S            : out    vl_logic;
        NOT_S           : out    vl_logic;
        SR              : out    vl_logic;
        SRA_S           : out    vl_logic;
        CR              : out    vl_logic;
        MOV             : out    vl_logic;
        STR             : out    vl_logic;
        JSR             : out    vl_logic;
        RTN             : out    vl_logic;
        STP             : out    vl_logic;
        JMP             : out    vl_logic;
        BEQZ            : out    vl_logic;
        BEQN            : out    vl_logic;
        BEQO            : out    vl_logic;
        PUSH            : out    vl_logic;
        POP             : out    vl_logic;
        SLI             : out    vl_logic;
        CLI             : out    vl_logic
    );
end OperatorMUX;
