let ft_string_all f str =
	let i = ref 0 in
	let final = ref true in
	while (!i != String.length(str)) do
		let res = f str.[!i] in
		if res = false then
			final := false;
		i := !i + 1;
	done;
	!final;;

let is_digit c = c >= '0' && c <= '9';;
ft_string_all is_digit "0123456789";;
ft_string_all is_digit "012EAS67B9";;
