draw_set_font(global.myfont);
if(global.over){
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, 320, 240, false);
	draw_set_alpha(1);
	draw_set_color(c_black);
	
	draw_set_halign(1);
	draw_set_valign(1);
	
	draw_sprite_ext(spr_over, 0, 320/2, 67, 4, 4, 0, c_white, 1);
	
	draw_set_halign(1);
	draw_set_valign(1);
	
	draw_text_shadow_ext(320/2, (240/2) + 20, ">press (space) to restart<", 1, c_gray, c_white, 0, 999, 1, 1, 0);
		
	draw_set_halign(0);
	draw_set_valign(0);
}
draw_set_font(-1);