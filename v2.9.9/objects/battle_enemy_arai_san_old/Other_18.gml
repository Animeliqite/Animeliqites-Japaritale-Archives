///@desc Turn Preparation Start

show_debug_message("phase: " + string(_phase));
show_debug_message("games played: " + string(gamesPlayed));

if(_phase==0&&_currently_acting!=-1){
	instance_create_depth(0,0,0,battle_turn_arai_san_logs_random);
}
if(!_cutscene_2){
	if(_currently_acting==-1){
		if(_game_mode==true){
			show_debug_message("game phase");
			show_debug_message("game mode phase: " + string(_game_mode_phase));
			if(_game_mode_phase==0){
				Battle_SetState(BATTLE_STATE.MENU);
				Battle_SetNextState(BATTLE_STATE.MENU);
				Battle_SetMenu(BATTLE_MENU.ITEM_ACTION);
				Battle_EndTurn();
				_game_mode=true;
			}
			else if(_game_mode_phase==1){
				gamesPlayed++;
				BGM_SetPitch(5,1);
				show_debug_message("game phase: " + string(gamePhase));
				switch (gamePhase) {
					case 0:
						//Prepare the attack
						instance_create_depth(0,0,0,battle_turn_arai_san_logs_2);
				
						//Say something
						if(_phase<3&&_phase!=2){
							_face_expression=5;
							Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_play.object_0.dialog.0")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_0.dialog.1")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_0.dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
						}
						break;
					case 1:
				
						//Prepare the attack
						instance_create_depth(0,0,0,battle_turn_arai_san_logs_3);
				
						//Say something
						if(_phase<3&&_phase!=2){
							Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_play.object_1.dialog.0")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_1.dialog.1")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_1.dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
						}
						break;
					case 2:
						//Prepare the attack
						instance_create_depth(0,0,0,battle_turn_arai_san_logs_4);
					
						if(_phase<3&&_phase!=2){
							Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_play.object_2.dialog.0")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_2.dialog.1")+"{pause}{clear}"+
												Lang_GetString("monster.arai_san.battle_play.object_2.dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
						}
						break;
				}
			
				if(array_length(battle._item_action)>1)
					array_delete(battle._item_action,gamePhase,1);
				else {
					_phase=2;
					allGamesPlayed = true;
					battle._item_action[0]={text: "Item Name", onUse: function () {}};
					Battle_SetEnemyActionNumber(_enemy_slot,2);
				}
			}
		}
		else{
			if(gamesPlayed>0&&!allGamesPlayed){
				gamePhase=irandom(2);
				_game_mode=true;
				_game_mode_randomize=true;
				_game_mode_unrandomize_on_end=true;
			
				event_user(8);
			}
			if(_phase==0){
				//Prepare the attack
				instance_create_depth(0,0,0,battle_turn_arai_san_bluelogs);
		
				//Say something
				Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.0")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.1")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				_phase=1;
			}
			else if(_phase==1){
				if(gamesPlayed<=0){
					//Prepare the attack
					instance_create_depth(0,0,0,battle_turn_arai_san_logs_0);
		
					//Say something
					Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.7")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				}
				_phase=2;
			}
			else if(_phase==2){
				if(gamesPlayed<=0){
					_face_expression=2;
					BGM_SetPitch(5,0.95,true,15,ANIM_TWEEN.LINEAR,false);
					instance_create_depth(0,0,0,battle_turn_arai_san_logs_1);
					Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.8")+"{pause}{clear}"+
										Lang_GetString("monster.arai_san.battle_dialog.9")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
					_phase=3;
				}
				else if(!allGamesPlayed) {
					_phase=3;
					//instance_create_depth(0,0,0,battle_turn_arai_san_logs_1);
				}
				else {
					_phase=4;
				}
			}
			else if(_phase==3){
				if(gamesPlayed<=0){
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,283);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,283);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_SIZE_DURATION,15);
					Battle_SetTurnInfo(BATTLE_TURN.BOARD_SIZE_SPEED,15);
					Battle_SetTurnInfo(BATTLE_TURN.TIME,-1);
					_enemy_button_fade=false;
				
					if(!_cutscene_1_executed){
						Cutscene_Begin();
						_cutscene_1=true;
						_cutscene_1_executed=true;
						_face_expression=2;
						_prevPhase=2;
						_game_mode=true;
						_phase=2;
					}
					else{
						_game_mode=true;
						_phase=2;
					}
				}
				else if(!allGamesPlayed) {
					_phase=2;
					//instance_create_depth(0,0,0,battle_turn_arai_san_logs_1);
				}
				else {
					_phase=4;
				}
			}
			else if(_phase==4){
				instance_create_depth(0,0,0,battle_turn_arai_san_logs_5);
				Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.12")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.13")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.14")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				_phase=5;
			}
			else if(_phase==5){
				instance_create_depth(0,0,0,battle_turn_arai_san_logs_6);
				Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.15")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.16")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				_phase=6;
			}
			else if(_phase==6){
				instance_create_depth(0,0,0,battle_turn_arai_san_logs_7);
				Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.16.0")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.16.1")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				_phase=7;
			}
			else if(_phase=7){
				//Prepare the attack
				instance_create_depth(0,0,0,battle_turn_arai_san_logs_last);
			
				//Say something
				Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.17")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.18")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
				_phase=8;
			}
		}
	}
	else if(_currently_acting==0){
		if(_phase==0){
			Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_escape.dialog.0")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_escape.dialog.1")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
		}
		else if(_phase>=1){
			if(!_cutscene_0_executed){
				Cutscene_Begin();
				_cutscene_0=true;
				_cutscene_0_executed=true;
			}
			else {
				if(!_cutscene_0_bullet_created) {
					instance_create_depth(0,0,0,asset_get_index("battle_turn_arai_san_logs_" + string(_phase-1)));
					_cutscene_0_bullet_created=true;
				}
			}
		}
	}
	else if(_currently_acting==1){
		if(_phase==0){
			Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_scoff.dialog.0")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_scoff.dialog.1")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_scoff.dialog.2")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_scoff.dialog.3")+"{pause}{end}","{effect -1}{voice 9}",100,-150);
		}
	}
}
show_debug_message("--------------------");