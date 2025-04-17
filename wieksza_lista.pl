wiekszy_od(X,Y):-X>Y.

wieksza_lista(L1,L2):-maplist(wiekszy_od,L1,L2).

%cele:
%wieksza_lista([5,4],[3,2]).
%wieksza_lista([3,2,1],[4,3,1]).