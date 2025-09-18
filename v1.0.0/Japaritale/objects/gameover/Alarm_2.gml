Anim_Create(id,"textAlpha",0,0,0,1,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"textAlpha2",0,0,0,1,30,60,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"bgAlpha",0,0,0,1,30,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"bgY",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-25,0,30,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"textY",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-25,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
BGM_Play(0,bgm_gameover);
alarm[4]=110;