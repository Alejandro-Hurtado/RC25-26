/*
		sustituir(+Elem1, +Elem2, +Lista, -ListaR)
		Es cierto cuando ListaR es igual a Lista pero reemplazando cada Elem1 por Elem2.
*/

sustituir(Elem1,Elem2,[Elem1|Resto],[Elem2|Resto]).
sustituir(Elem1,Elem2,[Cabeza|Resto],[Cabeza|R]) :- sustituir(Elem1,Elem2,Resto,R).