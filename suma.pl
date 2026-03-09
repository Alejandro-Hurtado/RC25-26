/*
		suma_lista(+Lista, -Suma)
		Es cierto cuando Suma es la suma de todos los números de la lista.
*/

suma_lista([],0).
suma_lista([Cabeza|Resto],Suma) :- suma_lista(Resto,S), Suma is S+Cabeza.