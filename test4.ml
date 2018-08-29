let rec list_len : 'a list -> int = fun l ->
	match l with
	| head :: tail -> 1+list_len tail
	| [] -> 0

let _ = print_endline(string_of_int list_len [1;2;3;4;5])
