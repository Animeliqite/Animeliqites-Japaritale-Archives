event_user(0);

_camera=camera_create_view(x,y,width/scale_x,height/scale_y,angle,target,-1,-1,width/scale_x/2,height/scale_y/2);

moveToObject = function (_target,duration=60) {
	Anim_Create(id,"x",0,0,x,median(0,_target.x-(width/scale_x/2),room_width-(width/scale_x)),duration,0,-1,-1,0,false);
	Anim_Create(id,"y",0,0,y,median(0,_target.y-(height/scale_y/2),room_height-(height/scale_y)),duration,0,-1,-1,0,false);
}

moveToPos = function (_x,_y,duration=60) {
	Anim_Create(id,"x",0,0,x,median(0,_x-(width/scale_x/2),room_width-(width/scale_x)),duration,0,-1,-1,0,false);
	Anim_Create(id,"y",0,0,y,median(0,_y-(height/scale_y/2),room_height-(height/scale_y)),duration,0,-1,-1,0,false);
}