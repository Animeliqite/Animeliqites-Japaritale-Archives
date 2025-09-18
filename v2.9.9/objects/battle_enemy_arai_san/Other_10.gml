///@desc Init

Battle_SetEnemyName(_enemy_slot,Lang_GetString("monster.arai_san.name"));

Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("monster.arai_san.act_option.check"));
Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.arai_san.act_option.escape"));
Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.arai_san.act_option.scoff"));

Battle_SetEnemyDEF(_enemy_slot,15);

_hp_max=100;
_hp=100;

// States
_state = "pre_battle";
_state_executed_once = false;
_sub_state = 0;

_scene_state = "none";
_scene_state_executed_once = false;

_check_phase = 0;
_is_acting = false;

// Shaking anim
_anim_rand_shake=0;
_anim_shake_x=0;
_anim_shake_y=0;

// Body parts
_body_tail_scale_x=2;
_body_tail_scale_y=2;
_body_head_offset_y=0;
_body_skirt_rotation=0;
_body_arm_rotation=0;
_body_faceexp = 0;

// Body part anims
Anim_Create(id,"_body_tail_scale_x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,60,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_tail_scale_y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,1.9,2.1,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_head_offset_y",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_skirt_rotation",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_body_arm_rotation",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,5,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
