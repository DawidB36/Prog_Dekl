mniejszy_o(X,Y):-Y is X-2.

lista_mniejszao2(L1,L2):-maplist(mniejszy_o,L1,L2).

%lista_mniejszao2([4,2],[2,0]).