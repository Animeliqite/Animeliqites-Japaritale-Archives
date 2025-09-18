if(_destroy_inst_on_destroy){
	if(instance_exists(_inst)){
		instance_destroy(_inst);
	}
}

if(instance_exists(face_reminant)){
	instance_destroy(face_reminant);
}