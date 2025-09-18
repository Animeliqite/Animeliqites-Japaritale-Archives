Anim_Create(id,$"_alpha{_shown}",0,0,0,1,15);

if(!_pressed_confirm){
	if(_shown<_msg){
		alarm[0]=_wait;
		_shown++;
	}
	else {
		Fader_Fade(-1,1,15,30);
		alarm[1]=45;
	}
}