switch (_state) {
	case "pre_battle":
		break;
	case "battle":
		break;
	case "game_mode":
		break;
}

switch (_scene_state) {
	case "cut_01":
		if (!_scene_state_executed_once) {
			Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.arai_san.act_option.flirt"));
			Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.arai_san.act_option.play"));
			
			var dialogue = Lang_GetString("monster.arai_san.battle_dialog.3")+"{pause}{clear}";
			dialogue += Lang_GetString("monster.arai_san.battle_dialog.4")+"{pause}{clear}";
			dialogue += Lang_GetString("monster.arai_san.battle_dialog.5")+"{pause}{clear}";
			dialogue += Lang_GetString("monster.arai_san.battle_dialog.6")+"{pause}{end}";
			
			Battle_CreateBubble(dialogue,"{effect -1}{voice 9}",100,-150);
			_scene_state_executed_once = true;
		}
		else {
			if (!instance_exists(battle_dialog_enemy)) {
				Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.0"));
				BGM_Play(5,bgm_arai_san_battle);
				Battle_EndTurn();
				
				_scene_state = "none";
			}
		}
		break;
}