/// @description Insert description here
// You can write your code in this editor











// Inherit the parent event
event_inherited();
if room == rm_game_area {
	if global.menu != 4 {
		instance_destroy();
	}
}
if (cntl.player.xp < 100) image_blend = c_dkgray;