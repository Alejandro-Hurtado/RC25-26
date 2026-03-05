/*
	aniadir_final(+Elem, +Lista, -ListaR) 
	que es cierto cuando ListaR unifica con una lista
	que contiene los mismos elementos que la lista Lista 
	mas el elemento Elem añadido al final.
*/

aniadir_final(Elem, [], [Elem]).
aniadir_final(Elem, [Cabeza|Cola], [Cabeza|Resultado]) :- aniadir_final(Elem, Cola, Resultado).