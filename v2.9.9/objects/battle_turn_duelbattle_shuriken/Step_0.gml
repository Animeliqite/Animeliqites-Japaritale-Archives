event_inherited();

if(_phase==0){
    _timer++;
    if(_timer==1||_timer==15){
        Sfx_Play(snd_vaporize_fast);
        repeat(5) instance_create_depth(320,60,0,battle_bullet_duelbattle_smoke);
        
		if (_timer==1){
	        if (!instance_exists(_shuriken[0])){
				_shuriken[0]=instance_create_depth(320,60,0,battle_bullet_duelbattle_shuriken);
	            Anim_Create(_shuriken[0],"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_shuriken[0].x,-120,15,0,-1,-1,ANIM_MODE.ONESHOT,true);
	            Anim_Create(_shuriken[0],"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_shuriken[0].y,-20,15,0,-1,-1,ANIM_MODE.ONESHOT,true);
	            Anim_Create(_shuriken[0],"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,_shuriken[0].x-120,battle_board.x+battle_board.right-(_shuriken[0].sprite_width/2)+10,15,15,-1,-1,ANIM_MODE.ONESHOT,false);
	            Anim_Create(_shuriken[0],"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,_shuriken[0].y-20,battle_board.y+battle_board.down-(_shuriken[0].sprite_height/2)+10,15,15,-1,-1,ANIM_MODE.ONESHOT,false);
	            Anim_Create(_shuriken[0],"_rot",0,0,0,700,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	        }
		}
		else{
	        if (!instance_exists(_shuriken[1])){
				_shuriken[1]=instance_create_depth(320,60,0,battle_bullet_duelbattle_shuriken);
	            Anim_Create(_shuriken[1],"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_shuriken[1].x,120,15,0,-1,-1,ANIM_MODE.ONESHOT,true);
	            Anim_Create(_shuriken[1],"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_shuriken[1].y,-20,15,0,-1,-1,ANIM_MODE.ONESHOT,true);
	            Anim_Create(_shuriken[1],"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,_shuriken[1].x+120,battle_board.x-battle_board.left+(_shuriken[1].sprite_width/2)-10,15,15,-1,-1,ANIM_MODE.ONESHOT,false);
	            Anim_Create(_shuriken[1],"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,_shuriken[1].y-20,battle_board.y+battle_board.down-(_shuriken[1].sprite_height/2)+10,15,15,-1,-1,ANIM_MODE.ONESHOT,false);
	            Anim_Create(_shuriken[1],"_rot",0,0,0,650,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	        }
		}
    }
    else if(_timer==30||_timer==45){
        if(_timer==30){
			Sfx_Play(snd_shuriken_hit);
			_shuriken[0]._phase=1;
		}
		else {
			Sfx_Play(snd_shuriken_hit);
			_shuriken[1]._phase=1;
		}
    }
	else if(_timer==90||_timer==105){
		if(_timer==90)
			_shuriken[0]._phase=2;
		else _shuriken[1]._phase=2;
	}
	else if(_timer==220) _phase=1;
}
else if(_phase==1){
        Battle_EndTurn();
}