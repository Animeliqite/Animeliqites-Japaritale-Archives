image_angle=_rot;

switch(_phase){
	case 0:
        Sfx_Play(snd_gb_charge);
        Anim_Create(id,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,y,battle_board.y-battle_board.up-120,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
        _phase=0.5;
        break;
    case 1:
        _timer++;
        if(_timer==1)
        {
            Sfx_Play(snd_throw);
            Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,x,battle_board.x+battle_board.right-40,60,0,-1,-1,ANIM_MODE.ONESHOT,false);
            Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_rot,-360,60,0,-1,-1,ANIM_MODE.ONESHOT,true);
        }
        else if(_timer==30)
        {
            Sfx_Play(snd_throw);
        }
        else if(_timer==60)
        {
            _x_rand=approach(_x_rand,4,0.5);
            _y_rand=approach(_y_rand,4,0.5);
            _rot_rand=approach(_rot_rand,4,0.5);
            Sfx_Play(snd_gb_charge2);
        }
        break;
    case 2:
        _timer++;
        
        if(_timer>0&&_timer<180){
            if(_timer%4==0){
                repeat(4) instance_create_depth(x,y+sprite_height/2,0,battle_bullet_duelbattle_fire);
                Sfx_Play(snd_fire);
            }
        }
        if(_timer==1){
			y-=5;
			Camera_Shake(4,4,0,0,true,true);
            Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,x,battle_board.x-battle_board.left+40,120,0,-1,-1,ANIM_MODE.ONESHOT,false);
            Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,battle_board.x-battle_board.left+40,battle_board.x+battle_board.right-40,60,120,-1,-1,ANIM_MODE.ONESHOT,false);
        }
        else if(_timer==180){
            _x_rand=0;
            _y_rand=0;
            _rot_rand=0;
            repeat(3) instance_create_depth(x,y+sprite_height/2,0,battle_bullet_duelbattle_smoke);
            Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_rot,45,15,0,-1,-1,ANIM_MODE.ONESHOT,true);
            Sfx_Play(snd_vaporize_fast);
        }
        else if(_timer==195){
            repeat(3) instance_create_depth(x+10,y+sprite_height/2,0,battle_bullet_duelbattle_smoke);
            Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_rot,-57,10,0,-1,-1,ANIM_MODE.ONESHOT,true);
            Sfx_Play(snd_vaporize_fast);
        }
        else if(_timer==215){
            repeat(3) instance_create_depth(x,y+sprite_height/2,0,battle_bullet_duelbattle_smoke);
            Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_rot,12,30,0,-1,-1,ANIM_MODE.ONESHOT,true);
            Sfx_Play(snd_vaporize_fast);
        }
        break;
    case 3:
        _timer++;
        if(_timer==1){
            Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,x,320,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
            Anim_Create(id,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,y,-120,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
            Anim_Create(id,"_rot",ANIM_TWEEN.SINE,ANIM_EASE.IN,_rot,360,30,0,-1,-1,ANIM_MODE.ONESHOT,true);
        }
        else if(_timer==30){
            instance_destroy();
        }
        break;
}