///@arg input
function Input_GetKey() {
	var INPUT=argument[0];
	var map=global._gmu_input;
	var result=[];
	if(ds_map_exists(map,INPUT)){
		var list=ds_map_find_value(map,INPUT);
		var proc=0;
		repeat(ds_list_size(list)){
			array_push(result,ds_list_find_value(list,proc));
			proc+=1;
		}
		return ds_map_find_value(result[0], "button");
	}
	else{
		return false;
	}
}
