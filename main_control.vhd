library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity main_control is
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
end main_control;
 
architecture Behavioral of main_control is
	type control_state is (lane1, lane2);
	signal control: control_state := lane1;
	type light is (green, yellow);
	signal light1: light := green;
	signal light2: light;
	
	signal n1_green:	integer range 0 to 99:= n1_green_normal;-- thời gian đèn xanh lane1 
	signal n1_red:	integer range 0 to 99 := n1_red_normal;	-- thời gian đèn đỏ lane1
		
	signal n2_green:	integer range 0 to 99 := n2_green_normal;-- thời gian đèn xanh lane2
	signal n2_red:	integer range 0 to 99 := n2_red_normal;		-- thời gian đèn đỏ lane2
begin
	process(clk_1s, light_active_rush_hour)
	begin
		if light_active_rush_hour ='1' then
			n1_green <= n1_green_rush_hour;
			n1_red <= n1_red_rush_hour;
			n2_green <= n2_green_rush_hour;
			n2_red <= n2_red_rush_hour;
		else
			n1_green <= n1_green_normal;
			n1_red <= n1_red_normal;
			n2_green <= n2_green_normal;
			n2_red <= n2_red_normal;
		end if;
	end process;
	process(clk_1s, light_active_night)
		variable count1 : integer range 0 to 99 := n1_green_normal;
		variable count2 : integer range 0 to 99 := n2_red_normal;
		variable count3 : integer range 0 to 2 := 0;
	begin
		nume_lane1 <= count1;
		nume_lane2 <= count2;
		if clk_1s'event and clk_1s = '1' then
			if light_active_night = '0' then
				
				count1 := count1 - 1;
				count2 := count2 - 1;
				if control = lane1 then
					case light1 is
						when green => 
							
							light_lane1 <= "010";
							light_lane2 <= "100";
							if count1 = 0 then 
								count1 := n2_red-n1_green;
								light_lane1 <= "001";
								light1 <= yellow;
							end if;
						when yellow =>
							if count1 = 0 then 
								count1 := n1_red;
								count2 := n2_green;
								light_lane1 <= "100";
								light_lane2 <= "010";
								light2 <= green;
								control <= lane2; 
							end if;
					end case;		
				else
					case light2 is
						when green => 
							if count2 = 0 then 
								count2 := n1_red-n2_green;
								light2 <= yellow;
								light_lane2 <= "001";
							end if;
						when yellow =>
							if count2 = 0 then 
								count2 := n2_red;
								count1 := n1_green;
								light1 <= green;
								control <= lane1;
								light_lane2 <= "100";
								light_lane1 <= "010";
							end if;
					end case;	
				end if;
			end if;
			if light_active_night = '1' then
				control <= lane1;
				light1 <= green; 
				count1 := n1_green;
				count2 := n2_red;
				if count3 = 1 then 
					light_lane1 <= "001";
					light_lane2 <= "001";
				else
					light_lane1 <= "000";
					light_lane2 <= "000";
				end if;
				count3 := count3 +1;
				if count3 = 2 then count3 := 0;
				end if;
			end if;
		end if;
	end process;
	
end Behavioral;
