event_inherited();
if(_light){
	if(global.gotFlint&&!_lighted_on){
		Sfx_Play(snd_spearappear);
		Sfx_Play(snd_noise);
		_lighted_on=true;
	}
}