event_inherited();

if(_create_footprints){
	_footprint_timer++;
	if(_footprint_timer%ceil(5/_move_speed_anim)==0){
		var FOOTPRINT_POS, FOOTPRINT_POS_LENGTH, CHAR=id;
		if(dir==DIR.LEFT||dir==DIR.RIGHT) FOOTPRINT_POS=0;
		else if(dir==DIR.UP||dir==DIR.DOWN) FOOTPRINT_POS=1;
		_footprint_from_foot=!_footprint_from_foot;
		
		if(_footprint_from_foot==0) FOOTPRINT_POS_LENGTH=-2;
		if(_footprint_from_foot==1) FOOTPRINT_POS_LENGTH=2;
		
		with(instance_create_depth(x+(FOOTPRINT_POS==1 ? FOOTPRINT_POS_LENGTH : 0),y+(FOOTPRINT_POS==0 ? FOOTPRINT_POS_LENGTH : 0),-1800,part_footprint)){
			image_angle=(FOOTPRINT_POS==1 ? 0 : 90);
		}
	}
}