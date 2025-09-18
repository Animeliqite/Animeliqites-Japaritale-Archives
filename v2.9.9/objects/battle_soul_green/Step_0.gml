event_inherited();

//移动
if((Battle_GetState()==BATTLE_STATE.IN_TURN || Battle_GetState()==BATTLE_STATE.TURN_PREPARATION) && moveable){
    if(!_shield_instantiated){
        _shield=instance_create_depth(x,y,depth,battle_soul_green_shield);
        _shield_instantiated=true;
    }
    
    if(Input_IsPressed(INPUT.LEFT)){
        _prev_dir=_dir;
        _dir=DIR.LEFT;
    }
    if(Input_IsPressed(INPUT.RIGHT)){
        _prev_dir=_dir;
        _dir=DIR.RIGHT;
    }
    if(Input_IsPressed(INPUT.UP)){
        _prev_dir=_dir;
        _dir=DIR.UP;
    }
    if(Input_IsPressed(INPUT.DOWN)){
        _prev_dir=_dir;
        _dir=DIR.DOWN;
    }
}
else {
    instance_destroy(_shield);
    _shield_instantiated=false;
}

if (instance_exists(_shield)) {
    if(_prev_dir==DIR.DOWN&&_dir==DIR.RIGHT)
        _shield._rot=DIR.DOWN+90;
    else _shield._rot=_dir;
}