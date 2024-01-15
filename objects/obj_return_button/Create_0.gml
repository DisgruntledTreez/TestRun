/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
button_text = "RETURN";

activate_button = function() 
{
	if room == rm_game_area pause_menu();
	else if room == rm_title_screen title_screen();
}
