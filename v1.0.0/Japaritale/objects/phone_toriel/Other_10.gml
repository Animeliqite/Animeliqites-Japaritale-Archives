///@desc Call
audio_play_sound_on(global._gmu_emitter_sfx,snd_phone_call,0,false);
Dialog_Add("* Dialing...{pause}{clear}* ...{pause}{clear}* Nobody picked up.");
Dialog_Start();

event_inherited();