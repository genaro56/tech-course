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

### Alcance: Alcance global (2/7)

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

### Alcance: Alcance global II (3/7)

1. Dentro de la función **myNightSky**, reasignar el valor de **stars** a **'Sirius'**. La función puede reasignar el valor de una **variable global** desde adentro de la función.

```javascript
stars = 'Sirius';
```

2. Si imprimimos en consola el valor de **stars** después de la llamada a la función **myNightSky**, notaremos que se ha modificado el valora **'Sirius'**. Esto es porque lo que le pasa a una **variable global** en cualquier punto del código, afecta a la variable globalmente.

### Alcance: Alcance local (4/7)

1. Nos piden crear una función llamada **visibleLightWaves** con la siguiente notación:

```javascript
const nombreDeLaFuncion = () =>
{
  /*
      Cuerpo de la función
  */
}
```

2. Dentro del cuerpo de la función, creamos una variable **let** llamada **lightWaves** e inicializada como **'Moonlight'**.
3. Dentro del cuerpo de la función, y seguido de la declaración de la variable **lightWaves**, imprimimos ésta con un **console.log()**.
4. Fuera de la función **visibleLightWaves**, hacemos una llamada a ésta.

```javascript
visibleLightWaves();
```
5. Intentaremos imprimir el valor de la **variable local lightWaves** desde **afuera de la función**. 

```javascript
visibleLightWaves();
console.log(lightWaves);
```

**Nota:** Veremos que ocurre un **ERROR** al tratar de imprimir esto fuera de la función. Esto es porque la variable **lightWaves** es **local** y **solamente existe dentro de la función visibleLightWaves**.

### Alcance: Alcance local II (5/7)

1. Quitamos el último **console.log()** que causó el error.
2. Agregar una variable **let** nueva: **region = 'The Arctic'**.
3. Agregar un bloque **if** que verifique si la variable **region** es igual a **'The Arctic'**.
```javascript
if(region === 'The Arctic'){}
```
4. Dentro del bloque **if**, declarar una variable **let** llamada **lightWaves = 'Northern Lights'**.
5. Si imprimimos el valor de **lightWaves** dentro del bloque **if** y justo después de éste, notaremos que imprimen diferentes valores. Esto es porque la re-declaración de la variable **lightWaves** es local para el bloque **if** y no afecta fuera de éste.

### Alcance: Alcance local III (6/7)

Los **pasos 1-3**, nos piden un código similar al siguiente: 

```javascript
// declaración de la función
const starCount = () => {
  // declaración de la variable i
  let i = 5;
  // mostrar la variable i en consola
  console.log(i);
  
  /*
    Aquí va el código del paso 4
  */
}
```

El **paso 4** nos pide declarar un **ciclo FOR**. Un ciclo permite ejecutar una misma sección de código un determinado número de veces.
Como esto no se ha cubierto a profundidad, aquí se explican brevemente las partes de un FOR:
```javascript
for(let i = 0; i < 12; i++)
{
  // mostrar la variable i en consola
  console.log(i);
}
```

Dentro del paréntesis, vemos tres partes:
- **let i = 0**: La variable **i** será el **iterador**, ésta se inicializa en 0 en este ejemplo.
- **i < 12**: El ciclo se ejecutará **(hará otra iteración)** todas las veces que la variable **i** sea **menor a 12**.
- **i++**: Al finalizar cada iteración, **incrementa** el valor de **i** en 1.

Dadas estas condiciones, podemos observar que el ciclo se ejecutará **12 veces (hará 12 iteraciones)**. En ellas, los valores de **i** serán **0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11** respectivamente. 

Estos son los valores que imprime el **console.log(i)** dentro del **for**, independientemente de que haya sido declarada e inicializada en 5 en otros puntos. Esto es gracias al alcance local.

Finalmente, los **pasos 5-6**, nos piden llamar la función **starCount()** desde afuera de la función, y tratar de hacer **console.log(i)**. Al terminar esto, tendremos un código como éste:

```javascript
// declaración de la función
const starCount = () => {
  // declaración de la variable i
  let i = 5;
  // mostrar la variable i en consola
  console.log(i);
  
  // ciclo for
  for(let i = 0; i < 12; i++)
  {
    console.log(i);
  }
  
}

starCount();

// mostrar la variable i en consola
console.log(i);
```

