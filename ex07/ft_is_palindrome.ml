let ft_is_palindrome str =
	let len = (String.length(str) - 1) in
	let i = ref 0 in
	let final = ref true in
	while !i <= len do
		if str.[!i] != str.[(len - !i)] then
			final := false;
		i := !i + 1;
	done;
	!final;;

print_endline (string_of_bool (ft_is_palindrome "radar"));;
print_endline (string_of_bool (ft_is_palindrome ""));;
print_endline (string_of_bool (ft_is_palindrome "palindrome"));;
