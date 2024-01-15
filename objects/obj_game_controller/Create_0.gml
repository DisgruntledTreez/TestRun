/// @description Insert description here
// You can write your code in this editor


if (room == rm_title_screen) {
	// Initialise Viewports
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = 1366;
	view_hport[0] = 798;

	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, -1, -1, -1, view_wport[0]*.4, view_hport[0]*.4);

}

upgrade_available = false;

global.menu = 0;
paused_surf = -1;
option_surf = -1;
upg_surf = -1;

is_prev_options = false;
player = instance_nearest(x, y, obj_player);

save_data = ds_map_create();


