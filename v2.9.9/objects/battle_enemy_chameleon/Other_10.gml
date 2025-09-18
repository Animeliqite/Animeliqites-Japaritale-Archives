///@desc Init

_handler = battle_enemy_duel_controller;

Battle_SetEnemyName(_enemy_slot,Lang_GetString("monster.duel_battle.chameleon.name"));

Battle_SetEnemyActionNumber(_enemy_slot,4);
Battle_SetEnemyActionName(_enemy_slot,0,Lang_GetString("monster.duel_battle.act_option.check"));
Battle_SetEnemyActionName(_enemy_slot,1,Lang_GetString("monster.duel_battle.act_option.kiai"));
Battle_SetEnemyActionName(_enemy_slot,2,Lang_GetString("monster.duel_battle.act_option.challenge"));
Battle_SetEnemyActionName(_enemy_slot,3,Lang_GetString("monster.duel_battle.act_option.noise"));

_hp_max=1200;
_hp=1200;

_alpha=1;

_yoff_torso=0;
_yoff_head=0;
_rot_hair=0;
_rot_tail=0;
_rot_arm_left=0;
_rot_arm_right=0;

_emotion=0;

x-=40;

Anim_Create(id,"_yoff_torso",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_yoff_head",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-1,1,30,0,-1,-1,ANIM_MODE.PINGPONG,false);

Anim_Create(id,"_rot_hair",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-3,3,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_rot_tail",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_rot_arm_left",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG,false);
Anim_Create(id,"_rot_arm_right",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-2,2,30,0,-1,-1,ANIM_MODE.PINGPONG,false);