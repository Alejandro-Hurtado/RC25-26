/*
		penultimo(+Lista, -Elem)
		Es cierto cuando Elem es el penúltimo elemento de Lista.
*/

penultimo([Elem,_],Elem).
penultimo([_|Resto],Elem) :- penultimo(Resto,Elem).