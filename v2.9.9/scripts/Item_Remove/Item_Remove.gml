///@arg item_slot
///@arg item_type
function Item_Remove() {
	var SLOT=argument[0];
	var TYPE=argument[1];

	if(Item_IsSlotValid(SLOT)){
		if(Item_IsValid(Item_Get(SLOT,TYPE))){
			Item_SetRemove(SLOT,Item_Get(SLOT,TYPE));
			return true;
		}else{
			return false;
		}
	}else{
		return false;
	}


}
