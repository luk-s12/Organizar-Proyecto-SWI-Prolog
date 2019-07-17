/*
   ██████╗ ██████╗ ███╗   ██╗ ██████╗  ██████╗██╗███╗   ███╗██╗███████╗███╗   ██╗████████╗ ██████╗ 
  ██╔════╝██╔═══██╗████╗  ██║██╔═══██╗██╔════╝██║████╗ ████║██║██╔════╝████╗  ██║╚══██╔══╝██╔═══██╗
  ██║     ██║   ██║██╔██╗ ██║██║   ██║██║     ██║██╔████╔██║██║█████╗  ██╔██╗ ██║   ██║   ██║   ██║
  ██║     ██║   ██║██║╚██╗██║██║   ██║██║     ██║██║╚██╔╝██║██║██╔══╝  ██║╚██╗██║   ██║   ██║   ██║
  ╚██████╗╚██████╔╝██║ ╚████║╚██████╔╝╚██████╗██║██║ ╚═╝ ██║██║███████╗██║ ╚████║   ██║   ╚██████╔╝
   ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝                                                                                                                                                                                                                
*/

:- encoding(utf8).

/*
La directiva :- module  declara que el archivo va hacer un archivo de modulo para poder usarlo en otro archivo despues.
Donde el 1 parametro es el nombre del modulo (lo habitual es que sea igual al nombre del archivo).
Y los predicados con la aridad que va a tener este modulo
*/

:- module(baseDeConocimiento, [leyo/2, persona/1, quiere/2, tiene/2]). 

leyo(nico,saga(dune,14)).
leyo(daiu,paper([hamilton,zeldin],"The relationship between design and verification")).
leyo(juan, saga(elSeñorDeLosAnillos,3)).
leyo(daiu,libro(elAleph,paidos,146)).
leyo(clara, paper([batygin, brown], "Evidence for a Distant Giant Planet in the Solar System")).
leyo(nico,libro(rebelionEnLaGranja,deBolsillo,144)).
leyo(nico,paper([brooks],"No Silver Bullet: Essence and Accidents of Software Engineering")).
leyo(clara,libro(rayuela,alfaguara,600)).
leyo(clara,saga(harryPotter,7)).
leyo(juan,libro(cosmos,planeta,362)).
leyo(daiu,saga(fundacion,7)).

persona(nico).
persona(daiu).
persona(juan).
persona(alexis).
persona(clara).

quiere(clara,saga(cancionDeHieloYFuego,5)).
quiere(clara,libro(elAleph,paidos,146)).
quiere(daiu,libro(readyPlayerOne,edicionesB,480)).
quiere(juan,saga(dune,14)).
quiere(nico,libro(elAleph,paidos,146)).
quiere(alexis,libro(designPatterns,addisonWesleyProfessional,395)).
quiere(daiu,paper([brooks],"No Silver Bullet: Essence and Accidents of Software Engineering")).

tiene(clara,saga(cancionDeHieloYFuego,5)).
tiene(clara,libro(elAleph,paidos,146)).
tiene(juan,saga(dune,14)).
tiene(nico,libro(elAleph,paidos,146)).
tiene(alexis,libro(designPatterns,addisonWesleyProfessional,395)).
tiene(daiu,saga(fundacion,7)).
