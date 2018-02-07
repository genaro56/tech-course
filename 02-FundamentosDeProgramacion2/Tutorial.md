# Fundamentos de programación 2

## Contenidos 
- [Actividad 1: Funciones](#functions) 
- [Actividad 2: Alcance](#scope) 
- [Actividad 3: Arreglos](#arrays) 
- [Actividad 4: Ciclos](#loops)

<a name="functions"/></a>
# Actividad 1: [Funciones](https://www.codecademy.com/courses/learn-javascript-functions/lessons/functions/exercises/intro-to-functions?action=lesson_resume&course_redirect=introduction-to-javascript)

Instrucciones:
- En el **syllabus** del curso, ir a la sección [Functions - Interactive Lesson](https://www.codecademy.com/courses/learn-javascript-functions/lessons/functions/exercises/intro-to-functions?action=lesson_resume&course_redirect=introduction-to-javascript).
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

Las funciones pueden recibir **parámetros**. Estos son valores que generalmente se usan para definir el curso de acción que tomará la función. 

Ejemplo: Podemos hacer que una función siempre imprima el nombre de un color dado, podemos definir el parámetro **color** y establecer que imprima el color que se le pase como parámetro.

```javascript
const myFavoriteColor = (color) =>
{
  console.log('My favorite color is: ' + color);
}

// 1ra llamada a la función
myFavoriteColor('blue');
// 2da llamada
myFavoriteColor('red');
```

Salida:
```
My favorite color is: blue
My favorite color is: red
```

### Funciones: Parámetros II (4/10)

Hasta este punto, en el ejercicio de **Codeacademy** deberíamos tener código similar al siguiente:

```javascript
const takeOrder = (topping) =>
{
  console.log('Order: pizza topped with ' + topping);
}

takeOrder('mushrooms');
```

A éste le podemos agregar más parámetros. El código se vería de la siguiente forma:

```javascript
const nombreDeLaFuncion = (parametro1, parametro2) =>
{
  // Cuerpo de lo que hace la función 
}

nombreDeLaFuncion('éste es un parámetro', 'este es otro parámetro');
```

### Funciones: Retorno (valores de retorno) (5/10)

Una función puede tener **valores de retorno**. Esto significa que una función puede regresar al punto a donde fue llamada y otorgar un valor, por ejemplo, a una variable.

#### Parte 1

El tutorial nos pide declarar una variable **orderCount** que nos ayude a llevar la cuenta de cuántas órdenes de pizza se han realizado. Es importante que esta sea **modificable** (¿sería *const* o *let*?) e inicializada en 0 (porque inicialmente no se ha realizado ninguna orden.)

#### Parte 2

Ahora debemos hacer que cada vez que se llame la función **takeOrder**, se le sume 1 a la variable order count. Aquí te recordamos cómo sumar y asignar en JavaScript para una misma variable:

```javascript
// inicializamos myVar con un valor de 5
let myVar = 5;

// le sumamos 2 a myVar. Ahora vale 7.
myVar = myVar + 2;
```
**Nota:** hay un pequeño error en Codeacademy que marca como error el operador **+=** para este ejercicio. Será necesario hacerlo como el ejemplo anterior.

#### Partes 3 y 4

Aquí nos piden crear una segunda función **getSubTotal** con un parámetro llamado **itemCount**. Se especifíca que dentro del cuerpo de la función, tendremos un estatuto **return** que multiplique **itemCount * 7.5**.

```javascript
return itemCount * 7.5
```

#### Parte 5

Nos piden agregar una impresión a consola (**console.log()**), donde entre los **()** incluyamos una llamada a la función **getSubTotal** pasando el contador **orderCount** que creamos en la parte 1 como parámetro. 

### Funciones: Retorno (valores de retorno) II (6/10)

En esta parte se nos pide crear más funciones con valores de retorno en nuestro código como práctica.

### Funciones: Declaración de funciones (7/10)

Aquí nos muestran una forma diferente de crear funciones. Ésta forma de declarar funciones es la más comúnmente usada, por lo que es ampliamente recomendado conocerla. 

**Ejemplo de sintaxis**

```javascript
function nombreDeLaFuncion(parametro1, parametro2)
{
  /*
    cuerpo de la función aquí
  */
}

nombreDeLaFuncion(1,5);
```

En la actividad nos piden crear una función **isGreaterThan** que reciba **2 parámetros** y compare sus valores para **retornar** si el valor del primero es más grante que el segundo.

### Funciones: Expresiones (8/10)

En esta actividad nos piden cambiar el código de función de la actividad anterior a la notación que se muestra en el siguiente ejemplo.

```javascript
const nombreDeLaFuncion = (parametro1, parametro2) =>
{
  /*
    cuerpo de la función aquí
  */
}

nombreDeLaFuncion(1,5);
```


### Funciones: Funciones con flechas (9/10)

La siguiente actividad nos explica cómo cambiar de una notación de **expresiones** a una notación de **funciones con flechas**. Esto es efectivo **únicamente** cuando la función tiene una instrucción de **una sola línea**.

**Notación de expresiones**
```javascript
const nombreDeLaFuncion = (parametro) => {
  return parametro * parametro;
};
```

**Notación de flecha**
```javascript
const nombreDeLaFuncion = parametro => parametro * parametro;
```

<a name="scope"/></a>
# Actividad 2: [Alcance](https://www.codecademy.com/es/courses/learn-javascript-scope/lessons/scope/exercises/scope?action=lesson_resume&course_redirect=introduction-to-javascript)

Instrucciones:
- En el **syllabus** del curso, ir a la sección [Scope - Interactive Lesson](https://www.codecademy.com/es/courses/learn-javascript-scope/lessons/scope/exercises/scope?action=lesson_resume&course_redirect=introduction-to-javascript).
- Sigue las actividades guiadas por Codeacademy con ayuda de las indicaciones de este tutorial.

### ¿Qué es alcance?

Este término se refiere al **alcance de las variables** dentro del código. Si una función está declarada dentro del cuerpo de una función, ésta no puede ser llamada en otra función como si fuera parte de ésta también. Aquí veremos los diferentes tipos de alcance.

### Alcance: Alcance global (1/7)

1. Crear dos variables **const** llamadas **satellite** (inicializada como **'The Moon'**) y **galaxy** (inicializada como **'The Milky Way'**).
2. Crear una variable **let** llamada **stars** (inicializada como **'North Star'**).
3. Crear una función que utilice estas tres variables de la siguiente manera:

```javascript
const myNightSky = () => 
{
  return 'Night Sky: ' + satellite + ', ' + stars + ', ' + galaxy;
}
```

4. Llamar la función desde un **console.log()**. Notarás que la función puede acceder a las variables sin necesidad de tenerlas como parámetro, o declaradas dentro de sí porque son **variables globales**. 


