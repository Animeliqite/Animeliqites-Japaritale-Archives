gravity=1;
image_yscale+=0.2;

if(y>_drop_y){
	repeat(4) instance_create_depth(x,y,depth,part_rainpart);
	instance_destroy();
}