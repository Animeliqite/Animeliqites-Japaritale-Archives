///@desc Menu Start

if (_has_planned) && (!_anim_paperplane_executed_once) {
	if (!_has_searched){
		if (_paperplane_not_used==0&&!_cutscene_serval_inform){
			_cutscene_serval_inform=true;
			Battle_SetState(BATTLE_STATE.CUTSCENE);
			Battle_SetNextState(BATTLE_STATE.CUTSCENE);
			Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP);
			Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN);
			Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT);
			Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT);
			Cutscene_End(-1);
			Cutscene_Begin();
		}
	}
	else {
		if (_has_used_paperplane){
			if (_paperplane_not_thrown==0){
				battle._menu_dialog="{face 2}{face_emotion 2}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform.0");
			}
		}
	}
}