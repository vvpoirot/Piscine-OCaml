let ft_print_comb () =
        let a = ref 0 in
        let b = ref (!a + 1) in
        let c = ref (!b + 1) in

	let rec ft_while () =
		if !a < 8 then (
			if !c > 2 then
				print_string ", ";
			print_int !a;
			print_int !b;
			print_int !c;
			c := !c + 1;
			if !c > 9 then (
				b := !b + 1;
				c := !b + 1;
			);
			if !b >= 9 then (
				a := !a + 1;
				b := !a + 1;
				c := !b + 1;
			);
			ft_while ()
		) else (
			print_string "\n"
		)
	in
	ft_while ()

let () =
	ft_print_comb ()
