event_inherited();

if(_phase==0){
    _timer++;
    if(_timer%30==0){
        _create_chibi();
    }
}
else if(_phase==1){
    Battle_EndTurn();
}