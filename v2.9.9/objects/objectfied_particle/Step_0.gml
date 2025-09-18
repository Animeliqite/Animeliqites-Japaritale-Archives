randomize();
switch (objectToSpawn) {
	case part_rain:
		timer++;
		if(timer==5){
			if(layer_exists("Effect_Rain")) layer_set_visible(layer_get_id("Effect_Rain"),true);
		}
		if(timer>=240+irandom(320)){
			Sfx_Play(snd_thunder, 0.8+random(0.2), 1);
			if(layer_exists("Effect_Rain")) layer_set_visible(layer_get_id("Effect_Rain"),false);
			timer=0;
		}
		break;
}