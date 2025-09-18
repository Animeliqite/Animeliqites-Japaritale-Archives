event_inherited();

if(_phase==0){
	if(char_player.x>700){
		Cutscene_Begin();
		_phase=1;
	}
}
else if(_phase==1){
	C_MoveChar(0,char_player,room_width-40,char_player.y-40,false,150);
	C_FadeFader(0,0,1,150,0,c_white);
	C_Execute(0,BGM_SetVolume,[0,0,150]);
	C_Execute(0,BGM_Play,[1,bgm_cymbal,false]);
	C_Execute(0,BGM_SetVolume,[1,0]);
	C_Execute(0,BGM_SetVolume,[1,1,150]);
	C_Wait(0,150);
	C_Execute(1,BGM_Stop,[0]);
	C_Execute(1,BGM_Stop,[1]);
	C_Execute(1,room_goto,[room_credits_chapter2]);
	C_Execute(1, variable_global_set, ["credits_room_target", room_plains_0]);
	C_FadeFader(1,1,0,1,0,c_black);
	Cutscene_End(1);
}