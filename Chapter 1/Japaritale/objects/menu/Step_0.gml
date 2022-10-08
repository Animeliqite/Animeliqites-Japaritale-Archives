Flag_SetSaveSlot(_chosen_file);
Flag_Init();
				
if(_menu==-1){
	_menu=0;
	event_user(0);
}else if(_menu==0){
	if(_mode==0){
		if(Input_IsPressed(INPUT.DOWN)){
			if(_choice<1){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice>0){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu=1;
				event_user(0);
			}else{
				room_goto(room_settings);
				BGM_Stop(0);
			}
		}
	}else{
		_heart_pos_curr_x=lerp(_heart_pos_curr_x,_heart_pos_x[_choice+(_choice_file_phase==1 ? 3 : (_choice_file_phase==2 ? 6 : 0))],0.5);
		_heart_pos_curr_y=lerp(_heart_pos_curr_y,_heart_pos_y[_choice+(_choice_file_phase==1 ? 3 : (_choice_file_phase==2 ? 6 : 0))],0.5);
		if(_choice_file_phase==0){
			_chosen_file=_choice;
			if(Input_IsPressed(INPUT.DOWN)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice<2)
					_choice++;
				else {
					if(!_mode_copy&&!_mode_erase){
						_choice=0;
						_choice_file_phase=1;
					}
					else{
						_choice=0;
					}
				}
			}else if(Input_IsPressed(INPUT.UP)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice>0)
					_choice--;
				else _choice=2;
			}
			else if(Input_IsPressed(INPUT.CONFIRM)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				_chosen_file=_choice;
				if(!_mode_copy&&!_mode_erase){
					_choice_file_phase=2;
					_choice=0;
				}
				else{
					if(_mode_copy){
						if(_file_to_copy<0) {
							if((file_exists("./"+GAME_SAVE_NAME+"./flag/"+string(_chosen_file)+"/info"))){
								_file_to_copy=_chosen_file;
								_choice_file_phase=0;
								_choice=0;
							}
						}
						else {
							_file_to_copy_to=_chosen_file;
							_choice_file_phase=2;
							_choice=0;
						}
					}
					else if(_mode_erase){
						_file_to_erase=_chosen_file;
						_choice_file_phase=2;
						_choice=0;
					}
				}
			}
			else if(Input_IsPressed(INPUT.CANCEL)){
				if(_mode_copy||_mode_erase){
					_mode_copy=false;
					_mode_erase=false;
					_file_to_copy=-1;
					_file_to_copy_to=-1;
					_file_to_erase=-1;
					_choice_file_phase=0;
					event_user(0);
					_choice=0;
				}
			}
		}
		else if(_choice_file_phase==1){
			if(Input_IsPressed(INPUT.LEFT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice>0)
					_choice--;
				else _choice=2;
			}else if(Input_IsPressed(INPUT.RIGHT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice<2)
					_choice++;
				else _choice=0;
			}else if(Input_IsPressed(INPUT.UP)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice=2;
				_choice_file_phase=0;
			}
			else if(Input_IsPressed(INPUT.CONFIRM)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				if(_choice==0){
					_mode_copy=true;
					_choice_file_phase=0;
					_choice=0;
					event_user(0);
				}else if(_choice==1){
					_mode_erase=true;
					_choice_file_phase=0;
					_choice=0;
					event_user(0);
				}else if(_choice==2){
					room_goto(room_settings);
				}
			}
		}
		else if(_choice_file_phase==2){
			if(Input_IsPressed(INPUT.LEFT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice=!_choice;
			}else if(Input_IsPressed(INPUT.RIGHT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice=!_choice;
			}else if(Input_IsPressed(INPUT.CONFIRM)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				if(_choice==0) {
					if(!_mode_copy&&!_mode_erase){
						if (file_exists("./"+GAME_SAVE_NAME+"./flag/"+string(_chosen_file)+"/info")) {
							if(alarm[2]<0) alarm[2]=15;
							fader.depth=-9999;
							Fader_Fade(0,1,15);
							BGM_Stop(0);
							_menu=-9999;
						}
						else {
							_menu=1;
							event_user(0);
						}
					}
					else {
						if(_mode_copy){
							Player_Load(_file_to_copy);
							Player_Save(_file_to_copy_to);
							_file_to_copy=-1;
							_file_to_copy_to=-1;
							_choice_file_phase=0;
							_mode_copy=false;
							_choice=0;
							event_user(0);
						} else if(_mode_erase) {
							directory_destroy("./"+GAME_SAVE_NAME+"./flag/"+string(_file_to_erase)+"/");
							_mode_erase=false;
							_file_to_erase=-1;
							_choice_file_phase=0;
							_choice=0;
							event_user(0);
						}
					}
				}
				else if (_choice==1) {
					_choice=_chosen_file;
					_choice_file_phase=0;
				}
			}
		}
		/*if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				if (file_exists(Flag_GetSavePath(FLAG_TYPE.INFO))) {
					Player_Load(0);
					var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,-1);
					if(room_exists(target)){
						room_goto(target);
						BGM_Stop(0);
					}else{
						show_message("ERROR:\nAttempt to goto an unexisting room "+string(target));
					}
				}
				else {
					_menu=2;
					_naming_name=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
					_confirm_title=Lang_GetString("menu.confirm.title.reset");
					event_user(0);
				}
			}else if(_choice==2){
				room_goto(room_settings);
				BGM_Stop(0);
			}
		}*/
	}
}else if(_menu==1){
	if(string_lower(_naming_name)=="cellien"&&alarm[1]<0) {
		BGM_Stop(0);
		Create_Trophy(spr_trophy_cellien);
		Fader_Fade(-1, 1, 15, 70);
		alarm[1]=100;
	}
	if (alarm[1]<0) {
		if(_choice_naming==0){
			if(Input_IsPressed(INPUT.RIGHT)){
				if(_choice_naming_letter<25){
					_choice_naming_letter+=1;
					event_user(3);
				}
				else{
					_choice_naming=1;
					_choice_naming_command=0;
					event_user(3);
				}
			}else if(Input_IsPressed(INPUT.LEFT)){
				if(_choice_naming_letter>0){
					_choice_naming_letter-=1;
					event_user(3);
				}
			}else if(Input_IsPressed(INPUT.UP)){
				if(_choice_naming_letter>=0&&_choice_naming_letter<=5){
					_choice_naming_letter+=20;
				}else if(_choice_naming_letter>=6&&_choice_naming_letter<=7){
					_choice_naming=1;
					_choice_naming_command=0;
				}else if(_choice_naming_letter>=8&&_choice_naming_letter<=9){
					_choice_naming=1;
					_choice_naming_command=1;
				}else{
					_choice_naming_letter-=10;
				}
				event_user(3);
			}else if(Input_IsPressed(INPUT.DOWN)){
				if(_choice_naming_letter>=16&&_choice_naming_letter<=17){
					_choice_naming=1;
					_choice_naming_command=0;
				}else if(_choice_naming_letter>=18&&_choice_naming_letter<=19){
					_choice_naming=1;
					_choice_naming_command=1;
				}else if(_choice_naming_letter>=20&&_choice_naming_letter<=25){
					_choice_naming_letter-=20;
				}else{
					_choice_naming_letter+=10;
				}
				event_user(3);
			}else if(Input_IsPressed(INPUT.CONFIRM)){
				if(string_length(_naming_name)<12){
					var inst=_inst_naming_letters._list_inst[|_choice_naming_letter];
					_naming_name+=inst.text;
				}
			}else if(Input_IsPressed(INPUT.CANCEL)){
				if(string_length(_naming_name)>0){
					_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
				}
				else{
					_menu=0;
					event_user(0);
				}
			}
		}else{
			if(Input_IsPressed(INPUT.RIGHT)){
				if(_choice_naming_command<1){
					_choice_naming_command+=1;
					event_user(3);
				}
			}else if(Input_IsPressed(INPUT.LEFT)){
				if(_choice_naming_command>0){
					_choice_naming_command-=1;
					event_user(3);
				}
				else{
					_choice_naming=0;
					_choice_naming_letter=25;
					event_user(3);
				}
			}else if(Input_IsPressed(INPUT.UP)){
				if(_choice_naming_command==0){
					_choice_naming=0;
					_choice_naming_letter=16;
				}else if(_choice_naming_command==1){
					_choice_naming=0;
					_choice_naming_letter=18;
				}
				event_user(3);
			}else if(Input_IsPressed(INPUT.DOWN)){
				if(_choice_naming_command==0){
					_choice_naming=0;
					_choice_naming_letter=6;
				}else if(_choice_naming_command==1){
					_choice_naming=0;
					_choice_naming_letter=8;
				}
				event_user(3);
			}else if(Input_IsPressed(INPUT.CONFIRM)){
				//if(_choice_naming_command==0){
				//	_menu=0;
				//	event_user(0);
				//}
				if(_choice_naming_command==0){
					if(string_length(_naming_name)>0){
						_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
					}
				}
				if(_choice_naming_command==1){
					if(_naming_name!=""){
						event_user(4);
						_menu=3;
						event_user(0);
					}
				}
			}else if(Input_IsPressed(INPUT.CANCEL)){
				if(string_length(_naming_name)>0){
					_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
				}
				else{
					_menu=0;
					event_user(0);
				}
			}
		}
	}
}else if(_menu==2){
	if(Input_IsPressed(INPUT.LEFT)){
		if(_choice_confirm>0){
			_choice_confirm=0;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.RIGHT)){
		if(_choice_confirm<1&&_confirm_valid){
			_choice_confirm=1;
			event_user(5);
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		if(_choice_confirm==0){
			_menu=(_mode==0 ? 1 : 0);
			event_user(0);
		}else{
			_menu=3;
			event_user(0);
		}
	}
}

if(_menu==2||_menu==3){
	if(_confirm_name_update){
		_confirm_name_offset_x=random_range(-1,1);
		_confirm_name_offset_y=random_range(-1,1);
		_confirm_name_angle=random_range(-1,1);
	}
	_confirm_name_update=!_confirm_name_update;
}