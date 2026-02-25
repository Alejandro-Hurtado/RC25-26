/*
	Suma de los elementos de una lista 
	sum_lista(+Lista, -Resultado ) 
	es cierto si Resultado unifica con la suma de todo los elementos de Lista
	
	Listas en Prolog
	[1,2,3] -> Corchetes con elementos separados con comas.
	n0 = [ ]
	[ Cabeza | Resto ] = [ 1,2,3 ]
	Cabeza = 1
	Resto = [ 2,3 ]
	
	Principio de Inducción
	
	1)  suma_lista(  [ ] , 0).
	2)  suma_lista ( [ Cabeza | Resto ], R2) :- suma_lista ( Resto , R ) , R2 is R + Cabeza.

*/

suma_lista([], 0).
suma_lista([Cabeza|Resto], R2) :- suma_lista(Resto,R), R2 is R + Cabeza.

