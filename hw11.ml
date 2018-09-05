let rec merge (l1,l2) = 
	match (l1,l2) with
		| ([], _) -> l2
		| (_, []) -> l1
		| (h1::t1, h2::t2) -> h1::h2::merge(t1,t2)
