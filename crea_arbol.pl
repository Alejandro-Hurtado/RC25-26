/* 
	crea_arbol(+ListaEtiquetas,-Arbol) es cierto cuando ArbolBinairio unifica 
	con un arbol binario que contiene solo las etiquetas de ListaEtiquetas
*/

crea_arbol([], nil).

crea_arbol(Lista, a(Raiz, Hi, Hd)) :-
    								Lista \= [],
    								msort(Lista, ListaOrdenada),          
    								length(ListaOrdenada, N),
    								NMed is N div 2,
    								nth0(NMed, ListaOrdenada, Raiz),     
    								length(LeftList, NMed),
    								append(LeftList, [_|RightList], ListaOrdenada),  
    								crea_arbol(LeftList, Hi),
    								crea_arbol(RightList, Hd).  

