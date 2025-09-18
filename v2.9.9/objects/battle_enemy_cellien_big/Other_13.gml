///@desc Menu Switch

switch(Battle_GetMenu()){
	case BATTLE_MENU.FIGHT_TARGET:
		//Create enemy's hp bar
		var inst=instance_create_depth(0,0,0,battle_menu_fight_hp_bar);
		inst.enemy_slot=_enemy_slot;
		inst.hp_max=_hp_max;
		inst.hp=_hp;
		break;
		
	case BATTLE_MENU.FIGHT_DAMAGE:
		var dmg=(_instructed==2 ? (Battle_GetMenuFightDamage() > 0 ? -1 : 0) : 0);
		var hp_orig=_hp;
		
		_hp=(_hp-dmg >= 0 ? _hp-dmg : 0);
		
		//Create damage number
		var inst=instance_create_depth(x,y-150,0,battle_damage);
		inst.damage=dmg;
		inst.display_time=60;
		inst.bar_hp_max=_hp_max;
		inst.bar_hp_original=hp_orig;
		inst.bar_hp_target=_hp;
		inst.bar_width=sprite_width+25;
		inst.bar_visible=false;
		
		//Play damage sound and shake
		if(_instructed==2&&dmg==-1){
			y += 30;
			BGM_Stop(5);
			_broken=true;
			_core_part_show=false;
			Anim_Destroy(id);
			inst.damage=-1;
			audio_play_sound_on(global._gmu_emitter_sfx,snd_destroy,0,false);
			var shake=instance_create_depth(0,0,0,shaker);
			shake.target=self;
			shake.var_name="x";
			shake.shake_distance=52;
			shake.shake_decrease=13;
			shake.shake_speed=4;
		}
		break;
}