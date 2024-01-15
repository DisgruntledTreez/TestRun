/// @description Insert description here
// You can write your code in this editor

draw_text_transformed(10, window_get_height()/50 + 70, string_concat("Menu: ", global.menu), .5, .5, 0);

 if (!instance_exists(player)) {
        // Player object not found, return
        return;
    }
   

draw_healthbar(10, 10, window_get_width()/2 * (player.maxhp/500),
			window_get_height()/50 + 10, player.hp, c_black, c_red, c_lime, 0, true, true);
draw_set_halign(fa_left);
draw_text_transformed(10, window_get_height()/50 + 30, string_concat("Score: ", global.score), .5, .5, 0);

