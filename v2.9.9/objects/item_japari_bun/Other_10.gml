///@desc Use
Dialog_Add_Ext("{define `ITEM` `"+_name+"`}"+Lang_GetString("item.eat"));
Dialog_Start();

Player_Heal(20);

Item_Remove(_item_slot,_item_type);

audio_play_sound_on(global._gmu_emitter_sfx,snd_item_heal,0,false);

event_inherited();