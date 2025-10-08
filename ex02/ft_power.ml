let rec ft_power nbr pwr =
        if pwr = 0 then 1
        else nbr * ft_power nbr (pwr -1);;

print_int (ft_power 2 4);;
print_char '\n';;
print_int (ft_power 0 5);;
print_char '\n';;
print_int (ft_power 3 0);;
print_char '\n';;
