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
if(instance_exists(char_player)){
	char_player._moveable_save=true;
}