///@desc Use

if (instance_exists(battle_enemy_cellien_big)){
	battle_enemy_cellien_big._has_used_paperplane=true;
}

Dialog_Add_Ext(Lang_GetString("item.strange_paper.use.0"));
Dialog_Add_Ext(Lang_GetString("item.strange_paper.use.1"));
Dialog_Start();

Item_Add(item_paperplane);
Item_Remove(_item_slot,_item_type);

event_inherited();