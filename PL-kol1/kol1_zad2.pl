osoba(ewa).
osoba(anna).
osoba(piotr).
osoba(ola).
hobby(ewa,malarstwo).
hobby(ewa,fotografia).
hobby(piotr,sport).
hobby(anna,sport).
hobby(anna,fotografia).
hobby(ola,X):-hobby(anna,X).
lubi(X,Y):-hobby(X,Z),hobby(Y,Z),X\=Y.

/*
program składa się z 3 predykatów, osoba/1, hobby/2 i lubi/2s
program składa się z 11 klauzul
9 klauzul jest faktami:
osoba(ewa).
osoba(anna).
osoba(piotr).
osoba(ola).
hobby(ewa,malarstwo).
hobby(ewa,fotografia).
hobby(piotr,sport).
hobby(anna,sport).
hobby(anna,fotografia).
2 klauzule są regułami:
hobby(ola,X):-hobby(anna,X).
lubi(X,Y):-hobby(X,Z),hobby(Y,Z),X\=Y.
*/