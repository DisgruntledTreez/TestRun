/// @description Updates for each frame




// Player is defeated, handle game over logic (e.g., show a game over screen or restart the level)
if (hp <= 0) {
	room_goto(rm_game_over);
}

moveRight = keyboard_check(vk_right);
moveUp = keyboard_check(vk_up);
moveLeft = keyboard_check(vk_left);
moveDown = keyboard_check(vk_down);

// Calculate movement
var _hor = moveRight - moveLeft;
var _ver = moveDown - moveUp;
var dir = point_direction(0,0, (_hor) * walkSpeed, (_ver) * walkSpeed);
if (_hor != 0 || _ver != 0) {
	vx = lengthdir_x(walkSpeed, dir);
	vy = lengthdir_y(walkSpeed, dir);
} else {
	vx = 0;
	vy = 0;
}

//Calculate last moved direction for animation
if (vx != 0) {
	lastx =  _hor;
}
if (vy != 0) {
	lasty =  _ver;
	if (lasty <= 0) lasty += 1;
} else {
	if (vx != 0) lasty = 1;
}

// If Idle
if (vx == 0 && vy == 0) {
	switch (lastx + lasty) {
		case -1:
			sprite_index = sprite_player_idle_lu;
			break;
		case 0:
			sprite_index = sprite_player_idle_ld;
			break;
		case 1:
			sprite_index = sprite_player_idle_ru;
			break;
		case 2:
			sprite_index = sprite_player_idle_rd;
			break;
	}
} else {
	x += vx;
	y += vy;
	switch (lastx + lasty) {
		case -1:
			sprite_index = sprite_player_move_lu;
			break;
		case 0:
			sprite_index = sprite_player_move_ld;
			break;
		case 1:
			sprite_index = sprite_player_move_ru;
			break;
		case 2:
			sprite_index = sprite_player_move_rd;
			break;
	}
}





//Attack resolution

if (mouse_check_button_pressed(mb_left)) {
	// Get the direction from player to mouse
    var dir = point_direction(x, y, mouse_x, mouse_y);
	
    // Create an instance of obj_attack at the player's position
    var attack_instance = instance_create_layer(x + lengthdir_x(64, dir), y 
		+ lengthdir_y(64, dir), "Instances", obj_basic_attack);
	attack_instance.direction = dir;


}
