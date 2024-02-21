/// @description Enemy Step

// Handle switching states
switch (enemyState) {
	case EnemyStates.idle: EnemyStateIdle(); break;
	case EnemyStates.wander: EnemyStateWander(); break;
	case EnemyStates.alert: EnemyStateAlert(); break;
	case EnemyStates.attack: EnemyStateAttack(); break;
	case EnemyStates.damaged: EnemyStateDamaged(); break;
}




