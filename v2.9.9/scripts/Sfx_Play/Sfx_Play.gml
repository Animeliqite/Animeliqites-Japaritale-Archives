function Sfx_Play(soundid, pitch = 1, volume = 1, time = 0) {
	audio_play_sound_on(global._gmu_emitter_sfx,soundid, 0, false);
	audio_sound_pitch(soundid, pitch);
	audio_sound_gain(soundid, volume, time * 1000);
}