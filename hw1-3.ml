type team = Korea | France | Usa | Brazil | Japan | Nigeria | Cameroon
| Poland | Portugal | Italy | Germany | Norway | Sweden | England
| Argentina

type tourna = LEAF of team
	    | NODE of tourna * tourna

let rec parenize tr =
	match tr with
		| NODE tr' ->  
