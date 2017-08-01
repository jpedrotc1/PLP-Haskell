aluno(joao, final).
aluno(maria, final).
aluno(joana, aprovado).
aluno(mariana, aprovado).
aluno(cleuza, aprovado).
aluno(jose, reprovado).
aluno(mary, aprovado).

resultadoFinal(X, Y) :- 
	aluno(X, Y).

:- initialization(main).
main:-
	read(X),
	resultadoFinal(X,Y),
	write(Y),nl,
	halt(0).
