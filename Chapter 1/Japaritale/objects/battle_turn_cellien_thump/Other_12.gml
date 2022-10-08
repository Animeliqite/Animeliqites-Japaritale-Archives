///@desc Turn Start

Anim_SetPause(battle_enemy_cellien_big, "_eye_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_eye_y", true);

Anim_SetPause(battle_enemy_cellien_big, "_eye_black_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_eye_black_y", true);

Anim_SetPause(battle_enemy_cellien_big, "_body_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_body_y", true);

battle_enemy_cellien_big.depth=-9999;
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,-60,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,-20,25,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,20,5,25,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,20,battle_board.y-battle_enemy_cellien_big._body_y-72,15,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,battle_board.y-battle_enemy_cellien_big._body_y-72,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,-60,battle_board.y-battle_enemy_cellien_big._body_y-128,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,battle_soul.x-battle_enemy_cellien_big.x,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,battle_board.y-battle_enemy_cellien_big._body_y-72,-5,5,60,-1,-1,ANIM_MODE.ONESHOT,true);
alarm[0]=30;
alarm[1]=45;
alarm[2]=60;

audio_play_sound_on(global._gmu_emitter_sfx,snd_spearappear,0,false);