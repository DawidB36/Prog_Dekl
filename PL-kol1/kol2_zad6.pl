mniejszao5(X,Y):-Y is X - 5.
lista_mniejszao5(L1,L2):-maplist(mniejszao5,L1,L2).