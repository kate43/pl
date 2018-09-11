let rec sigma(a,b,f) =
	if a>b-1 then 0
	else f(b) + sigma(a,b-1,f)

(*let _ = print_int(sigma(3,2,fun x->x+2))*)
