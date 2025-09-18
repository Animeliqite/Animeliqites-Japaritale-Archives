image_xscale = 2;
image_yscale = 2;
image_angle = -90;
y = (-sprite_width - 20) * 2;

_point_x = 228;
_point_y = 38;

_prev_x = x;
_prev_y = y;

_phase = 0;
_timer = 0;

_soul_x = battle_soul.x;
_soul_y = battle_soul.y;

Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.OUT, x, _soul_x - (sprite_height * 2) + _point_y * 2, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, y, _soul_y - (sprite_width * 2) + (sprite_width - _point_x) * 2, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, image_angle, -15, 10, 0, -1, -1, ANIM_MODE.ONESHOT, true);
Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.IN, image_angle - 15, 15, 5, 10, -1, -1, ANIM_MODE.ONESHOT, true);

Sfx_Play(snd_throw);

depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;