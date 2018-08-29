let f x = 
	if x<0 then
		raise(Failure "invalid input")
	else 1+1

let _ = f -12
