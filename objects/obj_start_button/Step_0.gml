/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x - sprite_width / 2, y - sprite_height / 2, x + sprite_width / 2, y + sprite_height / 2)) {
        room_goto(nextRoom);
    }
}

