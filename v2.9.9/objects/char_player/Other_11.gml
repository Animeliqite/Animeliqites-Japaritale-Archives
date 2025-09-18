if(_hurt_inv<=0){
	var inst=instance_create_depth(x,y,-4500,ui_overworld_dmgnum);
	inst._dmg=_hurt_amount;
	Player_Hurt(_hurt_amount);
	Sfx_Play(snd_hurt);
	Camera_Shake(5,5,0,0,true,true);
	_hurt_inv=30;
}