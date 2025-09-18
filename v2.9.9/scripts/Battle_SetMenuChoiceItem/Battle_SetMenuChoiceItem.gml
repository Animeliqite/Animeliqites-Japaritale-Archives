///@arg item_choice
///@arg call_event*
function Battle_SetMenuChoiceItem() {
	var SLOT=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if(SLOT<Item_GetNumber()){
		battle._menu_item_slot_type=array_create(8,"ITEM");
		battle._menu_choice_item=SLOT;
		while(SLOT>=battle._menu_choice_item_first+3){
			battle._menu_choice_item_first+=1;
		}
		while(SLOT<battle._menu_choice_item_first){
			battle._menu_choice_item_first-=1;
		}
	
		//更新文字
		var text="";
		var proc=battle._menu_choice_item_first;
		repeat(3){
			if(Item_IsValid(Item_Get(proc,"ITEM"))){
				text+="* "+Item_GetName(Item_Get(proc,"ITEM"))+"&";
				array_push(battle._menu_item_slot_type,"ITEM");
				proc+=1;
			}
			else if(Item_IsValid(Item_Get(proc,"TOOL"))){
				text+="* "+Item_GetName(Item_Get(proc,"TOOL"))+"&";
				array_push(battle._menu_item_slot_type,"TOOL");
				proc+=1;
			}
			else if(Item_IsValid(Item_Get(proc,"KEY"))){
				text+="* "+Item_GetName(Item_Get(proc,"KEY"))+"&";
				array_push(battle._menu_item_slot_type,"KEY");
				proc+=1;
			}
		}
		Battle_SetDialog(text,true);
				
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}

///@arg item_choice
///@arg call_event*
function Battle_SetMenuChoiceItemAction() {
	var SLOT=argument[0];
	var CALL=true;
	if(argument_count>=2){
		CALL=argument[1];
	}

	if(SLOT<array_length(battle._item_action)){
		battle._menu_choice_item_action=SLOT;
		while(SLOT>=battle._menu_choice_item_action_first+3){
			battle._menu_choice_item_action_first+=1;
		}
		while(SLOT<battle._menu_choice_item_action_first){
			battle._menu_choice_item_action_first-=1;
		}
	
		//更新文字
		var text="";
		var proc=battle._menu_choice_item_action_first;
		repeat(3){
			if(proc<array_length(battle._item_action)){
				text+="* "+battle._item_action[proc].text+"&";
				proc+=1;
			}
		}
		Battle_SetDialog(text,true);
				
		if(CALL){
			Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.MENU_CHOICE_SWITCH);
		}
	
		return true;
	}else{
		return false;
	}


}
