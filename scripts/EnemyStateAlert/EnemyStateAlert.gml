// Enemy Alert State
// In this state, we want the enemy to chase the player
// If the player gets farther away switch back to wander/idle state
// If the player gets closer, switch to attack state

function EnemyStateAlert(){
	
	move_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	
	moveEnemy.spdDir(spd, move_dir);
	
	if (!collision_circle(x, y, 64, oPlayer, false, false)) {
		enemyState = EnemyStates.wander;
	}
	
	if (collision_circle(x, y, 32, oPlayer, false, false)) {
		enemyState = EnemyStates.attack;
	}
	
	sprite_index = sEnemy01A_Walk;
}