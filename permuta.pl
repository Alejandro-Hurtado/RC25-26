

/*
%--------------------------------------------------
% permuta(Lista, ListaR).
%es cierto cuando ListaR unifica con una lista
%que contiene los elementos de Lista en orden
%distinto. Este predicado genera todas las
%permutaciones posibles al solicitar mas soluciones con ";".
%--------------------------------------------------
*/

permuta([],[]).
permuta(Lista, [Cab|R]):- seleccionar_uno(Lista,Cab,ListaR),permuta(ListaR,R).


seleccionar_uno([Ca|Resto],Ca,Resto).
seleccionar_uno([Ca|Resto], X, [Ca|R]) :- seleccionar_uno(Resto,X,R).