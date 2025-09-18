_siner++;
for (var i = 0; i < 6; i++) {
	var spr = spr_battle_bg_duelbattle;
	draw_sprite_ext(spr,0,16+(i*sprite_get_width(spr)-i),10+(dsin(_siner*4+(10*i))*10),1,1,0,c_white,_alpha);
}
