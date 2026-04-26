arbol1(a(a, [a(b, [a(e, [])]), a(c, []), a(d, [])])).
/*
	altura_ag(+ArbolGenerico,-Altura)
	es cierto cuando unifica con la altura de ArbolGenerico.

*/

altura_ag(a(_,ListaHijos),A) :- altura(ListaHijos,N1), A is N1 + 1.

altura([],0).
altura([Cab|Res],N) :-  altura_ag(Cab,Alt),
						altura(Res,Alt1),
						N is max(Alt,Alt1).
						