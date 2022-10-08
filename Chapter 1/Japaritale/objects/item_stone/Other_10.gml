///@desc Use
Dialog_Add_Ext(Lang_GetString("item.stone.use.0"));
Dialog_Add_Ext(Lang_GetString("item.stone.use.1"));
Dialog_Start();

Item_Remove(_item_slot);

event_inherited();