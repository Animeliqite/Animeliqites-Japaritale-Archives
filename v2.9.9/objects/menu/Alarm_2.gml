Fader_Fade(1,0,15);
Player_Load(_chosen_file);
fader.depth=DEPTH_UI.FADER;
var target=asset_get_index(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,-1));
if(room_exists(target)){
	if (asset_has_tags(target, "Developer", asset_room))
		room_goto(room_chickencheck);
	else room_goto(target);
	
	BGM_Stop(0);
}else{
	show_message("ERROR:\nAttempt to goto an unexisting room "+string(target));
	room_restart();
}