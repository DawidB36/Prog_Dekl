% konkat(L1,L2,L3) - spełniony, gdy L3 jest konkatenacją L1 i L2, np. [a,b] [c,d] [a,b,c,d]
% warunek zakończenia rekurencji: 
konkat([],L,L).
konkat([H1|T1],L2,[H1|T2]):-konkat(T1,L2,T2).

% konkat([a,b],[c,d],[a,b,c,d]).
% konkat([a],[c,d,e],X).

odwrotna_lista([],[]).
odwrotna_lista([H|T1],L):-odwrotna_lista(T1,T2),konkat(T2,[H],L).

% odwrotna_lista([1,2,3],[3,2,1]).
% odwrotna_lista([5,4],X).

% element(E,L) - spełniony, gdy E jest elementem listy L

element(E,[E|_]).
element(E,[_|T]):-element(E,T).

% element(2,[3,2,1]).

% wywołanie predykatów
% dodatni(x)
% spełniony gdy X jest liczba dodatnia
dodatni(X):-X>0.
% listadodatnia(L)
% spełniony, gdy wszystkie elementy listy są dodatnie

lista_dodatnia(L):-maplist(dodatni,L).

% kwadrat_lista(L1,L2) - spełniony, gdy elementy listy L2 są elementami L1 podniesionymi do kwadratu

kwadrat(X,Y):-Y is X*X.
kwadrat_lista(L1,L2):-maplist(kwadrat,L1,L2).

% większyod(X,Y)
% spełniony, gdy Y jest większe od X

wiekszy_od(X,Y):-Y>X.

% wiekszy_od_lista(+X,+L)
% spełniony gdy wszystkie elementy listy L są większe od X
wiekszy_od_lista(X,L):-maplist(wiekszy_od(X),L).