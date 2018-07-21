% Soma dos Elementos de uma Lista
soma([], 0).
soma([Head|Tail], Result) :- soma(Tail, Acum), Result is Acum+Head.

% Tamanho de uma Lista
tamanho([], 0).
tamanho([_|Tail], Tamanho) :- tamanho(Tail, Result), Tamanho is Result+1.

% Inserir Elemento no Início da Lista
inserirInicio(Elem, Lista, [Elem|Lista]).

% Inserir Elemento no Final da Lista
inserirFinal(Elem, [], [Elem]).
inserirFinal(Elem,[Head],[Head|[Elem]]).
inserirFinal(Elem, [Head|Tail], Result) :- inserirFinal(Elem, Tail, ResultTail), inserirInicio(Head, ResultTail, Result).

% Recupera Elemento pelo Índice
getElem(0,[Head|_], Head).
getElem(Index, [_|Tail], Elem) :- NewIndex is Index - 1, getElem(NewIndex, Tail, Elem).

% Recupera Índice pelo Elemento
getIndex(Elem, Lista, Index) :- getIndexRec(Elem, Lista, 0, Index).
getIndexRec(Elem, [Elem|_], Acum, Acum).
getIndexRec(Elem, [_|Tail], Acum, Index) :- NewAcum is Acum + 1, getIndexRec(Elem, Tail, NewAcum, Index).

% Remove Elemento
removeElem(Elem,[Elem|Tail],Tail).
removeElem(Elem,[Head|Tail],Result) :- removeElem(Elem,Tail,ResultTail), inserirInicio(Head,ResultTail,Result).

% Remove Índice
removeIndex(0,[_|Tail], Tail).
removeIndex(Index, [Head|Tail], Result) :- NewIndex is Index - 1, removeIndex(NewIndex, Tail, ResultTail), inserirInicio(Head, ResultTail, Result).

% Maior Elemento
maxElem([Head|Tail], Max) :- maxElemRec(Tail, Head, Max).
maxElemRec([], MaxTemp, MaxTemp).
maxElemRec([Head|Tail], MaxTemp, Max) :- Head > MaxTemp -> maxElemRec(Tail, Head, Max) ; maxElemRec(Tail, MaxTemp, Max).

% Menor Elemento
minElem([Head|Tail], Min) :- minElemRec(Tail, Head, Min).
minElemRec([], MinTemp, MinTemp).
minElemRec([Head|Tail], MinTemp, Min) :- Head < MinTemp -> minElemRec(Tail, Head, Min) ; minElemRec(Tail, MinTemp, Min).

% Adicionar Alternadamente (Merge)
merging([],[],[]).
merging([],Lista2,Lista2).
merging(Lista1,[],Lista1).
merging([Head1|Tail1],[Head2|Tail2],[Head1,Head2|Tail3]) :- merging(Tail1,Tail2,Tail3).

% Concatenar Listas
concating([],[],[]).
concating([],Lista2,Lista2).
concating(Lista1,[],Lista1).
concating(Lista1, [Head|Tail], Result) :- inserirFinal(Head,Lista1,Lista2), concating(Lista2, Tail, Result).

% Determina se um elemento está numa lista
containsElem(_, [], false).
containsElem(Elem,[Elem|_], true).
containsElem(Elem,[_|Tail], Result) :- containsElem(Elem, Tail, Result).

% Elimina Repetições
listToSet([],[]).
listToSet(Lista, Result) :- listToSetRec(Lista, [], Result).
listToSetRec([], Conj, Conj).
listToSetRec([Head|Tail], ConjTemp, Conj) :- containsElem(Head, ConjTemp, true) -> listToSetRec(Tail, ConjTemp, Conj) ; inserirFinal(Head, ConjTemp, NewConjTemp), listToSetRec(Tail, NewConjTemp, Conj).    

% União das Listas
union(Lista1, Lista2, Result) :- concating(Lista1,Lista2, ListaConcat), listToSet(ListaConcat, Result).

