executedOnce = false;

Anim_Create(id, "executedOnce", 0, 0, 0, 1, 1, 1, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "image_alpha", 0, 0, 1, 0, 20, 0, -1, -1, ANIM_MODE.ONESHOT, false);

image_alpha = 1;
image_xscale = 2 + random(1);
image_yscale = image_xscale;
direction = random(360);
speed = 1;
depth = char_player.depth;

Anim_Create(id, "speed", 0, 0, 1, 0, 20, 0, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "image_xscale", 0, 0, image_xscale, 2, 20, 0, -1, -1, ANIM_MODE.ONESHOT, true);
Anim_Create(id, "image_yscale", 0, 0, image_yscale, 2, 20, 0, -1, -1, ANIM_MODE.ONESHOT, true);