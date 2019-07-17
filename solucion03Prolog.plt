/*
  ████████╗███████╗███████╗████████╗███████╗
  ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝
     ██║   █████╗  ███████╗   ██║   ███████╗
     ██║   ██╔══╝  ╚════██║   ██║   ╚════██║
     ██║   ███████╗███████║   ██║   ███████║
     ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝                                                          
*/

/*
La directiva :- inlcude lo que hace es  incluye textualmente el contenido del archivo a donde se
encuentre esta directiva.
*/

:- include(solucion03Prolog).

:- begin_tests(lecturalia).
    
        test(felicesLos4, set( Quienes = [clara, juan , nico, alexis])):-
            esFeliz(Quienes).
        test(daiuNoEstafeliz, nondet):-
            not(esFeliz(daiu)).
        test(leenMucho,set(Quienes = [clara, daiu])):-
            leeMucho(Quienes).
        test(juanNoLeeMucho, nondet):-
            not(leeMucho(juan)).
        test(nicoTampocoLeeMucho, nondet):-
            not(leeMucho(nico)).
        test(alexisTampoco, nondet):-
            not(leeMucho(alexis)).

:- end_tests(lecturalia).