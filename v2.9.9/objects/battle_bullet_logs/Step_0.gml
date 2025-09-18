event_inherited();

depth=DEPTH_BATTLE.BULLET;

if(func==-1){
	x-=3;
}

if(func==0){
	x+=spd;
}

if(func==1){
	if(anim_created==false){
		Anim_Create(id,"x",tween,ease,x,_x-x,duration,delay);
		Anim_Create(id,"y",tween,ease,y,_y-y,duration,delay);
		anim_created=true;
	}
}

if(func==2){
	vspeed=-spd;
	spd-=firstSpd/4;
}

if(func==3){
	image_blend=(blendTimer>0.5 ? c_white : c_aqua);
	x+=spd;
}