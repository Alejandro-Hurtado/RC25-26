/*
		lista_par(+Lista)
		Es cierto cuando todos los elementos de la lista son pares.
*/

lista_par([]).
lista_par([Cabeza|Resto]) :- Cabeza mod 2=:=0,lista_par(Resto) .
