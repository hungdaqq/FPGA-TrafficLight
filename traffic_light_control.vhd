library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;
entity traffic_light_control is
generic( hour : integer range 0 to 99:= 15
);
port (	clk : in std_logic;
			light_lane1: out std_logic_vector (2 downto 0) := "010"; -- red, green, yellow
			light_lane2: out std_logic_vector (2 downto 0) := "100";
			led_out_hour, led_out_lane1, led_out_lane2: out STD_LOGIC_VECTOR (6 downto 0);
			sel1, sel2, sel_hour: out STD_LOGIC_VECTOR (1 downto 0)
		);
end traffic_light_control;
 
architecture Behavioral of traffic_light_control is
	
	component create_clk 
	generic( hour : integer range 0 to 24
	);
	port(
		clk	: in 	std_logic;
		clk_2_5ms: out std_logic;			
		clk_1s: out	std_logic;
		light_active_night: out std_logic;
		light_active_rush_hour: out std_logic;
		time1 : out integer range 0 to 99 := hour
	);
	end component;
	component main_control 
	generic(
			n1_green_rush_hour:	integer range 0 to 99;-- thời gian đèn xanh lane1 giờ cao điểm
			n1_red_rush_hour:	integer range 0 to 99;	-- thời gian đèn đỏ lane1 giờ cao điểm
				
			n2_green_rush_hour:	integer range 0 to 99;-- thời gian đèn xanh lane2 giờ cao điểm
			n2_red_rush_hour:	integer range 0 to 99;		-- thời gian đèn do lane2 giờ cao điểm
			
			n1_green_normal:	integer range 0 to 99;-- thời gian đèn xanh lane1 bình thường
			n1_red_normal:	integer range 0 to 99;	-- thời gian đèn đỏ lane1 bình thường
				
			n2_green_normal:	integer range 0 to 99;-- thời gian đèn xanh lane2 bình thường
			n2_red_normal:	integer range 0 to 99		-- thời gian đèn đỏ lane2 bình thường
	);
	port (	
				clk_1s, light_active_night, light_active_rush_hour : in std_logic;
				light_lane1: out std_logic_vector (2 downto 0) := "010"; -- red, green, yellow
				light_lane2: out std_logic_vector (2 downto 0) := "100";
				nume_lane1: out integer range 0 to 99;
				nume_lane2: out integer range 0 to 99
		);
	end component;
	
	component display 
	Port ( clk_2_5ms, light_active_night : in STD_LOGIC;
				n: in integer range 0 to 99;
			  sel : out STD_LOGIC_VECTOR (1 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0));
	end component;
	signal	nume_lane1, nume_lane2, nume_lane1_temp, nume_lane2_temp: integer range 0 to 99;
	signal clk_2_5ms, clk_1s, light_active_night, light_active_rush_hour: std_logic;
	signal time1 :integer range 0 to 99 := hour;
begin
	U0: create_clk 	generic map (hour)
							port map(clk, clk_2_5ms, clk_1s, light_active_night, light_active_rush_hour, time1);
	U1 : main_control generic map (	n1_green_rush_hour 	=> 15	,
												n1_red_rush_hour		=> 5	, 
												n2_green_rush_hour	=> 2	, 
												n2_red_rush_hour		=>	18	, 
												n1_green_normal		=>	8	, 
												n1_red_normal			=>	6	, 
												n2_green_normal		=>	3	, 
												n2_red_normal			=> 11	)
							port map(clk_1s, light_active_night,light_active_rush_hour, light_lane1, light_lane2, nume_lane1, nume_lane2);
	U2: display port map(clk_2_5ms, light_active_night, nume_lane1, sel1, led_out_lane1);
	U3: display port map(clk_2_5ms, light_active_night, nume_lane2, sel2, led_out_lane2);
	U4: display port map(clk_2_5ms, '0', time1, sel_hour, led_out_hour);
end Behavioral;
