let rec fact n =
	if n<=0 then 1
	else n*fact(n-1)

let x = fact 10

let _ = print_endline(string_of_int x)
