var obj = id;
with (instance_create_depth(x,y-(sprite_height*image_yscale)/2,depth + 1,part_dust)) {
	_part_dir = obj._part_dir;
}