Flag_SetSaveSlot(_chosen_file);
Flag_Init();

if(_menu==0||_menu==9999){
	var _heart_posX = _heart_pos_curr_x;
	var _heart_posY = _heart_pos_curr_y;
	if(_choice_file_phase==1&&_menu==0){
		_heart_posX=_heart_pos_x[3+_choice+(_choice_tools_phase==0 ? 0 : 2)];
		_heart_posY=_heart_pos_y[3+_choice+(_choice_tools_phase==0 ? 0 : 2)];
	}
	else {
		_heart_posX=_heart_pos_x[_choice+(_choice_file_phase==1 ? 3 : (_choice_file_phase==2 ? 7 : 0))];
		_heart_posY=_heart_pos_y[_choice+(_choice_file_phase==1 ? 3 : (_choice_file_phase==2 ? 7 : 0))];
	}
	
	_heart_pos_curr_x=lerp(_heart_pos_curr_x,_heart_posX,0.5);
	_heart_pos_curr_y=lerp(_heart_pos_curr_y,_heart_posY,0.5);
}

if(_menu==-1){
	_menu=0;
	event_user(0);
}else if(_menu==0){
	if(!_mode_copy){
		_mode_copy_to=false;
	}
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
					_choice_tools_phase=0;
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
			_chosen_file=_choice;
			if(!_mode_copy&&!_mode_erase){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				_choice_file_phase=2;
				_choice=0;
			}
			else{
				if(_mode_copy){
					if(_file_to_copy<0) {
						if((file_exists("./"+GAME_SAVE_NAME+"./flag/"+string(_chosen_file)+"/info"))){
							audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
							_file_to_copy=_chosen_file;
							_mode_copy_to=true;
							_choice_file_phase=0;
							_choice=0;
							event_user(0);
						}
						else {
							Sfx_Play(snd_error);
						}
					}
					else {
						if(_file_to_copy==_chosen_file){
							Sfx_Play(snd_error);
						}
						else {
							_file_to_copy_to=_chosen_file;
							_choice_file_phase=2;
							_choice=0;
						}
					}
				}
				else if(_mode_erase){
					if((file_exists("./"+GAME_SAVE_NAME+"./flag/"+string(_chosen_file)+"/info"))){
							audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
							_file_to_erase=_chosen_file;
							_choice_file_phase=2;
							_choice=0;
							event_user(0);
						}
						else {
							Sfx_Play(snd_error);
						}
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
		if(_choice_tools_phase==0){
			if(Input_IsPressed(INPUT.LEFT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice>0)
					_choice--;
				else {
					_choice_tools_phase=1;
					_choice=1;
				}
			}else if(Input_IsPressed(INPUT.RIGHT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice<1)
					_choice++;
				else {
					_choice_tools_phase=1;
					_choice=0;
				}
			}else if(Input_IsPressed(INPUT.UP)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice=2;
				_choice_file_phase=0;
			}else if(Input_IsPressed(INPUT.DOWN)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice_tools_phase=1;
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
				}
			}
		}
		else if(_choice_tools_phase==1){
			if(Input_IsPressed(INPUT.LEFT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice>0)
					_choice--;
				else {
					_choice_tools_phase=0;
					_choice=1;
				}
			}else if(Input_IsPressed(INPUT.RIGHT)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				if(_choice<1)
					_choice++;
				else {
					_choice_tools_phase=0;
					_choice=0;
				}
			}else if(Input_IsPressed(INPUT.UP)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
				_choice_tools_phase=0;
			}else if(Input_IsPressed(INPUT.CONFIRM)){
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				if(_choice==0){
					_menu=4;
					_choice=0;
					event_user(0);
				}else if(_choice==1){
					if(alarm[3]<0) alarm[3]=5;
					BGM_SetVolume(0,0,5);
					fader.depth=-9999;
					Fader_Fade(-1,1,5);
					_menu=-9999;
				}
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
						Fader_Fade(-1,1,15);
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
						event_user(6);
						event_user(0);
					} else if(_mode_erase) {
						if(_mode_erase_confirmation==1){
							directory_destroy("./"+GAME_SAVE_NAME+"./flag/"+string(_file_to_erase)+"/");
							_mode_erase=false;
							_file_to_erase=-1;
							_choice_file_phase=0;
							_mode_erase_confirmation=0;
							_choice=0;
							event_user(6);
						}
						else {
							_mode_erase_confirmation=1;	
						}
						event_user(0);
					}
				}
			}
			else if (_choice==1) {
				_choice=_chosen_file;
				_choice_file_phase=0;
				_mode_erase_confirmation=0;
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
else if(_menu==4){
	if(Input_IsPressed(INPUT.DOWN)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
		if(_choice<7)
			_choice++;
		else {
			_choice=0;
		}
	}else if(Input_IsPressed(INPUT.UP)){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
		if(_choice>0)
			_choice--;
		else _choice=7;
	}
	if(Input_IsHeld(INPUT.LEFT)){
		_noise_timer++;
		switch(_choice){
			case 0:
				if(global.bgm_volume>=0) {
					if(_noise_timer%3==0)
						audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
					audio_emitter_gain(global._gmu_emitter_bgm,audio_emitter_get_gain(global._gmu_emitter_bgm)-0.01);
					global.bgm_volume-=0.01;
				}
				break;
			case 1:
				if(global.sfx_volume>=0) {
					if(_noise_timer%3==0)
						audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
					audio_emitter_gain(global._gmu_emitter_sfx,audio_emitter_get_gain(global._gmu_emitter_sfx)-0.01);
					global.sfx_volume-=0.01;
				}
				break;
		}
	}else if(Input_IsHeld(INPUT.RIGHT)){
		_noise_timer++;
		switch(_choice){
			case 0:
				if(global.bgm_volume<1) {
					if(_noise_timer%3==0)
						audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
					audio_emitter_gain(global._gmu_emitter_bgm,audio_emitter_get_gain(global._gmu_emitter_bgm)+0.01);
					global.bgm_volume+=0.01;
				}
				break;
			case 1:
				if(global.sfx_volume<1) {
					if(_noise_timer%3==0)
						audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,false,0);
					audio_emitter_gain(global._gmu_emitter_sfx,audio_emitter_get_gain(global._gmu_emitter_sfx)+0.01);
					global.sfx_volume+=0.01;
				}
				break;
		}
	}else if(Input_IsPressed(INPUT.CONFIRM)){
		switch (_choice){
			case 2:
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				global.low_vfx=!global.low_vfx;
				break;
			case 3:
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				global.auto_run=!global.auto_run;
				break;
			case 4:
				if(global.chosen_language<ds_list_size(global._gmu_lang_list)-1)
					global.chosen_language++;
				else global.chosen_language=0;
						
				for (var i = 0; i < ds_list_size(global._gmu_lang_list); i++){
					if (global.chosen_language == i) {
						Lang_LoadFont(i);
						Lang_LoadSprite(i);
						Lang_LoadString(i);
					}
				}
				break;
			case 5:
				audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
				if(global.chosen_border<3)
					global.chosen_border++;
				else global.chosen_border=0;
						
				switch (global.chosen_border) {
					case 0:
						Border_SetEnabled(false);
						break;
					case 1:
						Border_SetEnabled(true);
						Border_SetSprite(spr_border_simple);
						break;
					case 2:
						Border_SetEnabled(true);
						Border_SetSprite(spr_border_rounded);
						break;
					case 3:
						Border_SetEnabled(true);
						break;
				}
				break;
			case 6:
				_menu=5;
				_choice=0;
				break;
			case 7:
				_menu=0;
				_choice_file_phase=1;
				_choice_tools_phase=1;
				_choice=0;
				
				ini_open("settings.ini");
				ini_write_real("General","Language",global.chosen_language);
				ini_write_real("General","SFXVolume",audio_emitter_get_gain(global._gmu_emitter_sfx));
				ini_write_real("General","BGMVolume",audio_emitter_get_gain(global._gmu_emitter_bgm));
				ini_write_real("General","LowVFX",global.low_vfx);
				ini_write_real("General","Border",global.chosen_border);
				ini_write_real("General","DialogueBoxStyle",global.dialogue_box_style);
				ini_write_real("Keyboard","Confirm",Input_GetKey(INPUT.CONFIRM));
				ini_write_real("Keyboard","Cancel",Input_GetKey(INPUT.CANCEL));
				ini_write_real("Keyboard","Menu",Input_GetKey(INPUT.MENU));
				ini_write_real("Keyboard","Left",Input_GetKey(INPUT.LEFT));
				ini_write_real("Keyboard","Right",Input_GetKey(INPUT.RIGHT));
				ini_write_real("Keyboard","Up",Input_GetKey(INPUT.UP));
				ini_write_real("Keyboard","Down",Input_GetKey(INPUT.DOWN));
				ini_close();
				
				event_user(0);
				break;
		}
	}
}
else if(_menu==5){
	if(!_mode_set_keybind){
		if(Input_IsPressed(INPUT.DOWN)){
			audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
			if(_choice<7)
				_choice++;
			else {
				_choice=0;
			}
		}else if(Input_IsPressed(INPUT.UP)){
			audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_switch,0,false);
			if(_choice>0)
				_choice--;
			else _choice=7;
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			audio_play_sound_on(global._gmu_emitter_sfx,snd_menu_confirm,0,false);
			switch (_choice){
				case 0:
				case 1:
				case 2:
				case 3:
				case 4:
				case 5:
				case 6:
					_mode_set_keybind=true;
					break;
				case 7:
					_menu=4;
					_choice=6;
					break;
			}
		}
	}
	else{
		_set_key = function (key) {
			Input_Unbind(key);
			Input_Bind(key,INPUT_TYPE.KEYBOARD,0,keyboard_lastkey);
		}
		
		var notice="We coding like YandereDev with this one";
		if(keyboard_check_pressed(vk_anykey)) {
			if(_choice==0&&(keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==1&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==2&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==3&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==4&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==5&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.DOWN)))||
				
			(_choice==6&&(keyboard_lastkey==Input_GetKey(INPUT.CONFIRM)||
							keyboard_lastkey==Input_GetKey(INPUT.CANCEL)||
							keyboard_lastkey==Input_GetKey(INPUT.MENU)||
							keyboard_lastkey==Input_GetKey(INPUT.LEFT)||
							keyboard_lastkey==Input_GetKey(INPUT.RIGHT)||
							keyboard_lastkey==Input_GetKey(INPUT.UP)))
				{
					Sfx_Play(snd_error);
				}
			else {
				_set_key((_choice==0 ? INPUT.CONFIRM : (_choice==1 ? INPUT.CANCEL : 
						(_choice==2 ? INPUT.MENU : (_choice==3 ? INPUT.LEFT : 
						(_choice==4 ? INPUT.RIGHT : (_choice==5 ? INPUT.UP : INPUT.DOWN)))))));
				_mode_set_keybind=false;
			}
		}
	}
}

if(_menu==2||_menu==3){
	for (var i = 0; i < instance_number(text_typer); i++) {
		var list=instance_find(text_typer,i)._list_inst;
		var proc=0;
		repeat(ds_list_size(list)){
			var inst_single=list[|proc];
			inst_single.alpha=1-_confirm_fade_alpha;
			proc+=1;
		}
	}
	if(_confirm_name_update){
		_confirm_name_offset_x=random_range(-1,1);
		_confirm_name_offset_y=random_range(-1,1);
		_confirm_name_angle=random_range(-1,1);
	}
	_confirm_name_update=!_confirm_name_update;
}