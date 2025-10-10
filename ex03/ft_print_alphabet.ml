let ft_print_alphabet () =
	let startpoint = ref (int_of_char 'a') in
	let rec ft_while () =
		if !startpoint <= (int_of_char 'z') then (
			print_char (char_of_int !startpoint);
			startpoint := !startpoint + 1;
			ft_while ()
		) else (
			print_char '\n'
		)
	in
	ft_while ()

let () =
	ft_print_alphabet ()
