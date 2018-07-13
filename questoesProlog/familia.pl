progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).

Avos(Neto) :- progenitor(Avos,Pais), progenitor(Pais,Neto).
