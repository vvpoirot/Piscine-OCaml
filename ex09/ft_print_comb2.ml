let ft_print_comb2 () =
	for a = 0 to 98 do
		for b = (a + 1) to 99 do
			if b != 1 then
				print_char ',';
				print_char ' ';
			if a < 10 then
				print_char '0';
			print_int a;
			print_char ' ';
			if b < 10 then
				print_char '0';
			print_int b
		done;
	done;
	print_char '\n';;

ft_print_comb2 ();;
