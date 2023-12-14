/// @description Insert description here
// You can write your code in this editor

// Initialise Viewports
view_enabled = true;
view_visible[0] = true;
view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 3415;
view_hport[0] = 1920;

view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_player, -1, -1, 1366, 768);
var _dwidth = display_get_width();
var _dheight = display_get_height();
var _xpos = (_dwidth / 2) - 683;
var _ypos = (_dheight / 2) - 384;
window_set_rectangle(_xpos, _ypos, 1366, 768);
surface_resize(application_surface, 1366, 768);

