library verilog;
use verilog.vl_types.all;
entity traffic_light_control_vlg_check_tst is
    port(
        led_out_lane1   : in     vl_logic_vector(6 downto 0);
        led_out_lane2   : in     vl_logic_vector(6 downto 0);
        light_active_night1: in     vl_logic;
        light_active_rush_hour_1: in     vl_logic;
        light_lane1     : in     vl_logic_vector(2 downto 0);
        light_lane2     : in     vl_logic_vector(2 downto 0);
        sel1            : in     vl_logic_vector(1 downto 0);
        sel2            : in     vl_logic_vector(1 downto 0);
        time2           : in     vl_logic_vector(4 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_light_control_vlg_check_tst;
