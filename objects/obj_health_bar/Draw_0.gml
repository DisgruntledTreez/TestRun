/// @description Insert description here
// You can write your code in this editor


draw_self(); // Draw the hp bar background or frame

// Calculate the width of the hp bar based on the player's hp
var bar_width = (obj_player.hp / obj_player.maxhp) * sprite_width;

// Set the color for the hp bar based on hp percentage
if (obj_player.hp > obj_player.maxhp * 0.7) {
    draw_set_color(c_green);
} else if (obj_player.hp > obj_player.maxhp * 0.4) {
    draw_set_color(c_yellow);
} else {
    draw_set_color(c_red);
}

// Draw the actual hp bar
draw_rectangle(x - sprite_width / 2, y - sprite_height, x - sprite_width / 2 + bar_width, y - sprite_height + sprite_height, false);








