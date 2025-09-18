visible=true;
Anim_Create(id,"_bar_hp",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,bar_hp_original,bar_hp_target-bar_hp_original,bar_duration);

vspeed=-4;
gravity=0.4;

alarm[2]=bar_duration+25+1;
alarm[1]=display_time+1;