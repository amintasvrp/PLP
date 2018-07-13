:- initialization main.

main :-
	read(user_input, Number),
	somaDiv(Number,1,0).
	
result(Number,Acum) :-
	Number =:= Acum -> writeln("true"), halt(0) ; writeln("false"), halt(0).
	
somaDiv(Number,Div, Acum) :- Div < Number -> somaDivRec(Number,Div, Acum) ; result(Number,Acum).
	
somaDivRec(Number,Div, Acum) :- (Number mod Div =:= 0) -> Acum2 is Acum + Div, Next is Div + 1, somaDiv(Number, Next, Acum2) ; Next is Div + 1, somaDiv(Number, Next, Acum).      
	
