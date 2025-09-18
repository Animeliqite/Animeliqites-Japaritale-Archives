if(!_hurt){
    event_inherited();
}

image_angle+=_rot_dir==0 ? 3 : -3;
if(image_alpha>0){
    image_alpha-=0.025;
}
else{
    instance_destroy();
}