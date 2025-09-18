if(pushSoulEnabled&&block_enabled){
    // Game frozen protector.
    var tryTimes=10000;
    while(place_meeting(x,y,battle_soul)&&tryTimes>0){
        battle_soul.x+=lengthdir_x(0.1,pushSoulDirection+image_angle);
        battle_soul.y+=lengthdir_y(0.1,pushSoulDirection+image_angle);
        tryTimes-=1;
    }
}

if(pushPlayerEnabled&&block_enabled){
    // Game frozen protector.
    var tryTimes=10000;
    while(place_meeting(x,y,char_player)&&tryTimes>0){
        char_player.x+=lengthdir_x(0.1,pushPlayerDirection+image_angle);
        char_player.y+=lengthdir_y(0.1,pushPlayerDirection+image_angle);
        tryTimes-=1;
    }
}

_destroy = function (_inst_id) {
	if(_block_id==_inst_id)
		instance_destroy();
}

_solid = function (_inst_id,_enabled) {
	if(_block_id==_inst_id)
		block_enabled=_enabled;
}