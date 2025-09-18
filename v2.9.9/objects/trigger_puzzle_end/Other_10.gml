event_inherited();

Sfx_Play(snd_spike_disable);
Camera_Shake(4,4);

var inst=id;
with (char_spike) {
	if (_channel==inst._channel){
		spike_enabled=false;
	}
}

Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007_1,true);