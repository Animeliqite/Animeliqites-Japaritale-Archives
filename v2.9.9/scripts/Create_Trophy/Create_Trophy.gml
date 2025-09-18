function Create_Trophy(sprite = undefined){
	var INST=instance_create_depth(0,0,0,ui_trophy);
	if(!is_undefined(sprite)) INST.sprite_index=sprite;
}