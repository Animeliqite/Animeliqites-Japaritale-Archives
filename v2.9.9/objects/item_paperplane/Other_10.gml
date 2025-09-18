///@desc Use
battle_enemy_cellien_big._draw_paperplane=true;
Dialog_Add_Ext(Lang_GetString("item.paper_plane.use.0")+"{sleep 120}{end}","{skippable false}");
Dialog_Add_Ext(Lang_GetString("item.paper_plane.use.1")+"{sleep 120}{end}","{skippable false}");
Dialog_Start();

Item_Remove(_item_slot,_item_type);
Item_Remove(item_stone,"ITEM");
Item_Remove(item_stick,"ITEM");

event_inherited();