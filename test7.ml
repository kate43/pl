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

(*let rec gcd a b =
	match (a,b) with
	| (1,_) | (_,1) -> 1
	| _ ->
		if a=b then a
		else if a<b then gcd b a
		else gcd (a-b) b
*)

(*let rec sum_of_list l =
	match l with
		| [] -> 0
		| h::t -> h + sum_of_list t
*)

(*let rec length l =
	match l with
		| []-> 0
		| _::t -> 1+ length t
*)

let rec print_list l1 = 
	match l1 with
		| [] -> []
		| h1::t1 -> print_endline(string_of_int(h1))+ print_list(t1); t1

let _ = print_list [1;2;3;4;5]

(*let _ = print_endline (string_of_int (length [1;2;3;4;5]))*)








