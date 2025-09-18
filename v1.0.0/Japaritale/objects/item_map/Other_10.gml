///@desc Use
Dialog_Add_Ext(Lang_GetString("item.strange_paper.use.0"));
Dialog_Add_Ext(Lang_GetString("item.strange_paper.use.1"));
Dialog_Start();

Item_Add(item_paperplane);
Item_Remove(_item_slot);

event_inherited();