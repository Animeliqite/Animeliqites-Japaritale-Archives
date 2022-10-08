///@arg name
function Player_SetUserName() {
	var NAME=argument[0];

	var result=Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.USERNAME,NAME);

	return result;


}
