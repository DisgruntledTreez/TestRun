/// @description Insert description here
// You can write your code in this editor


//Damage Resolution

var collision = place_meeting(x, y, obj_basic_attack);

//If there is a collision, resolve effects
if (collision) {
	if (damage_immunity <= 0) {
		hp -= 10;
		damage_immunity = 5;
	}
}
if (damage_immunity > 0) {
	damage_immunity--;
}






