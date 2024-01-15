/// @description Insert description here
// You can write your code in this editor

image_xscale = 6; // Adjust the horizontal scale (1 is the original size)
image_yscale = 6; // Adjust the vertical scale (1 is the original size)

// Set default speed
speed = 0;

max_col = 5;

max_charge = 320;

ttl = 60;
charge = 0;
shot = false;
image_xscale = 2;
image_yscale = 2;



plyr = instance_nearest(x, y, obj_player);

dmg = 100 * plyr.rangedLevel;



