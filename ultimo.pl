/*
			ultimo(+Lista, -Elem)
			Es cierto cuando Elem es el último elemento de Lista.
*/

ultimo([Elem],Elem).
ultimo([Cabeza|Resto],Elem) :- ultimo(Resto,Elem).
