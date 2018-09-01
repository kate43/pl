




let _ = print_int 13

let rec merge2 l1 l2 =
	match (l1,l2) with
	| ([], _) -> l2
	| (_, []) -> l1
	| (h1::t1, h2::t2) ->
		if h1<h2 then h1::merge t1 l2
		else h2::merge l1 t2

let rec merge (l1,l2) =
	match(l1,l2) with
	| ([],_) -> l2
	| (_,[]) -> l1
	| (h1::t1, h2::t2) ->
		h1::h2::merge(t1,t2)

let rec listprint msg =
	match msg with
		| [] -> ()
		| h::t ->
			print_int h;
			my_print t

let lister = merge ([1;2;3],[4;5;6]);

let _ = listpint lister

(*
let greeting = 'H'::'e'::'l'::'l'::'o'::[]

let rec my_print msg =
	match msg with
		| [] -> ()
		| c::msg' ->
			print_char c;
			my_print msg'

let _ = my_print greeting
		
*)


(*(*type pair = Mk_pair of char*char

let greeting = "Hello World"
let my_print deco msg =
	match deco with *)
	| Mk_pair (prolog, epilog) ->
		print_char prolog;
		print_string msg;
		print_char epilog

let _ = my_print(Mk_pair ('[',')')) greeting
*)



(*let greeting = "Hello World!"

let my_print deco msg =
	print_char deco;
	print_string msg;
	print_char deco; 3

let x = my_print '"' greeting*)
