/// @description Insert description here
// You can write your code in this editor

window_set_fullscreen(true);
global.score = 0;

file_name = "SaveFile.sav";
if (!file_exists(file_name)) {
	ds_map_secure_save(save_data,file_name);
} else {
	save_data = ds_map_secure_load(file_name);
}

global.highscore = ds_map_find_value(save_data, "Highscore");
if is_undefined(global.highscore) global.highscore = 0;