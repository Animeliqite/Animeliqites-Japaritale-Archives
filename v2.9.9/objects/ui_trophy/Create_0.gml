depth = -10000;

surf = -1;
xx=sprite_width;
yy=440;
str="Achievement Granted";

image_alpha = 0;
image_xscale = 1;
image_yscale = 1;
image_speed = 0;
image_index = 0;

switch (sprite_index) {
	case spr_trophy_cellien:
		GameJolt_Trophies_Update("172728");
		break;
	case spr_trophy_tree:
		GameJolt_Trophies_Update("172731");
		break;
	case spr_trophy_cellien_big:
		GameJolt_Trophies_Update("172732");
		break;
}

Anim_Create(id, "xx", ANIM_TWEEN.SINE, ANIM_EASE.OUT, xx-20, xx, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "xx", ANIM_TWEEN.SINE, ANIM_EASE.IN, xx, xx-20, 15, 50, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.OUT, 0, 1, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "image_alpha", ANIM_TWEEN.SINE, ANIM_EASE.IN, 1, 0, 15, 50, -1, -1, ANIM_MODE.ONESHOT, false);
alarm[0] = 90;
alarm[1] = 20;