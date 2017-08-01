populacao(brasil,200).
populacao(eua,320).
populacao(canada,35).
populacao(india,1200).
populacao(china,1300).
populacao(japao,127).
populacao(russia,142).

territorio(brasil,8).
territorio(eua,9).
territorio(canada,9).
territorio(india,3).
territorio(china,9).
territorio(japao,1).
territorio(russia,17).

maiorDensideade(X,Y,R) :-
	populacao(X,Z), territorio(X,A),
        populacao(Y,W), territorio(Y,K),
	D1 is Z/A,
	D2 is W/K,
	D1 >= D2,
	R = X.

maiorDensideade(X,Y,R) :-
	populacao(X,Z), territorio(X,A),
        populacao(Y,W), territorio(Y,K),
	D1 is Z/A,
	D2 is W/K,
	D1 < D2,
	R = Y.

:- initialization(main).
main:-
	read(X),
	read(Y),
	maiorDensideade(X,Y,R),
	write(R),nl,
	halt(0).
