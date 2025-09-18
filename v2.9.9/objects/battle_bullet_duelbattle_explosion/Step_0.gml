if(!_hurt){
    event_inherited();
}

_timer++;

_shake_x=approach(_shake_x,0,0.25);
_shake_y=approach(_shake_y,0,0.25);
_shake_rot=approach(_shake_rot,0,0.25);

if(_timer>15){
    if(image_alpha>0){
		
		image_alpha=approach(image_alpha,0,0.1);
    }
    else{
        if(_timer>45)
            instance_destroy();
    }
}