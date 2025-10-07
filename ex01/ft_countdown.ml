let ft_countdown nbr =
        if nbr <= 0 then
                print_endline "0";
        let i = ref nbr in
        while !i >= 0 do
                print_int !i;
                print_char '\n';
                i := !i - 1
        done;;

print_string "Countdown start to 3 expect: 3 to 0\n";;
ft_countdown 3;;
print_string "Countdown start to -1 expect: 0\n";;
ft_countdown (-1);;
