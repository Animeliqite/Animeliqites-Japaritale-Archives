if(Encounter_IsExists(_encounter)&&instance_exists(char_player)){
	if(_exclam){
		var inst=instance_create_depth(0,0,0,exclamation);
		inst.x=char_player.x;
		inst.y=char_player.y-char_player.sprite_height;
		var time=15+irandom(5);
		inst.time=time;
		Sfx_Play(snd_exclamation);
		alarm[1]=time;
	}else{
		alarm[1]=1;
	}
}else{
	instance_destroy();
}