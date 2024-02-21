/// @description Creation Variables for Player

// Control if the player is active
enabled = true;
max_speed = 1.25;

// Animation Control
activeAnimation = -1;
sequenceLayer = -1;
activeSequence = -1;

// Attack Variable
swing_damage = 2;

// Custom Tile Based Place meeting function 
var _tileMeeting = function(_x, _y){
    return tile_meeting(_x, _y, "Collision")
}

// Enables movement and collision and stores all 
// functionality and variables under the "move" variable
move = use_tdmc(_tileMeeting)

// Call the User events
event_user(0);
event_user(1);
event_user(2);

// Player States will handle the switching between player states
enum PlayerStates {
	idle,
	walk,
	attack,
	swingAttack,
	jabAttack,
	arrowAttack,
	magicAttack
}

// Set the current state to idle
state = PlayerStates.idle;