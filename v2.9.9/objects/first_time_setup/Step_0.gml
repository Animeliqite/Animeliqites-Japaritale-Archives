if(selection==0){
	if(Input_IsPressed(INPUT.LEFT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection>0)
			sub_selection--;
		else sub_selection=1;
	}
	if(Input_IsPressed(INPUT.RIGHT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection<1)
			sub_selection++;
		else sub_selection=0;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
		window_set_fullscreen(sub_selection==0 ? true : false);
	}
	if(Input_IsPressed(INPUT.DOWN)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=1;
		sub_selection=0;
	}
}
else if(selection==1){
	if(Input_IsPressed(INPUT.LEFT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection>0)
			sub_selection--;
		else sub_selection=3;
	}
	if(Input_IsPressed(INPUT.RIGHT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection<3)
			sub_selection++;
		else sub_selection=0;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
		switch(sub_selection){
			case 0: global.chosen_border=0; Border_SetEnabled(false); window_center(); break;
			case 1: global.chosen_border=1; Border_SetEnabled(true); Border_SetSprite(spr_border_simple); window_center(); break;
			case 2: global.chosen_border=2; Border_SetEnabled(true); Border_SetSprite(spr_border_rounded); window_center(); break;
			case 3: global.chosen_border=3; Border_SetEnabled(true); window_center(); break;
		}
	}
	if(Input_IsPressed(INPUT.UP)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=0;
		sub_selection=0;
	}
	if(Input_IsPressed(INPUT.DOWN)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=2;
		sub_selection=0;
	}
}
else if(selection==2){
	if(Input_IsPressed(INPUT.LEFT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection>0)
			sub_selection--;
		else sub_selection=1;
	}
	if(Input_IsPressed(INPUT.RIGHT)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		if(sub_selection<1)
			sub_selection++;
		else sub_selection=0;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
		global.low_vfx=(sub_selection==0 ? true : false);
	}
	if(Input_IsPressed(INPUT.UP)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=1;
		sub_selection=0;
	}
	if(Input_IsPressed(INPUT.DOWN)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=3;
		sub_selection=0;
	}
}
else if(selection==3){
	if(Input_IsPressed(INPUT.CONFIRM)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,false,0);
		Fader_Fade(-1,1,15);
		alarm[0]=15;
	}
	if(Input_IsPressed(INPUT.UP)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,false,0);
		selection=2;
		sub_selection=0;
	}
}