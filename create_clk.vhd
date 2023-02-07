library ieee;
use ieee.std_logic_1164.all;

entity create_clk is
generic( hour : integer range 0 to 24
);
port(
	clk	: in 	std_logic;
	clk_2_5ms: out std_logic ;			
	clk_1s: out	std_logic;
	light_active_night: out std_logic;
	light_active_rush_hour: out std_logic;
	time1: out integer range 0 to 99
);
end create_clk;

architecture logic of create_clk is
	signal temp_1s : std_logic := '1';
	signal temp_2_5ms : std_logic := '1';
	signal temp_1h : std_logic := '1';
	signal temp :integer range 0 to 99 := hour;
begin
	time1 <= temp;
	process(clk)
		variable count2 : integer range 0 to 62500 := 0;
	begin
		if(rising_edge(clk)) then
			count2 := count2 + 1;
			if(count2 = 62500) then
				temp_2_5ms <= not temp_2_5ms;
				count2 := 0;
			end if;
		end if;
	end process;
	clk_2_5ms <= temp_2_5ms;
	
	process(temp_2_5ms)
		variable count1 : integer range 0 to 200 := 0;
	begin
		if(rising_edge(temp_2_5ms)) then
			count1 := count1 + 1;
			if(count1 = 200) then
				temp_1s <= not temp_1s;
				count1 := 0;
			end if;
		end if;
	end process;
	clk_1s <= temp_1s;
	
	process(temp_1s)
		variable count1 : integer range 0 to 8 := 0;
	begin
		if(rising_edge(temp_1s)) then
			count1 := count1 + 1;
			if(count1 = 8) then
				temp_1h <= not temp_1h;
				count1 := 0;
			end if;
		end if;
	end process;
	
	process(temp_1h)
		variable count: integer range 0 to 99 := hour;
	begin
	temp <= count;
	if rising_edge(temp_1h) then
		count := count +1;
		if count >= 5 and count < 22 then
			light_active_night <= '0';
		else 
			light_active_night <= '1';
		end if;
		
		if (count >= 6 and count <= 9) or (count >= 16 and count <= 19) or count = 11 then
			light_active_rush_hour <= '1';
		else 
			light_active_rush_hour <= '0';
		end if;
		if count = 24 then
			count := 0 ;
		end if;
	end if;
	end process;	
end logic;
