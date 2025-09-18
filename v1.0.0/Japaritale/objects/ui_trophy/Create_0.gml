depth = -10000;

surf = -1;
bgAlpha = 0;
rectWidth = 160;
rectHeight = 80;
blinkPhase = 0;
xx = 640;
yy = 20;

image_alpha = 0;
image_xscale = 2.5;
image_yscale = 2.5;
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

Anim_Create(id, "image_alpha", 0, 0, 0, 1, 20, 0);
Anim_Create(id, "blinkPhase", 0, 0, 0, 1, 1, 50);
Anim_Create(id, "image_alpha", 0, 0, 1, -1, 20, 70);
Anim_Create(id, "bgAlpha", 0, 0, 0, 0.5, 20, 0);
Anim_Create(id, "bgAlpha", 0, 0, 0.5, -0.5, 20, 70);
alarm[0] = 90;
alarm[1] = 20;