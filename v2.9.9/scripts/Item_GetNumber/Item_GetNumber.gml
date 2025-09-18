function Item_GetNumber() {
	var proc=0;
	var proc_type=0;
	var num=0;
	repeat(3){
		repeat(8){
			if(Item_IsValid(Item_Get(proc,(proc_type==0 ? "ITEM" : (proc_type==1 ? "TOOL" : "KEY"))))){
				num+=1;
			}
			proc+=1;
		}
		proc_type+=1;
		proc=0;
	}
	return num;
}

///@arg item_type
function Item_GetNumberIn() {
	var proc=0;
	var num=0;
	var type=argument[0];
	
	repeat(8){
		if(Item_IsValid(Item_Get(proc,type))){
			num+=1;
		}
		proc+=1;
	}
	return num;
}
