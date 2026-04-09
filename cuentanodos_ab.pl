arbol1( a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil)))).

/* cuenta_nodos(+Arbol_generico, ?Num_nodos)

es cierto cuando Num_nodos unifica con el
numero de nodos del árbol “Arbol_generico” */

cuenta_arbol(nil,0).
cuenta_arbol(a(_,Hi,Hd),R) :- cuenta_arbol(Hi, Ri), cuenta_arbol(Hd, Rd) , R is Ri + Rd + 1.