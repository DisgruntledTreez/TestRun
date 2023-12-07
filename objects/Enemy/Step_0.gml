/// @description Insert description here
// You can write your code in this editor


var player = instance_nearest(x, y, Player); // Find the nearest player instance

if (player != noone) {
    // Calculate direction towards the player
    var dir = point_direction(x, y, player.x, player.y);

    // Move towards the player
    x += lengthdir_x(walkSpeed, dir);
    y += lengthdir_y(walkSpeed, dir);
}


playerLoc = instance_place(x, y, player);


if (playerLoc != noone) {
    playerLoc.hp -= 10;

    if (playerLoc.hp <= 0) {
        // Player is defeated, handle game over logic (e.g., show a game over screen or restart the level)
        room_goto(GameOver);
    }
}