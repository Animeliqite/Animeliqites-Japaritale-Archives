event_inherited();

if(Anim_IsExists(id,"image_alpha")){
	_disappear_alpha+=Anim_GetValue();
}

if(dark_previous!=dark){
	event_user(1);
	dark_previous=dark;
}