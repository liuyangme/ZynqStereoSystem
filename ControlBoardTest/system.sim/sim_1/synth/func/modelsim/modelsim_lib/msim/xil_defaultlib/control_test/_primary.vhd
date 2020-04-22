library verilog;
use verilog.vl_types.all;
entity control_test is
    port(
        clk_i           : in     vl_logic;
        rst_n           : in     vl_logic;
        key_i_n         : in     vl_logic_vector(6 downto 0);
        switchkey_i_n   : in     vl_logic_vector(3 downto 0);
        beep_o          : out    vl_logic;
        led_o           : out    vl_logic_vector(1 downto 0)
    );
end control_test;
