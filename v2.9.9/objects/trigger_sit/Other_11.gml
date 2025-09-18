///@desc Leave

event_inherited();

Sfx_Play(snd_noise);
instance_destroy(audio_pitcher);
BGM_SetPitch(0, _prev_pitch);
object_char.x = prevX;
object_char.y = prevY;
camera.moveToPos(prevX,prevY,30);
object_char.sprite_index = spr_char_kaban_down;
object_char.image_speed = 0;
object_char.image_index = 0;
object_char.dir_locked = false;

alarm[0]=30;
_triggered = false;