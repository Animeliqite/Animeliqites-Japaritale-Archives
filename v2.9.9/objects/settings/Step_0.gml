_noise_timer++;
if(_phase==-2){
	BGM_SetVolume(0,0,15);
	Fader_Fade(-1,1,15);
	alarm[3]=15;
	_phase=-9999;
}
else if(_phase==-1){
	if(_phase==-1) BGM_SetVolume(0,0,15);
	Fader_Fade(-1,1,15);
	alarm[1]=30;
	_phase=-9999;
}
else if(_phase==-1.5){
	Fader_Fade(-1,1,15);
	alarm[2]=15;
	_phase=-9999;
}
else if(_phase==0&&!_show_bars){
	if(_subphase==0){
		if(_state==-1){
			if(keyboard_check_pressed(ord("Y"))) {
				directory_destroy("./"+GAME_SAVE_NAME+"./flag/");
				file_delete("settings.ini");
				game_restart();
			}
			else if (keyboard_check_pressed(ord("N"))) {
				_state=0;
			}
		}
		else {
			if(Input_IsPressed(INPUT.UP)){
				if(_selection_phase==0){
					_selection_max=array_length(_contents[_subphase][0]);
					if(_selection>0)
						_selection--;
					else {
						_selection=_selection_max-1;
					}
				}
			}
			if(Input_IsPressed(INPUT.DOWN)){
				if(_selection_phase==0){
					_selection_max=array_length(_contents[_subphase][0]);
					if(_selection<_selection_max-1)
						_selection++;
					else {
						_selection=0;
					}
				}
			}
			if(Input_IsPressed(INPUT.CONFIRM)){
				if(_selection_phase==0){
					switch(_selection){
						case 0:
							window_set_fullscreen(false);
							url_open("https://github.com/Animeliqite/Animeliqites-Japaritale-Archives");
							break;
						case 1:
							global.dialogue_box_style=!global.dialogue_box_style;
							break;
						case 2:
							_phase=-1.5;
							break;
						case 3:
							_phase=-2;
							break;
						case 4:
							_state=-1;
							Create_Overlay_Text(Lang_GetString("settings.extras.delete_all_data.confirm"), 3, c_black, c_white, 0.9);
							break;
						case 5:
							_phase=-1;
							break;
					}
				}
			}
		}
	}
}

_prepare_strings();