lubi(marcin,gitara).
lubi(magda,ksiazki).
lubi(piotr,gitara).
lubi(ola,sport).
lubi(ania,X):-lubi(magda,X).
hobby(X,Y):-lubi(X,Z),lubi(Y,Z).

/*
6 klauzul
2 definicje relacji, lubi/2, hobby/2
4 fakty

*/