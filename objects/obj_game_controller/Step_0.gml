/// @description Insert description here
// You can write your code in this editor


// Step Event of obj_controller

// Set the probability of spawning an enemy (adjust as needed)
if (random(100) < 5) {
    // Get the player object
    var player = instance_nearest(x, y, obj_player);

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
	window_set_fullscreen(!window_get_fullscreen());
}






