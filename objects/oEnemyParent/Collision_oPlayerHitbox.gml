/// @description Collision with player Swing

// First check if the enemy is invincible
if (canTakeDamage) {
// Damage the enemy
enemyCurrentHealth -= oPlayer.swing_damage;

// Knock back enemy
knock_dir = point_direction(oPlayer.x, oPlayer.y, x * 2, y);

moveEnemy.spdDir(-10, knock_dir);

enemyState = EnemyStates.damaged;

// Make the enemy invincible and unable to move

//moveEnemy.spdDir(0, 0);

//invincible = true;
// Play hurt animation
// Make invincible
}
// Check if enemy health should be dead
//if (enemyCurrentHealth <= 0) {
//	// Enemy is dead
//	//play death animation
//	sprite_index = sEnemy01A_Defeat;
//	// Set an alarm to allow the animation to finish before destroying the instance
//	alarm[0] = 10;
	
//}

//show_debug_message("Enemy Hit!");






