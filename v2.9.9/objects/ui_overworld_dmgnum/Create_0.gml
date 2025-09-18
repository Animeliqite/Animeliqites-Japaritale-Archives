_dmg_font=global.dmg_font;
_dmg=0;

Anim_Create(id,"x",ANIM_TWEEN.SINE,ANIM_EASE.OUT,x,10,5,0,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,y,-10,5,0,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"y",ANIM_TWEEN.BOUNCE,ANIM_EASE.IN,y-10,10,10,5,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"y",0,0,y,-10,10,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"image_yscale",0,0,image_yscale,2,10,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"image_alpha",0,0,image_alpha,0,10,30,-1,-1,ANIM_MODE.ONESHOT,false);

depth=-4500;