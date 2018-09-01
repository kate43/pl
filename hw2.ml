(*hello world*)

type crazy2 = NIL | ZERO of  crazy2 | ONE of crazy2 | MONE of crazy2

let is_even n = (n mod 2 = 0)

let pow base exponent =
	if exponent <0 then invalid_arg "exponent cannot be negative" else
	let rec aux accumulator base = function
		| 0 -> accumulator
		| 1 -> base * accumulator
		| e when is_even e -> aux accumulator (base * base) (e/2)
		| e-> aux(base * accumulator)(base*base)((e-1)/2) in
	aux 1 base exponent
(*
let _ = print_endline(string_of_int(pow 2 5))
*)
let rec find_depth l = 
	match l with
		| NIL -> 0
		| MONE(l') -> 1 + find_depth l'
		| ONE(l') -> 1+ find_depth l'
		| ZERO(l') -> 1+find_depth l'
(*
let _ = print_endline(string_of_int(find_depth(ZERO(ONE(MONE NIL)))))
*)

let rec crazy2val x =
	let sam = find_depth x in
	match x with
		| NIL -> 0
		| MONE(x') -> (pow 2 (sam-1))*(-1)+crazy2val(x')
		| ONE(x') -> (pow 2 (sam-1))*1 + crazy2val(x')
		| ZERO(x') -> crazy2val(x')
(*
let _ = print_endline(string_of_int(crazy2val(MONE(ONE(MONE(ZERO(NIL)))))))*)
