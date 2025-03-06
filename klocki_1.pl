% PROGRAM: klocki_1
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
%==================================

% na(X, Y)
% opis: spełniony, gdy klocek x leży
% bezpośrednio na klocku Y
% pod(X,Y)
% opis: spełniony, gdy klocek X leży
% bezpośrednio pod klockiem Y
% między(X,Y,Z)
% opis: spełniony, gdy klocek X leży między
% klockami Y i Z
%--------------------------------na/2
	na(c,a).
	na(c,b).
	na(d,c).
	pod(X,Y):-na(Y,X).
	miedzy(X,Y,Z):-na(Z,X),na(X,Y).
	miedzy(X,Y,Z):-na(Y,X),na(X,Z).
%--------------------------------na/2

/*
Informacje o budowie programu:
Program składa się z 6 klauzul.
Program zawiera 3 definicje relacji.
Są to relacje na/2, pod/2 i między/3.
Definicja relacji na/2 składa się z
3 klauzul, które są faktami
Definicja relacji pod/2 składa się Z 1
klauzuli, która jest regułą.
Definicja relacji między/3 składa się
z 2 klauzul, które są regułami
*/

/*
Seria programowa
*/