/// @description Insert description here
// You can write your code in this editor

image_xscale = 6; // Adjust the horizontal scale (1 is the original size)
image_yscale = 6; // Adjust the vertical scale (1 is the original size)

// Set default speed
speed = 0;
var plyr = instance_nearest(x, y, obj_player);
image_angle = point_direction(plyr.x, plyr.y, mouse_x, mouse_y);


plyr.cooldown = 15;
dmg = 10 * plyr.meleeLevel;

