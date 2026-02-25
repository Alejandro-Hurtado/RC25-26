/*
	num_ele (+Lista, -Resultado)
	es cierto si Resultado si unifica con el numeor de elementos que contiene Lista.
	
	Utilizando Principio de Inducción Matemática
	1) Lista vacia
	2) Los elementos N-1
*/

num_ele([ ], 0).
num_ele([Cabeza|Resto],R2) :- num_ele(Resto,R), R2 is R + 1.

