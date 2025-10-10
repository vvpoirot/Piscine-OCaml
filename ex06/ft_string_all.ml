let ft_string_all f str =
	let i = ref 0 in
	let final = ref true in
	let rec ft_while () =
		if !i != String.length(str) then (
			let res = f str.[!i] in
			if res = false then
				final := false;
			i := !i + 1;
			ft_while ()
		) else (
			!final
		)
	in
	ft_while ()

let is_digit c = c >= '0' && c <= '9';;

let () =
	print_endline "test: 0123456789 expect true";
	print_endline (string_of_bool (ft_string_all is_digit "0123456789"));
	print_endline "test: 012EAS67B9 expect false";
	print_endline (string_of_bool (ft_string_all is_digit "012EAS67B9"))
