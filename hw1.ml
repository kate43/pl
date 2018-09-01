type nat = ZERO | SUCC of nat

let rec natadd (a,b) =
	match(a,b) with
		| (ZERO,ZERO) -> ZERO
		| (ZERO, b) -> b
		| (a, ZERO) -> a
		| (SUCC a', SUCC b') -> SUCC(natadd(a,b'))
	
(*		| (a,SUCC b`)-> natadd(a,b');
				   SUCC a
		| (SUCC a', b) -> natadd(a',b); SUCC b
*)

let zet1 = SUCC(ZERO)
let _ = natadd(zet1,zet1)

let rec merge (l1,l2) = 
	match (l1,l2) with
		| ([], _) -> l2
		| (_, []) -> l1
		| (h1::t1, h2::t2) -> h1::h2::merge(t1,t2)



let rec printer msg =
	match msg with
		| [] -> ()
		| h::t -> 
			print_int h;
			printer t

(*let greeter = merge([1;2;3],[4;5;6])

let _ = printer greeter
*)

let rec sigma(a,b,f) =
	if a>b-1 then 0
	else f(b) + sigma(a,b-1,f)

let _ = print_int(sigma(0,5,fun x->x+3))


