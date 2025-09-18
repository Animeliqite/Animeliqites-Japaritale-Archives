///@arg item_slot
///@arg item_id
function Item_Set() {
	var SLOT=argument[0];
	var ITEM=argument[1];

	if(Item_IsSlotValid(SLOT) && (Item_IsValid(ITEM) || ITEM==-1)){
		var INST=instance_create_depth(0,0,0,ITEM);
		var TYPE=INST._item_type;
		if(TYPE=="ITEM") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT,ITEM);
		else if(TYPE=="TOOL") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_TOOL+SLOT,ITEM);
		else if(TYPE=="KEY") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_KEY+SLOT,ITEM);
		Item_Update();
		instance_destroy(INST);
		return true;
	}else{
		return false;
	}
}

///@arg item_slot
///@arg item_id
function Item_SetRemove() {
	var SLOT=argument[0];
	var ITEM=argument[1];

	if(Item_IsSlotValid(SLOT) && (Item_IsValid(ITEM))){
		var INST=instance_create_depth(0,0,0,ITEM);
		var TYPE=INST._item_type;
		if(TYPE=="ITEM") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT,-1);
		else if(TYPE=="TOOL") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_TOOL+SLOT,-1);
		else if(TYPE=="KEY") Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_KEY+SLOT,-1);
		Item_Update();
		instance_destroy(INST);
		return true;
	}else{
		return false;
	}
}
