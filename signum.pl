signum(X, -1) :- X < 0,  !.
signum(0, 0):- X = 0, !.
signum(X, 1) :- X > 0,  !.

% wyrob(nazwa, cena, ilosc).

wyrob(towar1,10,10).
wyrob(towar2,50,220).
wyrob(towar3,90,500).
wyrob(towar4,110,80).

zakup_towaru(Nazwa):-wyrob(Nazwa,Cena,Ilosc), Cena < 200, Ilosc > 200.