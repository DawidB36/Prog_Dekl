dlugosc_listy([],0).
dlugosc_listy([H|T],D):- dlugosc_listy(T,D1), D is D1 + 1.