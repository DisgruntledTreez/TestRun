/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	// Initialise Viewports
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = 3415;
	view_hport[0] = 1920;

	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, view_wport[0]*.4, view_hport[0]*.4);


} else if (room == rm_title_screen) {
	// Initialise Viewports
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = 1366;
	view_hport[0] = 798;

	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, -1, -1, -1, view_wport[0]*.4, view_hport[0]*.4);

}

score = 0;

paused = false;
paused_surf = -1;