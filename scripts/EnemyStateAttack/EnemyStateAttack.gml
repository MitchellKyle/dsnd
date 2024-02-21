// Enemy Attack State
// In this state, as long as the player is in range, attack them. If the player
// Runs out of range, return to alert state
function EnemyStateAttack(){
	
	move_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	moveEnemy.spdDir(spd, move_dir);
	
	if (!collision_circle(x, y, 32, oPlayer, false, false)) {
		enemyState = EnemyStates.alert;
	}
	
	sprite_index = sEnemy01A_Attack
	//startSequence(SequenceEnemy01A_Attack);
}