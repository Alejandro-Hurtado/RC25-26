/*
		 ordena_burbuja(+Lista, -ListaR).
		 es cierto cuando ListaR unifica con una lista que
		 contiene los mismos elementos que Lista ordenados
		 de menor a mayor.	
*/

ordena_burbuja(Lista,Lista) :- ordenada(Lista).
ordena_burbuja(Lista,ListaR) :- append(L1,[Elem1,Elem2|Fin],Lista)
								,Elem1>Elem2
								,append(L1,[Elem2,Elem1|Fin],R)
								,ordena_burbuja(R,ListaR).
ordena_burbuja(Lista,ListaR) :- append(L1,[Elem1,Elem2|Fin],Lista)
								,Elem1=<Elem2
								,ordena_burbuja(Lista,ListaR).


/*
		ordenada(Lista)
		es cierto si Lista esta ordenado de mayor a menor
*/

ordenada([]).
ordenada([_]).
ordenada([Cabeza1,Cabeza2|Resto]) :- Cabeza1=<Cabeza2, ordenada([Cabeza2|Resto]).
	