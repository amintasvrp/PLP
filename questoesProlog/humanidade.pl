mulher(maria).
mulher(rita).

homem(joao).
homem(pedro).
homem(amintas).

amigo(joao, maria).
amigo(joao, pedro).
amigo(joao, joao).

humano(X) :- mulher(X) ; homem(X).



