
Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

-- Creation d'une entite Minimizer
entity Serializer is

port (	input_value : in IMAG;			-- pixel d'entrée
	clk : in std_logic;			-- horloge
	output_value : out gray_scale_pixel);	-- pixel de sortie
end Serializer;


-- Création d'une architecture comportementale d'unconvertisseur IMAG to serie
architecture comportement of Serializer is
	begin
	process(clk)
	variable pos_x : natural := 0;
	variable pos_y : natural := 0;
		begin
		if (clk= '1' and clk'event) then
			if ((pos_x = Larg)and(pos_y = Long)) then
				output_value <= 0; -- remettre Long et Larg à zéro
			else
				if (pos_y /= Long) then
					output_value <= input_value(pos_x, pos_y);
					pos_y := pos_y + 1;
				else
					output_value <= input_value(pos_x, pos_y);
					pos_y := 0;
					pos_x := pos_x + 1;
				end if;
			end if;
		end if;
	end process;
end comportement;