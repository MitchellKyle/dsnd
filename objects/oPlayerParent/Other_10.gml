/// @description Movement And Attack

// Function to read user movement input
readArrows = function() {
	var _h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	var _dist = point_distance(0,0,_h,_v);
	return {h: _h, v: _v, pressed: _dist > 0}
}

// Function to read user attacks
readAttack = function() {
	var _swing =  mouse_check_button_pressed(mb_left);
	var _jab = mouse_check_button_pressed(mb_right);
	var _arrow = keyboard_check_pressed(ord("E"));
	var _magic = keyboard_check_pressed(ord("R"));
	var _pressed = _swing + _jab + _arrow + _magic;
	return {swing: _swing, jab: _jab, arrow: _arrow, magic: _magic, pressed: _pressed > 0}
}

// Converts the player input to information we can use to move the player and make it
// Attack. Also handles state switching
readInput = function() {
	var _input = {factor: 0, h: 0, v: 0, attack: 0}
	
	var _direction = readArrows();
	var _attack = readAttack();
	
	// Movement
	if(_direction.pressed) {
		_input.factor = 1;
	  _input.h = _direction.h;
	  _input.v = _direction.v;
	  state = PlayerStates.walk;
	}
	
	if (_attack.pressed) {
		state = PlayerStates.attack;
	}
	
	_input.dir = point_distance(0, 0, _input.h, _input.v)  > 0 
							 ? point_direction(0, 0, _input.h, _input.v) 
							 : NO_DIRECTION;;
               
	return _input;
}

