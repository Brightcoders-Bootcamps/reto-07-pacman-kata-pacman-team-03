![BrightCoders Logo](img/logo-bc.png)

# PacMan Kata

![cover](img/cover.jpg)

## Pre-requisitos

Antes de iniciar debes instalar las siguientes herramientas, evaluar tu código e identificar posibles mejoras.

- [ ] [Instalar y utilizar Rubocop](https://github.com/bright-coders/commons/tree/master/topics/rubocop)
- [ ] [Instalar y utilizar Rubycritic](https://github.com/bright-coders/commons/tree/master/topics/rubycritic)
- [ ] [Instalar y utilizar SandiMeter](https://github.com/makaroni4/sandi_meter)

## Requerimientos funcionales

This Kata is obviously inspired by the great game of Pac-Man (Namco 1980), yet the task is not about creating a real-time game. All state changes (moving, eating and so on) will be made in discrete steps (ticks), like in the GameOfLife Kata. We assume that the Pac-Man and ghosts move one field on each tick. The Kata is strictly oriented on improving your OOP skills, it is not about game development. This Kata's task is about good OOP programming and testing, the visualisation is not crucial.

### Problem Description

Pacman finds himself in a grid filled with monsters. Will he be able to eat all the dots on the board before the monsters eat him?

Incomplete list of things the game needs:

- [ ] pacman is on a grid filled with dots
- [ ] pacman has a direction
- [ ] pacman moves on each tick
- [ ] user can rotate pacman
- [ ] pacman eats dots
- [ ] pacman wraps around
- [ ] pacman stops on wall
- [ ] pacman will not rotate into a wall
- [ ] game score (levels completed, number of dots eaten in this level)
- [ ] monsters…
- [ ] levels
- [ ] animate pacman eating (mouth opens and closes)

### Clues

You probably won’t be able to complete all of the list in one night of dojo, however having the list (or starting with part of it and letting the participants brainstorm) makes for good design discussions. As in the game of life, a board representation does not have to be difficult. E.g. pacman starts in the centre of the board and is looking up (notice that pacman eats, so the V points downward because pacman has his mouth open):

```
- - - - -
| . . | .
| . V . .
| . . | .
- - . .
```

Pacman looks continuous, however the game state changes in discrete steps. Creating a tick() method/function or somesuch, or passing a board to a function which returns a ‘next state’ board makes it easy to test the various conditions.

Take from Coding Dojo

## Requerimientos no-funcionales
- Calidad
  - [ ] Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - [ ] Pruebas unitarias
  - [ ] Puntuación en Rubycritic: por lo menos 95 en la carpeta de la App y por lo menos 65 en la carpeta de pruebas
  - [ ] Utilizar [SandiMeter](https://github.com/makaroni4/sandi_meter) para analizar el código y utilizar el resultado para hacer mejoras
- Ejecución
  - [ ] Puede ejecutarse desde la linea de comandos y mostrar la salida en consola
- Código fuente
  - [ ] Orientado a Objetos 
  - [ ] Métodos Pequeños
  - [ ] [Aplicar los principios SOLID](https://rubygarage.org/blog/solid-principles-of-ood)

## Tecnologías
- [ ] Lenguaje de programación Ruby
- [ ] Framework para pruebas [Rspec](https://rspec.info/) ó [Minitest](https://github.com/seattlerb/minitest)
- [ ] Línea de comando

## Entregable
- [ ] Código fuente en Github (1 por equipo)
- [ ] Incluir en el repositorio el [SmallBadge](https://github.com/jorge27/tutorial-rubycritic-small-badge) con la puntuación obtenida por RubyCritic
- [ ] Incluir en el repositorio el reporte HTML que genera [SandiMeter](https://github.com/makaroni4/sandi_meter)
- [ ] El repositorio debe reflejar el trabajo en equipo (en la conversación del repositorio, commits)
- [ ] Debe actualizar [este archivo](setup/README.md) en donde se describa el proceso para hacer funcionar el proyecto y el nombre de los integrantes del equipo
- [ ] Los commits de Git deben ser significativos
  
## Evaluación / Revisión
Se consideran los siguientes objetivos:
- [ ] Cumplimiento de requerimientos funcionales
- [ ] Cumplimiento de requerimientos no funcionales 
- [ ] Publicar por lo menos 1 actualización (commit) por día en el repositorio remoto
- [ ] Orientación a objetos
- [ ] Estructura de archivos
- [ ] Pruebas
- [ ] Código duplicado (no debe haber código duplicado)
- [ ] Separación de intereses (separation of concerns)
- [ ] Convenciones del lenguaje
- [ ] Claridad de la solución
- [ ] Abstracción
- [ ] Uso de características propias del lenguaje Ruby
- [ ] Uso de Git, commits bien definidos y atómicos
- [ ] Puntuación obtenida en RubyCritic
- [ ] Análisis de código obtenido por [SandiMeter](https://github.com/makaroni4/sandi_meter)

## Flujo de trabajo sugerido
1. Este ejercicio se realiza en formato de [Code Kata Grupal](https://github.com/bright-coders/commons/tree/master/topics/code-kata)
2. Dedica tiempo a leer y entender los requerimientos funcionales
3. Selecciona algún feature o requerimiento y escribe la(s) prueba(s) que debe pasar
4. Codifica la solución para ese feature (si lo consideras necesario puedes cambiar el orden es decir primero codificar y después escribir la prueba)
5. En tu primer intento no te preocupes demasiado por lo elegante de tu solución sino por pasen todas las pruebas
6. Una vez que la solución funciona, haz un ejercicio de refactorización asegurandote que las pruebas sigan pasando
7. Toma el siguiente feature o requerimiento y repite el proceso

## Resumen 
- [ ] Tienes un máximo de 4 días para terminar esta kata
- [ ] Deberás publicar por lo menos 1 actualización (commit) diaria en tu repositorio rempto
- [ ] Durante el proceso de desarrollo debes mantener actualizado este repositorio
- [ ] [Los commits deben ser significativos](https://medium.com/better-programming/you-need-meaningful-commit-messages-d869e44e98d4)
- [ ] Se requiere por lo menos la aprobación de por lo menos 2 Brightcoders
- [ ] Incluir pruebas (TDD)
- [ ] Deberás incluir el linter RuboCop en tu proyecto
- [ ] Debes utilizar Rubycritic y obtener por lo menos una puntuación de 95 en la carpeta de tu app y 65 en la de pruebas

**NO** es un examen sino un ejercicio por lo que puedes apoyarte en tus compañeros y mentores para recibir ayuda, así que si tienes dudas, pregunta, pregunta pregunta!

## Setup
En [este elnace](setup/README.md) se describen los pasos necesarios para ejecutar/probar este proyecto, así como los integrantes de este equipo

## Enlaces
### Commits
- [You Need to Write Meaningful Commit Messages](https://medium.com/better-programming/you-need-meaningful-commit-messages-d869e44e98d4) 
- [Writing meaningful git commit messages](https://medium.com/@menuka/writing-meaningful-git-commit-messages-a62756b65c81)
- [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/)
### Tools
- [Rubocop](https://rubocop.org/)
- [Rubycritic](https://github.com/whitesmith/rubycritic) 
- [Rspec](https://rspec.info/)
- [Minitest](https://github.com/seattlerb/minitest)
- [SandiMeter](https://github.com/makaroni4/sandi_meter)
- [RubyCritic Small Badge](https://github.com/MarcGrimme/simplecov-small-badge) 
- [Tutorial SmallBadge](https://github.com/jorge27/tutorial-rubycritic-small-badge)
### Solid Principles
- [SOLID Object-Oriented Design Principles with Ruby Examples](https://rubygarage.org/blog/solid-principles-of-ood)
- [Back to Basics: SOLID](https://thoughtbot.com/blog/back-to-basics-solid)
- [SOLID Principles](https://www.netguru.com/codestories/solid-principles-1-single-responsibility-principle) 

