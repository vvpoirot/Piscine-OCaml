let ft_rot_n nbr str =
	let rec ft_while element value =
		if element > value then
			ft_while ((value - 25) + ((element - value) - 1)) value
		else
			element
	in
	let letter_add_n c =
		let res = ref 0 in
		if c >= 'a' && c <= 'z' then (
			res := ((int_of_char c) + nbr);
			res := ft_while !res (int_of_char 'z');
			(char_of_int !res)				
		) else if c>= 'A' && c <= 'z' then (
			res := ((int_of_char c) + nbr);
			res := ft_while !res (int_of_char 'Z');
			(char_of_int !res)
		) else (
			c
		)
	in
	String.map letter_add_n str

let () =
	print_endline (ft_rot_n 1 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 13 "abcdefghijklmnopqrstuvwxyz");
	print_endline (ft_rot_n 42 "0123456789");
	print_endline (ft_rot_n 2 "OI2EAS67B9");
	print_endline (ft_rot_n 0 "Damned !");
	print_endline (ft_rot_n 42 "");
	print_endline (ft_rot_n 1 "NBzlk qnbjr !")
