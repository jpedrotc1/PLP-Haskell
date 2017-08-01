passaro(joao).
peixe(pedro).
minhoca(maria).
pessoa(eu).
gato(miau).
amigo(eu, miau).

gosta(X,Y):- 
	passaro(X), 
	minhoca(Y).
gosta(X,Y):- 
	gato(X), 
	peixe(Y).
gosta(X,Y):- 
	gato(X), 
	passaro(Y).
amigo(X,Y):- 
	gosta(X,Y), 
	gosta(Y,X).

naoEhUmaPessoa(X):- 
	passaro(X); 
	peixe(X); 
	minhoca(X); 
	gato(X).

come(X,Y):- 
	gato(X), 
	gosta(X,Y), 
	naoEhpessoa(Y).


