draw_self();

var _char=id;
if(_lighted_on){
	if(!_lighted_on_executed_once){
		Anim_Create(id,"image_index",0,0,1,3,10,0,-1,-1,ANIM_MODE.REPEAT,false);
		with(instance_create_depth(x,y-sprite_height/1.25,-4500,char_firepotlight)){
			light_owner=_char;
			radius=_char._radius;
			if(!_char._alpha_instant)
				image_alpha=0;
			else image_alpha=1;
			event_user(0);
		}
		_lighted_on_executed_once=true;
	}
}

draw_set_alpha(1);