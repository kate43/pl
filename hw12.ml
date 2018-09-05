sigma(a,b,f) =
	if a>b-1 then 0
	else f(b) + sigma(a,b-1,f)
