_bg_handler = instance_create_depth(0,0,-100,battle_enemy_duel_bghandler);

_phase=0;
_sub_phase=0;
_used_attacks=0;
_challenged=false;

_cutscene_shuriken_attack=false;
_cutscene_last_resort_attack=false;
_cutscene_entrance_attack=false;
_cutscene_last_resort_attack_end=false;
_cutscene_porcupine_shield=false;

_trigger_entrance_cutscene=false;
_trigger_shuriken_attack=false;
_trigger_last_resort_attack=false;
_trigger_last_resort_attack_end=false;
_trigger_porcupine_shield=false;

_executed_shuriken_attack=false;
_tried_to_escape=false;

_obj_chameleon=battle_enemy_chameleon;
_obj_moose=battle_enemy_moose;

_layer_seq=noone;
_bridge_seq=noone;

_attacks={
    chamebomb: battle_turn_duelbattle_chamebomb,
    shuriken: battle_turn_duelbattle_shuriken,
    can: battle_turn_duelbattle_can,
	chibi: battle_turn_duelbattle_chibi
}

_act_option_kiai = function () {
    if (_phase==0) {
        if(!_trigger_entrance_cutscene){
            Dialog_Add(Lang_GetString("monster.duel_battle.battle_kiai.0.0"));
            Dialog_Add(Lang_GetString("monster.duel_battle.battle_kiai.0.1"));
            _trigger_entrance_cutscene=true;
        }
    }
    else if(_phase==1){
        if(!_trigger_shuriken_attack){
            Dialog_Add(Lang_GetString("monster.duel_battle.battle_kiai.1.0"));
            _trigger_shuriken_attack=true;
        }
    }
    else {
        Dialog_Add(Lang_GetString("monster.duel_battle.battle_kiai.1.0"));
    }
}

_act_option_challenge = function () {
    if(_phase==1){
        _challenged=true;
        if(!_trigger_last_resort_attack){
            Dialog_Add(Lang_GetString("monster.duel_battle.battle_challenge.1.0"));
            _trigger_last_resort_attack=true;
            _phase=2;
        }
    }
    else {
        Dialog_Add(Lang_GetString("monster.duel_battle.battle_challenge.0.0"));
    }
}

_act_option_noise = function () {
    if(_phase==5){
        if(!_trigger_porcupine_shield){
            _trigger_porcupine_shield=true;
            _phase=6;
        }
    }
}

_on_try_to_escape = function () {
    _tried_to_escape=true;
}

_create_bridge = function () {
    _layer_seq=layer_create(-100); 
    _bridge_seq=layer_sequence_create(_layer_seq,battle_board.x,battle_board.y+10,seq_duelbattle_bridge);
    
    battle_board.up=40;
    battle_board.down=40;
    battle_board.left=40;
    battle_board.right=40;
}