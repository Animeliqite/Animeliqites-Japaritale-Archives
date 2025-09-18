event_inherited();

randomize();
image_angle=random_range(-12,12);
image_blend=c_white;
image_xscale=1;
image_yscale=1+random(1);
anim_created=false;
spd=random_range(2,5);
firstSpd=spd;
func=0;

tween=0;
ease=0;
_x=0;
_y=0;
duration=30;
delay=0;
alreadyHurt=false;
blendTimer=0;
alarm[0]=1;

Anim_Create(id,"blendTimer",0,0,0,1,30,0,-1,-1,ANIM_MODE.PINGPONG,false);