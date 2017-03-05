-- Déclaration des librairies utilisées
Library ieee;
use ieee.std_logic_1164.all;

package global is
	constant SIZE : natural := 8;
	constant LONG : natural := 7;
	constant LARG : natural := 7;
	subtype gray_scale_pixel is integer range 0 to 255;
	type vect is array (0 to 3) of gray_scale_pixel;		-- Déclaration d'un type "vect"
	type vect_param is array (0 to SIZE) of gray_scale_pixel;	-- Déclaration d'un type "vect"paramétrable
	-- Création d'un type pour la fabrication d'image
	type IMAG is array (0 to LONG, 0 to LARG) of gray_scale_pixel;
	constant IMAGE1 : IMAG := (	(10, 150, 30, 40, 40, 45, 40, 20),
					(70, 150, 30, 40, 80, 85, 80, 80),
					(80, 250, 10, 40, 40, 15, 40, 20),
					(91, 235, 30, 10, 10, 45, 40, 20),
					(52, 250, 44, 18, 01, 30, 11, 30),
					(82, 156, 47, 88, 50, 50, 01, 53),
					(12, 211, 48, 25, 10, 10, 21, 23),
					(10, 255, 10, 40, 40, 15, 40, 20));

end global;