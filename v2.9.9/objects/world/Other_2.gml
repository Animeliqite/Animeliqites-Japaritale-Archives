GMU_Other_Init();
Anim_Init();
Cutscene_Init();

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

Lang_Init();
Lang_LoadList();
Lang_LoadString(0);
Lang_LoadSprite(0);
Lang_LoadFont(0);

Flag_Init();
Flag_Custom_Extra();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

instance_create_depth(0,0,0,cutscene);
instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);
instance_create_depth(0,0,0,ui_overworldbattle);
instance_create_depth(0,0,0,ui_debug);

application_surface_draw_enable(false);

Console_OutputLine("UNDERTALE by Toby Fox");
Console_OutputLine("UNDERTALE Engine by TML");
Console_OutputLine("Engine Version: "+ENGINE_VERSION);
Console_OutputLine("Game Name: "+GAME_NAME);
Console_OutputLine("Game Author: "+GAME_AUTHOR);
Console_OutputLine("Game Version: "+GAME_VERSION);

if (file_exists("settings.ini")) {
	Input_Unbind(INPUT.CONFIRM);
	Input_Unbind(INPUT.CANCEL);
	Input_Unbind(INPUT.MENU);
	Input_Unbind(INPUT.LEFT);
	Input_Unbind(INPUT.RIGHT);
	Input_Unbind(INPUT.UP);
	Input_Unbind(INPUT.DOWN);
	
	ini_open("settings.ini");
	global.chosen_language = ini_read_real("General","Language",0);
	global.dialogue_box_style = ini_read_real("General","DialogueBoxStyle",false);
	global.chosen_border = ini_read_real("General","Border",0);
	global.sfx_volume = ini_read_real("General","SFXVolume",1);
	global.bgm_volume = ini_read_real("General","BGMVolume",1);
	global.first_time = !(ini_read_real("Setup","SetupDone",false));
	global.low_vfx = ini_read_real("General","LowVFX",false);
	Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Confirm",ord("Z")));
	Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Cancel",ord("X")));
	Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Menu",ord("C")));
	Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Left",vk_left));
	Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Right",vk_right));
	Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Up",vk_up));
	Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,ini_read_real("Keyboard","Down",vk_down));
	Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
	Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
	Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
	
	Lang_LoadString(global.chosen_language);
	Lang_LoadSprite(global.chosen_language);
	Lang_LoadFont(global.chosen_language);
	audio_emitter_gain(global._gmu_emitter_sfx, global.sfx_volume);
	audio_emitter_gain(global._gmu_emitter_bgm, global.bgm_volume);
	ini_close();
}

global.chapter=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.CHAPTER,1);
GameJolt_User_LogIn_FromCache();

window_center();
room_goto(room_logo_start);