event_inherited();
_hurt=false;

depth=DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
image_xscale=2;
image_yscale=2;
image_blend=c_orange;
image_alpha=0.5+random(0.25);

image_angle=random(360);
direction=270+random_range(-12,12);
speed=4+random(6);

_rot_dir=choose(0,1);