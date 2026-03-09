/*
		contar_apariciones(+Elem, +Lista, -N)
		Es cierto cuando N es el número de veces que Elem aparece en Lista.
*/
contar_apariciones(Elem,[],0).

contar_apariciones(Elem,[Elem|R],N) :- contar_apariciones(Elem,R,N1), N is N1+1.
									
contar_apariciones(Elem,[Cabeza|Resto],N) :- contar_apariciones(Elem,Resto,N).