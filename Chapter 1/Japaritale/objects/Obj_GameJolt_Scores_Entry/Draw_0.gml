
if(sprite_exists(spr))
	draw_sprite_stretched(spr,0,x-50,y-50,100,100)

draw_set_valign(fa_center)
draw_set_halign(fa_left)

draw_set_font(Font_YoYo_30)
draw_text(x+60,y-20,user)
draw_text(x+60,y-20,guest)

draw_set_font(Font_YoYo_20)
draw_text(x+60,y+12,_score)
