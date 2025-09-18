depth=DEPTH_UI.PANEL_HIGH;

if(instance_exists(char_player)){
	_top=(char_player.y-camera.y>130+char_player.sprite_height);
}else{
	_top=false;
}

_destroy_inst_on_destroy=true;
_stop_player=true;
_inst=noone;
_gui=true;

alarm[0]=1;