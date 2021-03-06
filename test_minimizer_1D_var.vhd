-- D�claration des librairies utilis�es
Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

entity test_minimizer_1D_var is
end test_minimizer_1D_var;

architecture structure of test_minimizer_1D_var is

	signal input1: gray_scale_pixel;		-- Pixels d'entr�e
	signal output1 : gray_scale_pixel;	-- Pixels de sortie

	component Minimizer_1D_var is
		port (	input_value : in gray_scale_pixel;	-- pixel d'entr�e
			output_value : out gray_scale_pixel);	-- pixel de sortie
	end component;

begin
	min1: Minimizer_1D_var
	PORT MAP(input_value=>input1, output_value=>output1);


driver : PROCESS
	begin
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
        wait for 200 ps;
        input1 <= 255;
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
    end process driver;
end structure;
