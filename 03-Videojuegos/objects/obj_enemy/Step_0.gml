// si el jugador existe en el juego
if(instance_exists(obj_player))
{
	// moverse hacia donde esta el jugador
	move_towards_point(obj_player.x, obj_player.y, spd);
}

/*
	hacer que la imagen tenga el efecto de seguir
	al jugador con un ángulo
*/
image_angle = direction;

if(hp <= 0)
{
	// obtener el objeto del puntaje
	with(obj_score)
	{
		// actualizar el puntaje
		thescore = thescore + 5;
	}
	instance_destroy();
}