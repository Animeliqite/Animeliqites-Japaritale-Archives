// This script starts the cutscene
function Cutscene_Begin() {
	global._gmu_cutscene = true; // Start the cutscene
	cutscene._current_order = 0;
	if(instance_exists(char_player))
		char_player._moveable_cutscene=false;
}