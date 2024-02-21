// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyStateDamaged(){
	sprite_index = sEnemy01A_Damaged;
	moveEnemy.spdDir(0, 0);
	canTakeDamage = false;
	if (alarm[0] == -1) {
		alarm[0] = 90;
	}
	
	
}