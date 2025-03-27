rodzic(ania,jacek).
rodzic(ania,basia).
rodzic(jan,jacek).
rodzic(jan,basia).
rodzic(stefan,jan).
rodzic(maria,ania).
rodzic(borys,ania).

rodzic(dawid,stefan).

przodek(X,Y):-rodzic(X,Y).
przodek(X,Y):-rodzic(X,Z), przodek(Z,Y).