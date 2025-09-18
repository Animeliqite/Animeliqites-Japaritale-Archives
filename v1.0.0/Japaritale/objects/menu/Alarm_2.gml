Fader_Fade(1,0,15);
Player_Load(_chosen_file);
fader.depth=DEPTH_UI.FADER;
var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,-1);
if(room_exists(target)){
	room_goto(target);
	BGM_Stop(0);
}else{
	show_message("ERROR:\nAttempt to goto an unexisting room "+string(target));
}