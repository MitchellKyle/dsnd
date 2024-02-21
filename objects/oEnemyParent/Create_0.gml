/// @description Enemy Creation

// Attributes
spd = 0.5;
enemyMaxHealth = 5;
enemyCurrentHealth = enemyMaxHealth;
canTakeDamage = true;

// State Counters
enemyStateCounter =choose(0, 1);
enemyStateLength = choose(2, 3);

// Movement
move_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, move_dir);

// Custom Tile Based Place meeting function 
var _tileMeeting = function(_x, _y){
    return tile_meeting(_x, _y, "Collision");
}

// Enables movement and collision and stores all 
// functionality and variables under the "moveEnemy" variable
moveEnemy = use_tdmc(_tileMeeting);

// Enemy States
enum EnemyStates {
	idle,
	wander,
	alert,
	attack,
	damaged
}

// Randomly choose which state to begin in
switch (enemyStateCounter) {
	case 0: enemyState = EnemyStates.idle; break;
	case 1: enemyState = EnemyStates.wander; break;
}

