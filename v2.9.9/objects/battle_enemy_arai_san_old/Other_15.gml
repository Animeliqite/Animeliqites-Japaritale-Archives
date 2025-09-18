///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		_face_expression=0;
		_fight_tries++;
		
		if(_fight_tries>5&&!_cutscene_2_executed){
			_cutscene_2=true;
			Cutscene_Begin();
			_cutscene_2_executed=true;
		}
		//Check: is enemy supposed to be dead?
		if(_hp<=0){
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=sprite_index;
			audio_play_sound_on(global._gmu_emitter_sfx,snd_vaporize,0,false);
			instance_destroy();
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				switch(_check_phase){
					case 0:
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_check.0"));
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_check.1"));
						_check_phase=1;
						break;
					case 1:
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_check.2"));
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_check.3"));
						_check_phase=2;
						break;
					case 2:
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_check.normal.0"));
						break;
				}
				break;
			case 1:
				switch(_phase){
					case 0:
						_currently_acting=0;
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_escape.0"));
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_escape.1"));
						break;
					case 1:
					case 2:
					case 3:
					case 4:
						_currently_acting=0;
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_flirt.0"));
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_flirt.1"));
						Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_flirt.2"));
						break;
				}
				break;
			case 2:
				if(_phase==0){
					_currently_acting=1;
					Battle_SetEnemyDEF(_enemy_slot,10);
					Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_scoff.0"));
					Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_scoff.1"));
					Dialog_Add_Ext(Lang_GetString("monster.arai_san.battle_scoff.2"));
				}
				else if(_phase>=1&&_phase<4){
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,283);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,283);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_SIZE_DURATION,15);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_SIZE_SPEED,15);
					Battle_SetTurnInfo(BATTLE_TURN.TIME,-1);
					
					_game_mode=true;
					_game_mode_phase=0;
				}
		}
}