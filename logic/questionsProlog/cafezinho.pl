:- initialization main.

main :-
	read_line_to_codes(user_input, Codes),
	string_to_atom(Codes, Atom),
	atom_number(Atom, TempoTotal),
	Tempo is TempoTotal * 60,
	resolver(Tempo, 1, 60, 120, 180, 0).
	
resolver(TempoTotal, Cafe, Facil, Medio, Dificil, Questoes) :-
	TempoTotal =:= 0 -> writeln(Questoes), halt(0); 
	TempoTotal < 0 -> QuestoesInt is Questoes - 1, writeln(QuestoesInt), halt(0); 
	read_line_to_string(user_input, Turno), opcao(Turno, TempoTotal, Cafe, Facil, Medio, Dificil, Questoes).
	
opcao(Turno, TempoTotal, Cafe, Facil, Medio, Dificil, Questoes) :-
	Turno == "Cafezinho" -> NovoCafe is Cafe + 1, 
	resolver(TempoTotal, NovoCafe, Facil, Medio, Dificil, Questoes);
	
	Turno == "Facil" -> NovasQuestoes is Questoes + 1, 
	NovoTempo is TempoTotal - (Facil / Cafe), 
	resolver(NovoTempo, Cafe, Facil, Medio, Dificil, NovasQuestoes); 
	
	Turno == "Medio" -> NovasQuestoes is Questoes + 1, 
	NovoTempo is TempoTotal - (Medio / Cafe), 
	resolver(NovoTempo, Cafe, Facil, Medio, Dificil, NovasQuestoes); 
	
	Turno == "Dificil" -> NovasQuestoes is Questoes + 1, 
	NovoTempo is TempoTotal - (Dificil / Cafe),
	resolver(NovoTempo, Cafe, Facil, Medio, Dificil, NovasQuestoes). 
