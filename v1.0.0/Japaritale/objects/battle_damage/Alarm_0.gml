visible=true;
Anim_Create(id,"_bar_hp",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bar_hp_original,bar_hp_target-bar_hp_original,bar_duration);
Anim_Create(id,"image_alpha",0,0,1,0,15,display_time/2,-1,-1,ANIM_MODE.ONESHOT,false);

speed=-4;
direction=random_range(210,330);
gravity=0.4;

Object_Shake(3,"bar_x",id,0,true,0);
Object_Shake(3,"bar_y",id,0,true,0);

alarm[2]=bar_duration+25+1;
alarm[1]=display_time+1;