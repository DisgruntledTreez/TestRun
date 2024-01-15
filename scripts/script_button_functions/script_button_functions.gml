// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function start_game() {
	global.score = 0;
	room_goto(rm_game_area);
}

function unpause() {
	global.menu = 0;
}

function options_menu() {
	global.menu = 2;
}

function upgrade_menu() {
	global.menu = 3;
}

function pause_menu() {
	global.menu = 1;
}

function fullscreen_toggle() {
	window_set_fullscreen(!window_get_fullscreen());
	if !window_get_fullscreen() window_set_size(1366, 798);
}

function title_screen() {
	if room != rm_title_screen room_goto(rm_title_screen);
	global.menu = 0;
}
