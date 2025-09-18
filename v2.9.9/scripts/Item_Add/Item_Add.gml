///@arg item_id
function Item_Add() {
	var ITEM=argument[0];
	var INST=instance_create_depth(0,0,0,ITEM);
	var TYPE=INST._item_type;
	
	if(Item_GetNumberIn(TYPE)<8){
		Item_Set(Item_GetNumberIn(TYPE),ITEM);
		instance_destroy(INST);
		return true;
	}else{
		return false;
	}
}
