///@desc Use
Dialog_Add(Item_GetTextEquip(_name));
Dialog_Start();

//Item_Remove(_item_slot);
Item_Set(_item_slot,Item_GetArmor());
Item_SetArmor(object_index);

Player_SetDefItem(3);

audio_play_sound_on(global._gmu_emitter_sfx,snd_item_equip,0,false);

event_inherited();