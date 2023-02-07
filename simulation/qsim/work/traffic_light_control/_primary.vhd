library verilog;
use verilog.vl_types.all;
entity traffic_light_control is
    port(
        clk             : in     vl_logic;
        light_active_rush_hour_1: out    vl_logic;
        light_active_night1: out    vl_logic;
        time2           : out    vl_logic_vector(4 downto 0);
        light_lane1     : out    vl_logic_vector(2 downto 0);
        light_lane2     : out    vl_logic_vector(2 downto 0);
        led_out_lane1   : out    vl_logic_vector(6 downto 0);
        led_out_lane2   : out    vl_logic_vector(6 downto 0);
        sel1            : out    vl_logic_vector(1 downto 0);
        sel2            : out    vl_logic_vector(1 downto 0)
    );
end traffic_light_control;
