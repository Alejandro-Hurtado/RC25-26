/*
		%------------------------------------------------------
		% mas_veces(+Lista, -Elem, -Num)
		%es cierto cuando Elem unifica con el elemento
		%que se repite más veces en la lista Lista
		%y Num unifica con el número de veces que se
		%repite dicho elemento.
		%------------------------------------------------------

*/


mas_veces(Lista,Elem,Num) :- comprime(Lista,R),coger_grande(R,Elem,Num).



/*
coger_grande(Lista,Elem,N) 
*/


coger_grande(Lista, ElemMax, Max) :-
    								Lista = [(E,K)|_],          
    								coger_grande(Lista, E, K, ElemMax, Max).
    								
coger_grande([],ElemMax,NMax,ElemMax,NMax).
coger_grande([(Elemento,K)|Resto],ElemMax,NMax,Elem,N) :- 	K>NMax , 
															coger_grande(Resto,Elemento,K,Elem,N).
coger_grande([(_,K)|Resto],ElemMax,NMax,Elem,N) :- 	K=<NMax , 
															coger_grande(Resto,ElemMax,NMax,Elem,N).




/*
		%------------------------------------------------------
		% comprime(+Lista,-ListaR)
		%es cierto si ListaR unifica con una lista
		%con el siguiente formato:
		%comprime([a,a,b,b,b,c,d,d,a],R)
		%R=[(a,2), (b,3), (c,1), (d,2)]
		%------------------------------------------------------

*/


comprime([],[]).
comprime([Cab1|Resto], ListaR ) :- 		cuenta(Cab1,N,Resto,ListaNueva), 
										unir(N,Cab1,R),
										comprime(ListaNueva,Lista),      
										append(R,Lista,ListaR).


/* cuenta(+Elem,-N,+Lista,-Resto) */
cuenta(Elem,1,[],[]).
cuenta(Elem, 1, [X|Resto],[X|Resto]) :- Elem \= X.
cuenta(Elem,N,[Cab|Resto],Lista) :- Cab = Elem, cuenta(Elem,N2,Resto,Lista),N is N2+1.

unir(N, Elem, [(Elem, N)]).