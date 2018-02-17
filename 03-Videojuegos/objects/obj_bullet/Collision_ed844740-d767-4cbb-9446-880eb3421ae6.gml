// other regresa específicamente la instancia
// del obj_enemy con el que ocurrio la colision
// en lugar de cualquier obj_enemy
with(other)
{
	// bajamos el hp del enemigo que tocamos
	hp = hp - 1;
}

// cuando colisione la bala, podemos destruirla
instance_destroy();