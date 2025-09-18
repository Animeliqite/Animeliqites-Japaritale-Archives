image_angle+=3*sign(randX);
x+=randX;
y+=2;

if(y>room_height*0.75)
	image_alpha-=0.01;
if(y>room_height)
	instance_destroy();