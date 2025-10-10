let ft_print_rev str =
	let it = ref (String.length str - 1) in
	let rec ft_while () =
		if !it >= 0 then (
			print_char str.[!it];
			it := !it - 1;
			ft_while ()
		) else (
			print_char '\n'
		)
	in
	ft_while ()

let () =
	ft_print_rev "Hello, World !"
