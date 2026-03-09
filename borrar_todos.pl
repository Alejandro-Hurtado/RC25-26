/*
		borrar_todos(+Elem, +Lista, -ListaR)
		Es cierto cuando ListaR es la lista Lista sin ninguna aparición de Elem.
*/

borrar_todos(_,[],[]).

borrar_todos(Elem,[Elem|Resto],R) :-
    borrar_todos(Elem,Resto,R).

borrar_todos(Elem,[Cabeza|Resto],[Cabeza|R]) :-
    Cabeza \= Elem,
    borrar_todos(Elem,Resto,R).