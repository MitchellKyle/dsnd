/// @description Enable/Disable Player Controls
// This will disable player controls and make the the player invisible
// so the sequence can be played over top.

enablePlayer = function() {
	enabled = true;
	image_alpha = 1;
	state = PlayerStates.idle;
}

disablePlayer = function() {
	enabled = false;
	alarm[0] = 1;
	move.x = 0;
	move.y = 0;
}




