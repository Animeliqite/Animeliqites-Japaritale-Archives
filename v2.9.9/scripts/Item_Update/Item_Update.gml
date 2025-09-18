function Item_Update() {
	var proc=0;
	var proc_type=0;
	var slot=0;

	repeat(3){
		repeat(8){
			var ITEM=Item_Get(proc,(proc_type==0 ? "ITEM" : (proc_type==1 ? "TOOL" : "KEY")));
			if(Item_IsValid(ITEM)){
				var INST=instance_create_depth(0,0,0,ITEM);
				var TYPE=INST._item_type;
				if(TYPE=="ITEM"){
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+proc,-1);
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM+slot,ITEM);
				}
				else if(TYPE=="TOOL"){
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_TOOL+proc,-1);
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_TOOL+slot,ITEM);
				}
				else if(TYPE=="KEY"){
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_KEY+proc,-1);
					Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ITEM_KEY+slot,ITEM);
				}
				slot+=1;
				instance_destroy(INST);
			}
			proc+=1;
		}
		proc_type+=1;
	}
	return true;


}
