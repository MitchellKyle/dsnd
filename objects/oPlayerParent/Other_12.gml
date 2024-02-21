/// @description Animation
// This will start or stop our attack animation sequence

startAnimation = function (_sequence) {
	activeAnimation = _sequence;
	sequenceLayer = layer_create(-bbox_bottom);
	activeSequence = layer_sequence_create(sequenceLayer, x, y, _sequence);
	layer_sequence_xscale(activeSequence, image_xscale);
	
	disablePlayer();
}

checkAnimation = function () {
	if (activeSequence == undefined) return;
	
	if (layer_sequence_is_finished(activeSequence)) {
		layer_sequence_destroy(activeSequence);
		layer_destroy(sequenceLayer);
		
		activeAnimation = -1;
		activeSequence = -1;
		sequenceLayer = -1;
		
		enablePlayer();
	}
}




