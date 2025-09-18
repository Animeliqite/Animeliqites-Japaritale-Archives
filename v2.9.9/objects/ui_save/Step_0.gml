destroy = function () {
	if(instance_exists(char_player)) char_player._moveable_dialog=true;
	instance_destroy();
}

if(_state==-1){
	if(!instance_exists(ui_dialog)){
		_state=0;
		event_user(0);
	}
}else if(_state==0){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice>0){
			_choice--;
		}
		else {
			_choice=2;
		}
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.DOWN)){
		if(_choice<2){
			_choice++;
		}
		else {
			_choice=0;
		}
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice==0){
			_state=1;
			event_user(0);
		}else if(_choice==1){
			audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
			BGM_Stop(0);
			Fader_Fade(0, 1, 15);
			alarm[1]=15;
			_state=-9999;
			
			if(instance_exists(_inst_name)){
				instance_destroy(_inst_name);
			}
			if(instance_exists(_inst_lv)){
				instance_destroy(_inst_lv);
			}
			if(instance_exists(_inst_time)){
				instance_destroy(_inst_time);
			}
			if(instance_exists(_inst_room)){
				instance_destroy(_inst_room);
			}
			if(instance_exists(_inst_save)){
				instance_destroy(_inst_save);
			}
			if(instance_exists(_inst_return)){
				instance_destroy(_inst_return);
			}
			if(instance_exists(_inst_menu)){
				instance_destroy(_inst_menu);
			}
		}else if(_choice==2){
			destroy();
		}
	}else if(Input_IsPressed(INPUT.CANCEL)){
		destroy();
	}
}else if(_state==1){
	if(Input_IsPressed(INPUT.UP)){
		if(_choice>0){
			_choice--;
		}
		else {
			_choice=1;
		}
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.DOWN)){
		if(_choice<1){
			_choice++;
		}
		else {
			_choice=0;
		}
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice==1){
			audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
			BGM_Stop(0);
			Fader_Fade(0, 1, 15);
			alarm[1]=15;
			_state=-9999;
			
			if(instance_exists(_inst_name)){
				instance_destroy(_inst_name);
			}
			if(instance_exists(_inst_lv)){
				instance_destroy(_inst_lv);
			}
			if(instance_exists(_inst_time)){
				instance_destroy(_inst_time);
			}
			if(instance_exists(_inst_room)){
				instance_destroy(_inst_room);
			}
			if(instance_exists(_inst_save)){
				instance_destroy(_inst_save);
			}
			if(instance_exists(_inst_return)){
				instance_destroy(_inst_return);
			}
			if(instance_exists(_inst_menu)){
				instance_destroy(_inst_menu);
			}
		}else if(_choice==0){
			destroy();
		}
	}else if(Input_IsPressed(INPUT.CANCEL)){
		destroy();
	}
}