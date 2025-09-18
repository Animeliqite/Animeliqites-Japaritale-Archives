/// @description 

// Inherit the parent event
event_inherited();

_interacted=true;

if(!_given_egg){
	Dialog_Add_Ext(Lang_GetString("dialogue.fun_value.bonzi.0"),"{skippable false}{voice -1}{sound `snd_en_bonzi_hello`}");
	Dialog_Add_Ext(Lang_GetString("dialogue.fun_value.bonzi.1")+"{pause}{sound_stop `snd_en_bonzi_makeyourself`}{end}","{sound_stop `snd_en_bonzi_hello`}{skippable false}{voice -1}{sound `snd_en_bonzi_makeyourself`}");
	Dialog_Start();
}
else{
	Dialog_Add_Ext(Lang_GetString("dialogue.fun_value.bonzi.2")+"{pause}{sound_stop `snd_en_bonzi_enjoy`}{end}","{skippable false}{voice -1}{sound `snd_en_bonzi_enjoy`}");
	Dialog_Start();
}