var _xscale=image_xscale;
var _yscale=image_yscale;
var _alpha=image_alpha;

Anim_Create(id,"image_xscale",ANIM_EASE.OUT,ANIM_TWEEN.SINE,_xscale/1.5,image_xscale,5,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"image_yscale",ANIM_EASE.OUT,ANIM_TWEEN.SINE,_yscale/1.5,image_yscale,5,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"image_alpha",ANIM_EASE.OUT,ANIM_TWEEN.SINE,_alpha,1,5,0,-1,-1,ANIM_MODE.ONESHOT,false);