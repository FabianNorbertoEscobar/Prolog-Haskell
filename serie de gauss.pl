%serie de gauss
%para un valor n, entrega la suma de n junto a todos sus antecesores
sumaSerieGauss(0,0):-!.
sumaSerieGauss(N,R):-
    A is N-1,
    sumaSerieGauss(A,Ra),
    R is N+Ra.

