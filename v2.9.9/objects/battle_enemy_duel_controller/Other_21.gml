/// @description Turn End

if(_phase==3){
    if (_trigger_last_resort_attack_end) {
        Cutscene_Begin();
        
        Battle_SetState(BATTLE_STATE.CUTSCENE);
        Battle_SetNextState(BATTLE_STATE.CUTSCENE);
        Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP);
        Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN);
        Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT);
        Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT);
        
        _cutscene_last_resort_attack_end=true;
    }
}