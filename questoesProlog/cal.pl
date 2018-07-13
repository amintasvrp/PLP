%
%% FRONT 
%

:- initialization main.

main :-
	nl, write('---- CALCULADORA EM PROLOG ----'),nl,
	opcoes().
	
opcoes :-
	nl,write('1. ADICAO'),nl,
	write('2. SUBTRACAO'),nl,
	write('3. MULTIPLICACAO'),nl,
	write('4. DIVISAO'),nl,
	write('5. DIVISAO INTEIRA'),nl,
	write('6. RESTO'),nl,
	write('0. SAIR'),nl, nl,
	executar().

executar :-
    repeat,
    read_line_to_codes(user_input, X3),
    string_to_atom(X3,X2),
    atom_number(X2,X),
    operacao(X).
    
operacao(Op) :-
	Op =:= 1 -> soma();
	Op =:= 2 -> subtracao();
	Op =:= 3 -> multiplicacao();
	Op =:= 4 -> divisao();
	Op =:= 5 -> divisaoInteira();
	Op =:= 6 -> resto();
	Op =:= 0 -> sair();
	exception().
	
exception :-
	nl, write('OPCAO INVALIDA: TENTE NOVAMENTE'), nl,
	opcoes().
	
%
%% BACK
%

soma() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X),	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X + Y,
	write(Resultado),nl,
	opcoes().
	
subtracao() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X), 	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X - Y,
	write(Resultado),nl,
	opcoes().

multiplicacao() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X), 	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X * Y,
	write(Resultado),nl,
	opcoes().

divisao() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X), 	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X / Y,
	write(Resultado),nl,
	opcoes().
	
divisaoInteira() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X), 	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X // Y,
	write(Resultado),nl,
	opcoes().
	
resto() :- 
	read_line_to_codes(user_input, X3),
	string_to_atom(X3,X2),
	atom_number(X2,X), 	
	read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),	
	Resultado is X mod Y,
	write(Resultado),nl,
	opcoes().

sair() :- halt(0).





	
	
	



