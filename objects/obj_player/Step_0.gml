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
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);


//Calculate last moved direction for animation
if((moveRight - moveLeft) != 0) {
	lastDir = (moveRight - moveLeft);
}


// If Idle
if (vx == 0 && vy == 0) {
	// do nothing for now
}



// If moving, move object and animate
if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
	switch lastDir {
		case 1:
			sprite_index = sprite_move_right_anim;
			break;
		case -1: 
			sprite_index = sprite_move_left_anim;
			break;
		default: //Here for completion and incase it is needed later.
	}
}



//Idle Animation Check
 else {
	if(lastDir == 1) {
		sprite_index = sprite_move_right_idle;
	} else if (lastDir == -1) {
		sprite_index = sprite_move_left_idle;
	}
}