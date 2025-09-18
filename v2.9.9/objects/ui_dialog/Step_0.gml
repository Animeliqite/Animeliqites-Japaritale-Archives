if(!instance_exists(_inst)){
	if(!Dialog_IsEmpty()){
		_inst=instance_create_depth(60,(_top ? 30 : 340),0,text_typer);
		_inst.text="{scale "+(_gui ? "2" : "1")+"}{voice 0}{speed 0}{color_text `white`}{space_y 2}{skip_space false}{shadow false}{gui "+(_gui ? "true" : "false")+"}{depth "+string(DEPTH_UI.TEXT_HIGH)+"}";
		_inst.text+=Dialog_Get();
		_inst.text+="{pause}{end}";
	}else{
		if(instance_exists(char_player)) char_player._moveable_dialog=true;
		instance_destroy();
	}
}