/// @description Insert description here
// You can write your code in this editor

// Moving around

if(keyboard_check(vk_right)) x = x + 4;
if(keyboard_check(vk_left)) x = x - 4;
if(keyboard_check(vk_up)) y = y - 4;
if(keyboard_check(vk_down)) y = y + 4;

image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shooting
if(mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x, y, "BulletsLayer", obj_bullet);
	
	// iniciamos el conteo para 'recargar'
	cooldown = 10;
}

// en cada frame, le restamos 1 a cooldown para que regrese a 0
// esto nos permite disparar un obj_bullet cada 4 frames
cooldown = cooldown - 1;