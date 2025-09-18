///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_broken){
			_draw_lines=true;
			Anim_Create(id,"_lines_image_index",0,0,0,1,1,30);
			Anim_Create(id,"_lines_image_index",0,0,1,1,1,60);
			Anim_Create(id,"_lines_image_index",0,0,2,1,1,120);
			Anim_Create(id,"_lines_image_index",0,0,3,1,1,125);
			Anim_Create(id,"_lines_image_index",0,0,4,1,1,130);
			Anim_Create(id,"_vaporize",0,0,false,true,1,190);
			Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION);
			Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
			case 0:
				Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_check.0"));
				if(!_has_planned) Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_check.1"));
				break;
			case 1:
				if(!_has_planned){
					switch(_planning_phase){
						case 0:
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.0"));
							_planning_phase = 1;
							break;
						case 1:
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.1"));
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.2"));
							_planning_phase = 2;
							break;
						case 2:
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.3"));
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.4"));
							Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_plan.5"));
							_planning_phase = 3;
							_has_planned = true;
							
							Battle_SetEnemyActionNumber(_enemy_slot,3);
							Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("monster.cellien_big.act_option.check"));
							Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.cellien_big.act_option.search"));
							Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.cellien_big.act_option.instruct"));
							break;
					}
				}
				else {
					if(!_has_searched){
						Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_search.0"));
						Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_search.1"));
						Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_search.2"));
						
						Item_Add(item_stick);
						Item_Add(item_stone);
						Item_Add(item_map);
						
						_has_searched = true;
					}
					else{
						Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_search_fail.0"));
					}
				}
				break;
			case 2:
				if(!_anim_paperplane_executed_once) Dialog_Add_Ext(Lang_GetString("monster.cellien_big.battle_instruct_fail.0"));
				else {
					Anim_Create(battle_button,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,battle_button.y,128,30);
					Anim_Create(battle_button,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_button.y+128,-128,30,30);
					Anim_Create(battle_ui,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,battle_ui.x,-640,30);
					Anim_Create(battle_ui,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,battle_ui.x-640,640,30,30);
					Anim_Create(id,"_instructed",0,0,0,1,1,30,-1,-1,ANIM_MODE.ONESHOT,false);
					Anim_Create(id,"_instructed",0,0,1,2,1,60,-1,-1,ANIM_MODE.ONESHOT,false);
					
					battle_soul_red.visible=false;
					Battle_SetSoul(battle_soul_pink);
					instance_destroy(battle._dialog[0]);
					battle_soul_pink.visible=false;
					
					Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION);
					Battle_SetState(BATTLE_STATE.TURN_PREPARATION);
				}
				break;
		}
}