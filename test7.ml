(*let rec fact n = 
	if n<0 then raise (Invalid_argument "factorial")
	else if n=0 then 1
	else n * fact(n-1)
*)

(*let fact = (fun n -> n+1)*)

(*let a = 1
let b = 2
let add x y = x+y
let fact = add a b
*)

(*let rec gcd a b =
	if a=1 || b=1 then 1
	else if a=b then a
	else if a<b then gcd b a
	else gcd (a-b) b
*)

let rec gcd a b =
	match (a,b) with
	| (1,_) | (_,1) -> 1
	| _ ->
		if a=b then a
		else if a<b then gcd b a
		else gcd (a-b) b

let _ = print_endline (string_of_int (gcd 24 4))
