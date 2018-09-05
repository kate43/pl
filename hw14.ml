t = ZERO | SUCC of nat

let rec natadd (a,b) =
	match(a,b) with
		| (ZERO,ZERO) -> ZERO
		| (ZERO, b) -> b
		| (a, ZERO) -> a
		| (SUCC a', SUCC b') -> SUCC(natadd(a,b'))

let rec natmul(a,b)=
	match(a,b) with
		| (ZERO,ZERO)->ZERO
		| (ZERO,b)->ZERO
		| (a,ZERO)->ZERO
		| (SUCC a', SUCC b') -> natadd(natmul(a,b'),a)
