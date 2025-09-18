///@desc Turn Preparation Start

//Prepare the attack

switch (_state) {
	case "pre_battle":
		if (_is_acting) { // Battle hasn't started yet
			instance_create_depth(0, 0, 0, battle_turn_arai_san_logs_random);
		}
		else { // The real battle starts now
			instance_create_depth(0,0,0,battle_turn_arai_san_bluelogs);
			
			Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.0")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.1")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
			_state = "battle";
			_sub_state = 0;
		}
		break;
	case "battle":
		break;
}