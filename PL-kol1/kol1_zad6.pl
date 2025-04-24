podwojona(X,Y):-Y is X * 2.
podwojona_lista(L1,L2):-maplist(podwojona,L1,L2).