_noise_timer++;
if(_phase==0){
	if(_state==-20){
		if(Input_IsHeld(INPUT.LEFT)){
			if(audio_emitter_get_gain(global._gmu_emitter_sfx)>=0) {
				if(_noise_timer%3==0)
					audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
				audio_emitter_gain(global._gmu_emitter_sfx,audio_emitter_get_gain(global._gmu_emitter_sfx)-0.01);
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(audio_emitter_get_gain(global._gmu_emitter_sfx)<1) {
				if(_noise_timer%3==0)
					audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
				audio_emitter_gain(global._gmu_emitter_sfx,audio_emitter_get_gain(global._gmu_emitter_sfx)+0.01);
			}
		}
		if(!instance_exists(_text_sfx_volume)){
			_state=0;
		}
		else _text_sfx_volume.str_text=Lang_GetString("settings.option.3") + ": " + string(round(audio_emitter_get_gain(global._gmu_emitter_sfx)*100)) + "%";
	}
	if(_state==-10){
		if(Input_IsHeld(INPUT.LEFT)){
			if(audio_emitter_get_gain(global._gmu_emitter_bgm)>=0) {
				if(_noise_timer%3==0)
					audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
				audio_emitter_gain(global._gmu_emitter_bgm,audio_emitter_get_gain(global._gmu_emitter_bgm)-0.01);
			}
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(audio_emitter_get_gain(global._gmu_emitter_bgm)<1) {
				if(_noise_timer%3==0)
					audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
				audio_emitter_gain(global._gmu_emitter_bgm,audio_emitter_get_gain(global._gmu_emitter_bgm)+0.01);
			}
		}
		if(!instance_exists(_text_bgm_volume)){
			_state=0;
		}
		else _text_bgm_volume.str_text=Lang_GetString("settings.option.2") + ": " + string(round(audio_emitter_get_gain(global._gmu_emitter_bgm)*100)) + "%";
	}
	if(_state==0){
		_selection_max=array_length(_contents[_selection_phase])-1;
		if(_selection_phase==0){
			if(Input_IsPressed(INPUT.UP)){
				if(_selection>0)
					_selection--;
				else _selection=_selection_max;
			}
			if(Input_IsPressed(INPUT.DOWN)){
				if(_selection<_selection_max)
					_selection++;
				else {
					_selection=-1;
					_selection_phase=1;
				}
			}
			if(Input_IsPressed(INPUT.CONFIRM)){
				switch (_selection) {
					case 0:
						window_set_fullscreen(!window_get_fullscreen());
						break;
					case 1:
						if(_chosen_language<1)
							_chosen_language++;
						else _chosen_language=0;
						
						switch (_chosen_language) {
							case 0:
								Lang_LoadFont(0);
								Lang_LoadSprite(0);
								Lang_LoadString(0);
								break;
							case 1:
								Lang_LoadFont(1);
								Lang_LoadSprite(1);
								Lang_LoadString(1);
								break;
						}
						global.chosen_language = _chosen_language;
						break;
					case 2:
						_text_bgm_volume=Create_Overlay_Text(Lang_GetString("settings.option.2") + ": " + string(round(audio_emitter_get_gain(global._gmu_emitter_bgm)*100)) + "%", 1, c_black, c_white, 0.9);
						_state=-10;
						break;
					case 3:
						_text_sfx_volume=Create_Overlay_Text(Lang_GetString("settings.option.3") + ": " + string(round(audio_emitter_get_gain(global._gmu_emitter_sfx))) + "%", 1, c_black, c_white, 0.9);
						_state=-20;
						break;
				}
			}
		}
		if(_selection_phase==1){
			if(Input_IsPressed(INPUT.UP)){
				if(_selection>0)
					_selection--;
				else {
					_selection=4;
					_selection_phase=0;
				}
			}
			if(Input_IsPressed(INPUT.DOWN)){
				if(_selection<_selection_max)
					_selection++;
				else _selection=0;
			}
			if(Input_IsPressed(INPUT.CONFIRM)){
				switch (_selection) {
					case 0:
						room_goto(room_menu);
						break;
					case 3:
						_phase = 1;
						break;
				}
			}
		}
	}
}

_headers=[
	Lang_GetString("settings.headers.0"),
	Lang_GetString("settings.headers.1")
];

_contents=[
	[
		Lang_GetString("settings.option.0"),
		Lang_GetString("settings.option.1"),
		Lang_GetString("settings.option.2"),
		Lang_GetString("settings.option.3"),
		Lang_GetString("settings.option.4"),
	],
	[
		Lang_GetString("settings.option.5"),
		Lang_GetString("settings.option.6"),
		Lang_GetString("settings.option.7"),
		Lang_GetString("settings.option.8"),
	]
];