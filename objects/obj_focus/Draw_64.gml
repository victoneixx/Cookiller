draw_set_font(global.myfont);

if(!window_has_focus() && !global.start){	
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, 320, 240, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	draw_set_halign(1);
	draw_set_valign(1);
	draw_sprite_stretched(spr_panel, 0, pos_h, pos_v, panel_h, panel_v);
	draw_set_halign(0);
	draw_set_valign(0);
	
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text_shadow_ext(320/2, 240/2, focus_s, 2, #0052AC, text_c, 0, 9999, 2, 2, 0);
	draw_set_halign(0);
	draw_set_valign(0);
}
draw_set_font(-1);