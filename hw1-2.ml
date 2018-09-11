let sumprod(f,n,k) = 
	let x = ref 0.0 in
	let y = ref 1.0 in
	for i=1 to n do
		for j=1 to k do
			y := !y *. f(i,j)
		done;
		x := !x +. !y;
		y := 1.0
	done;
	!x

(*Hello World*)
(*
let rec mult(b,f) =
	if b<=0 then 1.0
	else f(b) *. mult(b-1,f)


let rec sigma(a,f) =
	if a<=0 then 0.0
	else f(a) +. sigma(a-1,f)
*)

(*let rec sumprod(M,n,k) =
	let x = ref 0.0 in
	let y = ref 0.0 in
	let kk = ref k in
	match (n,k) with
		| (0,0) -> !x
		| (0,k') -> !x
		| (n',0) -> x := !x + !y; y := 0.0; sumprod(M,n'-1,!kk)
		| (n',k') -> y := !y * M(n',k') ;sumprod(M,n',k'-1)

let em(a,b) = (float_of_int a)/.(float_of_int b)
*)

