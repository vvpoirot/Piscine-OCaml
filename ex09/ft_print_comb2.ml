let ft_print_comb2 () =
	let a = ref 0 in
	let rec ft_main_while () =
		if !a < 99 then (
			let b = ref (!a + 1) in
			let rec ft_second_while () =
				if !b < 100 then (
					if !b != 1 then
						print_char ',';
						print_char ' ';
					if !a < 10 then
						print_char '0';
					print_int !a;
					print_char ' ';
					if !b < 10 then
						print_char '0';
					print_int !b;
					b := !b + 1;
					ft_second_while ()
				) else (
					a := !a + 1;
					ft_main_while ()
				)
			in
			ft_second_while ()
		) else (
			print_char '\n'
		)
	in
	ft_main_while ()

let () =
	ft_print_comb2 ()
