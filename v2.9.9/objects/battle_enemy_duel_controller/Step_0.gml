/// @desc Cutscene

if (_phase==0){
    if(_cutscene_entrance_attack) {
        C_Execute(0,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.0"),"{voice 11}",_obj_moose.x+20,_obj_moose.y+40,DIR.UP,true,3]);
        C_WaitUntilDestroy(0,battle_dialog_enemy);
        C_Execute(1,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.1"),"{voice 11}",_obj_moose.x+20,_obj_moose.y+40,DIR.UP,true,3]);
        C_WaitUntilDestroy(1,battle_dialog_enemy);
        C_Execute(2,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.2"),"{voice 11}",_obj_moose.x+20,_obj_moose.y+40,DIR.UP,true,3]);
        C_WaitUntilDestroy(2,battle_dialog_enemy);
        C_Execute(3,variable_instance_set,[_obj_chameleon,"_emotion",1]);
        C_Execute(3,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.3"),"{voice 10}",_obj_chameleon.x+30,_obj_chameleon.y+40,DIR.UP,true,1]);
        C_WaitUntilDestroy(3,battle_dialog_enemy);
        C_Execute(4,variable_instance_set,[_obj_moose,"_emotion",1]);
        C_Execute(4,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.4"),"{voice 11}",_obj_moose.x+20,_obj_moose.y+40,DIR.UP,true,3]);
        C_WaitUntilDestroy(4,battle_dialog_enemy);
        C_Execute(5,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.5"),"{voice 10}",_obj_chameleon.x+30,_obj_chameleon.y+40,DIR.UP,true,1]);
        C_WaitUntilDestroy(5,battle_dialog_enemy);
        C_CreateAnim(6,_obj_moose,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN,_obj_moose.x,-240,60,false);
        C_CreateAnim(6,_obj_chameleon,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_obj_chameleon.x,320,60,false);
        C_Wait(6,60);
        C_Execute(7,variable_instance_set,[_obj_chameleon,"_emotion",0]);
        C_Execute(7,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.6"),"{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(7,battle_dialog_enemy);
        C_Execute(8,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.begin_attack.7"),"{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(8,battle_dialog_enemy);
        C_Execute(9,variable_instance_set,[battle_enemy_duel_controller,"_phase",1]);
        C_Execute(9,variable_instance_set,[battle,"_menu_dialog",Lang_GetString("monster.duel_battle.flavor_text.0")]);
        C_Execute(9,Battle_RemoveEnemy,[0]);
        Cutscene_End(9);
    }
}
else if(_phase==1){
    if(_cutscene_shuriken_attack){
        C_Execute(0,Battle_SetDialog,["{face 5}{face_emotion 6}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.0")+"{pause}{end}"]);
        C_WaitUntilDestroy(0,battle._dialog[0]);
        C_Execute(1,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.1")+"{pause}{clear}"+
                                        Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.2")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(1,battle_dialog_enemy);
        C_Execute(2,Battle_SetDialog,["{face 5}{face_emotion 6}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.3")+"{pause}{end}"]);
        C_WaitUntilDestroy(2,battle._dialog[0]);
        C_Execute(3,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.4"),"{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(3,battle_dialog_enemy);
        C_Execute(4,Battle_SetDialog,["{face 5}{face_emotion 6}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.shuriken_attack.5")+"{pause}{end}"]);
        C_WaitUntilDestroy(4,battle._dialog[0]);
        C_Execute(5,Battle_SetState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(5,variable_instance_set,[battle,"_menu_dialog",Lang_GetString("monster.duel_battle.flavor_text.1")]);
        Cutscene_End(5);
    }
}
else if(_phase==2){
    if(_cutscene_last_resort_attack){
        C_Execute(0,Battle_SetDialog,["{face 5}{face_emotion 1}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.0")+"{pause}{clear}"+
                                        Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.1")+"{pause}{end}"]);
        C_WaitUntilDestroy(0,battle._dialog[0]);
        C_Execute(1,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.2")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(1,battle_dialog_enemy);
        C_Execute(2,Battle_SetDialog,["{face 5}{face_emotion 1}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.3")+"{pause}{end}"]);
        C_WaitUntilDestroy(2,battle._dialog[0]);
        C_Execute(3,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.4"),"{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(3,battle_dialog_enemy);
        C_Execute(4,Battle_SetDialog,["{face 5}{face_emotion 2}{voice 13}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.5")+"{pause}{end}"]);
        C_WaitUntilDestroy(4,battle._dialog[0]);
        C_Execute(5,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.6")+"{pause}{clear}"+
                                        Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.7")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(5,battle_dialog_enemy);
        C_Execute(6,Battle_SetDialog,["{face 5}{face_emotion 9}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.8")+"{pause}{end}"]);
        C_WaitUntilDestroy(6,battle._dialog[0]);
        C_Execute(7,Battle_SetState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(7,Battle_SetNextState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(7,variable_instance_set,[battle,"_menu_dialog",Lang_GetString("monster.duel_battle.flavor_text.1")]);
        Cutscene_End(7);
    }
}
else if(_phase==3){
    if(_cutscene_last_resort_attack_end){
		if(instance_exists(battle)){
			if(cutscene._current_order<6){
			    battle._menu_button_cutscene_func = true;
			    battle._menu_button_cutscene_func_method = _on_try_to_escape;
			}
			else{
				battle._menu_button_cutscene_func = false;
			}
	    }
		
        C_Execute(0,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.0")+"{pause}{clear}"+
                                        Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.1")+"{pause}{clear}"+
                                        Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.2")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(0,battle_dialog_enemy);
        C_CreateAnim(1,battle_board,"left",0,0,battle_board.left,BATTLE_BOARD.LEFT,15,false);
        C_CreateAnim(1,battle_board,"right",0,0,battle_board.right,BATTLE_BOARD.RIGHT,15,false);
        C_Wait(1,15);
        C_Execute(2,Battle_SetDialog,["{face 5}{face_emotion 0}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.3")+"{pause}{clear}"+
                                        "{face 5}{face_emotion 0}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.4")+"{pause}{end}"]);
        C_WaitUntilDestroy(2,battle._dialog[0]);
        C_Execute(3,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.5")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(3,battle_dialog_enemy);
        C_Execute(4,Battle_SetState,[BATTLE_STATE.MENU]);
        C_Execute(4,Battle_SetNextState,[BATTLE_STATE.MENU]);
        C_Execute(4,Battle_SetDialog,["{face 5}{face_emotion 0}{voice 12}{instant true}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.aftermath.4")]);
        C_WaitUntilVariable(4,battle_enemy_duel_controller,"_tried_to_escape",true);
        C_Execute(5,Battle_SetState,[BATTLE_STATE.CUTSCENE]);
        C_Execute(5,Battle_SetNextState,[BATTLE_STATE.CUTSCENE]);
        C_Execute(5,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.kaban_escape.0")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_Execute(5,Battle_SetDialog,["{face 5}{face_emotion 10}{voice 12}"]);
		C_Execute(5,variable_instance_set,[battle_soul,"_draw_in_cutscene",true]);
        C_Execute(5,instance_create_depth,[battle_soul.x, -500, 0, battle_bullet_duelbattle_scythe]);
        C_Wait(5,40);
        C_Execute(6,Battle_SetDialog,[""]);
        if(instance_exists(battle_dialog_enemy))
            C_Execute(6,instance_destroy,[battle_dialog_enemy]);
        C_PlaySfx(6,snd_fall);
        C_CreateAnim(6,battle_board,"up",0,0,battle_board.up,0,15,false);
        C_CreateAnim(6,battle_board,"down",0,0,battle_board.down,0,15,false);
        C_Wait(6,15);
        C_Execute(7,variable_instance_set,[battle_board,"visible",false]);
        C_Execute(7,variable_instance_set,[battle_soul,"_draw_in_cutscene",true]);
        C_Execute(7,variable_instance_set,[battle_soul,"x",battle_board.x]);
        C_CreateAnim(7,battle_soul,"y",0,0,-20,battle_board.y,15,false);
        C_CreateAnim(7,battle_soul,"image_angle",0,0,-720,0,15,false);
        C_Execute(7,method_call,[battle_enemy_duel_controller._create_bridge]);
        C_Wait(7,15);
        C_PlaySfx(8,snd_noise);
        C_Wait(8,15);
        C_Execute(9,Battle_SetTurnInfo,[BATTLE_TURN.TIME,-1]);
        C_Execute(9,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_UP,40]);
        C_Execute(9,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_DOWN,40]);
        C_Execute(9,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_LEFT,40]);
        C_Execute(9,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_RIGHT,40]);
        C_Execute(9,variable_instance_set,[battle_board,"visible",true]);
        C_Execute(9,variable_instance_set,[battle_board,"up",40]);
        C_Execute(9,variable_instance_set,[battle_board,"down",40]);
        C_Execute(9,variable_instance_set,[battle_board,"left",40]);
        C_Execute(9,variable_instance_set,[battle_board,"right",40]);
        C_CreateAnim(9,battle_board,"_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-720,0,30,false);
        C_CreateAnim(9,battle_board,"alpha",0,0,0,1,30,false);
        C_Execute(9,Battle_CreateBubble,[Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.kaban_escape.1")+"{pause}{clear}"+
                                Lang_GetString("monster.duel_battle.battle_dialog.battle_challenge.kaban_escape.2")+"{pause}{end}","{voice 10}",_obj_chameleon.x+80,_obj_chameleon.y-150,DIR.LEFT,true,1]);
        C_WaitUntilDestroy(9,battle_dialog_enemy);
        C_Execute(10,Battle_SetState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(10,Battle_SetNextState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(10,variable_instance_set,[battle_soul,"_draw_in_cutscene",false]);
        C_Execute(10,variable_instance_set,[battle_enemy_duel_controller,"_phase",4]);
        Cutscene_End(10);
    }
}
else if(_phase==6){
    if(_cutscene_porcupine_shield){
        C_Execute(0,Battle_SetState,[BATTLE_STATE.CUTSCENE]);
        C_Execute(0,Battle_SetNextState,[BATTLE_STATE.CUTSCENE]);
        C_Execute(0,Battle_SetDialog,["{face 5}{face_emotion 5}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.0")+"{pause}{clear}"+
                                    "{face 5}{face_emotion 2}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.1")+"{pause}{clear}"+
                                    "{face 5}{face_emotion 2}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.2")+"{pause}{clear}"+
                                    "{face 5}{face_emotion 4}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.3")+"{pause}{clear}"+
                                    "{face 5}{face_emotion 2}{voice 12}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.4")+"{pause}{clear}"+
                                    "{face -1}{sound `snd_item_equip`}{voice 1}"+Lang_GetString("monster.duel_battle.battle_dialog.battle_noise.5")+"{pause}{end}"]);
        C_WaitUntilDestroy(0,battle._dialog[0]);
		C_Execute(1,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_UP,40]);
        C_Execute(1,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_DOWN,40]);
        C_Execute(1,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_LEFT,40]);
        C_Execute(1,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_RIGHT,40]);
        C_Execute(1,Battle_SetSoul, [battle_soul_green]);
        C_Execute(1,Battle_SetState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(1,Battle_SetNextState,[BATTLE_STATE.TURN_PREPARATION]);
        C_Execute(1,variable_instance_set,[battle_enemy_duel_controller,"_phase",7]);
        Cutscene_End(1);
    }
}