**Nota:** Esperaríamos que la última línea de código nos genere un **ERROR**, ya que la variable **i** no existe fuera del contexto de la función **starCount()**.


<a name="arrays"/></a>
# Actividad 1: [Arreglos](https://www.codecademy.com/es/courses/learn-javascript-arrays/lessons/arrays/exercises/arrays?action=lesson_resume&course_redirect=introduction-to-javascript)

Instrucciones:
- En el **syllabus** del curso, ir a la sección [Arrays - Interactive Lesson](https://www.codecademy.com/es/courses/learn-javascript-arrays/lessons/arrays/exercises/arrays?action=lesson_resume&course_redirect=introduction-to-javascript).
- Sigue las actividades guiadas por Codeacademy con ayuda de las indicaciones de este tutorial.

### ¿Qué son los arreglos?

Así como nosotros usamos **listas**, los lenguajes de programación tienen algo a lo que se les llama **arreglos**. Estos almacenan un conjunto de datos. 

### Arreglos: Introducción a arreglos (1/9)

El curso de Codeacademy nos presenta la sintaxis básica de una lista. Si nosotros tuviéramos, una lista de compras, se vería algo así:

```
Lista de compras

1. Leche
2. Cereal
3. Jugo
```

La misma lista en JavaScript, se vería de la siguiente manera:


```javascript
let listaDeCompras = ['Leche', 'Cereal', 'Jugo'];
```

### Arreglos: Creación de arreglos (2/9)

1. Nos piden crear un arreglo llamado **newYearsResolutions** que contenga tres strings. Puedes basarte en el ejemplo anterior.
2. Nos piden imprimir el arreglo en consola usando **console.log()**.

### Arreglos: Accediendo a elementos del arreglo (3/9)

De nuestro ejemplo anterior, vemos que listaDeCompras tiene 3 elementos. 

```javascript
let listaDeCompras = ['Leche', 'Cereal', 'Jugo'];
```

Es posible acceder cada uno de estos individualmente con lo que llamamos **índice**. Cada elemento del arreglo tendrá un índice asignado en el mismo, **empezando desde el 0**. La notación sería la siguiente:

```javascript
let listaDeCompras = ['Leche', 'Cereal', 'Jugo'];

let primerElemento = listaDeCompras[0];
let segundoElemento = listaDeCompras[1];
let tercerElemento = listaDeCompras[2];
```

**Es importante recalcar que la numeración de los elementos comienza desde el índice 0.** Si, por ejemplo, tratáramos de acceder al elemento:

```javascript
let listaDeCompras = ['Leche', 'Cereal', 'Jugo'];

let elementoNoExistente = listaDeCompras[3];
```

Esto nos mostraría un **ERROR** porque **no existe el índice 3 en el arreglo listaDeCompras**. Sólo existen los elementos numerados **0, 1 y 2**.

1. Nos piden recuperar el **primer elemento** del arreglo **newYearsResolutions** y asignárselo a una variable **listItem**. También nos piden hacer **console.log()** a **listItem**.
2. Nos piden hacer **console.log()** del **tercer elemento** del arreglo **newYearsResolutions** sin asignárselo a ninguna variable.
3. Nos piden tratan de correr la siguiente línea de código. Notaremos que el resultado dice **undefined (indefinido)** ya que no existe el elemento con índice 3 en el arreglo **newYearsResolutions**.

```javascript
console.log(newYearsResolutions[3]);
```

### Arreglos: Modificando elementos del arreglo (4/9)

1. Nos piden actualizar el **segundo elemento** del arreglo **newYearsResolutions** con el string **'Learn a new language'**.

Podemos actualizar elementos individuales del arreglo como lo haríamos con una variable.
```javascript
// esto modifica el TERCER elemento del arreglo
newYearsResolutions[2] = 'a new resolution'.
```

### Arreglos: Longitud del arreglo (5/9)

¿Recuerdas la propiedad **length** de los strings que recupera su longitud? Los arreglos también tienen una propiedad **length** que nos da el número de elementos que tiene el arreglo, y se usa de la misma manera.

```javascript
listaDeCompras.length
```

1. En esta actividad, nos piden hacer **console.log()** de la longitud de arreglo **newYearsResolutions**.


### Arreglos: Métodos PUSH y POP (6/9)

Así como podemos acceder a propiedades de un arreglo como **length**, podemos usar métodos que nos ayuden a manipular esta estructura. Entre los más comunes, se encuentran los métodos **push** y **pop**.

#### .push(parametro)

El método push nos permite insertar un elemento al final del arreglo. **Es importante pasar como parámetro el elemento que quiere ingresarse a la lista.** Se usa de la siguiente manera:

```javascript
listaDeCompras.push('Queso');
```

Si hacemos esto, el arreglo **listaDeCompras**, tendría ahora 4 elementos: **['Leche', 'Cereal', 'Jugo', 'Queso']**.

#### .pop()

El método pop nos permite quitar el último elemento al final del arreglo. Se usa de la siguiente manera:

```javascript
listaDeCompras.pop();
```

Si incialmente **listaDeCompras** tiene 4 elementos **['Leche', 'Cereal', 'Jugo', 'Queso']** (por el **push** que hicimos anteriormente), y hacemos un **pop**, el arreglo **listaDeCompras**, tendría ahora 3 elementos nuevamente: **['Leche', 'Cereal', 'Jugo']**.

1. Nos piden usar **push()** para agregar 2 elementos al arreglo **newYearsResolutions**.
2. Hacemos **console.log()** de todo el arreglo.
3. Usamos **pop()** para quitar el último elemento del arreglo **newYearsResolutions**.
4. Hacemos **console.log()** de todo el arreglo nuevamente.

### Arreglos: Más métodos de arreglos (7/9)

#### .shift()
Borra el primer elemento de la lista.

**Parámetros:** N/A


#### .unshift(elemento)
Agrega a la lista un elemento al principio.

**Parámetros:** 
- elemento: es el elemento a agregar al principio de la lista

#### .slice(indiceInicial, indiceFinal)
Obtiene una sub-lista dados dos índices.

**Parámetros:**
- indiceInicial: el índice a partir del cual se obtienen los elementos (inclusivo).
- indiceFinal: el índice hasta el cual se obtienen los elementos (no-inclusivo).

1. Usar **.shift()** para quitar el primer elemento del arreglo **groceryList**. Hacer **console.log()** al arreglo.
2. Usar **.shift('popcorn')** para agregar el elemento **popcorn** al inicio del arreglo **groceryList**. Hacer **console.log()** al arreglo.
3. Usar **.slice(indiceInicial, indiceFinal)** para obtener del arreglo los siguientes elementos: **'bananas', 'coffee beans', 'brown rice'**. Meter todo esto en un **console.log()**.
4. Usar **console.log()** para imprimir los elementos de la lista una vez más.


### Arreglos: Arreglos con let y const (8/9)

1. Agregar un condimento al final del arreglo **condiments** con **push()**. Usar **console.log()** para imprimir los elementos de **condiments**.
2. Reasignar el arreglo **condiments** para que sea un arreglo con un solo elemento. Usar **console.log()** para imprimir los elementos de **condiments**.
3. Usar **pop()** para quitar el último elemento del arreglo **utensils**. Usar **console.log()** para imprimir los elementos de **utensils**.
4. Reasignar el arreglo **utensils** para que sea un arreglo con un solo elemento. **Esto generará un ERROR porque utensils es const**.


<a name="loops"/></a>
# Actividad 4: [Ciclos](https://www.codecademy.com/es/courses/learn-javascript-loops/lessons/loops/exercises/loops?action=lesson_resume&course_redirect=introduction-to-javascript)

Instrucciones:
- En el **syllabus** del curso, ir a la sección [Loops - Interactive Lesson](https://www.codecademy.com/es/courses/learn-javascript-loops/lessons/loops/exercises/loops?action=lesson_resume&course_redirect=introduction-to-javascript).
- Sigue las actividades guiadas por Codeacademy con ayuda de las indicaciones de este tutorial.

### ¿Qué son los ciclos?

Son la manera de representar código que se ejecuta varias veces. Podemos correr el mismo segmento de código una determinada cantidad *X* de veces en lugar de copiarlo *X* veces.

### Ciclos: Introducción a ciclos (1/8)

Un ciclo permite ejecutar una misma sección de código un determinado número de veces.
Como esto no se ha cubierto a profundidad, aquí se explican brevemente las partes de un FOR:

```javascript
for(let i = 0; i < 12; i++)
{
  // mostrar la variable i en consola
  console.log(i);
}
```

Dentro del paréntesis, vemos tres partes:
- **let i = 0**: La variable **i** será el **iterador**, ésta se inicializa en 0 en este ejemplo.
- **i < 12**: Es la **condición de parada**. El ciclo se ejecutará **(hará otra iteración)** todas las veces que la variable **i** sea **menor a 12**.
- **i++**: Al finalizar cada iteración, **incrementa** el valor de **i** en 1.

Dadas estas condiciones, podemos observar que el ciclo se ejecutará **12 veces (hará 12 iteraciones)**. En ellas, los valores de **i** serán **0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11** respectivamente. 

Salida

```
0
1
2
3
4
5
6
7
8
9
10
11
```

Estos son los valores que imprime el **console.log(i)** dentro del **for**, independientemente de que haya sido declarada e inicializada en 5 en otros puntos. Esto es gracias al alcance local.


### Ciclos: Ciclando manualmente (2/8)

1. Crear un arreglo **vacationSpots** con tres elementos. Puedes usar el siguiente ejemplo:

```javascript
let vacationSpots = ['Paris', 'Amsterdam', 'Berlin'];
```

2. Imprimir en consola los tres elementos del arreglo usando **console.log()** de cada uno.


### Ciclos: Ciclos For (3/8)
1. Es necesario convertir el código anterior a un ciclo for para evitar poner tres **console.log()** y sólo poner uno.

   Tips:
   - Es necesario usar **vacationSpotIndex** como el nombre del **iterador**
   - Se puede usar **vacationSpots.length** en la condición de parada para siempre correr el código correctamente independientemente de    si conocemos la cantidas de elementos en el arreglo.
   - El mismo **iterador** se puede usar como variable para acceder a **cada índice de vacationSpots**.

2. Concatenar el texto **'I would love to visit '** a la impresión de cada elemento del arreglo.

```javascript
console.log('I would love to visit ' + vacationSpots[vacationSpotIndex]);
```

### Ciclos: Ciclos For en reversa (4/8)

1. Queremos imprimir los lugares del arreglo **vacationSpots** en orden inverso. Para esto podemos hacer lo siguiente:

   Tips:
   - Inicializar **vacationSpotIndex** como el nombre del **vacationSpots.length**.
   - La **condición de parada** sería **vacationSpotIndex >= 0**. Recordemos que 0 es un índice válido en el arreglo.
   - En lugar de **vacationSpotIndex++**, tendríamos **vacationSpotIndex--**. Para restarle 1 una vez.
   
   Dado esto, y suponiendo que el arreglo tenga 3 elementos, tenemos **4 iteraciones**, donde el **iterador** tendría los valores: **3, 2, 1, 0** en ese orden.
   
2. Lo anterior no funciona completamente. Vemos que se usa el iterador **vacationSpotIndex** para acceder al arreglo **vacationSpots**. Pero éste **no tiene ningún elemento en el índice 3**. ¿Cómo podemos solucionar esto?

### Ciclos: Ciclos anidados (5/8)

1. Crear un arreglo **myPlaces** con 3 nombres de lugares.
2. Crear un arreglo **friendPlaces** con 3 nombres de lugares. **Uno de ellos debe ser un lugar que hayas puesto en myPlaces**.
3. Crea un ciclo **for** que itere por todo el arreglo **myPlaces** como en las actividades previas. Cada vez que entre, hacer un **console.log()**, del elemento del arreglo al que corresponda el **iterador**. El iterador debe llamarse **myPlacesIndex**.
4. Crea un ciclo **for** que esté **ADENTRO del cuerpo del ciclo for que creaste en el paso anterior**. Debe iterar por todo el arreglo **friendPlaces** como en las actividades previas. Cada vez que entre, hacer un **console.log()**, del elemento del arreglo al que corresponda el **iterador**. El iterador debe llamarse **friendPlacesIndex**.
5. Quitar ambos **console.log()** del código (puedes sólo ponerlos como comentarios). Agregar un condicional **if** dentro del **for más adentro**, donde se revise si el elemento de cada iteración para los arreglos **myPlaces** y **friendPlaces** son los mismos. Si la condición del **if** se cumple, imprimir en consola el elemento que tienen en común.
