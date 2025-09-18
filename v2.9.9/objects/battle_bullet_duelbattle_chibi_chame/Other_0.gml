repeat(5){
    instance_create_depth(x,y,0,battle_bullet_duelbattle_smoke);
}

Sfx_Play(snd_duelbattle_chibi_disappear);
instance_destroy();