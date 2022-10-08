///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
		default:
			name="------------";
			break;
		case room_savannah_3:
		case room_savannah_3_ver2:
			name=Lang_GetString("menu.room.savannah.lake");
			break;
		case room_savannah_end:
			name=Lang_GetString("menu.room.savannah.bridge");
			break;
	}
	return name;


}
