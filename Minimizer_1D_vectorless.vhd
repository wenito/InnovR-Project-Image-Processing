Library ieee;
use ieee.std_logic_1164.all;
use work.global.all;

-- Creation d'une entite Minimizer
entity Minimizer_1D_vectorless is

port (	input_value : in natural;	-- pixel d'entrée
	output_value : out natural);	-- pixel de sortie
end Minimizer_1D_vectorless;


-- Création d'une architecture comportementale d'un minimizer
architecture comportement of Minimizer_1D_vectorless is
	begin
	process(input_value)
	variable count : integer := 0;
	variable min : natural;
		begin
		if (input_value'event) then
			if((count mod SIZE) = 0)
				min := input_value;
			end if;
			if(input_value<min) then
				min := input_value;
			end if;
			count = count + 1;
			output_value <= min;
		end if;
	end process;
end comportement;
