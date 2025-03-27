% Wyznaczanie stopnia wielomianu
% o współczynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1) st(x)=1
   st(c)=0, gdzie c - liczba
   
2) Stopnie wielomianów złożonych określamy następująco:
   st(-w)=st(w),
   st(w1+w2)=st(w1-w2)=max(st(w1),st(w2)),
   st(w1*w2)=st(w1)+st(w),
   st(w*N)+st(w)*N (N-liczba naturalna, N>1)
*/

% st_wielomian(W,X,N)
% spełniony,gdy N jest stopniem wielomianu W zmiennej X
% o współczynnikach liczbowych
% definicja rekurencyjna

% warunki zakończenia rekurencji
	st_wielomian(X,X,1).
	st_wielomian(C,_,0):-number(C).

% rekurencja
	st_wielomian(-W,X,N):-st_wielomian(W,X,N).
	st_wielomian(W1+W2,X,N):-
							st_wielomian(W1,X,N1),
							st_wielomian(W2,X,N2),
							N is max(N1,N2).
	st_wielomian(W1-W2,X,N):-
							st_wielomian(W1,X,N1),
							st_wielomian(W2,X,N2),
							N is max(N1,N2).
	st_wielomian(W1*W2,X,N):-
							st_wielomian(W1,X,N1),
							st_wielomian(W2,X,N2),
							N is N1+N2.
	st_wielomian(W^C,X,N):-
							integer(C),
							C>1,
							st_wielomian(W,X,N1),
							N is N1*C.