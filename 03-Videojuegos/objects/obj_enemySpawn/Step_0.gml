// va creciendo en cada frame
image_xscale = min(image_xscale + 0.05, 1);
image_yscale = min(image_yscale + 0.05, 1);

// cuando haya crecido, ahora sí hacerlo una instancia de un enemigo
if(image_xscale == 1) instance_change(obj_enemy, true);