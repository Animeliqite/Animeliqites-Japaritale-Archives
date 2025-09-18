event_inherited();

for (var i=0; i<array_length(_chibi); i++){
	if(instance_exists(_chibi[i])){
		instance_destroy(_chibi[i]);
	}
}