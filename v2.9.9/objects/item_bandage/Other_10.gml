///@desc Use
Dialog_Add(Lang_GetString("item.bandage.use.0")+Item_GetTextHeal(10));
Dialog_Start();

Player_Heal(10);

Item_Remove(_item_slot,_item_type);

audio_play_sound_on(global._gmu_emitter_sfx,snd_item_heal,0,false);

event_inherited();