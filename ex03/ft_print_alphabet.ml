let ft_print_alphabet () =
	let startpoint = ref (int_of_char 'a') in
	let endpoint = ref (int_of_char 'z') in
	while !startpoint <= !endpoint do
		print_char (char_of_int !startpoint);
		startpoint := !startpoint + 1
	done;
	print_char '\n';;

ft_print_alphabet ();;
