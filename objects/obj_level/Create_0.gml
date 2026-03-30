cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
display_set_gui_size(cam_w, cam_h);

change_timer = 30;
change = true;
text_c = noone;
global.t_min = 10;
global.t_sec = 0;
global.t_mil = 0;