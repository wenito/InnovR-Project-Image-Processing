Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

-- Creation d'une entite Minimizer
entity Deserializer is

port (	input_value : in gray_scale_pixel;	-- pixel d'entree
	--clk : in std_logic;			-- horloge
	output_value : out IMAG);		-- image en sortie
end Deserializer;


-- Création d'une architecture comportementale d'unconvertisseur IMAG to serie
architecture comportement of Deserializer is
	begin
	process(input_value)
	variable pos_x : natural := 0;
	variable pos_y : natural := 0;
	variable IMAGE_VAR : IMAG;
		begin
		if (input_value'event) then
			if ((pos_x = Larg)and(pos_y = Long)) then
				output_value <= IMAGE_VAR; -- envoyer image (NB : le debit image/s) va dependre de la taille de l'image)
				-- Réinitialisation des positions
				pos_x := 0;
				pos_y := 0;
			else
				if (pos_y /= Long) then
					IMAGE_VAR(pos_x, pos_y) := input_value;
					pos_y := pos_y + 1;
				else
					IMAGE_VAR(pos_x, pos_y) := input_value;
					pos_y := 0;
					pos_x := pos_x + 1;
				end if;
			end if;
		end if;
	end process;
end comportement;