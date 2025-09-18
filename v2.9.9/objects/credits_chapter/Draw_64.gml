var w=sprite_get_width(_spr)/2;
var h=sprite_get_height(_spr)/2;

draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);
switch(draw_phase){
	case "logo":
		draw_sprite_ext(_spr,0,320-w*2.5,240-h*2.5,2.5,2.5,0,c_white,1);
		break;
	case "owner":
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(320,240,"by Team Furenzu",3,3,0);
		draw_text_transformed(320,400,"UNDERTALE by Toby Fox",1.5,1.5,0);
		break;
	case "contributors_ch1":
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(320,240,"-- CHAPTER 1 SPRITES BY --\nAnimeliqite, Fell The Goner, Akogiri\n\n-- CHAPTER 1 MUSIC BY --\nAnimeliqite, Sarwex, Echel\n\n-- CHAPTER 1 WRITING BY --\nAnimeliqite, TheCreatorFox",2,2,0);
		break;
	case "contributors_ch2":
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(320,240,"-- CHAPTER 2 SPRITES BY --\nAnimeliqite, Akogiri, Xeron\n\n-- CHAPTER 2 MUSIC BY --\nAnimeliqite, Sarwex\n\n-- CHAPTER 2 WRITING BY --\nAnimeliqite, TheCreatorFox",2,2,0);
		break;
	case "nothing":
		break;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);