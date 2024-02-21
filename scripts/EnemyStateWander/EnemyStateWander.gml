// Enemy Wander State
// In this state, the enemy walks in random directions every 2-3 seconds.
// A choice is made to either wander again, or switch to an the idle state
// And if the player gets too close, switch to alert state

function EnemyStateWander(){
	
	// Start the state counter
	enemyStateCounter += 1;
	
	// Move the enemy
	moveEnemy.spdDir(spd, move_dir);
	wallCheck = moveEnemy.againstWall;
	
	// Check if the enemy is colliding against a wall, 0 means there is no collision
	// on the given axis. So we check for not equal to 0 which means there is collison
	// on either the right/left or top/bottom
	if (wallCheck.hori != 0 || wallCheck.vert !=0) {
		show_debug_message("against wall")
		// At this point the enemy hit a wall
		// Change the direction
		move_dir = irandom_range(0, 359);
		moveX = lengthdir_x(spd, move_dir);
		moveEnemy.spdDir(spd, move_dir);
	}
	
	// Randomly check if after the counter we wander again or switch to idle
	if (enemyStateCounter >= room_speed * enemyStateLength) {
		var _change = choose(0, 1);
		switch (_change) {
			case 0: enemyState = EnemyStates.idle;
			case 1: 
			// Chose to wander again, reroll direction to wander in
			move_dir = irandom_range(0, 359);
			moveX = lengthdir_x(spd, move_dir);
			enemyStateCounter = 0
			enemyStateLength = choose(2, 3); break;
		}
	}
	
	// Check if the player is close enough, switch to alert state 
	if (collision_circle(x, y, 64, oPlayer, false, false)) {
		enemyState = EnemyStates.alert;
	}
	
	// Set the enemy sprite and change the xscale to match the direction facing
	sprite_index = sEnemy01A_Walk;
	image_xscale =sign(moveX);
}