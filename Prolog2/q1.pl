concatena([],L,L).      		
concatena([X|L1],L2,[X|L3]) :- concatena(L1,L2,L3).

inverte([],[]).		
inverte([X|Y],Z) :- 
	inverte(Y,Y2), 
	concatena(Y2,[X],Z).    	

:- initialization(main).
	main:- 
	read(X), 
	inverte(X,Y), 
	write(Y), nl, 
	halt(0).
