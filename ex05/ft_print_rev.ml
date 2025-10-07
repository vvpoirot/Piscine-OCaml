let ft_print_rev str =
	let it = ref (String.length str - 1) in
	while !it >= 0 do
		print_char str.[!it];
		it := !it - 1
	done;
	print_char '\n';;

ft_print_rev "Hello, World !";;
