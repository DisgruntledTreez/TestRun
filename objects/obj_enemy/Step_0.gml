/// @description Insert description here
// You can write your code in this editor


var player = instance_nearest(x, y, obj_player); // Find the nearest player instance

//check that a player object exists
if (player != noone) {
    // Calculate direction towards the player
    var dir = point_direction(x, y, player.x, player.y);

    // Move towards the player
    x += lengthdir_x(walkSpeed, dir);
    y += lengthdir_y(walkSpeed, dir);
	if (lengthdir_x(walkSpeed, dir) > 0) {
		sprite_index = sprite_enemy_move_right;
	} else if (lengthdir_x(walkSpeed, dir) < 0) {
		sprite_index = sprite_enemy_move_left;
	}
}


var collision = place_meeting(x, y, obj_player);

//If there is a collision, resolve effects
if (collision) {
	if (cooldown == 0) {
		player.hp -= 0;
		cooldown = 30;
	} else cooldown--;

} 

if (hp <= 0) {
    // Enemy is defeated, perform death actions
    instance_destroy(); // Destroy the enemy instance
    global.score += 10;
	player.xp += 10;
    // Optional: You might want to play a death animation, spawn particles, or award points.
    // sprite_index = spr_enemy_death; // Replace with the death animation sprite
    // particle_create(x, y, pt_enemy_death); // Replace with the death particle type
    // global.score += 100; // Increase the player's score (adjust as needed)
}

if (damage_immunity > 0) {
	damage_immunity--;
}