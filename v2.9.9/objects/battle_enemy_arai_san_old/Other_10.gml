///@desc Init

Battle_SetEnemyName(_enemy_slot,Lang_GetString("monster.arai_san.name"));

Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("monster.arai_san.act_option.check"));
Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.arai_san.act_option.escape"));
Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.arai_san.act_option.scoff"));

Battle_SetEnemyDEF(_enemy_slot,15);

gamePhase = 0;
_game_mode = false;
_game_mode_randomize = false;
_game_mode_unrandomize_on_end = false;
gamesPlayed = 0;
allGamesPlayed = false;
aboutToPlayAllGames=false;
battle._item_action_cancellable=false;
battle._item_action[0]={text: Lang_GetString("monster.arai_san.battle_play.objects.0"), onUse: function () { battle_soul.x = battle_board.x; battle_soul.y = battle_board.y; with (Battle_GetEnemy(Battle_GetEnemyNumber())) { _game_mode_phase = 1; gamePhase = 0; } Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION); Battle_SetState(BATTLE_STATE.TURN_PREPARATION); Battle_SetMenu(-1); }};
battle._item_action[1]={text: Lang_GetString("monster.arai_san.battle_play.objects.1"), onUse: function () { battle_soul.x = battle_board.x; battle_soul.y = battle_board.y; with (Battle_GetEnemy(Battle_GetEnemyNumber())) { _game_mode_phase = 1; gamePhase = 1; } Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION); Battle_SetState(BATTLE_STATE.TURN_PREPARATION); Battle_SetMenu(-1); }};
battle._item_action[2]={text: Lang_GetString("monster.arai_san.battle_play.objects.2"), onUse: function () { battle_soul.x = battle_board.x; battle_soul.y = battle_board.y; with (Battle_GetEnemy(Battle_GetEnemyNumber())) { _game_mode_phase = 1; gamePhase = 2; } Battle_SetNextState(BATTLE_STATE.TURN_PREPARATION); Battle_SetState(BATTLE_STATE.TURN_PREPARATION); Battle_SetMenu(-1); }};

_hp_max=250;
_hp=250;

_face_expression=0;
_currently_acting=-1;
_fight_phase=0;
_check_phase=0;

_body_tail_scale_x=2;
_body_tail_scale_y=2;
_body_head_offset_y=0;
_body_skirt_rotation=0;
_body_arm_rotation=0;

_fennec_x=720;
_fennec_y=120;

_fight_tries=0;
_cutscene_0_bullet_created=false;
_cutscene_0_executed=false;
_cutscene_0=false;
_cutscene_1=false;
_cutscene_1_executed=false;
_cutscene_2=false;
_cutscene_2_executed=false;
_prevPhase=0;
_phase=0;

_rand_shake=0;
_shake_x=0;
_shake_y=0;

Anim_Create(id,"_body_tail_scale_x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,60,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_tail_scale_y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,1.9,2.1,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_head_offset_y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_skirt_rotation",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_arm_rotation",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);