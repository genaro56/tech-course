// cuando la alarma llegue a 0, crea un nuevo enemigo
instance_create_layer(random(room_width), random(room_height), "EnemyLayer", obj_enemySpawn);

// reinicia el contador
alarm[0] = spawnrate;