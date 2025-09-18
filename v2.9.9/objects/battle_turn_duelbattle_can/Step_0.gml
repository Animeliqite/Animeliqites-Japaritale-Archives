event_inherited();

if(_phase==0){
    _timer++;
    if(_timer==1){
        _can=instance_create_depth(320,-120,0,battle_bullet_duelbattle_can);
        _can._phase=0;
    }
    else if(_timer==30){
        if(instance_exists(_can))
            _can._phase=1;
    }
    else if(_timer==120){
        if(instance_exists(_can)){
            _can._timer=0;
            _can._phase=2;
        }
    }
    else if(_timer==350){
        if(instance_exists(_can)){
            _can._timer=0;
            _can._phase=3;
        }
    }
    else {
        if(!instance_exists(_can))
            _phase=1;
    }
}
else if(_phase==1){
    Battle_EndTurn();
}