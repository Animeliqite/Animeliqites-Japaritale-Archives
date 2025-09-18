/// @description Load File Info

for (var i=0; i<3; i++) {
	Flag_SetSaveSlot(i);
	Flag_Custom();
	if (Flag_Load(FLAG_TYPE.INFO)) {
		_file_name[i]=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.USERNAME,Lang_GetString("ui.save.name.empty"));
		_file_room[i]=Player_GetRoomName(asset_get_index(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM)));
		_file_time[i]=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME, "--:--");
		_file_text_start[i]=Lang_GetString("menu.continue");;
	}
	else {
		_file_name[i]=Lang_GetString("ui.save.name.empty");
		_file_room[i]=Player_GetRoomName(-9999);
		_file_time[i]="--:--";
		_file_text_start[i]=Lang_GetString("menu.begin");
	}
}