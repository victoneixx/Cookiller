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

draw_text_shadow_ext(1.2, cam_h-14.2, string(global.timer), 1.6, c_gray, text_c, 0, 999, 1.6, 1.6, 0);

draw_set_halign(0);
draw_set_valign(0);
draw_set_font(-1);