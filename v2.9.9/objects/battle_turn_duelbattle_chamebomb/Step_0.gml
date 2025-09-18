event_inherited();

if(_phase==0){
    _timer++;
    if(_timer==1){
        repeat(5){
            instance_create_depth(320,60,0,battle_bullet_duelbattle_smoke);
        }
        Sfx_Play(snd_vaporize_fast);
    }
    else if(_timer==15){
        instance_create_depth(320,60,0,battle_bullet_duelbattle_bomb);
    }
    else if(_timer>15&&!instance_exists(battle_bullet_duelbattle_bomb)){
        _phase=1;
    }
}
else if(_phase==1){
    if(!instance_exists(battle_bullet_duelbattle_explosion)){
        Battle_EndTurn();
    }
}