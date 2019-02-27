:- initialization main.

main :-
	Rena is 1,
	repeticoes(Rena,0).
  
repeticoes(Rena, Num) :-
	read_line_to_codes(user_input, Codes),
	string_to_atom(Codes, Atom),
	atom_number(Atom, Number),
	Numeral is Number + Num,
	recursao(Rena, Numeral).
	
recursao(Rena, Number) :- Rena =:= 9 -> printaRena(Number); Prox is (Rena + 1), repeticoes(Prox, Number).

printaRena(N) :-
	N mod 9 =:= 0 -> writeln("Rudolph"),halt(0);
	N mod 9 =:= 1 -> writeln("Vigoroso"),halt(0);
	N mod 9 =:= 2 -> writeln("Dançarino"),halt(0);
	N mod 9 =:= 3 -> writeln("Saltador"),halt(0);
	N mod 9 =:= 4 -> writeln("Raposa"),halt(0);
	N mod 9 =:= 5 -> writeln("Cometa"),halt(0);
	N mod 9 =:= 6 -> writeln("Cupido"),halt(0);
	N mod 9 =:= 7 -> writeln("Perito"),halt(0);
	N mod 9 =:= 8 -> writeln("Ligeiro"),halt(0).
