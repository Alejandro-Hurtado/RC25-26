/* 
	Invertir una lista 
	invertir(+Lista, -ListaR)
	es cierto cuando la ListaR unifica con una lista que contiene los mismos 
	elementos que Lista en orden inverso 
*/

invertir([], []).
invertir([Cabeza|Resto], ListaR) :- invertir(Resto, RestoInvertido), append(RestoInvertido, [Cabeza], ListaR).

