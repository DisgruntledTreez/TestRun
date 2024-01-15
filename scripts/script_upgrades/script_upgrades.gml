// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hp_upgrade(plyr){
	plyr.hp += 10;
	plyr.xp -= 100;
}

function ranged_upgrade(plyr){
	plyr.rangedLevel++;
	plyr.xp -= 100;
}

function melee_upgrade(plyr){
	plyr.meleeLevel++;
	plyr.xp -= 100;
}