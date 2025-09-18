timer++;

if(phase==0){
	if(timer==90){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_logo,false,0);
		draw_phase="logo";
	}
	
	if(timer==180){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_logo,false,0);
		draw_phase="owner";
	}
	
	if(timer==270){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_logo,false,0);
		draw_phase="contributors_ch" + string(chapter);
	}
	
	if(timer==360){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_logo,false,0);
		draw_phase="nothing";
	}
	
	if(timer==450){
		Fader_Fade(1,0,30);
		room_goto(room_target);
	}
}