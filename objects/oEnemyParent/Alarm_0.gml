/// @description Destroy the enemy

canTakeDamage = true;
show_debug_message("alarm ended?")

if (!collision_circle(x, y, 32, oPlayer, false, false)) {
	enemyState = EnemyStates.alert;
}
	
if (collision_circle(x, y, 32, oPlayer, false, false)) {
		enemyState = EnemyStates.attack;
}

