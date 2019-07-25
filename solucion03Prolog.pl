/*
  ██╗      ██████╗  ██████╗ ██╗ ██████╗ █████╗ 
  ██║     ██╔═══██╗██╔════╝ ██║██╔════╝██╔══██╗
  ██║     ██║   ██║██║  ███╗██║██║     ███████║
  ██║     ██║   ██║██║   ██║██║██║     ██╔══██║
  ███████╗╚██████╔╝╚██████╔╝██║╚██████╗██║  ██║
  ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝ ╚═════╝╚═╝  ╚═╝                                             
*/


:- use_module(baseDeConocimientos).

esFeliz(Persona):-
    persona(Persona),
    forall(quiere(Persona,Material), tiene(Persona,Material)).

leeMucho(Persona):-
    persona(Persona),
    findall(Libro,(leyo(Persona,Libro), esDenso(Libro) ),LibrosDensos),
    length(LibrosDensos,Cantidad),
    Cantidad >= 3.

esDenso(libro(_, _, Paginas)):- Paginas >= 200.
esDenso(libro(_, paidos, _)).
esDenso(paper(Autores, _)):-
    length(Autores, Cantidad),
    Cantidad > 1.
esDenso(saga(_, Libros)):- Libros > 4.


