request = noone;
userName = "";
userToken = "";
alphaAnim = 0;
cooldown = 3;
phase = 0;

loggedInSelection = 0;
alreadyLoggedIn = false;
failedToLogIn = false;
if(GameJolt_User_LogIn_FromCache()) {
	userName = global.GameJolt_Username;
	userToken = global.GameJolt_GameToken;
	alreadyLoggedIn = true;
}

Anim_Create(id,"alphaAnim",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,-1,2,15,0,-1,-1,ANIM_MODE.PINGPONG,false);