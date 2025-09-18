///@arg item_slot
///@arg item_type
function Item_Get() {
	var SLOT=argument[0];
	var TYPE=argument[1];
	
	if(Item_IsSlotValid(SLOT)){
		if(TYPE=="ITEM"){
			return Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+SLOT);
		}
		else if(TYPE=="TOOL"){
			return Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_TOOL+SLOT);
		}
		else if(TYPE=="KEY"){
			return Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_KEY+SLOT);
		}
	}
	else{
		return -1;
	}
}

function Item_GetFromSlot() {
	var SLOT=argument[0];
	
}