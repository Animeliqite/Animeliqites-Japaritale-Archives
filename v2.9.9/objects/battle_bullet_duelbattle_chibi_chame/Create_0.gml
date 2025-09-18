_jump_point=battle_board.x;
_jump_point_offset=(battle_board.left+battle_board.right)/2+120;

_run_sprite=spr_bullet_duelbattle_chibi_chameleon_run;
_jump_sprite=spr_bullet_duelbattle_chibi_chameleon_jump;

_parent_object=battle_turn_duelbattle_chibi;
_instantiated_bullet=false;
_has_jumped_once=false;
_phase="idle";

_dir=DIR.RIGHT;
_vspd=0;
_grav=0.75;
_spd=8;

depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
image_xscale=2;
image_yscale=2;
image_speed=0.35;

event_user(0);

_instantiate_bullet = function (dir = DIR.DOWN) {
	randomize();
	
	var bullet = choose(battle_bullet_duelbattle_chibi_kunai, battle_bullet_duelbattle_chibi_shuriken)
	
	if(bullet==battle_bullet_duelbattle_chibi_kunai){
		var inst = instance_create_depth(x,y,0,bullet);
		inst.direction=dir;
	}
	else if(bullet==battle_bullet_duelbattle_chibi_shuriken){
		var inst = instance_create_depth(x,y,0,bullet);
		inst._angle=dir+180;
	}
	
	_instantiated_bullet=true;
}