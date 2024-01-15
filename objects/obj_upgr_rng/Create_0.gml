/// @description Insert description here
// You can write your code in this editor











// Inherit the parent event
event_inherited();

button_text = "Ranged";
cntl = instance_nearest(x, y, obj_game_controller);
activate_button = function() 
{
	if cntl.player.xp > 100 ranged_upgrade(cntl.player);
}


