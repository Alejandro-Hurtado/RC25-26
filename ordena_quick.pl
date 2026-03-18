/* 
		divide(+Elem, +Lista, -Menores, -Mayores)
		es cierto cuando Menores unifica con una lista que
		contiene los elemenentos de Lista que son menores
		o iguales que Elem y Mayores unifica con una lista
		que contiene los elementos de Lista que son
		mayores que Elem.
*/

divide(Elem, [], [], []).
divide(Elem, [Cab|Resto], Menores, [Cab|Mayores]) :-  	Elem =< Cab, 
														divide(Elem,Resto,Menores,Mayores).

divide(Elem, [Cab|Resto], [Cab|Menores], Mayores) :-	Elem > Cab, 
														divide(Elem,Resto,Menores,Mayores).
												
												
/*
		ordena_quick(+Lista, -ListaR).
		es cierto cuando ListaR unifica con una lista que
		contiene los mismos elementos que Lista ordenados
		de menor a mayor.
*/

ordena_quick([], []).
ordena_quick([Cab|Resto], ListaR) :- 	divide(Cab,Resto,Menores,Mayores), 
										ordena_quick(Menores,MenoresOrd),
										ordena_quick(Mayores,MayoresOrd),
										append(MenoresOrd,[Cab|MayoresOrd],ListaR).
										