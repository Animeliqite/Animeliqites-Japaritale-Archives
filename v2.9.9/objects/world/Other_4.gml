if(instance_exists(char_player)){
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,room_get_name(room));
}

if (room != room_settings) {
	switch (global.chosen_border) {
		case 0:
			Border_SetEnabled(false);
			break;
		case 1:
			Border_SetEnabled(true);
			Border_SetSprite(spr_border_simple);
			break;
		case 2:
			Border_SetEnabled(true);
			Border_SetSprite(spr_border_rounded);
			break;
		case 3:
			Border_SetEnabled(true);
			break;
	}
}

room_persistent=false;