/// @description Insert description here
// You can write your code in this editor
var player = instance_nearest(x, y, obj_player);

    if (!instance_exists(player)) {
        // Player object not found, return
        return;
    }

draw_healthbar(10, 10, window_get_width()/2 * (player.maxhp/500), window_get_height()/50 + 10, player.hp, c_black, c_red, c_lime, 0, true, true)

