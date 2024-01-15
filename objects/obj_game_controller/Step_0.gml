/// @description Insert description here
// You can write your code in this editor


// Step Event of obj_controller

// Set the probability of spawning an enemy (adjust as needed)
if (random(100) < 5) {
    // Get the player object
	

    if (!instance_exists(player)) {
        // Player object not found, return
        return;
    }

    // Spawn an enemy just off the player's screen
    var spawnDistance = camera_get_view_width(0); // Adjust the distance from the player
    var spawnAngle = random(360); // Random angle in degrees

    // Calculate spawn position relative to the player
    var spawnX = player.x + lengthdir_x(spawnDistance, spawnAngle);
    var spawnY = player.y + lengthdir_y(spawnDistance, spawnAngle);


	// Clamp spawn coordinates within the playable area
    spawnX = clamp(spawnX, 0, room_width);
    spawnY = clamp(spawnY, 0, room_height);

    // Create the enemy
     var newEnemy = instance_create_layer(spawnX, spawnY, "Instances", obj_enemy);

    // Set the scale of the enemy (adjust as needed)
    var scaleMultiplier = random_range(5, 6); // Adjust the scale range
    newEnemy.image_xscale = scaleMultiplier;
    newEnemy.image_yscale = scaleMultiplier;
	

} 
if (keyboard_check_pressed(vk_f11)) {
	fullscreen_toggle();
}

if (room == rm_game_area) {
	if instance_exists(obj_player) player = instance_nearest(x, y, obj_player);
	if keyboard_check_pressed(vk_escape) && global.menu <= 1 {
	    if (global.menu == 0) global.menu = 1;
		else global.menu = 0;
	}
	
}
switch (global.menu) {
		case 0:
			instance_activate_all();
			surface_free(paused_surf);
            paused_surf = -1;
			is_prev_options = false;
		case 1:
			surface_free(option_surf);
            option_surf = -1;
			surface_free(upg_surf);
            upg_surf = -1;
			break;
		case 2:
			surface_free(paused_surf);
            paused_surf = -1;
			is_prev_options = true;
			break;
		case 3:
			surface_free(paused_surf);
            paused_surf = -1;
			break;
		}








