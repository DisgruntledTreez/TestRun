/// @description Insert description here
// You can write your code in this editor
var proj = instance_nearest(x, y, obj_proj_energy_cannon);
var collision = place_meeting(x, y, proj);
if (collision && proj.shot) {
	if (damage_immunity <= 0) {
		hp -= proj.dmg;
		damage_immunity = 60;
	}
}








