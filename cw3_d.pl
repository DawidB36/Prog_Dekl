%rekurencja

%silnia - rekurencja środkowa
%0!=1, n!=n*(n-1)!,n>0

%silnia(+N,5)
%spełniony, gdy 5 = N!

silnia(N,S):-N>0,
			N1 is N-1,
			silnia(N1,S1),
			S is N*S1.
		
%warunek zakończenia rekurencję		

silnia(0,1).