library verilog;
use verilog.vl_types.all;
entity OperatorMUX_vlg_check_tst is
    port(
        ADD_CA          : in     vl_logic;
        ADD_CO          : in     vl_logic;
        AND_S           : in     vl_logic;
        BEQN            : in     vl_logic;
        BEQO            : in     vl_logic;
        BEQZ            : in     vl_logic;
        CLI             : in     vl_logic;
        COMP            : in     vl_logic;
        CR              : in     vl_logic;
        JMP             : in     vl_logic;
        JSR             : in     vl_logic;
        MOV             : in     vl_logic;
        MULT            : in     vl_logic;
        None            : in     vl_logic;
        NOT_S           : in     vl_logic;
        OR_S            : in     vl_logic;
        POP             : in     vl_logic;
        PUSH            : in     vl_logic;
        RTN             : in     vl_logic;
        SLI             : in     vl_logic;
        SR              : in     vl_logic;
        SRA_S           : in     vl_logic;
        STP             : in     vl_logic;
        STR             : in     vl_logic;
        SUB             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end OperatorMUX_vlg_check_tst;
