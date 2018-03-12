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
Una de las arquitecturas más comunes es el `Model-View-Controller (MVC)`. Éste se divide en tres partes.

![mvc](https://github.com/katiearriagam/tech-course/blob/master/images/mvc.png)
