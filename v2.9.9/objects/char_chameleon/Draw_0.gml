draw_self();
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,_disappear_alpha*image_alpha);
draw_sprite_ext(spr_char_chameleon_eyes,image_index,x+random_range(-0.5,0.5),y+random_range(-0.5,0.5),image_xscale,image_yscale,image_angle,c_white,_disappear_alpha*1.5);
_disappear = function (disappear = true, dark = false) {
	if(disappear){
		Anim_Create(id,"image_alpha",0,0,1,0,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
		Anim_Create(id,"_disappear_alpha",0,0,0,1,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
		Anim_Create(id,"_disappear_alpha",0,0,1,0,15,15,-1,-1,ANIM_MODE.ONESHOT,false);
	}
	else {
		if (dark) self.dark=true;
		Anim_Create(id,"image_alpha",0,0,0,1,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
		Anim_Create(id,"_disappear_alpha",0,0,1,0,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
	}
}