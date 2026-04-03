cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(cam_w, cam_h);

focus_s = "Click to focus!";
string_h = string_width(focus_s);
string_v = string_height(focus_s);

margen_h = 60;
margen_v = 10;

panel_h = string_h + (margen_h*2);
panel_v = string_v + (margen_v*2);

pos_h = 320 / 2 - (panel_h / 2);
pos_v = 240 / 2 - (panel_v / 2);

change_timer = 30;
change = true;
text_c = noone;