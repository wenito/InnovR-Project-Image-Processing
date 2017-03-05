
-- Déclaration des librairies utilisées
Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

entity test_deserializer is
end test_deserializer;

architecture structure of test_deserializer is

	signal input1: gray_scale_pixel;	-- Image d'entrée
	--signal clock: std_logic;		-- Signal d'horloge
	signal output1 : IMAG;			-- Pixels de sortie

	component Deserializer is
		port (	input_value : in gray_scale_pixel;	-- pixel d'entrée
			--clk : in std_logic;			-- horloge
			output_value : out IMAG);		-- image de sortie
	end component;

begin
	min1: Deserializer
	PORT MAP(input_value=>input1, output_value=>output1);

driver : PROCESS
	begin
        input1 <= 254;
        wait for 200 ps;
        input1 <= 253;
        wait for 200 ps;
        input1 <= 252;
        wait for 200 ps;
        input1 <= 251;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 200;
        wait for 200 ps;
        input1 <= 100;
        wait for 200 ps;
        input1 <= 120;
        wait for 200 ps;
        input1 <= 110;
        wait for 200 ps;
        input1 <= 0;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 220;
        wait for 200 ps;
        input1 <= 40;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 70;
        wait for 200 ps;
        input1 <= 32;
        wait for 200 ps;
        input1 <= 10;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 40;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 70;
        wait for 200 ps;
        input1 <= 32;
        wait for 200 ps;
        input1 <= 110;
        wait for 200 ps;
        input1 <= 120;
        wait for 200 ps;
        input1 <= 40;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 70;
        wait for 200 ps;
        input1 <= 2;
        wait for 200 ps;
        input1 <= 11;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 0;
        wait for 200 ps;
        input1 <= 32;
        wait for 200 ps;
        input1 <= 10;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 40;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 70;
        wait for 200 ps;
        input1 <= 32;
        wait for 200 ps;
        input1 <= 110;
        wait for 200 ps;
        input1 <= 120;
        wait for 200 ps;
        input1 <= 40;
        wait for 200 ps;
        input1 <= 140;
        wait for 200 ps;
        input1 <= 50;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 70;
        wait for 200 ps;
        input1 <= 2;
        wait for 200 ps;
        input1 <= 11;
        wait for 200 ps;
        input1 <= 20;
        wait for 200 ps;
        input1 <= 0;
        wait for 200 ps;
    end process driver;

end structure;