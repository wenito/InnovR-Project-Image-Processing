Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

-- Creation d'une entite Minimizer
entity Minimizer_1D_fix is

port (	input_value : in gray_scale_pixel;	-- pixel d'entr�e
	output_value : out gray_scale_pixel);	-- pixel de sortie
end Minimizer_1D_fix;


-- Cr�ation d'une architecture comportementale d'un minimizer
architecture comportement of Minimizer_1D_fix is
	begin
	process(input_value)
	variable vect1 : vect := (255, 255, 255, 255);	-- Cr�ation d'un vecteur
	variable min : natural;
		begin
		if (input_value'event) then
			vect1(1 to 3) := vect1(0 to 2);	-- On utilise le signal comme un registre � d�calage
			vect1(0) := input_value;
			min := vect1(0);
			loop1: for index in 1 to 3 loop
				if(vect1(index)<min) then
					min := vect1(index);
				end if;
			end loop loop1;
			output_value <= min;
		end if;
	end process;
end comportement;