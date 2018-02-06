# Fundamentos de programación 2

## Contenidos 
- [Actividad 1: Funciones](#functions) 
- [Actividad 2: Alcance](#scope) 
- [Actividad 3: Arreglos](#arrays) 
- [Actividad 4: Ciclos](#loops)

<a name="functions"/></a>
# Actividad 1: [Funciones](https://www.codecademy.com/courses/learn-javascript-introduction/lessons/introduction-to-javascript/exercises/intro?action=lesson_resume&course_redirect=introduction-to-javascript)

Instrucciones:
- En el **syllabus** del curso, ir a la sección [Functions - Interactive Lesson](https://www.codecademy.com/es/courses/learn-javascript-functions/lessons/functions/exercises/intro-to-functions?action=lesson_resume&course_redirect=introduction-to-javascript).
- Sigue las actividades guiadas por Codeacademy con ayuda de las indicaciones de este tutorial.

### ¿Qué son las funciones?

Las funciones son fragmentos de código que se usan para separar código que queremos que ejecure varias veces en puntos diferentes de nuestro programa. Sirven para *modularizar* nuestro código y crear partes reusables, en lugar de poner el mismo fragmento a lo largo del programa.

### Introducción a funciones (1/10)

Esta sección solamente te pide comprender el código que ves en pantalla. Aquí puedes ver el código comentado con lo que hace cada parte

```javascript
/*

calculatorIsOn = representa el estado de la calculadora (encendida/apagada) 
  apagada = false
  encendida = true

*/

let calculatorIsOn = false;

// declaramos una función que representa el botón de encendido
const pressPowerButton = () => {
  /*
    si la calculadora está encencida, imprimimos un mensaje
    de que estamos apagando la calculadora, y calculatorIsOn cambia a falso (apagada)
  */
  if (calculatorIsOn) {
    console.log('Calculator turning off.');
    calculatorIsOn = false;
  }
  else {
    /*
      si la calculadora está apagada, imprimimos un mensaje
      de que estamos encendiendo la calculadora, y calculatorIsOn cambia a true (encendida)
    */
    console.log('Calculator turning on.');
    calculatorIsOn = true;
  }
};

pressPowerButton();
// Output: Calculator turning on.

pressPowerButton();
// Output: Calculator turning off.
```
