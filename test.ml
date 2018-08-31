let greeting = 'H'::'e'::'l'::'l'::'o'::[]

let rec my_print msg =
	match msg with
		| [] -> ()
		| c::msg' ->
			print_char c;
			my_print msg'

let _ = my_print greeting
		



(*type pair = Mk_pair of char*char

let greeting = "Hello World"
let my_print deco msg =
	match deco with
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
