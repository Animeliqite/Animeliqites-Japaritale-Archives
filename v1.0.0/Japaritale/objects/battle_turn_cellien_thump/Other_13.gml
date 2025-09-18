///@desc Turn End

event_inherited();

Anim_SetPause(battle_enemy_cellien_big, "_eye_x", false);
Anim_SetPause(battle_enemy_cellien_big, "_eye_y", false);

Anim_SetPause(battle_enemy_cellien_big, "_eye_black_x", false);
Anim_SetPause(battle_enemy_cellien_big, "_eye_black_y", false);

Anim_SetPause(battle_enemy_cellien_big, "_body_x", false);
Anim_SetPause(battle_enemy_cellien_big, "_body_y", false);

with (battle_enemy_cellien_big) {
	Anim_Create(id,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_body_x_add,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_body_y_add,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_eye_x_add,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_eye_y_add,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_eye_black_y_add,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"depth",0,0,depth,DEPTH_BATTLE.ENEMY,1,30,-1,-1,ANIM_MODE.ONESHOT,false);
}