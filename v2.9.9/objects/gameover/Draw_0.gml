draw_set_color(c_white);
draw_set_font(Lang_GetFont("determination_sans"));
spr=Lang_GetSprite("ui.gameover",spr_default);

draw_sprite_ext(spr_bg_game_over,0,room_width/2,0+floor(bgY),2,2,0,c_white,bgAlpha);
draw_sprite_ext(spr_char_kaban_lie,playerImageIndex,320+playerX,360+playerY+floor(bgY),2,2,0,c_white,bgAlpha);
draw_sprite_ext(spr,0,320-(sprite_get_width(spr)*1.5)-6,120-(sprite_get_height(spr)*1.5)+floor(textY),3,3,0,c_white,textAlpha);

if(askQuestion){
	if(textAlpha2==1&&!fading){
		if(Input_IsPressed(INPUT.LEFT)){
			if(selection>0) selection--;
			else selection=1;
		}
		if(Input_IsPressed(INPUT.RIGHT)){
			if(selection<1) selection++;
			else selection=0;
		}
		if(Input_IsPressed(INPUT.CONFIRM)){
			if(selection==0){
				BGM_Play(1,bgm_cymbal_drone,false);
				BGM_SetVolume(0,0,30);
				fader.color=c_white;
				Fader_Fade(0,1,120);
				Object_Shake(2,"playerY",id,0,false,1);
				alarm[5]=120;
				alarm[6]=30;
			}
			if(selection==1){
				BGM_SetVolume(0,0,30);
				fader.color=c_black;
				Fader_Fade(0,1,30);
				alarm[5]=30;
			}
			fading=true;
		}
		if(selection==0) draw_sprite_ext(spr_battle_soul_red,0,140,420,1,1,0,c_white,sprAlpha);
		if(selection==1) draw_sprite_ext(spr_battle_soul_red,0,410-string_width(Lang_GetString("gameover.give_up")),420,1,1,0,c_white,sprAlpha);
	}
}

draw_set_alpha(textAlpha2);
draw_text_transformed(160,400,Lang_GetString("gameover.try_again"),2,2,0);
draw_set_halign(fa_right);
draw_text_transformed(480,400,Lang_GetString("gameover.give_up"),2,2,0);
draw_set_halign(fa_left);
draw_set_alpha(1);

if(drawSelf) draw_self();