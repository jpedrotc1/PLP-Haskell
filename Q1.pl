fatoRei(rhodi, 844, 878).
fatoRei(anarawd, 878, 916).
fatoRei(hywel_dda, 916, 950).
fatoRei(lago_ap_Idwal, 950, 979).
fatoRei(hywal_ap_Ieuaf, 979, 985).
fatoRei(cadwallon, 985, 986).
fatoRei(maredudd, 986, 999).

reinado(X,Y) :- 
	fatoRei(X, C, F),Y >= C, Y =< F.

:- initialization(main).
main:-
	read(Y),
	reinado(X,Y),
	write(X),nl,
	halt(0).

