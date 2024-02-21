// @description Movement and Attack

// Check if there is an animation playing or if the player is disabled
checkAnimation();
if (!enabled) exit;

// Read the user input
var _input = readInput();

// Move the player
move.spdDir(max_speed * _input.factor, _input.dir);
 
 // Handle which state the player is in
 switch (state) {
	 case PlayerStates.idle: PlayerStateIdle(); break;
	 case PlayerStates.walk: PlayerStateWalk(); break;
	 case PlayerStates.attack: PlayerStateAttack(); break;
 }
 