///@desc Turn End

var INST=battle_enemy_cellien_big;
Anim_Create(battle_enemy_cellien_big,"_rot_add_135",0,0,INST._rot_add_135,0,5,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_rot_add_180",0,0,INST._rot_add_180,0,5,5,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_rot_add_0",0,0,INST._rot_add_0,0,5,10,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_rot_add_45",0,0,INST._rot_add_45,0,5,15,-1,-1,ANIM_MODE.ONESHOT,false);
event_inherited();