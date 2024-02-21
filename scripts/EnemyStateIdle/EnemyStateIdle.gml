// Enemy Idle State
// In this state, we do nothing for 2-3 seconds. At that point a choice is made
// to continue to be idle or switch to the wander state.
// And if the player gets too close, switch to alert state
function EnemyStateIdle(){
	
	// A counter that is used to potentially switch the enemy state to wander
	enemyStateCounter += 1;
	
	// After three seconds, randomly check if the enemy should wander or remain idle
	if (enemyStateCounter >= room_speed * enemyStateLength) {
		var _change = choose(0, 1);
		switch (_change) {
			case 0: enemyState = EnemyStates.wander;
			case 1: enemyStateCounter = 0
					enemyStateLength = choose(2, 3); break;
		}
	}
	
	// Check if the player is close enough, switch to alert state 
	if (collision_circle(x, y, 64, oPlayer, false, false)) {
		enemyState = EnemyStates.alert;
	}
	
	// Set the idle sprite
	sprite_index = sEnemy01A_Idle;
}