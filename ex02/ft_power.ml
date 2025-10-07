let rec ft_power nbr pwr =
        if pwr = 0 then 1
        else nbr * ft_power nbr (pwr -1);;

ft_power 2 4;;
ft_power 0 5;;
ft_power 3 0;;
