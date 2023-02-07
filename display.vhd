library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
entity display is
    Port ( clk_2_5ms, light_active_night : in STD_LOGIC;
				n: in integer range 0 to 99;
			  sel : out STD_LOGIC_VECTOR (1 downto 0);
           LED_out : out STD_LOGIC_VECTOR (6 downto 0));
end entity;

architecture Behavioral of display is
	signal Led_bcd: integer range 0 to 9;
	signal count: integer range 0 to 1 :=0;
begin
	process(LED_BCD)
	begin
		 case LED_BCD is
			 when 0 => LED_out <= "0000001"; 
			 when 1 => LED_out <= "1001111"; 
			 when 2 => LED_out <= "0010010";  
			 when 3 => LED_out <= "0000110";  
			 when 4 => LED_out <= "1001100";  
			 when 5 => LED_out <= "0100100";  
			 when 6 => LED_out <= "0100000"; 
			 when 7 => LED_out <= "0001111";  
			 when 8 => LED_out <= "0000000";      
			 when 9 => LED_out <= "0000100";
		 end case;
	end process;

	process(clk_2_5ms, light_active_night)
	begin
		if light_active_night = '0' then
			if rising_edge(clk_2_5ms) then
				case count is
					when 0 =>
						sel <= "10";
						if n >= 90 then 
							led_BCD <= 9;
						elsif n >= 80 then 
							led_BCD <= 8;
						elsif 	n >= 70 then 
							led_BCD <= 7;
						elsif 	n >= 60 then 
							led_BCD <= 6;
						elsif 	n >= 50 then 
							led_BCD <= 5;
						elsif 	n >= 40 then 
							led_BCD <= 4;
						elsif 	n >= 30 then 
							led_BCD <= 3;
						elsif 	n >= 20 then 
							led_BCD <= 2;
						elsif 	n >= 10 then 
							led_BCD <= 1;
						else
							led_BCD <= 0;
						end if;
						count <= 1;
					when 1 =>
						sel <= "01";
						led_BCD <= n - led_BCD*10;
						count <= 0;
				end case;
			end if;
		else 
			sel <= "00";
		end if;
	end process;

end Behavioral;