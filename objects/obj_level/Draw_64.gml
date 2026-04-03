
draw_set_color(c_black);
draw_rectangle(0, cam_h, 320, 223, false);
draw_set_color(c_white);

draw_set_font(global.myfont);
draw_set_halign(0);
draw_set_valign(2);

global.timer = "";
if(global.t_min > 9){global.timer += ""+string(global.t_min)}
if(global.t_min < 10){global.timer += "0"+string(global.t_min)}
global.timer += ":";
if(global.t_sec > 9){global.timer += ""+string(global.t_sec)}
if(global.t_sec < 10){global.timer += "0"+string(global.t_sec)}
global.timer += ":";
if(global.t_mil > 9){global.timer += ""+string(global.t_mil)}
if(global.t_mil < 10){global.timer += "0"+string(global.t_mil)}

draw_text_shadow_ext(1.4, cam_h-1.4, string(global.timer), 1.6, c_gray, c_white, 0, 999, 1.6, 1.6, 0);


draw_set_halign(2);
draw_set_valign(2);

draw_text_shadow_ext(cam_w-1.4, cam_h-1.4,"deaths:" + string(global.death_counter), 1.6, c_gray, c_white, 0, 999, 1.6, 1.6, 0);

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(-1);