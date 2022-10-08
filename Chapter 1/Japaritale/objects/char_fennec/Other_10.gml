event_inherited();

switch (room) {
	case room_jungle_2:
		if(!global._gmu_cutscene) {
			Cutscene_Begin();
			cutscene_fence = true;
		}
		break;
}