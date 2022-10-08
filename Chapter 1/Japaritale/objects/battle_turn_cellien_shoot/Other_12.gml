///@desc Turn Start

Anim_SetPause(battle_enemy_cellien_big, "_eye_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_eye_y", true);

Anim_SetPause(battle_enemy_cellien_big, "_eye_black_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_eye_black_y", true);

Anim_SetPause(battle_enemy_cellien_big, "_body_x", true);
Anim_SetPause(battle_enemy_cellien_big, "_body_y", true);

battle_enemy_cellien_big.depth=-9999;
Anim_Create(battle_enemy_cellien_big,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,-battle_board.left,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,20,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_black_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,-battle_board.left-20,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,60,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,-battle_board.left-30,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,70,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-battle_board.left,battle_board.left+battle_board.right-80,60,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_black_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-battle_board.left-20,battle_board.left+battle_board.right-40,60,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-battle_board.left-30,battle_board.left+battle_board.right-30,60,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,20,40,30,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,60,-40,30,60,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,60,40,30,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,100,-40,30,60,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,70,40,30,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,110,-40,30,60,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,battle_board.left+battle_board.right-80,-40,60,90,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,20,-80,60,90,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,battle_board.left+battle_board.right-40,-180,60,90,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,60,-80,60,90,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,battle_board.left+battle_board.right-30,-180,55,90,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,60,-80,55,90,-1,-1,ANIM_MODE.ONESHOT,true);
/*Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,-60,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,-20,25,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,20,5,25,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,20,battle_board.y-battle_enemy_cellien_big._body_y-72,15,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(battle_enemy_cellien_big,"_eye_black_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,battle_board.y-battle_enemy_cellien_big._body_y-72,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,-60,battle_board.y-battle_enemy_cellien_big._body_y-128,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_body_x_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,battle_soul.x-battle_enemy_cellien_big.x,15,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(battle_enemy_cellien_big,"_eye_y_add",ANIM_TWEEN.SINE,ANIM_EASE.IN,battle_board.y-battle_enemy_cellien_big._body_y-72,-5,5,60,-1,-1,ANIM_MODE.ONESHOT,true);
*/
alarm[0]=30;
alarm[1]=90;

audio_play_sound_on(global._gmu_emitter_sfx,snd_gb_charge,0,false);