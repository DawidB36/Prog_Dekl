/*
lubi(X,Y) - X lubi Y
sport(X) - X uprawia sport
jarosz(X) - X jest jaroszem
czyta(X) - X lubi czytać książki
niepali(X) - X jest niepalący
*/

jarosz(ola).
jarosz(ewa).
jarosz(janek).
jarosz(pawel).

niepali(ola).
niepali(ewa).
niepali(janek).

czyta(ola).
czyta(iza).
czyta(piotr).

sport(ola).
sport(janek).
sport(piotr).
sport(pawel).

lubi(ola,X):-jarosz(X),sport(X).
lubi(ewa,X):-niepali(X),jarosz(X).
lubi(iza,X):-czyta(X).
lubi(iza,X):-niepali(X),sport(X).
lubi(janek,X):-sport(X).
lubi(piotr,X):-sport(X),jarosz(X).
lubi(piotr,X):-czyta(X).
lubi(pawel,X):-jarosz(X),sport(X),czyta(X);

% lubi(X,Y),lubi(Y,X),X\==Y.