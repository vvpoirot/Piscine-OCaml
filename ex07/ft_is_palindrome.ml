let ft_is_palindrome str =
	let len = (String.length(str) - 1) in
	let i = ref 0 in
	let final = ref true in
	let rec ft_while () =
		if !i <= len then (
			if str.[!i] != str.[(len - !i)] then
				final := false;
			i := !i + 1;
			ft_while ()
		) else (
			!final
		)
	in
	ft_while ()

let () =
	print_endline (string_of_bool (ft_is_palindrome "radar"));
	print_endline (string_of_bool (ft_is_palindrome ""));
	print_endline (string_of_bool (ft_is_palindrome "palindrome"))
