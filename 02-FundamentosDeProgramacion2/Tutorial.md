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

### Funciones: Introducción a funciones (1/10)

Esta sección solamente te pide comprender el código que ves en pantalla. Aquí puedes ver el código comentado con lo que hace cada parte.

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

### Funciones: Funciones (2/10)

#### Parte 1

Deberás crear una función con las siguientes partes:

- Palabra **const** al inicio.
- Nombre de la función
- Asignación de la función con **= () =>**
- El cuerpo de la función (lo que hace) encerrado por dos **{}**. 

Aquí hay un ejemplo:

```javascript
/*
const myNewFunction = () =>
{
  console.log('This is a function');
}
```

#### Parte 2

Notarás que la función no imprime nada en la consola todavía. Esto es porque hay que llamarla desde algún lado del código. Hasta este punto solamente existe.

Para llamarla, es necesario escribir el nombre de la función en algún punto debajo de su declaración. 

```javascript

const myNewFunction = () =>
{
  console.log('This is a function');
}

// llamada a la función
myNewFunction();
```

Salida:
```
This is a function
```

### Funciones: Parámetros (3/10)
