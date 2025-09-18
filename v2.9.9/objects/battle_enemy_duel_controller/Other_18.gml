/// @desc Turn Preparation Start

if (_phase==0){
    if(_trigger_entrance_cutscene) {
        _cutscene_entrance_attack=true;
        instance_create_depth(0,0,0,_attacks.chamebomb);
        
        Cutscene_Begin();
    }
}
else if (_phase==1){
    if(!_challenged){
        if(_trigger_shuriken_attack&&!_executed_shuriken_attack){
            if(!_cutscene_shuriken_attack) {
                Battle_SetState(BATTLE_STATE.CUTSCENE);
                Battle_SetNextState(BATTLE_STATE.CUTSCENE);
                Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP);
                Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN);
                Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT);
                Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT);
                
                Cutscene_Begin();
                
                _cutscene_shuriken_attack=true;
            }
            else {
                if(!instance_exists(_attacks.shuriken))
                    instance_create_depth(0,0,0,_attacks.shuriken);
                _executed_shuriken_attack=true;
            }
        }
        else {
            randomize();
            instance_create_depth(0,0,0,choose(_attacks.chamebomb, _attacks.shuriken, _attacks.can));
            
            _used_attacks++;
            
            if (_used_attacks>=2) {
                _trigger_last_resort_attack=true;
                _phase=2;
            }
        }
    }
}
else if(_phase==2){
    if(!_cutscene_last_resort_attack) {
        if(_trigger_last_resort_attack){
            Cutscene_Begin();
            
            Battle_SetState(BATTLE_STATE.CUTSCENE);
            Battle_SetNextState(BATTLE_STATE.CUTSCENE);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT);
            
            _cutscene_last_resort_attack=true;
        }
    }
    else {
        instance_create_depth(0,0,0,_attacks.can);
        _trigger_last_resort_attack_end=true;
        _phase=3;
    }
}
else if(_phase==4){
	instance_create_depth(0,0,0,_attacks.chibi);
    _phase=5;
}
else if(_phase==6){
    if(!_cutscene_porcupine_shield) {
        if(_trigger_porcupine_shield){
            Cutscene_Begin();
            
            Battle_SetState(BATTLE_STATE.CUTSCENE);
            Battle_SetNextState(BATTLE_STATE.CUTSCENE);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT);
            Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT);
            
            _cutscene_porcupine_shield=true;
        }
    }
}
else if(_phase==7){
	instance_create_depth(0,0,0,_attacks.chibi);
    _phase=8;
}