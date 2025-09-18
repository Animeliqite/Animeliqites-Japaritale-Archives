image_angle=_rot;

if(_phase==0){
    _timer++;
    if(_timer==1){
        Anim_Create(id,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,y,battle_board.y,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
        Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_rot,540,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
        Sfx_Play(snd_prebomb);
		image_index=0;
    }
    else if(_timer>=10&&_timer%10==0&&_timer<30){
        Sfx_Play(snd_prebomb);
		image_index=1;
    }
    else if(_timer>=30&&_timer%5==0&&_timer<60){
        Sfx_Play(snd_prebomb);
		image_index=2;
    }
    else if(_timer==60){
        instance_create_depth(x,y,0,battle_bullet_duelbattle_explosion);
        instance_destroy();
    }
	
	if(_timer>=30&&_timer<60){
		if(image_index>3)
			image_index=2;
		else image_index+=0.25;
	}
}