% Intersecção das Listas
intersec(Lista1, Lista2, Result) :- listToSet(Lista1, Conj1), listToSet(Lista2, Conj2), intersecRec(Conj1, Conj2, [], Result).
intersecRec([], _, ConjTemp, ConjTemp).
intersecRec([Head|Tail], Conj2, ConjTemp, Result) :- 
    containsElem(Head, Conj2, true) -> inserirFinal(Head, ConjTemp, NewConjTemp), intersecRec(Tail, Conj2, NewConjTemp, Result) ;
    intersecRec(Tail, Conj2, ConjTemp, Result).

% Diferença entre a Primeira Lista e a Segunda
diff(Lista1, Lista2, Result) :- listToSet(Lista1, Conj1), listToSet(Lista2, Conj2), diffRec(Conj1, Conj2, [], Result).
diffRec(Conj1, [], _, Conj1).
diffRec([], _, ConjTemp, ConjTemp).
diffRec([Head|Tail], Conj2, ConjTemp, Result) :- 
    containsElem(Head, Conj2, true) -> diffRec(Tail, Conj2, ConjTemp, Result) ;
    inserirFinal(Head, ConjTemp, NewConjTemp), diffRec(Tail, Conj2, NewConjTemp, Result).
    
:- initialization main.

main :-

    nl, writeln("--- INSIRA DUAS LISTAS, UM ELEMENTO, E UM ÍNDICE ---"),
    writeln("*** nessa ordem e com ponto no final das linhas***"),nl,

    read(Lista),
    read(Lista2),
    read(Elem),
    read(Index),

    soma(Lista, Soma),
    tamanho(Lista, Tamanho),
    inserirInicio(Elem, Lista, ListaElemInicio),
    inserirFinal(Elem, Lista, ListaElemFinal),
    getElem(Index, ListaElemFinal, ElemResult),
    getIndex(Elem, ListaElemFinal, IndexResult),
    removeElem(Elem, ListaElemFinal, ListaSemElem),
    removeIndex(Index, ListaElemFinal, ListaSemIndex),
    maxElem(ListaElemFinal, Maior),
    minElem(ListaElemFinal, Menor),
    merging(Lista,Lista2,ListaMerge),
    concating(Lista,Lista2,ListaConcat),
    containsElem(Elem, ListaElemFinal, Encontrou),
    listToSet(Lista2, Conj2),
    union(Lista, Lista2, Uniao),
    intersec(Lista, Lista2, Inter),
    diff(Lista,Lista2, Diff1),
    diff(Lista2,Lista, Diff2),

    nl, writeln("--- RESULTADO DAS OPERAÇÕES ---"),nl,

    write("Soma: "), writeln(Soma),
    write("Tamanho: "), writeln(Tamanho),
    write("Lista com Elemento no Inicio: "), writeln(ListaElemInicio),
    write("Lista com Elemento no Final: "), writeln(ListaElemFinal),
    write("Elemento Recebido: "), writeln(ElemResult),
    write("Índice Recebido: "), writeln(IndexResult),
    write("Lista com Elemento Removido: "), writeln(ListaSemElem),
    write("Lista com Índice Removido: "), writeln(ListaSemIndex),
    write("Maior Elemento: "), writeln(Maior),
    write("Menor Elemento: "), writeln(Menor),
    write("Merge das Listas: "), writeln(ListaMerge),
    write("Concatenação das Listas: "), writeln(ListaConcat),
    write("Elemento está na Segunda Lista: "), writeln(Encontrou),
    write("Conjunto da Segunda Lista: "), writeln(Conj2),
    write("União das Listas: "), writeln(Uniao),
    write("Intersecção das Listas: "), writeln(Inter),
    write("Lista 1 - Lista 2: "), writeln(Diff1),
    write("Lista 2 - Lista 1: "), writeln(Diff2),

    nl, halt(0).