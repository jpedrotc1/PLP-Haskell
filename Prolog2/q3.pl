removerep(X,Y) :- 
	sort(X,Y).

somaelem([], 0).
somaelem([H|T], S) :-
   	somaelem(T, R),
   	S is H + R.

:- initialization(main).
main:- 
	read(X),
	removerep(X,L), 
	somaelem(L,V),
	write(V), nl, 
	halt(0).
