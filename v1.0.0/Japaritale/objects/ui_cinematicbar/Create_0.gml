depth=DEPTH_UI.CINEMATIC_BAR;
_bar_distance=0;
surf=-1;
xx=0;
Anim_Create(id,"_bar_distance",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_bar_distance,50,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"xx",0,0,0,-640,240,0,-1,-1,ANIM_MODE.REPEAT,false);