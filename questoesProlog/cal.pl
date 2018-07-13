%
%% FRONT 
%

:- initialization (main).

main :-
	nl, write('---- CALCULADORA EM PROLOG ----'),nl,
	opcoes().
	
opcoes :-
	nl,writeln('01. ADICAO'),
	writeln('02. SUBTRACAO'),
	writeln('03. MULTIPLICACAO'),
	writeln('04. DIVISAO'),
	writeln('05. DIVISAO INTEIRA'),
	writeln('06. RESTO'),
	writeln('07. POTENCIACAO'),
	writeln('08. RADICIACAO'),
	writeln('09. MAIOR'),
	writeln('10. MENOR'),
	writeln('11. MAIOR OU IGUAL'),
	writeln('12. MENOR OU IGUAL'),
	writeln('13. IGUAL'),
	writeln('14. DIFERENTE'),
	writeln('15. MDC'),
	writeln('0. SAIR'),nl,
	executar().

executar :-
    repeat,
    read_line_to_codes(user_input, X3),
    string_to_atom(X3,X2),
    atom_number(X2,X),
    validarEntrada(X).
    
validarEntrada(X) :-    
    X =:= 0 -> sair();
    X > 15 -> exception();
    operar(X).
    
operar(X) :-    
    read_line_to_codes(user_input, Y3),
	string_to_atom(Y3,Y2), 
	atom_number(Y2,Y),
    read_line_to_codes(user_input, Z3),
	string_to_atom(Z3,Z2),
	atom_number(Z2,Z),	
    operacao(X,Y,Z).
    
operacao(Op, X, Y) :-
	Op =:= 1 -> soma(X,Y);
	Op =:= 2 -> subtracao(X,Y);
	Op =:= 3 -> multiplicacao(X,Y);
	Op =:= 4 -> divisao(X,Y);
	Op =:= 5 -> divisaoInteira(X,Y);
	Op =:= 6 -> resto(X,Y);
	Op =:= 7 -> potencia(X,Y);
	Op =:= 8 -> raiz(X,Y);
	Op =:= 9 -> maior(X,Y);
	Op =:= 10 -> menor(X,Y);
	Op =:= 11 -> maiorIgual(X,Y);
	Op =:= 12 -> menorIgual(X,Y);
	Op =:= 13 -> igual(X,Y);
	Op =:= 14 -> diferente(X,Y);
	Op =:= 15 -> mdc(X,Y).
	
	
exception :-
	nl, write('OPCAO INVALIDA: TENTE NOVAMENTE'), nl,
	opcoes().
	
%
%% BACK
%



soma(X,Y) :- 
	Resultado is X + Y,
	write(Resultado),nl,
	opcoes().
	
subtracao(X,Y) :- 
	Resultado is X - Y,
	write(Resultado),nl,
	opcoes().

multiplicacao(X,Y) :- 
	Resultado is X * Y,
	write(Resultado),nl,
	opcoes().

divisao(X,Y) :- 
	Resultado is X / Y,
	write(Resultado),nl,
	opcoes().
	
divisaoInteira(X,Y) :-
	Resultado is X // Y,
	write(Resultado),nl,
	opcoes().
	
resto(X,Y) :- 
	Resultado is X mod Y,
	write(Resultado),nl,
	opcoes().

potencia(X,Y) :- 
	Resultado is X ** Y,
	write(Resultado),nl,
	opcoes().
	
raiz(X,Y) :- 
	Indice is 1 / Y,	
	Resultado is X ** Indice,
	write(Resultado),nl,
	opcoes().

maior(X,Y) :-
	(X > Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().

menor(X,Y) :- 
	(X < Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().
	
maiorIgual(X,Y) :- 
	(X >= Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().
	
menorIgual(X,Y) :- 
	(X =< Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().

igual(X,Y) :- 
	(X =:= Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().
	
diferente(X,Y) :- 
	(X =\= Y -> Resultado = true; Resultado = false),
	write(Resultado),nl,
	opcoes().

mdc(X,Y) :- 
	X =:= 0 -> write(Y), nl,
	opcoes();
	P is Y mod X,
	mdc(P,X).

sair() :- halt(0).





	
	
	



