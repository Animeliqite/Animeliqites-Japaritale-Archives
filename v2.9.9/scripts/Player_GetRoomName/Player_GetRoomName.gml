///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];

	var name="";

	switch(ROOM){
		case -1:
		default:
			name="------------";
			break;
		case room_savannah_1:
			name=Lang_GetString("menu.room.savannah.zebra")
			break;
		case room_savannah_2:
			name=Lang_GetString("menu.room.savannah.ledge");
			break;
		case room_savannah_6:
		case room_savannah_3_ver2:
			name=Lang_GetString("menu.room.savannah.lake");
			break;
		case room_savannah_end:
			name=Lang_GetString("menu.room.savannah.bridge");
			break;
		case room_jungle_1_a:
			name=Lang_GetString("menu.room.jungle.junction");
			break;
		case room_jungle_3:
			name=Lang_GetString("menu.room.jungle.puzzle");
			break;
		case room_jungle_end:
			name=Lang_GetString("menu.room.jungle.end");
			break;
	}
	return name;


}
