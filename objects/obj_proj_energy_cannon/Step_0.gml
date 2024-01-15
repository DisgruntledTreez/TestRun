/// @description Insert description here
// You can write your code in this editor

// Check if the animation has reached its end

if shot {
	ttl--;
	x = x + lengthdir_x(15, direction);
	y = y + lengthdir_y(15, direction);
} else {


	image_angle = point_direction(plyr.x, plyr.y, mouse_x, mouse_y);
	direction = point_direction(plyr.x, plyr.y, mouse_x, mouse_y);
	x = plyr.x + lengthdir_x(120, direction);
	y = plyr.y + lengthdir_y(120, direction);
}


if charge < max_charge {
	charge++;
	if image_index == image_number image_speed = 0;
} else {
	sprite_index = sprite_energy_shot;
	image_speed = 10;
	image_angle += random_range(-10,10);
}



if ttl == 0 {
	instance_destroy();
}


if (mouse_check_button_released(mb_right)) {
	if charge < max_charge {
		instance_destroy();
	} else {
		shot = true;
		plyr.cooldown = 60;
	}
}








