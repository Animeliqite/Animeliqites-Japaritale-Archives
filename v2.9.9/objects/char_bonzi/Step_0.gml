event_inherited();

if(_interacted&&!_given_egg){
	if(!instance_exists(ui_dialog)){
		_timer++;
		if(_timer==1){
			char_player.moveable=false;
			Sfx_Play(snd_spearappear);
			_sparkle_inst=instance_create_depth(x,y-sprite_height-15,0,char_sparkle);
			_sparkle_inst.image_xscale=0.5;
			_sparkle_inst.image_yscale=0.5;
			Anim_Create(_sparkle_inst,"image_alpha",0,0,0,1,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
		}
		if(_timer==60){
			Anim_Create(_sparkle_inst,"y",0,0,_sparkle_inst.y,char_player.y-15,60,0,-1,-1,ANIM_MODE.ONESHOT,false);
		}
		if(_timer==120){
			_given_egg=true;
			Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.GIVEN_EGG_001,true);
			char_player.moveable=true;
			instance_destroy(_sparkle_inst);
			Sfx_Play(snd_item_equip);
			Item_Add(item_egg);
			Dialog_Add_Ext(Lang_GetString("item.get"),"{define `ITEM` `"+Lang_GetString("item.egg.name")+"`}");
			Dialog_Start();
		}
	}
}