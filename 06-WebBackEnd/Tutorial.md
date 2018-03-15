# Desarrollo Web: Back-end

## Contenidos 
- [Preparación](#prep)
- [SQL](#sql) 
- [Actividad](#act)

<a name="prep"/></a>
# Preparación

### Objetivo
- Agregar back-end a la página que iniciamos la sesión pasada.
- Aprender a recuperar y actualizar información en bases de datos.

### Instrucciones
1. Descarga y haz el set-up de [XAMPP](https://www.apachefriends.org/index.html).
2. Mueve el fólder que contiene la página que desarrollaste en la sesión anterior al path `xampp\htdocs\`.
3. Abre tu `index.html` y comprueba que todo funcione apropiadamente.

<a name="sql"/></a>
# SQL

SQL (Standard Query language) es un lenguaje que sirve para **recuperar, manipular y guardar datos en bases de datos**. A diferencia de otros lenguajes (como JavaScript), SQL es un **lenguaje declarativo**. Esto significa que expresa la lógica del programa sin expresar su control flow.

## Ejemplo inicial

Si tenemos por ejemplo, la siguiente tabla de datos con un ID y una categoría, podemos pedirle a SQL que nos recupere todas las categorias cuyo ID sea mayor o igual a 5.

| CategoryID    | Category      |
|:-------------:|:-------------:|
| 1             | Bebidas       |
| 2             | Condimentos   |
| 3             | Confecciones  |
| 4             | Lácteos       |
| 5             | Cereales      |
| 6             | Carnes        |
| 7             | Frutas        |
| 8             | Vegetales     |

Esto en SQL se ve de la siguiente manera:

```sql
SELECT * 
FROM Categories
WHERE CategoryID >= 5;
```

Esto puede traducirse a `selecciona todas (*) las categorias donde el ID sea mayor o igual a 5.`  Y el resultado que arroja es el siguiente:

| CategoryID    | Category      |
|:-------------:|:-------------:|
| 5             | Cereales      |
| 6             | Carnes        |
| 7             | Frutas        |
| 8             | Vegetales     |

Así como pueden recuperarse (y modificarse) datos de tablas, también podemos crear tablas nuevas. Si queremos crear tablas, el código se vería de la siguiente manera. El siguiente es un ejemplo para crear una tabla que almacene comentarios.

```sql
CREATE TABLE Comentarios (
  /* el id que identifica cada fila en la tabla */
	id int(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  /* el cuerpo del comentario */
	body text NOT NULL,
  /* cantidad de like reactions que tiene el comentario */
	likeCount int(11) UNSIGNED,
  /* cantidad de love reactions que tiene el comentario */
  loveCount int(11) UNSIGNED
);
```
**Contenidos básicos de una propiedad**
Nótese que lo que especificamos para cada propiedad/columan en la tabla (como el id o el body) es:

``[nombre][tipo de dato][NOT NULL]?[PRIMARY KEY [AUTO_INCREMENT]?]?``

- nombre: el identificador de la columna 
- tipo de dato
- not null: (opcional) si queremos obligar a que los valores siempre deban contener un valor
- primary key: (opcional) todas las tablas deben tener un ID (o llave primaria) que distinga cada fila en la tabla de las demás
- auto_increment: (opcional) usualmente se usa con los primary keys para numerarlos automáticamente

<a name="act"/></a>
# Actividad

## Dar de alta la base de datos

1. En tu buscador (Firefox de preferencia :)) abre `localhost/` como si fueras a abrir una página. Debes ver la siguiente pantalla:

![localHomeHost](https://github.com/katiearriagam/tech-course/blob/master/images/localhostHome.PNG)

2. Da click arriba a la derecha donde dice `phpMyAdmin`

3. Crea una nueva base de datos en donde dice `Nueva` a la izquierda. Nombra tu base de datos `myFirstDB`.

4. Corre el script para crear la tabla de Comentarios en la base de datos.

## Agregar espacios para comentarios en tu página

5. En tu HTML y CSS, agrega un espacio para **postear** y **ver** comentarios en forma de lista en cualquiera de las secciones de tu página (en la de fotos, por ejemplo). Si pasas más de 20 minutos tratando de diseñar este espacio, puedes ayudarte con la siguiente [pista](https://github.com/katiearriagam/tech-course/blob/master/06-WebBackEnd/hint01.html). 

Necesitarás:
- Un espacio para que el usuario escriba el comentario
- Un botón para "postear" el comentario escrito
- Una lista que almacene los comentarios posteados

El siguiente es un ejemplo de cómo se puede ver:

![commentsScreenshot](https://github.com/katiearriagam/tech-course/blob/master/images/commentsScreenshot.PNG)

6. En tu JavaScript, agrega código para que se agreguen los comentarios al principio. Puedes usar la función `prepend` y puedes ayudarte de la siguiente [pista](https://github.com/katiearriagam/tech-course/blob/master/06-WebBackEnd/hint02.js).

## Agregar PHP/AJAX 

### AJAX

AJAX (Asynchronous JavaScript + XML) es conjunto de técnicas para hacer peticiones asíncronas a un servidor. Se agrega en el código de JavaScript y el formato es el siguiente.

```javascript
$.ajax({
            type: "POST", // tipo de request - comúnmente POST (enviar información al servidor) o GET (recuperar información del servidor) 
            url: "data/photo-comments.php", // path en el que se encuentra la información
            data : jsonObject, // información que se envía al servidor
            dataType : "json", // formato de la información que se envía al servidor
            ContentType : "application/json", // formato de la información que se envía al servidor 
            success: function(jsonData) { 
	    	// función que se ejecuta cuando la petición se ejecutó correctamente
            },
            error: function(errorMsg){
            	// función que se ejecuta cuando hay errores en la petición
            }
        });
```

7. Usa el ejemplo anterior para crear tu propia llamada de AJAX para guardar los comentarios en el servidor. Deberás crear un url a un archivo de PHP `url: "data/photo-comments.php"`. Ése lo crearemos e implementaremos en un momento. Si te atoras o quieres verificar tu código, puedes usar la siguiente [pista](https://github.com/katiearriagam/tech-course/blob/master/06-WebBackEnd/hint03.js).

Notemos que es necesario enviar la información al servidor en formato json. Podemos crearlo de la siguiente manera:

```javascript
var jsonObject = {
	// myComment es el string que contiene el comentario del usuario
	"comment" : myComment
};
```

### PHP

PHP es un lenguaje que sirve para comunicarse con el servidor. Aquí es donde correremos nuestro SQL. La sintaxis de PHP es un poco diferente a lo que hemos visto.

8. Crea `data\addComments.php`

9. Lee el siguiente código comentado. El código inserta en la base de datos el comentario que haya enviado como parámetro la llamada de AJAX en JavaScript.

```php
<?php
	/* permitimos que PHP trabaje con json*/
	header('Content-type: application/json');
	header('Accept: application/json');

	/* 
		establecemos los valores de las variables 
		que necesitamos para conectar con el servidor
	*/
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "myfirstdb";
	
	/* establecemos la conexión con la base de datos */
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	/* si hay un error con la conexión, nos detenemos y regresamos un error */
	if ($conn->connect_error) {
		header("HTTP/1.1 500 Bad connection, portal down.");
		die("The server is down, we couldn't stablish the data base connection.");
	}

	/* obtenemos la variable que mandamos en jsonObject*/
	$comment = $_POST["comment"];

	/* 
		creamos un query en SQL que inserte los valores a una nueva fila 
		en la base de datos
	*/
	$sql = "INSERT INTO comentarios (body) VALUES ('$comment')";

	/* ejecutamos el query */
	$result = mysqli_query($conn, $sql);

	/* si el query generó un error nos detenemos */
	if (!$result) {
		header("HTTP/1.1 500 Something happened, try again later.");
		die("Something went wrong: " . $sql);
	}

	/* cerramos la conexión */
	mysqli_close($conn);

	/* regresamos un success de respuesta */
	echo json_encode(['success' => 'success']);
```

10. Tenemos el siguiente problema:

Hasta el momento, los comentarios se guardan en la base de datos pero si volvemos a cargar la página (Ctrl + R), veremos que no están los comentarios que pusimos anteriormente. Esto es porque aún no los cargamos de la base de datos. 

Implementa la función en JavaScript que haga una llamada de AJAX a un nuevo archivo PHP `data\loadComments.php`, el cual recupere todos los comentarios que están guardados en la base de datos y los agregue a la lista de comentarios previos.

Si te atoras, puedes ayudarte con los siguientes archivos:

- Función de [JavaScript `loadComments()`](https://github.com/katiearriagam/tech-course/blob/master/06-WebBackEnd/hint04.js)
- [loadComments.php](https://github.com/katiearriagam/tech-course/blob/master/06-WebBackEnd/loadComments.php)
