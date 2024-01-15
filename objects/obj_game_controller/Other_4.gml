/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player)) {
	// Initialise Viewports
	view_enabled = true;
	view_visible[0] = true;
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = 1336;
	view_hport[0] = 798;

	view_camera[0] = camera_create_view(0, 0, 3340, 1995, 0, obj_player, -1, -1, surface_get_width(application_surface)*.6, surface_get_height(application_surface)*.6);
	

} 








