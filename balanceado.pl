/*arbol1( a(1, a(2, nil, nil), a(3, nil, a(4, nil, nil)))).*/

arbol1(
  a(1,
    a(2, nil, nil),
    a(3, nil, a(4, nil, a(5, nil, nil)))
  )
).

/*
	balanceado(ArbolBnario) es cierto si ArbolBinario unifica con un arbol 
	binario que PARA TODO NODO la diferencia entre la altura del arlbol izquierdo y derecho 
*/


balanceado(nil).
balanceado(a(Raiz,Hi,Hd)) :- 
	altura(Hi,HI), 
	altura(Hd,HD),  
	Diff is abs(HI-HD), 
	Diff =< 1,
	balanceado(Hi),
	balanceado(Hd).



/* para poder clacular la altura del arbol */
/*
altura(nil, 0).
altura(a(_, Hi, Hd), H) :-
    altura(Hi, HI),
    altura(Hd, HD),
    HI >= HD,
    H is HI + 1.

altura(a(_, Hi, Hd), H) :-
    altura(Hi, HI),
    altura(Hd, HD),
    HI < HD,
    H is HD + 1.
*/

altura(nil, 0).
altura(a(_, Hi, Hd), H) :-
	altura(Hi,HI),
	altura(Hd,HD),
	H is max(HI,HD) + 1.