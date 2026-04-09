arbol1( a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil)))).

/* 
	pertenece_arbol(+Arbol,+Elem) es cierto si Elem es una etiqueta 
	del Arbol.
*/

pertenece_arbol(a(Elem,_,_),Elem).
pertenece_arbol(a(_,Hi,_),Elem) :- pertenece_arbol(Hi,Elem).
pertenece_arbol(a(_,_,Hd),Elem) :- pertenece_arbol(Hd,Elem).