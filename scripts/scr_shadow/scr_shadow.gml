/// @param x
/// @param y
/// @param string
/// @param shadow_size
/// @param shadow_color
/// @param text_color
/// @param sep
/// @param w
/// @param xscale
/// @param yscale
/// @param angle
function draw_text_shadow_ext(){
	var _x, _y, _string, _shadow_size, _shadow_color, _text_color, _sep, _w, _xscale, _yscale, _angle;
	
	_x = argument[0];
	_y = argument[1];
	_string = argument[2];
	_shadow_size = argument[3];
	_shadow_color = argument[4];
	_text_color = argument[5];
	_sep = argument[6];
	_w = argument[7];
	_xscale = argument[8];
	_yscale = argument[9];
	_angle = argument[10];
	
	draw_set_color(_shadow_color);
	draw_text_ext_transformed((_x + _shadow_size), (_y + _shadow_size), _string, _sep, _w, _xscale, _yscale, _angle);
	draw_set_color(c_white);
	draw_set_color(_text_color);
	draw_text_ext_transformed(_x, _y, _string, _sep, _w, _xscale, _yscale, _angle);
	draw_set_color(c_white);
}