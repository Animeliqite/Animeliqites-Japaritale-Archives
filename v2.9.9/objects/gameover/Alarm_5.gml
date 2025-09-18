BGM_Stop(0);
BGM_Stop(1);
Fader_Fade(1,0,30);
Anim_Create(fader,"color",0,0,c_white,c_black,1,30,-1,-1,ANIM_MODE.ONESHOT,false);
if(selection==0) {
	Player_Load(Flag_GetSaveSlot());
	room_goto(asset_get_index(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM)));
}
else if(selection==1) room_goto(room_menu);