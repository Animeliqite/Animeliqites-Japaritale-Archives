visible=true;
depth=-4500;
if(layer_exists(layer_get_id("Tileset_Battle_Zone")))
	layer_set_visible(layer_get_id("Tileset_Battle_Zone"),global.in_overworld_battle);