-- Déclaration des librairies utilisées
Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

entity test_serializer is
end test_serializer;

architecture structure of test_serializer is

	signal input1: IMAG;			-- Image d'entrée
	signal clock: std_logic;		-- Signal d'horloge
	signal output1 : gray_scale_pixel;	-- Pixels de sortie

	component Serializer is
		port (	input_value : in IMAG;			-- pixel d'entrée
			clk : in std_logic;			-- horloge
			output_value : out gray_scale_pixel);	-- pixel de sortie
	end component;

begin
	min1: Serializer
	PORT MAP(input_value=>input1, output_value=>output1, clk=>clock);

		--input1 <= IMAGE1;
driver : PROCESS
	begin

        	clock <= '0';wait for 20 ns;
		clock <= '1';wait for 20 ns;
	end process driver;

--Génération d'un signal d'entréetype réception image
set_picture: process
	begin
		input1 <= IMAGE1; wait for 200 ms;
	end process set_picture;
end structure;
