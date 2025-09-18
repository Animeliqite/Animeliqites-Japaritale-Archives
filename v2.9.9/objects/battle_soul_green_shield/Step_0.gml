image_angle=approach(image_angle,_rot,45);

if (place_meeting(x, y, battle_bullet)) {
    with (instance_place(x, y, battle_bullet)) {
        instance_destroy();
        image_index=1;
        Sfx_Play(snd_ding);
        alarm[0]=30;
    }
}