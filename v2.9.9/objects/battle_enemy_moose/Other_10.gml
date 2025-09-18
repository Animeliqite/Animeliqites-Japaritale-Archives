///@desc Init

_handler = battle_enemy_duel_controller;

Battle_SetEnemyName(_enemy_slot,Lang_GetString("monster.duel_battle.moose.name"));

Battle_SetEnemyActionNumber(_enemy_slot,4);
Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("monster.duel_battle.act_option.check"));
Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.duel_battle.act_option.kiai"));
Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.duel_battle.act_option.challenge"));
Battle_SetEnemyActionName(_enemy_slot,3,Lang_GetString("monster.duel_battle.act_option.noise"));

_hp_max=1500;
_hp=1500;

_alpha=1;

_yoff_head=0;
_yoff_arm_left=0;
_yoff_arm_right=0;
_yoff_torso=0;
_yoff_hair_back=0;
_yoff_antlerweapon=0;
_rot_antlerweapon=0;

_emotion=0;

x+=40;

Anim_Create(id,"_yoff_head",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-4,4,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_yoff_arm_left",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-4,4,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_yoff_arm_right",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-4,4,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_yoff_torso",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_yoff_hair_back",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_yoff_antlerweapon",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-8,8,30,0,-1,-1,ANIM_MODE.PINGPONG);
Anim_Create(id,"_rot_antlerweapon",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-12,12,45,0,-1,-1,ANIM_MODE.PINGPONG);