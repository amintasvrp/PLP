alianca("mardod", "azuis").
alianca("rolmar", "azuis").
alianca("lauriel", "azuis").
alianca("gandalf", "azuis").
alianca("frodo", "azuis").

alianca("drakar", "vermelhos").
alianca("vallirion", "vermelhos").
alianca("memphis", "vermelhos").
alianca("diablo", "vermelhos").
alianca("soyerver", "vermelhos").

:- initialization (main).

main :-
	writeln("--- EQUIPES E MEMBROS ---"),
	opcoes().
	
opcoes :-
	writeln("1. VER MEMBROS"),
	writeln("2. CONFERIR EQUIPE"), nl,
	read_line_to_codes(user_input, Comando),
	string_to_atom(Comando, Atom),
	atom_number(Atom, Number),
	comando(Number).
	
comando(Op) :-
	Op =:= 1 -> membros();
	Op =:= 2 -> equipe();
	Op =:= 0 -> sair();
	exception().
	
exception :- 
	writeln("OPÇAO ERRADA: TENTE NOVAMENTE"), nl,
	opcoes().
	
membros :-
	read_line_to_string(user_input, Equipe),
	alianca(Membro, Equipe),
	opcoes().

equipe :-
	read_line_to_string(user_input, Membro),
	alianca(Membro, Equipe),
	opcoes().
	
sair :- halt(0).
	
	
