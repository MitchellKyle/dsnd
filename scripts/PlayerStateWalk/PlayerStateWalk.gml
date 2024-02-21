// Player Walking State
// Here we set the walking sprite and change the xscale to match the direction
function PlayerStateWalk(){
	var _input = readArrows();
	sprite_index = sPlayerWalk;
	if (_input.h != 0) {	
		image_xscale = sign(_input.h);
	}
	else {
		state = PlayerStates.idle;
	}
}