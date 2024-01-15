/// @description Insert description here
// You can write your code in this editor


screenxcenter = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2);
screenycenter =  camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
switch global.menu {
	case 1: //Pause Menu
	/* DEVELOPER'S NOTE
	this menu is made using a surface, which means occasionally that the background
	becomes blank if the player changes their screen size or something. Potential change
	is to take a screenshot of the active state of the game and use that as a background
	to the menu.
	*/
		if layer_exists("menu") {
			layer_destroy("menu");
		}
		if !surface_exists(paused_surf) {
			if paused_surf == -1 && global.menu == 1 {
		        instance_deactivate_all(true);
		    }
		    paused_surf = surface_create(room_width, room_height);
		    surface_set_target(paused_surf);
			if !is_prev_options draw_surface_stretched(application_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
			surface_reset_target();
		}
		else {
		    draw_surface(paused_surf, 0, 0);
		    draw_set_alpha(0.5);
		    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		    draw_set_alpha(1);
			var exitbutton = instance_create_layer(1366/2, 768/6, "Instances", obj_exit_button);
			exitbutton.image_xscale = 10;
			exitbutton.image_yscale = 5;
			instance_activate_object(exitbutton);
			
			var exittitlebutton = instance_create_layer(1366/2, 768/3, "Instances", obj_title_return);
			exittitlebutton.image_xscale = 10;
			exittitlebutton.image_yscale = 5;
			instance_activate_object(exittitlebutton);
			
			var contbutton = instance_create_layer(1366/2, 768/2, "Instances", obj_pause_continue);
			contbutton.image_xscale = 10;
			contbutton.image_yscale = 5;
			instance_activate_object(contbutton);
			
			var optbutton = instance_create_layer(1366/2, 768/6*4, "Instances", obj_options_button);
			optbutton.image_xscale = 10;
			optbutton.image_yscale = 5;
			instance_activate_object(optbutton);
			
			var upgrbutton = instance_create_layer(1366/2, 768/6*5, "Instances", obj_upgr_menu);
			upgrbutton.image_xscale = 10;
			upgrbutton.image_yscale = 5;
			instance_activate_object(upgrbutton);
	   }
			break;
	case 2: //Options Menu Drawing
		if !surface_exists(option_surf) {
			if option_surf == -1 {
		        instance_deactivate_all(true);
		    }
		    option_surf = surface_create(room_width, room_height);
		    surface_set_target(option_surf);
		    surface_reset_target();
		} else {
		    draw_surface(option_surf, 0, 0);
			layer_create(0, "menu");
			var optionbg = layer_background_create("menu", sprite_bg_start_metal);
			layer_background_htiled(optionbg, true);
			layer_background_vtiled(optionbg, true);
			layer_background_xscale(optionbg, 2.5);
			layer_background_yscale(optionbg, 2.5);
			layer_hspeed("menu", .75);
			layer_vspeed("menu", .75);
			
		    draw_rectangle_color(camera_get_view_x(view_camera[0]) + 600, camera_get_view_y(view_camera[0]),  
							camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 600, 
								camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
									c_gray, c_gray ,c_gray, c_gray, false);
			draw_rectangle_color(camera_get_view_x(view_camera[0]) + 600, camera_get_view_y(view_camera[0]),  
							camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 600, 
								camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]),
									c_black, c_black ,c_black, c_black, true);						
			
			var fullbutton = instance_create_layer(1366/2, 768/2, "Instances", obj_fullscreen_button);
			fullbutton.image_xscale = 8;
			fullbutton.image_yscale = 5;
			instance_activate_object(fullbutton);
			var retbutton = instance_create_layer(1366/2, 768/4, "Instances", obj_return_button);
			retbutton.image_xscale = 6;
			retbutton.image_yscale = 5;
			instance_activate_object(retbutton);
		}
		break;
	case 3: //Upgrade Menu
		if !surface_exists(upg_surf) {
			if upg_surf == -1 && global.menu == 3 {
		        instance_deactivate_all(true);
		    }
		    upg_surf = surface_create(room_width, room_height);
		    surface_set_target(upg_surf);
			draw_surface_stretched(application_surface, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
			surface_reset_target();
		}
		else {
			draw_surface(upg_surf, 0, 0);
			draw_set_alpha(0.5);
			draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
			draw_set_alpha(1);
				
			var retbutton = instance_create_layer(1366/2, 768/4, "Instances", obj_return_button);
			retbutton.image_xscale = 8;
			retbutton.image_yscale = 5;
			instance_activate_object(retbutton);
				
			var hpbutton = instance_create_layer(1366/2, 768/2, "Instances", obj_upgr_hp);
			hpbutton.image_xscale = 5;
			hpbutton.image_yscale = 5;
			instance_activate_object(hpbutton);
			
			var rangedbutton = instance_create_layer(1366/4, 768/2, "Instances", obj_upgr_rng);
			rangedbutton.image_xscale = 5;
			rangedbutton.image_yscale = 5;
			instance_activate_object(rangedbutton);
			
			var meleebutton = instance_create_layer(1366/4*3, 768/2, "Instances", obj_upgr_mle);
			meleebutton.image_xscale = 5;
			meleebutton.image_yscale = 5;
			instance_activate_object(meleebutton);
		}
		   break;
}
if (room == rm_game_over) {
	draw_text_color((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))/2,
				camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 150, string_concat("SCORE: ", global.score),c_maroon,c_maroon,c_maroon,c_maroon,1);
}

if (room == rm_title_screen) {
	draw_text_color((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]))/2,
				camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 75, string_concat("HIGHSCORE: ", global.highscore),c_maroon,c_maroon,c_maroon,c_maroon,1);
}



