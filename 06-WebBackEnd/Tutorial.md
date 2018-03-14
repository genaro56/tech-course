# Desarrollo Web: Back-end

## Contenidos 
- [Preparación](#prep)
- [Arquitectura 3-tier](#layers)
- [SQL](#sql) 
- [PHP](#php)
- [Actividad](#act)

<a name="prep"/></a>
# Preparación

### Objetivo
- Agregar back-end a la página que iniciamos la sesión pasada.
- Aprender a recuperar y actualizar información en bases de datos.
- Aplicar la teoría de arquitectura 3-tier en nuestra aplicación web.

### Instrucciones
1. Descarga y haz el set-up de [XAMPP](https://www.apachefriends.org/index.html).
2. Mueve el fólder que contiene la página que desarrollaste en la sesión anterior al path `xampp\htdocs\`.
3. Abre tu `index.html` y comprueba que todo funcione apropiadamente.

<a name="layers"/></a>
# Arquitectura 3-tier

### ¿Qué es? 

Con el fin de mantener nuestra aplicación escalable y fácil de modificar, así como mucho otros atributos de calidad que son importantes al hacer software de gran escala, implementamos arquitecturas.

### MVC
Una de las arquitecturas más comunes (y la que usaremos aquí) es el `Model-View-Controller (MVC)`. Éste se divide en tres partes.

![mvc](https://github.com/katiearriagam/tech-course/blob/master/images/mvc.png)


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
	likeCount UNSIGNED,
  /* cantidad de love reactions que tiene el comentario */
  loveCount UNSIGNED
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
