# Como organizar Proyectos en SWI-Prolog

[![Build Status](https://travis-ci.com/luk-s12/Organizar-Proyecto-SWI-Prolog.svg?token=iyZLQmGvEspeSpaja9vX&branch=master)](https://travis-ci.com/luk-s12/Organizar-Proyecto-SWI-Prolog)

En esta página sabrás como estructurar tu proyecto de Prolog para que sea más entendible y no te quede un choclo de código en un solo archivo. 

## Organización
Consiste en crear 3 archivos . Donde en uno va ir nuestra base de conocimiento, en otro va ir la lógica y por ultimo los tests.En este caso el proyecto esta estructurado con los siguientes nombres

* baseDeConocimiento . pl (La base de conocimientos).
* solucion03Prolog . pl (La Lógica).
* solucion03Prolog . **plt** (Los tets).

> Nota: El archivo de test se lo nombra con la extensión **.plt**

## Que incluir en cada archivo

### Archivo de base de conocimiento 

En este archivos se encuentran todos los hechos y se debe también incluir la directiva.

```prolog

:- module(nombreDelModulo,[predicado/aridad])

```

Lo que hace es declarar que el archivo va hacer un archivo de modulo para poder usarlo en otro archivo después.

Donde el primer parámetro es el nombre del modulo (lo habitual es que sea igual al nombre del archivo).
Y el segundo son los predicados con la aridad que va a tener este modulo.

### Lógica

En este archivo va toda la lógica como reglas, etc .También se deberá incluir la directiva.

```prolog

:- use_module(NombreDelModulo).

```

Esta directiva sirve para cargar el archivo modulo para poder usarlo.

En este caso para poder usar la base de conocimientos.

### Test
En este archivos se encuentra los test que queremos probar y también se debe incluir la directiva 

```prolog

:- include(nombreDelArchivoLogico).

```

Esta directiva lo que hace es incluir textualmente el contenido del archivo a donde se
encuentre esta directiva.

## Como integrar Travis

Debemos crear un archivo llamado **.travis.yml** e incluir el siguiente código

```bash
language: bash

install:
before_script:
- sudo apt-add-repository ppa:swi-prolog/devel -y
- sudo apt-get update -q
- sudo apt-get install swi-prolog-nox

script: swipl -t "load_test_files([]), run_tests." -s solucion03Prolog.pl

```
Donde dice **solucion03Prolog.pl** debe ir el nombre del archivo donde se encuentra la **Lógica**.
