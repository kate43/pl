(*hello world*)

type metro = STATION of name
	| AREA of name*metro
	| CONNECT of metro * metro
and name = string

let rec printer msg =
	match msg with
		| [] -> ()
		| h::t -> print_endline(h);
			printer t

let rec exist st li =
	match li with
	| [] -> false
	| h::t -> if(h=st) then true||exist st t else exist st t

let sam = ref []

let rec checkMetrorec m =
	match m with
	| AREA(a',b) -> sam := a'::!sam;checkMetrorec(b)
	| STATION a' -> if(exist a' !sam) then true else false
	| CONNECT(a',b')-> checkMetrorec(a') && checkMetrorec(b')

let checkMetro m =
	sam := [];
	checkMetrorec m

let _ = print_endline(string_of_bool(checkMetro (AREA("a", AREA("b", CONNECT(STATION "a", STATION "b"))))))
