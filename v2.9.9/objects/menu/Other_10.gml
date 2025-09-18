///@desc Menu Switch

if(_menu==0){
	_mode=directory_exists("./"+GAME_SAVE_NAME+"./flag/");
	
	if (_mode_copy){
		instance_destroy(_inst_header_erase);
		instance_destroy(_inst_header_copy);
		instance_destroy(_inst_header);
		if (!instance_exists(_inst_header_copy)) {
			_inst_header_copy=instance_create_depth(80,30,0,text_typer);
			_inst_header_copy.text=_prefix+Lang_GetString("menu.file.copy" + (_mode_copy_to ? ".1" : ""));
			_inst_header_copy.depth=-300;
		}
	}else if(_mode_erase) {
		instance_destroy(_inst_header_copy);
		instance_destroy(_inst_header);
		if (!instance_exists(_inst_header_erase)) {
			_inst_header_erase=instance_create_depth(80,30,0,text_typer);
			_inst_header_erase.text=_prefix+Lang_GetString("menu.file.erase");
			_inst_header_erase.depth=-300;
		}
	}else{
		instance_destroy(_inst_header_copy);
		instance_destroy(_inst_header_erase);
		if (!instance_exists(_inst_header)) {
			_inst_header=instance_create_depth(80,30,0,text_typer);
			_inst_header.text=_prefix+Lang_GetString("menu.file.choose");
			_inst_header.depth=-300;
		}
	}
			
	/*_inst_name=instance_create_depth(140,124,0,text_typer);
	_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
	_inst_lv=instance_create_depth(308,124,0,text_typer);
	_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
	_inst_time=instance_create_depth(452,124,0,text_typer);
	var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
	var minute=time div 60;
	var second=time mod 60;
	_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
	_inst_room=instance_create_depth(140,160,0,text_typer);
	_inst_room.text=_prefix+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM));
	_inst_continue=instance_create_depth(170,210,0,text_typer);
	_inst_continue.text=_prefix+Lang_GetString("menu.continue");
	_inst_continue.override_color_text_enabled=true;
	_inst_reset=instance_create_depth(390,210,0,text_typer);
	_inst_reset.text=_prefix+Lang_GetString("menu.reset");
	_inst_reset.override_color_text_enabled=true;
	_inst_settings=instance_create_depth(264,250,0,text_typer);
	_inst_settings.text=_prefix+Lang_GetString("menu.settings");
	_inst_settings.override_color_text_enabled=true;*/
	//event_user(2);
	
}else{
	if(instance_exists(_inst_instruction)){
		instance_destroy(_inst_instruction);
	}
	if(instance_exists(_inst_header)){
		instance_destroy(_inst_header);
	}
	if(instance_exists(_inst_header_copy)){
		instance_destroy(_inst_header_copy);
	}
	if(instance_exists(_inst_header_erase)){
		instance_destroy(_inst_header_erase);
	}
	if(instance_exists(_inst_begin)){
		instance_destroy(_inst_begin);
	}
	if(instance_exists(_inst_settings)){
		instance_destroy(_inst_settings);
	}
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
	if(instance_exists(_inst_continue)){
		instance_destroy(_inst_continue);
	}
	if(instance_exists(_inst_reset)){
		instance_destroy(_inst_reset);
	}
}

if(_menu==1||_menu==3){
	if(!instance_exists(_inst_naming_title)){
		_inst_naming_title=instance_create_depth(320-(string_width(Lang_GetString("menu.naming.title"))),60,0,text_typer);
		_inst_naming_title.text=_prefix+Lang_GetString("menu.naming.title");
		_inst_naming_title.depth=-300;
	}
	if(!instance_exists(_inst_naming_letters)){
		_inst_naming_letters=instance_create_depth(120,152,0,text_typer);
		_inst_naming_letters.text=_prefix+"{font 0}{effect 0}{space_x 13}{space_y 4}ABCDEFGHIJ&KLMNOPQRST&UVWXYZ";
		_inst_naming_letters.depth=-300;
	}
	if(!instance_exists(_inst_naming_backspace)){
		_inst_naming_backspace=instance_create_depth(374,232,0,text_typer);
		_inst_naming_backspace.text=_prefix+"{effect 0}"+string_upper(Lang_GetString("menu.naming.backspace"));
		_inst_naming_backspace.depth=-300;
	}
	if(!instance_exists(_inst_naming_done)){
		_inst_naming_done=instance_create_depth(458,232,0,text_typer);
		_inst_naming_done.text=_prefix+"{effect 0}"+string_upper(Lang_GetString("menu.naming.end"));
		_inst_naming_done.depth=-300;
	}
	
	with(text_typer){
		event_user(15);
	}
	event_user(3);
}else{
	if(instance_exists(_inst_naming_title)){
		instance_destroy(_inst_naming_title);
	}
	if(instance_exists(_inst_naming_letters)){
		instance_destroy(_inst_naming_letters);
	}
	if(instance_exists(_inst_naming_quit)){
		instance_destroy(_inst_naming_quit);
	}
	if(instance_exists(_inst_naming_backspace)){
		instance_destroy(_inst_naming_backspace);
	}
	if(instance_exists(_inst_naming_done)){
		instance_destroy(_inst_naming_done);
	}
}

if(_menu==2){
	_inst_confirm_title=instance_create_depth(180,60,0,text_typer);
	_inst_confirm_title.text=_prefix+_confirm_title;
	_inst_confirm_no=instance_create_depth(146,400,0,text_typer);
	_inst_confirm_no.text=_prefix+"No";
	_inst_confirm_yes=instance_create_depth(460,400,0,text_typer);
	_inst_confirm_yes.text=_prefix+"Yes";
	_confirm_name_x=280;
	_confirm_name_y=110;
	_confirm_name_scale=2;
	Anim_Destroy(id,"_confirm_name_x");
	Anim_Destroy(id,"_confirm_name_y");
	Anim_Destroy(id,"_confirm_name_scale");
	Anim_Create(id,"_confirm_name_x",0,0,280,-80,135);
	Anim_Create(id,"_confirm_name_y",0,0,110,120,135);
	Anim_Create(id,"_confirm_name_scale",0,0,2,5,135);
	_choice_confirm=0;
	with(text_typer){
		event_user(15);
	}
	event_user(5);
}else{
	if(instance_exists(_inst_confirm_title)){
		instance_destroy(_inst_confirm_title);
	}
	if(instance_exists(_inst_confirm_no)){
		instance_destroy(_inst_confirm_no);
	}
	if(instance_exists(_inst_confirm_yes)){
		instance_destroy(_inst_confirm_yes);
	}
}

if(_menu==3){
	_confirm_name_x=0;
	_confirm_name_y=0;
	_confirm_name_scale=0;
	_confirm_fade_alpha=0;
	Anim_Create(id,"_confirm_name_x",0,0,0,0,120);
	Anim_Create(id,"_confirm_name_y",0,0,0,100,120);
	Anim_Create(id,"_confirm_name_scale",0,0,0,4,120);
	Anim_Create(id,"_confirm_fade_alpha",0,0,0,1,60);
	
	BGM_Stop(0);
	BGM_Play(0, bgm_cymbal, false);
	fader.color=c_white;
	Fader_Fade(-1,1,audio_sound_length(bgm_cymbal)*room_speed);
	alarm[0]=ceil(audio_sound_length(bgm_cymbal)*room_speed);
}