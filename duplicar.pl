/*
		duplicar_elementos(+Lista, -ListaR)
		Es cierto cuando ListaR contiene cada elemento de Lista duplicado.
*/
duplicar_elementos([],[]).
duplicar_elementos([Cabeza|Resto],[Cabeza,Cabeza|R]) :- duplicar_elementos(Resto,R).