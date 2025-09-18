if(fall){
	y+=2
	image_angle++;
	if(image_alpha>0)
		image_alpha-=0.08;
	else instance_destroy();
}