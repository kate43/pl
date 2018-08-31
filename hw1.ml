
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

let greeter = merge([1;2;3],[4;5;6])

let _ = printer greeter
