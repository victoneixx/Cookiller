var _myfont = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ" + "abcdefghijklmnopqrstuvwxyz" + "1234567890" + "!?:;.,-+=*()#%/@<>", 2, 1);
draw_set_font(_myfont);


if(!window_has_focus()){	
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	draw_set_halign(1);
	draw_set_valign(1);
	draw_sprite_stretched(spr_panel, 0, pos_h, pos_v, panel_h, panel_v);
	draw_set_halign(0);
	draw_set_valign(0);
	
	draw_set_halign(1);
	draw_set_valign(1);
	draw_text_shadow_ext(room_width/2, room_height/2-8, focus_s, 2, c_gray, 0, 9999, 2, 2, 0);
	draw_set_halign(0);
	draw_set_valign(0);
}
draw_set_font(-1);