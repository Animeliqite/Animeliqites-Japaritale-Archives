///@desc Menu End

switch(Battle_GetMenuChoiceButton()){
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		//Check: is enemy supposed to be dead?
		if(_hp<=0){
			//Create particle effect
			var inst=instance_create_depth(x,y,0,battle_death_particle);
			inst.sprite=sprite_index;
			audio_play_sound_on(global._gmu_emitter_sfx,snd_vaporize,0,false);
			instance_destroy();
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch(Battle_GetMenuChoiceAction()){
            case 0:
                Dialog_Add(Lang_GetString("monster.duel_battle.moose.act_option.check"));
                break;
			case 1:
				_handler._act_option_kiai();
				break;
            case 2:
                _handler._act_option_challenge();
                break;
		}
}