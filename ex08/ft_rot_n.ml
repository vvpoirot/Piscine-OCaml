let ft_rot_n nbr str =
	let letter_add_n c =
		let res = ref 0 in
		if c >= 'a' && c <= 'z' then (
			res := ((int_of_char c) + nbr);
			while !res > (int_of_char 'z') do
				res := (int_of_char 'a') + ((!res - (int_of_char 'z')) - 1);
			done;
			(char_of_int !res)				
		) else if c>= 'A' && c <= 'z' then (
			res := ((int_of_char c) + nbr);
			while !res > (int_of_char 'Z') do
				res := (int_of_char 'A') + ((!res - (int_of_char 'z')) - 1);
			done;
			(char_of_int !res)
		) else (
			c
		)
	in
	String.map letter_add_n str;;

print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");;
print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");;
print_endline (ft_rot_n 42 "0123456789");;
print_endline (ft_rot_n 2 "OI2EAS67B9");;
print_endline (ft_rot_n 0 "Damned !");;
print_endline (ft_rot_n 42 "");;
print_endline (ft_rot_n 1 "NBzlk qnbjr !");;
