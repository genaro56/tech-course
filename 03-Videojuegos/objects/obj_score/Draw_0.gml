/* 
	cuando creamos variables con 'var', son temporales
	desaparece al finalizar el evento
*/


/*
	obtenemos la posicion en X y Y de la camara 'default'
	esta se identifica como view_camera[0] siempre
*/
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

// obtenemos el ancho de la camara default
var cw = camera_get_view_width(view_camera[0]);

/*
	Pondremos el texto en medio de la pantalla
	para esto necesitamos cx (la posicion en X de la camara, que se va desplazando)
	y cw (la anchura de la pantalla)
	
	Pondremos el texto en la parte de arriba, pero no pegada a la orilla -> + 25 pixeles
	
	Pasamos the score a string para que ese sea el texto que se pone en pantalla.
	
	Como se corre draw_text en cada frame, se actualiza la posicion 
	y contenido del texto en cada frame.
*/
draw_set_font(fnt_score);
draw_set_color(c_white);
draw_text(cx + cw/2, cy + 25, string(thescore));