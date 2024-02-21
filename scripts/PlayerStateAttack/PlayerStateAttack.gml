// Player Attack State
// Here we will handle which type of attack should be performed
function PlayerStateAttack(){
	var _attack = readAttack();
	if (_attack.swing)
		 {
			//sprite_index = sPlayerAttackSwing;
			startAnimation(SequenceSwingAttack);
			show_debug_message("swing");
		 }
		  if (_attack.jab)
		 {
			show_debug_message("jab");
		 }
		  if (_attack.arrow)
		 {
			show_debug_message("arrow");
		 }
		  if (_attack.magic)
		 {
			show_debug_message("magic");
		 }
}