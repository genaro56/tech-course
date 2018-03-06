# Desarrollo de aplicaciones web: Front-end

## Contenidos 
- [Preparación](#prep)
- [HTML](#html) 
- [CSS](#css) 
- [Javascript](#js) 
- [jQuery](#jquery)

<a name="prep"/></a>
# Preparación

### Objetivo
Crear la capa de front-end de una aplicación web utilizando elementos de HTML, estilos de CSS y responsividad a acciones del usuario con JavaScript y jQuery.

### Instrucciones
1. Descarga un editor de texto. Puede ser [Sublime Text](https://www.sublimetext.com/).
2. Crea en tus documentos un fólder con tu nombre o alguna frase corta única (ej."HelloWorld").
3. Dentro de tu fólder `HelloWorld/`, crea tres fólders más: 
  - `css/` 
  - `js/`
  - `img/`
 4. En **Sublime Text**, ve a `File > Open Folder` y abre el directorio `HelloWorld\`.
  
![Directories](https://github.com/katiearriagam/tech-course/blob/master/images/directories.PNG)

<a name="html"/></a>
# HTML

### ¿Qué es HTML?
- Significa Hyper Text Markup Language
- Define la estructura de una página web usando etiquetas.
- Hay diferentes etiquetas y cada una tiene un uso diferente.
- Funciona con un sistema de jerarquías.

## Primer archivo HTML
- Crea un archivo llamado `index.html` y ponlo dentro de tu fólder `HelloWorld/`.
- Abre ese documento, y copia el siguiente código. Este código se usa como la estructura básica de una página en HTML. 
```html
<!DOCTYPE html>
<html>
  <head>
    <title>Mi primera página</title>
    <meta charset="UTF-8">
  </head>

  <body>
    <h1>Hola mundo</h1>
    <p>Esta es mi primera página. Este de aquí es mi primer párrafo.</p>
  </body>
</html> 
```

Si abres tu `index.html` en tu browser (Google Chrome, Firefox, Safari), verás algo similar a la imagen de abajo.
![My first page](https://github.com/katiearriagam/tech-course/blob/master/images/helloWorldWeb.PNG)


## Etiquetas de HTML
Las etiquetas de HTML nos permiten agregar elementos como títulos, párrafos, secciones, imágenes y demás. Las siguientes etiquetas se agregan todas dentro de la sección de ``<body> </body>``.

### Encabezados
Son etiquetas hechas para agregar títulos numeradas del 1-6, donde originalmente lo que cambia es el tamaño del título. Por ejemplo, si cambiamos el **body** al siguiente código:

```html
<body>
  <h1>Hola mundo</h1>
  <h2>Hola mundo</h2>
  <h3>Hola mundo</h3>
  <h4>Hola mundo</h4>
  <h5>Hola mundo</h5>
  <h6>Hola mundo</h6>
</body> 
```

Esto nos produce un resultado como el siguiente. Notemos que los títulos se hacen cada vez más pequeños.
![header](https://github.com/katiearriagam/tech-course/blob/master/images/headers.PNG)


### Párrafos
Sirve para poner párrafos en la página. Salta una línea al final. Si en el **body** agregamos dos párrafos de la siguiente manera:

```html
<body>
    <h1>Párrafos</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
</body>
```
Esto nos produce un resultado como el siguiente. Notemos que hay una línea en blanco entre los dos párrafos.
![paragraph](https://github.com/katiearriagam/tech-course/blob/master/images/paragraphs.PNG)

### Listas
Sirven para enlistar elementos. Tenemos listas ordenadas y no-ordenadas. Podemos crear ambas de la siguiente manera:

```html
<body>
    <h1>Lista ordenada</h1>
    <label>Mis 5 libros favoritos</label>
    <ol>
    	<li>Orgullo y prejuicio</li>
    	<li>El guardián entre el centeno</li>
    	<li>1984</li>
    	<li>El extranjero</li>
    	<li>Inventario</li>
    </ol>

    <h1>Lista no-ordenada</h1>
    <label>Materiales que cubre el curso</label>
    <ul>
    	<li>Fundamentos de programación</li>
    	<li>Desarrollo web</li>
    	<li>Desarrollo de videojuegos</li>
    	<li>Desarrollo de aplicaciones móviles</li>
    	<li>Electrónica básica</li>
    </ul>
  </body>
```

El código anterior nos resulta en una lista ordenada de libros, y una lista no ordenada de materiales que cubre el curso. **Notemos que la diferencia está esencialmente en las etiquetas que se usan. Las listas ordenadas usan las etiquetas ** `<ol></ol>` ** mientras que las listas no ordenadas usan las etiquetas ** `<ul></ul>`. El resultado que obtenemos es el de la siguiente imagen:

![lists](https://github.com/katiearriagam/tech-course/blob/master/images/lists.PNG)

Cabe mencionar que las listas pueden una gran diversidad de objetos en sus elementos. Por ejemplo, podemos hacer una lista de botones, que posteriormente con estilos agregados puede convertirse en el menú de la página.


```html
<body>
    <ul>
    	<li><button>Botón 1</button></li>
    	<li><button>Botón 2</button></li>
    	<li><button>Botón 3</button></li>
    	<li><button>Botón 4</button></li>
    	<li><button>Botón 5</button></li>
    	<li><button>Botón 6</button></li>
    </ul>
</body>
```

![button lists](https://github.com/katiearriagam/tech-course/blob/master/images/buttonList.PNG)

### Imágenes
Se pueden agregar imágenes que estén en nuestro fólder `img\` e imágenes que encontremos en sitios externos (copiando el URL de la imagen). Generalmente preferimos la primera opción porque así tenemos completo control sobre la existencia de la imagen (no corremos el riesgo de que sea borrada en cualquier momento). 

- En tu fólder `img\` guarda cualquier imagen. La imagen de ejemplo se llama `wit.png`.
- Agrega el siguiente código.

```html
<body>
  <img src="img\wit.png" alt="WIT Logo"> 
</body>
```

Notarás en tu página algo como la imagen a continuación:

![image](https://github.com/katiearriagam/tech-course/blob/master/images/image.PNG)


### Ligas
En una página es común que haya ligas (links) de un sitio a otro o de una página a otra dentro del mismo sitio. Adicionalmente, las ligas pueden ser otra cosa además de texto (imágenes, botones, etcétera). 

```html
<body>
   	<a href="http://womenintech.mx/contenido.html">Visita la página del contenido de WIT Code!</a>
   
    <!-- br es un salto de línea -->
   	<br>
		
    <a href="http://fb.com/womenintechmx"> <img src="img\wit.png" alt="WIT Logo"> </a>
</body>
```

Lo anterior nos genera un resultado como el siguiente:
![links](https://github.com/katiearriagam/tech-course/blob/master/images/links.PNG)

### Input


### Div
### Span
