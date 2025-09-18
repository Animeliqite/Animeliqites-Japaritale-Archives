event_inherited();

for (var i = 0; i < instance_number(block); i++){
	if (instance_find(block,i)._block_id == "inst_block_event_0") {
		block_enabled=false;
	}
}
if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_013,false)==false){
	if(_phase==0){
		block._solid("inst_block_event_0",false);
		block._solid("inst_block_event_1",false);
		block._solid("inst_block_event_2",false);
		block._solid("inst_block_event_3",false);
		char_chameleon.visible=false;
		if(char_player.x>500){
			Cutscene_Begin();
			_phase=1;
		}
	}
	else if(_phase==1){
		C_Wait(0,30);
		C_Execute(1,variable_instance_set,[camera,"target",noone]);
		C_Execute(1,method_call,[camera.moveToObject,[char_moose,60]]);
		C_Wait(1,90);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.chameleon_talk.0"),"{voice 10}"]);
		C_Execute(2,Dialog_Start,[false]);
		C_WaitUntilDestroy(2,ui_dialog);
		C_Execute(3,variable_instance_set,[char_chameleon,"visible",true]);
		C_MoveChar(3,char_chameleon,char_moose.x-60,char_moose.y,false,60);
		C_Execute(3,variable_instance_set,[char_moose,"dir",DIR.LEFT]);
		C_Execute(3,BGM_SetVolume,[0,0,30]);
		C_Wait(3,120);
		C_Execute(4,BGM_Play,[0,bgm_chameleon_pre]);
		C_Execute(4,BGM_SetVolume,[0,0]);
		C_Execute(4,BGM_SetVolume,[0,1,30]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.chameleon_talk.1"),"{voice 10}"]);
		C_Execute(4,Dialog_Start,[false]);
		C_WaitUntilDestroy(4,ui_dialog);
		C_Execute(5,variable_instance_set,[char_moose,"dir",DIR.DOWN]);
		C_Wait(5,30);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.chameleon_talk.2"),"{voice 10}"]);
		C_Execute(6,Dialog_Start,[false]);
		C_WaitUntilDestroy(6,ui_dialog);
		C_Execute(7,variable_instance_set,[char_moose,"dir",DIR.LEFT]);
		C_Wait(7,30);
		C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.chameleon_talk.3"),"{voice 10}"]);
		C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.chameleon_talk.4"),"{char_dir 9 270}{voice 10}"]);
		C_Execute(8,Dialog_Start,[false]);
		C_WaitUntilDestroy(8,ui_dialog);
		C_PlaySfx(9,snd_disappear);
		C_Execute(9,BGM_SetVolume,[0,0,60]);
		C_MoveChar(9,char_moose,0,-180,true,45);
		C_Execute(9,method_call,[char_chameleon._disappear,[]]);
		C_Wait(9,60);
		C_Execute(10,BGM_Stop,[0]);
		C_Execute(10,BGM_Play,[0,bgm_rain]);
		C_Execute(10,BGM_SetVolume,[0,0]);
		C_Execute(10,BGM_SetVolume,[0,1,30]);
		C_Execute(10,method_call,[camera.moveToObject,[char_player,60]]);
		C_Wait(10,120);
		C_Execute(11,variable_instance_set,[char_moose,"visible",false]);
		C_Execute(11,variable_instance_set,[char_chameleon,"visible",false]);
		C_Execute(11,variable_instance_set,[char_chameleon,"x",830]);
		C_Execute(11,variable_instance_set,[char_chameleon,"y",450]);
		C_Execute(11,variable_instance_set,[camera,"target",char_player]);
		C_Execute(11,variable_instance_set,[id,"_phase",2]);
		Cutscene_End(11);
	}
	else if(_phase==2){
		if(char_player.x>650){
			Cutscene_Begin();
			_phase=3;
		}
	}
	else if(_phase==3){
		C_Execute(0,BGM_Stop,[0]);
		C_PlaySfx(0,snd_exclamation);
		C_PlaySfx(0,bgm_chameleon_suspense);
		C_Execute(0,variable_instance_set,[char_chameleon,"visible",true]);
		C_Execute(0,variable_instance_set,[char_chameleon,"dir",DIR.LEFT]);
		C_Execute(0,variable_instance_set,[camera,"target",noone]);
		C_Execute(0,method_call,[camera.moveToObject,[char_chameleon,15]]);
		C_Execute(0,instance_create_depth,[char_player.x,char_player.y-char_player.sprite_height-5,-9999,exclamation]);
		C_Execute(0,instance_create_depth,[char_chameleon.x+40,char_chameleon.y-20,0,battle_bullet_shuriken]);
		C_Execute(0,instance_create_depth,[char_chameleon.x+20,char_chameleon.y-120,0,battle_bullet_shuriken]);
		C_Execute(0,instance_create_depth,[char_chameleon.x-40,char_chameleon.y-60,0,battle_bullet_shuriken]);
		C_Execute(0,method_call,[char_chameleon._disappear,[false,true]]);
		if(instance_exists(battle_bullet_shuriken)){
			with (battle_bullet_shuriken){
				if(cutscene._current_order==1){
					_rotate();
				}
				if(cutscene._current_order>=3){
					_hit_player();
				}
			}
		}
		C_Wait(0,30);
		C_Execute(1,method_call,[camera.moveToObject,[char_player,15]]);
		C_Execute(1,BGM_Play,[0,bgm_chameleon_chase]);
		C_Wait(1,15);
		C_Execute(2,variable_instance_set,[camera,"target",char_player]);
		C_SetPlayerMoveable(2,true);
		C_Wait(2,15);
		C_Execute(3,variable_instance_set,[camera,"target",char_player]);
		C_Execute(3,variable_instance_set,[id,"_phase",4]);
		Cutscene_End(3);
	}
	else if(_phase==4){
		if(char_player.x>810){
			block._solid("inst_block_event_0",true);
			char_chameleon.sprite_index=spr_char_chameleon_look_dark;
			char_chameleon.image_index=0;
			char_chameleon.image_speed=0;
			char_chameleon.image_alpha=0;
			char_chameleon.x=850;
			char_chameleon.y=100;
			char_chameleon._disappear(false,true);
			instance_create_depth(char_chameleon.x-40,char_chameleon.y-20,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x+40,char_chameleon.y-80,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x+30,char_chameleon.y+40,0,battle_bullet_shuriken);
			if(instance_exists(battle_bullet_shuriken)){
				with (battle_bullet_shuriken)
					_rotate();
			}
			_phase=5;
		}
	}
	else if(_phase==5){
		if(char_player.x>830){
			block._solid("inst_block_event_1",true);
			char_chameleon.image_index=1;
			_phase=6;
		}
	}
	else if(_phase==6){
		if(char_player.x>870){
			char_chameleon.image_index=2;
			_phase=7;
		}
	}
	else if(_phase==7){
		if(char_player.x>900){
			char_chameleon._disappear(true,true);
			_phase=8;
		}
	}
	else if(_phase==8){
		if(char_player.x>1020){
			char_chameleon.x=935;
			char_chameleon.y=220;
			char_chameleon.dir=DIR.RIGHT;
			char_chameleon.block_enabled=false;
			char_chameleon._disappear(false,true);
			_phase=8.1;
		}
	}
	else if(_phase==8.1){
		if(char_player.x>1090){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=9;
		}
	}
	else if(_phase==9){
		if(char_player.x>1130){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=10;
		}
	}
	else if(_phase==10){
		if(char_player.x>1180){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=11;
		}
	}
	else if(_phase==11){
		if(char_player.x>1220){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=12;
		}
	}
	else if(_phase==12){
		if(char_player.x>1260){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=13;
		}
	}
	else if(_phase==13){
		if(char_player.x>1300){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=14;
		}
	}
	else if(_phase==14){
		if(char_player.x>1340){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=15;
		}
	}
	else if(_phase==15){
		if(char_player.x>1380){
			var inst = instance_create_depth(char_player.x,250,0,battle_bullet_kunai);
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=16;
		}
	}
	else if(_phase==16){
		if(char_player.x>1420){
			_phase=17;
		}
	}
	else if(_phase==17){
		if(char_player.x>1420&&char_player.y<300){
			char_chameleon._disappear(false, true);
			char_chameleon.x=1560;
			char_chameleon.y=210;
			char_chameleon.block_enabled=false;
			char_chameleon._look_at_player=true;
			var inst = instance_create_depth(1550,char_player.y,0,battle_bullet_kunai);
			inst._dir=DIR.LEFT;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=18;
		}
	}
	else if(_phase==18){
		if(char_player.y<280){
			var inst = instance_create_depth(1550,char_player.y,0,battle_bullet_kunai);
			inst._dir=DIR.LEFT;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=19;
		}
	}
	else if(_phase==19){
		if(char_player.x>1540){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=21;
		}
	}
	else if(_phase==21){
		if(char_player.x>1580){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=22;
		}
	}
	else if(_phase==22){
		if(char_player.x>1620){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=23;
		}
	}
	else if(_phase==23){
		if(char_player.x>1660){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=24;
		}
	}
	else if(_phase==24){
		if(char_player.x>1700){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=25;
		}
	}
	else if(_phase==25){
		if(char_player.x>1740){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=26;
		}
	}
	else if(_phase==26){
		if(char_player.x>1780){
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=27;
		}
	}
	else if(_phase==27){
		if(char_player.x>1820){
			char_chameleon._disappear(true, true);
			var inst = instance_create_depth(char_player.x,230,0,battle_bullet_kunai);
			inst._dir=DIR.UP;
			Anim_Create(inst,"state",0,0,0,1,1,15,-1,-1,ANIM_MODE.ONESHOT,false);
			_phase=28;
		}
	}
	else if(_phase==28){
		if(char_player.x>1940){
			char_chameleon._disappear(false, true);
			char_chameleon._look_at_player=false;
			char_chameleon.sprite_index=spr_char_chameleon_look_dark;
			char_chameleon.image_speed=0;
			char_chameleon.image_index=0;
			char_chameleon.x=2020;
			char_chameleon.y=220;
			instance_create_depth(char_chameleon.x-40,char_chameleon.y-60,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x+60,char_chameleon.y-20,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x-40,char_chameleon.y+20,0,battle_bullet_shuriken);
			_timer=0;
			_phase=29;
		}
	}
	else if(_phase==29){
		if(char_player.x>2120){
			instance_create_depth(char_chameleon.x-40,char_chameleon.y-60,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x+60,char_chameleon.y-20,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x-40,char_chameleon.y+20,0,battle_bullet_shuriken);
			_timer=0;
			_phase=30;
		}
	}
	else if(_phase==30){
		if(char_player.x>2240){
			instance_create_depth(char_chameleon.x-40,char_chameleon.y-60,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x+60,char_chameleon.y-20,0,battle_bullet_shuriken);
			instance_create_depth(char_chameleon.x-40,char_chameleon.y+20,0,battle_bullet_shuriken);
			_timer=0;
			_phase=31;
		}
	}
			
	if(_phase>=5&&_phase<28){
		if(_timer>=0)
			_timer++;
		if(_timer>30){
			if(instance_exists(battle_bullet_shuriken)){
				with (battle_bullet_shuriken)
					_hit_player();
			}
			_timer=-9999;
		}
	}
	if(_phase>=28){
		if(_timer>=0)
			_timer++;
		if(_timer>15){
			if(instance_exists(battle_bullet_shuriken)){
				with (battle_bullet_shuriken)
					_hit_player();
			}
			_timer=-9999;
		}
	}
}